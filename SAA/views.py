from django.shortcuts import render
from django.http import HttpResponseRedirect
from .models import Review,Movie
from django.db.models import Q

##anlysis import

from sklearn import svm
from sklearn.feature_extraction.text import CountVectorizer
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn import metrics
from sklearn.metrics import classification_report,accuracy_score
import six.moves.cPickle as pickle
from .imdbReview import extract_words
from pathlib import Path
import os
# Create your views here.

BASE_DIR = Path(__file__).resolve(strict=True).parent.parent

def index(request):

    movie_list = Movie.objects.all()
    
    if request.method == "POST":
        query = request.POST.get('search')
        movies = search(query)
        return render(request,'index.html',{'movies':movies})

    return render(request,'index.html',{'movies':movie_list})

def search(query):
    queryset = []
    
    if query is not None:
        queries = query.split(" ")
        for q in queries:
            movies = Movie.objects.filter(movie_title__icontains=q)
            for m in movies:
                queryset.append(m)
    return list(set(queryset))

def home(request,id):
    p=n=c=smv=pmv=nmv=0
    impression = ""
    movie_list = Movie.objects.get(id=id)
    review_list = Review.objects.filter(movie=id)
    
    positive = Review.objects.filter(impression="Positive",movie=id)
    negative = Review.objects.filter(impression="Negative",movie=id)

    p=positive.count()
    n=negative.count()
    if p+n != 0:
        if  p/(p+n)>n/(p+n) :
            smv = (p/(p+n))*100
        else :
            smv = (n/(p+n))*100

        nmv = (n/(p+n))*100
        pmv = (p/(p+n))*100

    if request.method=="POST":
        review = request.POST.get('review')
        if review != "":
            impression = sentimentAnalysis(review)
            review1 = Review(review=review,impression=impression,movie=id)
            review1.save()
        return HttpResponseRedirect('#reviews')
    return render(request,'home.html',{'impression' : impression,
    'reviewlist':review_list,'movie':movie_list,'sv':smv,'pmv':pmv,'nmv':nmv})


def addmovie(request):

    if request.method == "POST":
        
        movie_title = request.POST.get('title')
        s_l = request.POST.get('story')
        m_tr = request.POST.get('trailer')
        m_img = request.FILES['image']

        new_address = m_tr.replace("watch?v=", "embed/")
        

        m_tr = new_address

        movie = Movie(m_img=m_img,movie_title=movie_title,storyline=s_l,trailer=m_tr)
        movie.save()
    return render(request,'addMovie.html')


def review(request):

    return render(request,'home.html#reviews')

# Load All Reviews in train and test datasets
train = os.path.join(BASE_DIR, 'static', "train.pkl")
f = open(train, 'rb')
reviews = pickle.load(f)
f.close()
test = os.path.join(BASE_DIR, 'static', "test.pkl")
f = open(test, 'rb')
test = pickle.load(f)
f.close()


vectorizer = TfidfVectorizer(min_df=5, max_df=0.8, 
                            sublinear_tf=True, use_idf=True)
train_features = vectorizer.fit_transform(reviews[0])
test_features = vectorizer.transform(test[0])


classifier_liblinear = svm.LinearSVC()
classifier_liblinear.fit(train_features, reviews[1])
prediction_liblinear = classifier_liblinear.predict(test_features)



def sentimentAnalysis(sentiment):
    reviews = []
    impression = "negative"
    reviews.append(sentiment)
    input_features = vectorizer.transform(extract_words(reviews))
    prediction = classifier_liblinear.predict(input_features)

    if prediction[0] == 1:
        impression = "Positive"
        return impression
    else:
        impression = "Negative"
        return impression
