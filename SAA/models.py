from django.db import models

# Create your models here.
from pathlib import Path
import os
BASE_DIR = Path(__file__).resolve(strict=True).parent.parent
img = os.path.join(BASE_DIR, 'static/', "avengers2.jpg")


class Review (models.Model):

    review = models.CharField(max_length = 1000)
    impression = models.CharField(max_length = 100)
    movie = models.IntegerField()

    def __str__(self):
        return self.review

class Movie (models.Model):

    m_img = models.ImageField(upload_to="static/",default=img)
    movie_title = models.CharField(max_length = 100)
    storyline = models.CharField(max_length = 1000)
    trailer = models.CharField(max_length=200)

    def __str__(self):
        return self.movie_title