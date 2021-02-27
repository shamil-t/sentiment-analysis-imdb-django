-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2020 at 04:56 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `imdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add review', 7, 'add_review'),
(26, 'Can change review', 7, 'change_review'),
(27, 'Can delete review', 7, 'delete_review'),
(28, 'Can view review', 7, 'view_review'),
(29, 'Can add movie', 8, 'add_movie'),
(30, 'Can change movie', 8, 'change_movie'),
(31, 'Can delete movie', 8, 'delete_movie'),
(32, 'Can view movie', 8, 'view_movie');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$HCRyLjH5X9Tu$vIVUmhj8b+3u3sJegWFIaxWyZ7BBE9gF6jTSu/JmzKo=', '2020-08-13 01:01:14.120834', 1, 'shamil', '', '', '', 1, 1, '2020-08-13 01:01:03.873112');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'SAA', 'movie'),
(7, 'SAA', 'review'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-08-12 02:59:57.491355'),
(2, 'auth', '0001_initial', '2020-08-12 02:59:58.730782'),
(3, 'admin', '0001_initial', '2020-08-12 03:00:06.055370'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-08-12 03:00:08.173480'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-08-12 03:00:08.220456'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-08-12 03:00:09.016908'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-08-12 03:00:09.846076'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-08-12 03:00:10.578172'),
(9, 'auth', '0004_alter_user_username_opts', '2020-08-12 03:00:10.630403'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-08-12 03:00:11.276207'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-08-12 03:00:11.352419'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-08-12 03:00:11.417220'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-08-12 03:00:11.686188'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-08-12 03:00:12.093085'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-08-12 03:00:12.327491'),
(16, 'auth', '0011_update_proxy_permissions', '2020-08-12 03:00:12.370334'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2020-08-12 03:00:12.482022'),
(18, 'sessions', '0001_initial', '2020-08-12 03:00:12.727160'),
(19, 'SAA', '0001_initial', '2020-08-12 03:21:50.549921'),
(20, 'SAA', '0002_movie', '2020-08-12 13:28:55.073071'),
(21, 'SAA', '0003_movie_m_img', '2020-08-12 13:55:17.871925'),
(22, 'SAA', '0004_auto_20200812_1933', '2020-08-12 14:03:45.223858'),
(23, 'SAA', '0005_auto_20200812_1940', '2020-08-12 14:12:48.373364'),
(24, 'SAA', '0006_auto_20200812_1944', '2020-08-12 14:14:24.567750'),
(25, 'SAA', '0007_auto_20200813_0653', '2020-08-13 01:24:04.699044'),
(26, 'SAA', '0008_auto_20200813_0656', '2020-08-13 01:26:46.280901'),
(27, 'SAA', '0009_auto_20200813_1258', '2020-08-13 07:28:48.386020'),
(28, 'SAA', '0002_review_movie', '2020-08-13 11:50:06.971661'),
(29, 'SAA', '0003_movie_trailer', '2020-08-14 01:49:17.395404');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('6gfbyoyystkcolfbroqlrwdmbi4s8zhz', '.eJxVjMsOwiAQRf-FtSFQmBFcuvcbyAwPqRqalHZl_HfbpAvdnnPufYtA61LD2vMcxiQuQovTL2OKz9x2kR7U7pOMU1vmkeWeyMN2eZtSfl2P9u-gUq_b-uwZDTjKYAckQKOLTcpYNZjiOUNSOoIrVDRacN5tEBgiMpJCpZL4fAHEmTdF:1k61cI:UTYTMyI8lXYl0iSWUcV64YVWlvf5jh7BrtaGoL09CFM', '2020-08-27 01:01:14.164743');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(3) NOT NULL,
  `review` varchar(1000) NOT NULL,
  `impression` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `review`, `impression`) VALUES
(1, 'Ver good movie', 'Positive');

-- --------------------------------------------------------

--
-- Table structure for table `saa_movie`
--

CREATE TABLE `saa_movie` (
  `id` int(11) NOT NULL,
  `movie_title` varchar(100) NOT NULL,
  `storyline` varchar(1000) NOT NULL,
  `m_img` varchar(100) NOT NULL,
  `trailer` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `saa_movie`
--

INSERT INTO `saa_movie` (`id`, `movie_title`, `storyline`, `m_img`, `trailer`) VALUES
(1, 'Avengers:Infinity War (2019)', 'After the devastating events of Avengers: Infinity War (2018),the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to reverse Thanos\' actions and restore balance to the universe.', 'static/avengers2_b5fzE3Q.jpg', 'http://www.youtube.com/embed/TcMBFSGVi1c'),
(2, 'Bad Boys for Life (2020)', 'Miami detectives Mike Lowrey and Marcus Burnett must face off against a mother-and-son pair of drug lords who wreak vengeful havoc on their city.', 'static/badboys_jTXDDjl.jpg', 'https://www.youtube.com/embed/jKCj3XuPG8M'),
(3, 'Joker (2019)', 'In Gotham City, mentally troubled comedian Arthur Fleck is disregarded and mistreated by society. He then embarks on a downward spiral of revolution and bloody crime. This path brings him face-to-face with his alter-ego: the Joker.', 'static/joker_9hiAxCS.jpg', 'https://www.youtube.com/embed/zm6GJwA10Lk'),
(4, 'Peninsula (2020)', 'Sequel to the 2016 South Korean zombie film Train to Busan (2016).', 'static/traintobushan_0snciGZ.jpg', 'https://www.youtube.com/embed/yVucSRLLeIM'),
(5, 'The Avengers (2012)', 'Earth\'s mightiest heroes must come together and learn to fight as a team if they are going to stop the mischievous Loki and his alien army from enslaving humanity.', 'static/avengers2012_m4qUsS1.jpg', 'https://www.youtube.com/embed/=hIR8Ar-Z4hw'),
(6, ' Avengers: Age of Ultron (2015)', 'When Tony Stark and Bruce Banner try to jump-start a dormant peacekeeping program called Ultron, things go horribly wrong and it\'s up to Earth\'s mightiest heroes to stop the villainous Ultron from enacting his terrible plan.', 'static/ageofultron_0PbTql9.jpg', 'https://www.youtube.com/embed/tmeOjFno6Do'),
(7, ' Virus (2019)', 'A real life account of the deadly Nipah virus outbreak in Kerala, and the courageous fight put on by several individuals which helped to contain the epidemic.', 'static/virus_F4IeHzC_mF8Funu.jpg', 'https://www.youtube.com/embed/38MijVTyP7s'),
(8, 'Kumbalangi Nights (2019)', 'The film revolves around four brothers who share a love-hate relationship with each other. Their relationship progresses to another level when Saji, Boney, and Franky decide to help Bobby stand by his love.', 'static/kumbalanginights_KErn8TD.jpg', 'https://www.youtube.com/embed/3P4BFBSafF0'),
(9, 'Jallikattu (2019)', 'A portrait of a remote village where a buffalo escapes and causes a frenzy of ecstatic violence.\r\n', 'static/jallikettu_W3Ubftb.jpg', 'https://www.youtube.com/embed/ItcQNybOOHM'),
(10, 'Android Kunjappan Ver 5.25 (2019)', 'Story of a conventional, conservative small town villager and his son who has to move away from home due to his profession. Their relationship gets an endearing twist when an AI humanoid enters their lives and fills in their emptiness.', 'static/androidkunjappan_F74mzLD.jpg', 'https://www.youtube.com/embed/ZO5MN0Ws0Hc');

-- --------------------------------------------------------

--
-- Table structure for table `saa_review`
--

CREATE TABLE `saa_review` (
  `id` int(11) NOT NULL,
  `review` varchar(10000) NOT NULL,
  `impression` varchar(100) NOT NULL,
  `movie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `saa_review`
--

INSERT INTO `saa_review` (`id`, `review`, `impression`, `movie`) VALUES
(1, 'Once again Mr. Costner has dragged out a movie for far longer than necessary. Aside from the terrific sea rescue sequences, of which there are very few I just did not care about any of the characters. Most of us have ghosts in the closet, and Costner\'s character are realized early on, and then forgotten until much later, by which time I did not care. The character we should really care about is a very cocky, overconfident Ashton Kutcher. The problem is he comes off as kid who thinks he\'s better than anyone else around him and shows no signs of a cluttered closet. His only obstacle appears to be winning over Costner. Finally when we are well past the half way point of this stinker, Costner tells us all about Kutcher\'s ghosts. We are told why Kutcher is driven to be the best with no prior inkling or foreshadowing. No magic here, it was all I could do to keep from turning it off an hour in.', 'Positive', 1),
(2, 'This is a pale imitation of \'Officer and a Gentleman.\' There is NO chemistry between Kutcher and the unknown woman who plays his love interest. The dialog is wooden, the situations hackneyed. It\'s too long and the climax is anti-climactic(!). I love the USCG, its men and women are fearless and tough. The action scenes are awesome, but this movie doesn\'t do much for recruiting, I fear. The script is formulaic, but confusing. Kutcher\'s character is trying to redeem himself for an accident that wasn\'t his fault? Costner\'s is raging against the dying of the light, but why? His \'conflict\' with his wife is about as deep as a mud puddle. I saw this sneak preview for free and certainly felt I got my money\'s worth.', 'Negative', 1),
(3, 'It seems ever since 1982, about every two or three years we get a movie that claims to be \"The Next Officer and a Gentleman.\" There has yet to be one movie that has lived up to this claim and this movie is no different.<br /><br />We get the usual ripped off scenes from OAAG (\"I want you DOR,\" the instructor gives the Richard Gere character his overdose of drills in hopes he\'ll quit, the Gere character comes back for the girl, the Gere character realizes the instructor is great, etc.) and this movie is as predictable as the sun rising in the East and is horribly miscast on top.', 'Negative', 1),
(4, 'Few movies have dashed expectations and upset me as much as Fire has. The movie is pretentious garbage. It does not achieve anything at an artistic level. The only thing it managed to receive is a ban in India. If only it was because of the poor quality of film making rather than the topical controversy, the ban would have been more justifiable.<br /><br />Now that I\'ve got my distress out of my system, I am more able to analyse the movie: <br /><br />* From the onset the movie feels unreal especially when the protagonists start conversing in English. The director, of course, did not make the movie for an Indian audience; however it underestimated its international audiences by over simplifying it. Watching the character of the domestic help conversing in perfect English is too unreal to be true.<br /><br />* Next we get regular glimpses into Radha\'s dreams. These scenes are not very effective. They coming up as jarring and obstruct the flow of the movie. I\'m still wondering how that philosophical dialogue connected to the story. I felt that the surrealism was lost.<br /><br />* The love scenes felt voyeuristic and are probably meant for audience titillation rather than being a powerful statement. In any case, they do not achieve either of the two.<br /><br />* The names chosen for the women, Radha and Sita, are names of Hindu deities and hence been selected to shock the audiences. However, since the film wasn\'t meant for Indian audiences in the first place, the shock-through-name-selection is not meant to achieve its goal, which is absurd.<br /><br />* The quality of direction is very poor and some key and delicate scenes have been poorly handled. A better director could have made a powerful emotional drama out of the subject.<br /><br />* The acting felt wooden although Nandita Das brought some life into the role, the others were wasted. I always thought that Shabana Azmi was a good actress but her talent is not evident in this film. The male leads were outright rubbish.<br /><br />In case you are a fan of Earth and wish to see more of the director, stay away from this one. Please.', 'Negative', 1),
(5, 'Some may go for a film like this but I most assuredly did not. A college professor, David Norwell, suddenly gets a yen for adoption. He pretty much takes the first child offered, a bad choice named Adam. As it turns out Adam doesn\'t have both oars in the water which, almost immediately, causes untold stress and turmoil for Dr. Norwell. This sob story drolly played out with one problem after another, all centered around Adam\'s inabilities and seizures. Why Norwell wanted to complicate his life with an unknown factor like an adoptive child was never explained. Along the way the good doctor managed to attract a wifey to share in all the hell the little one was dishing out. Personally, I think both of them were one beer short of a sixpack. Bypass this yawner.', 'Negative', 1),
(6, 'An obvious vanity press for Julie in her first movie with Blake. Let\'s see. Where do we begin. She is a traitor during a world war; she redeems that by falling in love; her friends (who are presumably patriots because they are German citizens) are expendable and must die; and she winds up as a heroine. OK. The scenes with the drunken pilot and the buffoons who work for French intelligence can\'t even be described, and we won\'t even mention Rock\'s romantic scenes with a female. (By the way, when they visit a museum, look at his gaze - I reran it on video and it\'s priceless).', 'Positive', 1),
(7, 'Blake Edwards tried very hard to change Julie Andrews image in this film. He tried to make her sexy not realizing she already was. I think they were both still a bit irked that Julie had not been chosen to film her Broadway success of Camelot and was passed over as not being sexy enough. Unfortunately, they chose this vehicle to try and assuage this belief. It gets to the point where it is almost funny seeing Rock Hudson, who we all know now was gay, kissing Julie every 2 minutes throughout this movie. It seems now that they were not only trying to make you believe that Julie was a femme fatale but that Rock was straight. Sadly, they have absolutely no chemistry together and the unending kissing scenes start grossing one out. The other error they made with this picture was not knowing what kind of movie they were making. It is almost three separate movies. There is the drama of Julie as the German spy trying to get military secrets from Rock. There is an air war movie with lots of footage of WWI vintage planes swooping about and there is the stupid attempts at humor that Blake Edwards seems to think he has to insert in every one of his pictures whether it is appropriate or not, In this case, it was not. The only truly redeeming qualities in this film are looking at the always lovely Dame Julie and hearing her sing in that crystal clear bell-like soprano. Of course if you love her, you may overlook the weaknesses of this film just because of her. You can always tell yourself, afterward, that it was a hell of a lot better than sitting through STAR!', 'Positive', 1),
(8, 'Julie Andrews satirically prods her own goody-two-shoes image in this overproduced musical comedy-drama, but if she approaches her role with aplomb, she\'s alone in doing so. Blake Edwards\' film about a woman who is both music-hall entertainer and German spy during WWI doesn\'t know what tone to aim for, and Rock Hudson has the thankless task of playing romantic second-fiddle. Musicals had grown out of favor by 1970, and elephantine productions like \"Star!\" and this film really tarnished Andrews\' reputation, leaving a lot of dead space in her catalogue until \"The Tamarind Seed\" came along. I\'ve always thought Julie Andrews would\'ve made a great villain or shady lady; her strong voice could really command attention, and she hits some low notes that can either be imposing or seductive. Husband/director Edwards seems to realize this, but neither he nor Julie can work up much energy within this scenario. Screenwriter William Peter Blatty isn\'t a good partner for Edwards, and neither man has his heart in this material. Beatty\'s script offers Andrews just one fabulous sequence--a striptease.', 'Positive', 1),
(9, 'Years ago, when DARLING LILI played on TV, it was always the pan and scan version, which I hated and decided to wait and see the film in its proper widescreen format. So when I saw an inexpensive DVD of this Julie Andrews/Blake Edwards opus, I decided to purchase and watch it once and for all.<br /><br />Boy, what a terrible film. It\'s so bad and on so many levels that I really do not know where to start in describing where and when it goes so horribly wrong. Looking at it now, it\'s obvious to any fans of movies that Blake Edwards created this star vehicle for his wife simply because so many other directors had struck gold with Andrews in musicals (MARY POPPINS, SOUND OF MUSIC, THOROUGHLY MODERN MILLIE, etc) but also because Andrews was snubbed from starring in projects made famous on stage by Julie herself (CAMELOT, MY FAIR LADY, etc) because Hollywood thought she wasn\'t sexy or glamorous enough. So Blake created this stillborn effort, to showcase his wife in a bizarre concoction of spy story/war movie/romance/slapstick comedy/musical. DARLING LILI suffers from multiple personalities, never knowing who or what it is. Some specific scenes are good or effective but as a whole, it just doesn\'t work at all to a point of it being very embarrassing.<br /><br />Mind you, the version on the DVD is the \"director\'s cut\", or in this case, \"let\'s salvage whatever we can\" from this notorious box office flop. In releasing the DVD, Edwards cut 19 scenes (19!!!!!!!!) from the original bloated theatrical version into this more streamlined and yet remarkably ineffective version. The film moves along with no idea of what it is. We are 25 minutes into it and we still don\'t know what\'s going on or why we\'re watching what\'s going. What kind of spy is Lili? How powerful is she? Was she ever responsible for someone\'s death? Instead we watch a thoroughly bored looking Rock Hudson trying to woo a thoroughly bored looking Julie Andrews. Things aren\'t helped much with the inexplicable reason why the two fall in love. Why does Julie fall for Hudson? Why him and not other men she got involved with? There should have been one of her ex hanging around, trying to win her back or trying to decipher her secret. This would have given us some much needed contrast to the muddled action. It would also have given us some impetuous to the sluggish proceedings. There\'s no catalyst in this story.<br /><br />One only has to look at the cut scenes to clearly see that Edwards and the writer just came up with ideas inspired by Andrews\' (and Edwards\') previous successes. The best (or worst) example is the scene when Andrews and Hudson follows a group of children who sing in the middle of a forest. Edwards channeling SOUND OF MUSIC. It\'s no wonder he removed it from the DVD. Back in 1970, that scene might have worked on a certain level but today, that moment reeks of desperation. There are other plot elements directly inspired by Andrews/Edwards other films. The endless scenes of dogfights is inspired by the much better MODERN MILLIE. The musical moment \"I\'ll give you three guesses\" was created just to make fun of Julie\'s MARY POPPINS persona, which is turned \"raunchy\" with Julie doing a striptease in the act. The ending, bird\'s eye view of Julie running towards Hudson\'s plane, is another \"wink\" at SOUND OF MUSIC.<br /><br />The whole thing is confusing. Julie plays a singer, born from a German father and British mother, who lives in England but sings her (English) songs in Paris. You never know exactly where the story takes place. Some moments are just badly edited. Like when Julie and her \"uncle\" are on horseback. They talk and talk and then Julie suddenly sprints off in mid-sentence. I\'m like \"what happened here?\"<br /><br />The comedy bits are unfunny and cringe-worthy. Every scene with the French police are pathetic. Where\'s Peter Sellers when you really need him. The action is stupid beyond belief. When Julie and her \"uncle\" are on their way to Germany on that train, Hudson\'s squadron shoots rounds of bullets at the train, almost killing Lili in the process. Brilliant. What\'s also funny about that scene is the two leave on the train in the middle of the night but Hudson and his squadron reach the train even though they fly off the next morning. That\'s one slow moving train there. <br /><br />The musical moments. The beginning is the best part of the entire film (and the reason I gave this film 3 stars) but it\'s effect is diminished considerably because it\'s repeated at the end. Speaking of redundant, did we really need to see a can-can dance, Crepe Suzette stripping scene and Julie stripping too? The \"Girl in no man\'s land\" is OK even if it\'s bleeding obvious, but that moment just doesn\'t make any sense whatsoever because Lili sings it to a group of injured soldiers at a French hospital, making me wonder: how many soldiers there were injured indirectly by the result of her spying?<br /><br />The whole project is listless and without energy. The romance is 100% unbelievable. Rock Hudson is way too old and tired looking (check out the museum scene). Julie looks dazed, like she\'s on Valium. But what really kills this ill-conceived project is Julie playing a German spy. Edwards desperately wanted to dispel the Mary Poppins syndrome afflicting his wife and believed that playing a traitor was a good career decision. As much as I like Julie, she\'s no Greta Garbo, who pulled it off so beautifully in MATA HARI. Funny enough, even if Julie plays a German spy, she still comes across as cloying and cute.<br /><br />How bad is DARLING LILI? Even after 37 years since its release, Blake Edwards felt he still needed to work on it for its DVD release.', 'Negative', 1),
(10, 'David Bryce\'s comments nearby are exceptionally well written and informative as almost say everything I feel about DARLING LILI. This massive musical is so peculiar and over blown, over produced and must have caused ruptures at Paramount in 1970. It cost 22 million dollars! That is simply irresponsible. DARLING LILI must have been greenlit from a board meeting that said \"hey we got that Pink Panther guy and that Sound Of Music gal... lets get this too\" and handed over a blank cheque. The result is a hybrid of GIGI, ZEPPELIN, HALF A SIXPENCE, some MGM 40s song and dance numbers of a style (daisies and boaters!) so hopelessly old fashioned as to be like musical porridge, and MATA HARI dramatics. The production is colossal, lush, breathtaking to view, but the rest: the ridiculous romance, Julie looking befuddled, Hudson already dead, the mistimed comedy, and the astoundingly boring songs deaden this spectacular film into being irritating. LILI is like a twee 1940s mega musical with some vulgar bits to spice it up. STAR! released the year before sadly crashed and now is being finally appreciated for the excellent film is genuinely is... and Andrews looks sublime, mature, especially in the last half hour......but LILI is POPPINS and DOLLY frilly and I believe really killed off the mega musical binge of the 60s..... and made Andrews look like Poppins again... which I believe was not Edwards intention. Paramount must have collectively fainted when they saw this: and with another $20 million festering in CATCH 22, and $12 million in ON A CLEAR DAY and $25 million in PAINT YOUR WAGON....they had a financial abyss of CLEOPATRA proportions with $77 million tied into 4 films with very uncertain futures. Maybe they should have asked seer Daisy Gamble from ON A CLEAR DAY ......LILI was very popular on immediate first release in Australia and ran in 70mm cinemas for months but it failed once out in the subs and the sticks and only ever surfaced after that on one night stands with ON A CLEAR DAY as a Sunday night double. Thank god Paramount had their simple $1million (yes, ONE MILLION DOLLAR) film LOVE STORY and that $4 million dollar gangster pic THE GODFATHER also ready to recover all the $77 million in just the next two years....for just $5m.... incredible!', 'Positive', 1),
(11, 'I\'m not a big fan of musicals, although this technically might not qualify as a musical. But I thought I would give it a chance as I love war movies. It was mediocre at best.<br /><br />Hudson seems totally out of kilter in this role. It just didn\'t work for me. Julie Andrews probably played her part as best as she could, but I just find it hard to buy her as a conniving, deceptive spy. Sorry, I know that is classic stereotyping on my part. But I have to say I think this is Julie at her most beautiful and feminine looking. I always thought of her as more matronly, but then surely that\'s a result of her roles in Sound of Music and Mary Poppins. No doubt they were desperately trying to get her out of that typecasting in this role. She was quite beguiling in appearance here, but I still didn\'t buy her as a spy.<br /><br />I couldn\'t keep my focus through the whole movie and found myself tuning in and out - and having conversations with those in my room (which I usually never do - I\'m always shushing everybody). So that tells you how little it held my attention. Don\'t waste your time!', 'Negative', 1),
(12, 'Blake Edwards\' legendary fiasco, begins to seem pointless after just 10 minutes. A combination of The Eagle Has Landed, Star!, Oh! What a Lovely War!, and Edwards\' Pink Panther films, Darling Lili never engages the viewer; the aerial sequences, the musical numbers, the romance, the comedy, and the espionage are all ho hum. At what point is the viewer supposed to give a damn? This disaster wavers in tone, never decides what it wants to be, and apparently thinks it\'s a spoof, but it\'s pathetically and grindingly square. Old fashioned in the worst sense, audiences understandably stayed away in droves. It\'s awful. James Garner would have been a vast improvement over Hudson who is just cardboard, and he doesn\'t connect with Andrews and vice versa. And both Andrews and Hudson don\'t seem to have been let in on the joke and perform with a miscalculated earnestness. Blake Edwards\' SOB isn\'t much more than OK, but it\'s the only good that ever came out of Darling Lili. The expensive and professional look of much of Darling Lili, only make what it\'s all lavished on even more difficult to bear. To quote Paramount chief Robert Evans, \"24 million dollars worth of film and no picture\".', 'Negative', 1),
(13, 'I wish I knew what to make of a movie like this. It seems to be divided into two parts -- action sequences and personal dramas ashore. It follows Ashton Kutsher through survival swimmer school, guided by Master Chief Kevin Costner, then to Alaska where a couple of spectacular rescues take place, the last resulting in death.<br /><br />I must say that the scenes on the beach struck me as so stereotypical in so many ways that they should be barnacle encrusted. A typical bar room fight between Navy guys and Coast Guardsmen (\"puddle pirates\"). The experienced old timer Costner who is, as an elderly bar tender tells him, \"married to the Coast Guard.\" The older chief who \"keeps trying to prove to himself that he\'s still nineteen.\" The neglected ex wife ashore to whom Kostner pays a farewell visit. The seemingly sadistic demands placed on the swimmers by the instructors, all in pursuit of a loftier goal. The gifted young man hobbled by a troubled past.<br /><br />The problem is that we\'ve seen it all before. If it\'s Kevin Costner here, it\'s Clint Eastwood or John Wayne or Lou Gosset Jr. or Vigo Mortenson or Robert DeNiro elsewhere. And the climactic scene has elements drawn shamelessly from \"The Perfect Storm\" and \"Dead Calm.\" None of it is fresh and none of the old stereotyped characters and situations are handled with any originality.<br /><br />It works best as a kind of documentary of what goes on in the swimmer\'s school and what could happen afterward and even that\'s a little weak because we don\'t get much in the way of instruction. It\'s mostly personal conflict, romance, and tension about washing out.<br /><br />It\'s a shame because the U. S. Coast Guard is rather a noble outfit, its official mission being \"the safety of lives and property at sea.\" In war time it is transferred to the Navy Department and serves in combat roles. In World War II, the Coast Guard even managed to have a Medal of Honor winner in its ranks.<br /><br />But, again, we don\'t learn much about that. We don\'t really learn much about anything. The film devolves into a succession of visual displays and not too much else. A disappointment.', 'Positive', 1),
(14, 'A tough sell: British playwright Ronald Harwood adapts his autobiographical stage drama into loud, bellowing film about WWII Shakespearean theatrical troupe saddled with an aged, blustery, brilliant-but-unreliable star at the end of his tether. The actor\'s effete assistant works diligently to get his master coiffed and costumed for a production of \"King Lear\" (during an Air Raid!), yet both men are losing their grip on their unraveling situation. Based on the waning years of actor Donald Wolfit, whose dresser was Ronald Harwood, this acclaimed production would seem to be a welcome haven for scenery-chewing thespians. Unfortunately, Albert Finney (at this point in his career, not at all elderly) seems too robust and quick-thinking to play the actor; Finney (and Oscar-nominated director Peter Yates) cannot modulate Sir\'s moods and bouts of coherency in a way that makes sense to us, so that in one scene he\'s stopping a train with the commanding echo of his voice, and in the next he\'s curiously falling apart. With such a wreck of a human being in the midst of failing health and aptitude, one would assume a dedicated assistant would go to great lengths to protect his boss (and his future), yet servant Tom Courtenay prods and badgers and goads Finney to carry on rather than rest. Courtenay, who played this part on stage (and was nominated for an Oscar alongside Finney for Best Actor), is far more attuned to his role, and eventually his bleating commands and confusion achieve the only real feeling in the film. These two, thankfully, do not peck at each other\'s heads, and scenarist Harwood is careful not to fall into a love-hate pattern (which could possibly be perceived in the film\'s first act); but, without a juxtaposition of servant vs. celebrity, there\'s nothing much to behold in this portrait except for the deterioration of narcissism, the hint at what once was. *1/2 from ****', 'Negative', 1),
(15, 'I went and saw this movie last night after being coaxed to by a few friends of mine. I\'ll admit that I was reluctant to see it because from what I knew of Ashton Kutcher he was only able to do comedy. I was wrong. Kutcher played the character of Jake Fischer very well, and Kevin Costner played Ben Randall with such professionalism. The sign of a good movie is that it can toy with our emotions. This one did exactly that. The entire theater (which was sold out) was overcome by laughter during the first half of the movie, and were moved to tears during the second half. While exiting the theater I not only saw many women in tears, but many full grown men as well, trying desperately not to let anyone see them crying. This movie was great, and I suggest that you go see it before you judge.', 'Positive', 1),
(16, 'I\'m a Petty Officer 1st Class (E-6) and have been in the USCG for 6 years and feel that this movie strongly represents the Coast Guard. There were only a few scenes that were far fetched. The most far-fetched was when PO Fischer (Kutcher) went down inside of the sinking vessel to pull the vessel\'s captain out of the engine room... that would never happen. Swimmers are not allowed to go inside of any vessel no matter the circumstances. Second, the Command Center (supposedly in Kodiak), it looked more like a NASA command center... we don\'t have any gear that hi-tech. Third, the Captain of the Airstation would not be running the search & rescue cases with like 10 people on watch. In reality it would be an E-6 or E-7 as the SAR Controller and maybe 2 other support personnel like an assist SAR Controller & a Radio Watchstander. Otherwise the movie was dead on, I think they should have incorporated more of the other rates in the CG and their roles in search & rescue instead of just Aviation based rates. Some of the scenes from \"A\" school reminded me of my days their and the dumb stuff I did and got in trouble for in my younger days.', 'Negative', 1),
(17, 'Our family (and the entire sold out sneak preview audience) enjoyed \"The Guardian\". Kevin Costner and Ashton Kutcher gave convincing performances as the fictional helicopter rescue swimmer characters Ben and Jake. After seeing this movie, you can\'t help but imagine how difficult it must be to graduate from the USCG helicopter rescue swimmer school and one day take part in real rescues.<br /><br />Even though this is a fictional movie, it delivered rather convincing virtues of team spirit, dedication and bravery exhibited by all the members of the actual U. S. Coast Guard.<br /><br />The special effects used to create the rescue scenes were incredible. You actually felt like you were taking part in a real rescue.<br /><br />I feel the movie could have been made without the \"Hollywood\" bar scene (when you see the movie, you might agree) since the real Coast Guard does not condone such behavior. <br /><br />Very entertaining, very action packed, definitely worth seeing. Thank you, U. S. Coast Guard and the REAL helicopter rescue swimmers, \"So Others May Live\". I\'d highly recommend this movie to everyone.', 'Positive', 1),
(18, 'Our family (and the entire sold out sneak preview audience) enjoyed \"The Guardian\". Kevin Costner and Ashton Kutcher gave convincing performances as the fictional helicopter rescue swimmer characters Ben and Jake. After seeing this movie, you can\'t help but imagine how difficult it must be to graduate from the USCG helicopter rescue swimmer school and one day take part in real rescues.<br /><br />Even though this is a fictional movie, it delivered rather convincing virtues of team spirit, dedication and bravery exhibited by all the members of the actual U. S. Coast Guard.<br /><br />The special effects used to create the rescue scenes were incredible. You actually felt like you were taking part in a real rescue.<br /><br />I feel the movie could have been made without the \"Hollywood\" bar scene (when you see the movie, you might agree) since the real Coast Guard does not condone such behavior. <br /><br />Very entertaining, very action packed, definitely worth seeing. Thank you, U. S. Coast Guard and the REAL helicopter rescue swimmers, \"So Others May Live\". I\'d highly recommend this movie to everyone.', 'Positive', 1),
(19, 'I only went to see this movie because I have always liked Kevin Costner. I felt that Ashton did a great job in the Butterfly Effect. Unfortunately, even though these two actors were/are capable of good if not great acting moments some of that was missing here. Some of the scenes were just not believable and didn\'t have enough story line support.<br /><br />Though the movie claims influence from the hurricane Katrina aftermath, there was very little (none) to that effect in the movie.<br /><br />Overall, I liked the fact that the movie brought forward some of what goes into saving lives from a water perspective.<br /><br />The special effects were pretty good and more than a little intimidating. Not sure I\'ll ever go deep sea fishing again...<br /><br />I expected a little more emotion in the film than what was presented.<br /><br />Definitely a movie that could\'ve been seen on DVD.', 'Positive', 1),
(20, 'This movie was sadly under-promoted but proved to be truly exceptional. Entering the theatre I knew nothing about the film except that a friend wanted to see it.<br /><br />I was caught off guard with the high quality of the film. I couldn\'t image Ashton Kutcher in a serious role, but his performance truly exemplified his character. This movie is exceptional and deserves our monetary support, unlike so many other movies. It does not come lightly for me to recommend any movie, but in this case I highly recommend that everyone see it.<br /><br />This films is Truly Exceptional!', 'Positive', 1),
(21, 'How many movies are there that you can think of when you see a movie like this? I can\'t count them but it sure seemed like the movie makers were trying to give me a hint. I was reminded so often of other movies, it became a big distraction. One of the borrowed memorable lines came from a movie from 2003 - Day After Tomorrow. One line by itself, is not so bad but this movie borrows so much from so many movies it becomes a bad risk.<br /><br />BUT...<br /><br />See The Movie! Despite its downfalls there is enough to make it interesting and maybe make it appear clever. While borrowing so much from other movies it never goes overboard. In fact, you\'ll probably find yourself battening down the hatches and riding the storm out. Why? ...Costner and Kutcher played their characters very well. I have never been a fan of Kutcher\'s and I nearly gave up on him in The Guardian, but he surfaced in good fashion. Costner carries the movie swimmingly with the best of Costner\'s ability. I don\'t think Mrs. Robinson had anything to do with his success.<br /><br />The supporting cast all around played their parts well. I had no problem with any of them in the end. But some of these characters were used too much.<br /><br />From here on out I can only nit-pick so I will save you the wear and tear. Enjoy the movie, the parts that work, work well enough to keep your head above water. Just don\'t expect a smooth ride.<br /><br />7 of 10 but almost a 6.', 'Negative', 1),
(22, 'My yardstick for measuring a movie\'s watch-ability is if I get squirmy. If I start shifting positions and noticing my butt is sore, the film is too long. This movie did not even come close to being boring. Predictable in some parts sure, but never boring.<br /><br />All of the other military branches have had love notes written about them and seen their recruitment levels go up, why not the Coast Guard too? They are definitely under-appreciated, until the day your boat sinks that is.<br /><br />The movie was very enjoyable and fun. Kevin Costner is perfect as the aging macho man who doesn\'t know when to quit. However, I was most impressed by Ashton Kutcher\'s performance. I have never liked him, never watched any of his TV shows and always considered him an immature ... well, punk. In this film, he does a great job! He is well on his way to having leading-man status. I think the film we were shown must have been an advance rough cut or something, because about 2/3 of the way in, the film stock turned very grainy, the sound level dropped and microphones were seen dropping down all over the place. Also at the viewing were representatives from the movie, looking for audience feedback - particularly on the parts of the film we didn\'t like.<br /><br />*****POSSIBLE SPOILER: The feedback I gave concerned a a couple of lines in the beginning. Kevin Costner comes home to see his wife, Sela Ward, packing her stuff up and moving out. He says, \"Maybe I should be the one to move out.\" And she replies, \"No, you don\'t know where anything is in this house; I should be the one to go.\" This doesn\'t make sense: If she knows the layout so well, Costner is right, he *should* be the one to leave.', 'Positive', 1),
(23, 'My boyfriend and I went to watch The Guardian.At first I didn\'t want to watch it, but I loved the movie- It was definitely the best movie I have seen in sometime.They portrayed the USCG very well, it really showed me what they do and I think they should really be appreciated more.Not only did it teach but it was a really good movie. The movie shows what the really do and how hard the job is.I think being a USCG would be challenging and very scary. It was a great movie all around. I would suggest this movie for anyone to see.The ending broke my heart but I know why he did it. The storyline was great I give it 2 thumbs up. I cried it was very emotional, I would give it a 20 if I could!', 'Positive', 1),
(24, '\"The Dresser\" is perhaps the most refined of backstage films. The film is brimming with wit and spirit, for the most part provided by the \"energetic\" character of Norman (Tom Courtenay). Although his character is clearly gay, and certainly has an attraction for the lead performer (Albert Finney) that he assists, the film never dwells on it or makes it more than it is.<br /><br />The gritty style of Peter Yates that worked so well in \"Bullitt\" is again on display, and gives the film a sense of realism and coherence. This is much appreciated in a story that could so easily have become tedious. In the end, \"The Dresser\" will bore many people silly, but it will truly be a delight to those who love British cinema.<br /><br />7.7 out of 10', 'Positive', 1),
(25, 'Brilliant and moving performances by Tom Courtenay and Peter Finch.', 'Positive', 1),
(26, 'I always wrote this series off as being a complete stink-fest because Jim Belushi was involved in it, and heavily. But then one day a tragic happenstance occurred. After a White Sox game ended I realized that the remote was all the way on the other side of the room somehow. Now I could have just gotten up and walked across the room to get the remote, or even to the TV to turn the channel. But then why not just get up and walk across the country to watch TV in another state? \"Nuts to that\", I said. So I decided to just hang tight on the couch and take whatever Fate had in store for me. What Fate had in store was an episode of this show, an episode about which I remember very little except that I had once again made a very broad, general sweeping blanket judgment based on zero objective or experiential evidence with nothing whatsoever to back my opinions up with, and once again I was completely right! This show is a total crud-pie! Belushi has all the comedic delivery of a hairy lighthouse foghorn. The women are physically attractive but too Stepford-is to elicit any real feeling from the viewer. There is absolutely no reason to stop yourself from running down to the local TV station with a can of gasoline and a flamethrower and sending every copy of this mutt howling back to hell.', 'Negative', 2),
(27, 'Didn\'t the writer for this movie see the other three? I loved the original, I thought 2 was the best, I tolerated 3 (it was OK, nothing special). But I HATED this one. Who dare they kill off UG? This was certainly not the Ug who had been almost like a brother to Charlie in number 2. Remember his speech? Charlie said, \"You wouldn\'t just leave me on Earth, would you\". Ug replied, \"Charlie, Bounty Hunter\", saying that he was now one of them now. How dare the writers ignore this special bond between them and turn him into a baddie who get\'s killed by Charlie (in a particularly awkward scene) just because they realized the movie was getting boring. In fact for the first 20 minutes, we get a new cast and have to wait this long until we again find out what happened to Charlie, who was the hero we\'ve been waiting to see. I kept waiting saying, \"Come on, when\'s Charlie going to appear?\" Angela Basset must be doing her best to deny she was ever in this Turkey. Moving it to the future eliminates the possibility of ever seeing a sequel with the original cast or in our time. I think the writers decided, that their movie was going to be the last and they could do whatever they wanted. This movie is totally out of line with the first two. And it didn\'t even seem like it was written by the same people who made 3. 3 at least had humor and could easily be seen by younger Children. 4 is just ugly and mean-spirited (Eric DaRe) is particularly cruel and unnecessary. I hated this movie. Hated, hated, hated it. I hated the fact that anyone could like it and I hated the fact that it ruined what was one of my favorite camp classics. I give this a one start simply because IMDb.com won\'t let me give it a zero.', 'Negative', 2),
(28, '\"Der Todesking\" is not exactly the type of film that makes you merry Jörg Buttgereit\'s second cult monument in a row, which is actually a lot better than the infamous \"Nekromantik\", exists of seven short episodes  one for each day of the week  revolving on unrelated people\'s suicides. In between these already very disturbing episodes, Buttgereit inserts truly horrifying images of a severely decomposing male corpse. The episodes aren\'t all equally powerful but, as a wholesome, \"Der Todesking\" is ranked quite high on the list of all-time most depressing art-house films. Particularly the episodes on Wednesday, involving a man explaining his sexual frustrations to a total stranger in the park, and the one of Sunday, focusing on a younger man molesting himself to dead, are extremely intense and devastating to observe. The added value of this film, or any other shockumenary like it, is debatable and I\'m not even sure whether or not Buttgereit had any type of message to communicate here. There\'s the vague mentioning of an eerie chain letter that encourages its readers to commit suicide but mostly we remain uninformed about these people\'s motivations to end their lives so dramatically. Entirely unlike I expected, \"Der Todesking\" isn\'t exploitative or repulsively graphic! On the contrary actually, I never could have hoped Buttgereit would be so subtle and thoughtful regarding the portrayal of pure human misery. The Thursday episode is a perfect example of this, as it stylishly shows different viewpoints of a famous German bridge while the names, ages and occupations of persons who jumped off appear on the screen. The production values are inescapably poor and the editing often lacks professionalism, but this isn\'t what really counts in this type of cinema. The subject matter is strong and forcing us to contemplate about the less cheerful  but also indispensable  aspects of life. GREAT use of tragic music, too!', 'Positive', 2),
(29, 'Maybe it\'s unfair to dislike a movie for what it isn\'t, rather than what it is, but I approached this hoping that finally a filmmaker would make a movie about small-town rural gay men and women. Instead, the focus is primarily on the outrageous bigotry (big news!) of the locals (and those in outlying areas) and the really gruesome torture/murder of a young gay man.', 'Negative', 2),
(30, 'I saw this film on September 1st, 2005 in Indianapolis. I am one of the judges for the Heartland Film Festival that screens films for their Truly Moving Picture Award. A Truly Moving Picture \"...explores the human journey by artistically expressing hope and respect for the positive values of life.\" Heartland gave that award to this film.', 'Positive', 2),
(31, 'William Hurt may not be an American matinee idol anymore, but he still has pretty good taste in B-movie projects. Here, he plays a specialist in hazardous waste clean-ups with a tragic past tracking down a perennial loser on the run --played by former pretty-boy Weller-- who has been contaminated with a deadly poison.', 'Positive', 2),
(32, 'This film is terrible - honestly. The acting is terrible, the script made me cringe, the effects are completely lousy (which I usually don\'t mind for older films, but this was made just two years ago), and everything about it just annoys me. A few friends go out on Halloween into the woods and meet a witch and her cannibal son. Of course, before that it has the cliché \"You really believe that? Ha ha ha, it\'s just a story\" routine dragged out for a while. The witch\'s cannibal son was made a retard (I don\'t know if it was for comedy or to make it creepy, but this film failed at both). It has minimal gore and no nudity, which made a bad film even worse. Heck, the only good thing about this film is the leg eating scene, and even that could of been better.<br /><br />Honestly, don\'t even waste your time watching it on cable, and certainly don\'t consider buying or renting this, else you\'ll be kicking yourself for wasting time which could of been spent doing something more constructive or entertaining.', 'Negative', 1),
(33, 'This film is terrible - honestly. The acting is terrible, the script made me cringe, the effects are completely lousy (which I usually don\'t mind for older films, but this was made just two years ago), and everything about it just annoys me. A few friends go out on Halloween into the woods and meet a witch and her cannibal son. Of course, before that it has the cliché \"You really believe that? Ha ha ha, it\'s just a story\" routine dragged out for a while. The witch\'s cannibal son was made a retard (I don\'t know if it was for comedy or to make it creepy, but this film failed at both). It has minimal gore and no nudity, which made a bad film even worse. Heck, the only good thing about this film is the leg eating scene, and even that could of been better.<br /><br />Honestly, don\'t even waste your time watching it on cable, and certainly don\'t consider buying or renting this, else you\'ll be kicking yourself for wasting time which could of been spent doing something more constructive or entertaining.', 'Negative', 2),
(34, 'I think it was an overrated PG-13 crap! At least BRITTANY SNOW\'s performance was good and some others like IDRIS ELBA were good too, but some others teens in the prom like the leads friends were not that convincing. The killer was so dumb and looked so stupid too. The deaths were stupid, boring and completely unoriginals. The movie was very boring too and very overrated. It wasn\'t suspenseful at all, i almost fall asleep. Its another bad PG-13 remake, its really a dreadful movie IMO. The ending was so stupid and the climax was very rushed and boring. The movie is pretty slow too. Overall the only good thing about this crap fest is maybe BRITTANY SNOW i think she gave a good performance and IDRIS ELBA too, but besides that it was a completely dreadful movie and horrible remake. Well thats just my opinion. i gave it a 2/10.', 'Negative', 2),
(35, 'Simple story showing the bond between human and machine, how quickly human get used to technology, loneliness of old people, people\'s reaction to new things around are presented very well. If had right amount of comedy. Only thing that doesn\'t fit is Malayalam speaking japanese lady. It was totally not needed.', 'Positive', 2),
(36, 'Simple story showing the bond between human and machine, how quickly human get used to technology, loneliness of old people, people\'s reaction to new things around are presented very well. If had right amount of comedy. Only thing that doesn\'t fit is Malayalam speaking japanese lady. It was totally not needed.', 'Positive', 10),
(37, 'I didn\'t go into this movie with much expectations but this movie surely surprised me. A career best performance by Suraj, good direction and a well executed emotional Sci-Fi story about human values and how an Android brings about a change in an Old Man and also the people surrounding him. Hopefully, this movie does well at the box office cause it would be a shame if it fails.', 'Positive', 10),
(38, 'AKV5.25 is a sci-fi comedy movie. A sci-fi genre is a rare case in Mollywood and we should note that the films under this genre are not remembered in Mollywood. But this movie will be remembered and cherished for a long time. The film is very funny and at the same time thoughtful. All the technical departments like direction, cinematography, editing, music etc. has done a very good job. They have done a pretty decent job in scenes in Russia too. All the performances were very good and Suraj Venjarammodu was another level. He was in his top form and he proves again that he is one of the best actors in Malayalam. Soubin Shahir have also done a good job. The performances of Saiju Kurippu, Kendy Zirdo and Maala Parvathi also deserves to be noted. One of the main character in this movie is the robot and they have done a very good job in making it realistic. The first half was very entertaining but the second half was very slow at some parts. The ending was also good and it will make us wonder for sometime. Overall, AKV5.25 is a very good movie and a must watch entertainment time.', 'Positive', 10),
(39, 'Suraj is superb!!! Film conveys a msg to the society! Evrything about the film is gud!! Everyone did their part very well.. All the comedied wer gud and it felt natural.. And you will love this kunjappan!!', 'Positive', 10),
(40, 'I basically skimmed through the movie but just enough to catch watch the plot was about. To tell you the truth it was kind of boring to me and at some spots it didn\'t make sense. The only reason I watched this movie in the first place was to see CHACE CRAWFORD!!! He is so hot, but in this movie his hair was kind of weird. But still hot.However, despite how hot CHACE is, it really did not make up for the film. I guess the plot isn\'t that bad but what really threw me over was the fact that they cuss in like every sentence. Is it that hard to express your anger without saying the F word every time?The cussing was annoying and the whole flashy, camera shaking thing gave me a headache.All in all, although the plot was OK, I found the film to be a bore and over dramatic. That\'s why I only cut to scenes with CHACE in it. LOL Anyways, not worth renting unless your a die-hard fan of a specific cast member like I was. Oh yeah the cast was Hot. The girls were HOT!!! But CHACE IS THE BEST!!', 'Negative', 10),
(41, 'This is a movie that only those who have felt alone and isolated can truly relate to it. You understand the motive and you feel sorry for the character. A lot of people will see this movie and think that it encourages violence. But truly, this movie should encourage each and every one of us to become a better person, treat everyone with respect and make each other feel like they belong in this world, instead of making them feel isolated.', 'Negative', 3),
(42, 'Every once in a while a movie comes, that truly makes an impact. Joaquin\'s performance and scenography in all it\'s brilliance. Grotesque, haunting and cringy. Hard to watch at times,... but so mesmerizing, you won\'t blink an eye watching it. Tragic, but with seriously funny moments. Emotional rollercoaster - sometimes, with multiple emotions popping-up at the same time.\r\n\r\nthis is far from a typical action-riddled predictable super-hero movie - it\'s a proper psychological thriller/drama, with the single best character development I have ever seen.', 'Positive', 3),
(43, 'It\'s sad that Joaquin missed Oscar for \'The gladiator\' as he was very compelling Villain. But I am quite confident he will win it for the \'Joker\'. Damn what a movie !!! Keeps u on the toes all the time. Unpredictable storyline and really a deep interesting plot. Did I forget to mention acting ? Damn Do niro and Joaquin teach u what really is 5 star acting. To enjoy this movie, get a wine in your hand, close the curtains, turn of ur cellphones and put do not disturb sign on ur door. Best Dark thriller suspense movie you will get to experience.', 'Negative', 3),
(44, 'This movie causes the audience to consider many topics on morality, particularly the poor choices made by the Joker. The Joker is more relatable in this movie than antagonists usually are. I think this gives a more realistic view of \"bad\" people, who are not usually 100% bad in all ways as society often judges. It is important to know when to sympathize with the Joker (towards the beginning of the movie), and when he needs to be identified as a threat (when he begins making certain bad choices). This movie is only suitable for adults who are willing to pick it apart and think critically about it. It isn\'t for light amusement. That substance is what makes it so good.\r\n\r\nIf you aren\'t able to ponder underlying themes on your own, and you have to be handed all your thoughts to you, then this isn\'t the best movie for you.', 'Negative', 3),
(45, 'It is important to know when to sympathize with the Joker (towards the beginning of the movie), and when he needs to be identified as a threat (when he begins making certain bad choices). This movie is only suitable for adults who are willing to pick it apart and think critically about it. It isn\'t for light amusement. That substance is what makes it so good.\r\n\r\nIf you aren\'t able to ponder underlying themes on your own, and you have to be handed all your thoughts to you, then this isn\'t the best movie for you.', 'Positive', 3),
(46, 'The acting, cinematography, sound design, and the script itself is phenomenal. This movie is a triumph. Joaquin Pheonix deserves an Oscar win for this tbh.', 'Negative', 3),
(47, 'Its really really bad, it\'s more like a racing movie then anything else, the whole movie was done using vfx.', 'Negative', 4);
INSERT INTO `saa_review` (`id`, `review`, `impression`, `movie`) VALUES
(48, 'Allowing this movie to air on the big screen, is an outright insult to the viewers. This is a half-assed, textbook case of milking a successful movie (Train to Busan) into a poor \"sequel\".\r\n\r\nI can write a book about the plot holes, inconsistensies and the movies being impossible for the viewers to suspend their disbelief to take it seriously.', 'Negative', 4),
(49, 'When Train to Busan hit theaters, it became a sensational hit for the right reasons. It manages to become an enjoyable blockbuster yet with smart social commentary and emotional moments that (I need to admit) made me cry. 4 years later, Peninsula - the sequel - hit the theaters with high ambition but fail to reach the height of its predecessor as it falls into the ordinary sequel trap.\r\n', 'Positive', 4),
(50, 'Not thrilled at all n not scary at all. Not touching at all as well. It\'s becoming similar to maze runner story a bit but worst. Too much graphics throughout the movie. Doesn\'t feel its a zombie movie anymore. Was expecting a nice sequel from part 1 which was superb well done.', 'Positive', 4),
(51, 'As others that have commented around the web... I\'m a 130 pilot in the Coast Guard. Having said that, and being the skeptic I am, I went expecting the over-the-top cheese factors. There was some cheese, but all in all, not much.. and the film was pretty accurate.I watched the trailer again today. After seeing the film yesterday, I\'ve realized the trailer gives the impression the movie is nothing but rescue after rescue action scenes. This isn\'t the case.The movie is truly more character/story driven than action. The inner struggles both Costner and Kutcher are dealing with.. Kutcher\'s is revealed further into than movie than Costner\'s is.Of course, there is a minor love story.. no surprise there. But for the most part, the movie tells the tale of two lives that come together, and after some time, help each other heal old wounds.As girlie as it sounds, Costner and, as much as I try not to like him, Kutcher do actually work quite well together and compliment each other very well in the movie.As critics have stated, you\'ve seen it all before.. Top Gun, Officer and a Gentlemen, etc. But what movie hasn\'t been remade a million times.I can recall only one F word being spoken.. and can\'t really recall any other language.The movie is 2+ hours, and for some, may tend to get a little long towards the end.You\'ll laugh, you may cry, but I can honestly say, it was worth the $4 I paid.I hope you enjoy the movie.', 'Positive', 4),
(52, '\"The Avengers\" brings together a group of extremely talented actors and epic superheroes, to create an action packed movie with hilarious banter laced into countless scenes. Superhero movies give actors a chance to play new characters with personalities they have never portrayed before. Chris Evans is the extremely passionate and kind hearted Captain America, while Robert Downey Jr is the tougher and sassier Iron Man. The film is very creative with introducing each character and later bringing them together. The villain, Loki Laufeyson, played by Tom Hiddleston, even shows his weak spots and is almost seen as part of the Avengers team. The actors have fantastic chemistry with each other on and off screen, and they make man- tights and capes look more fashionable than ever. The majority of the film is done by special effects, made by an amazing team. ', 'Positive', 5),
(53, 'I was lucky enough to attend the Marvel screening of \'The Avengers\' on Saturday morning in Century City, CA. This was an unusual screening as movies of this caliber are not screened some three weeks before it\'s release date. Just minutes before the movie started, we were all surprised when writer/director Joss Whedon walked in with Kevin Feige to introduced their little \"Justice League\" movie', 'Positive', 5),
(54, 'Have movies become so bad these days that a merely well-executed totally formulaic film, like \"The Avengers,\" is heralded as an exceptional film?\r\n\r\nSure, this film hits all the marks and has some good one-liners, but once we expected films to be refreshing and new. \"Star Wars,\" while having obvious flaws, provided us a totally new universe with its own unique political conflicts, worlds, and even its own theology (the force). Its first twenty-minutes is mostly watching the story of a robotic English dandy (C3-P0) argue with a chirping rolling trashcan (R2-D2), but amazingly enough Lucas made that unique and crazy idea entertaining. The plot of \"The Avengers\" is just your run-of-the-mill comic book', 'Positive', 5),
(55, 'Along these same lines, \"Psycho,\" \"The Empire Strikes Back,\" \"The Matrix,\" etc. provide classic twists--Norman has gone insane and has, in his mind, become his mother, the film\'s apparent killer; Darth Vader, the film\'s main villain, is revealed to be Luke\'s father; the first half of \"The Matrix\" turns out to have transpired in a totally false reality. Nobody expected these twists. What unexpected occurs in \"The Avengers\"? Even its minor twists have appeared in other recent films. Its most significant--Loki allowing his own capture--comes straight from \"The Dark Knight.\"', 'Positive', 5),
(56, 'Saw the preview at the end of Thor back in 2011... had to wait almost a year to experience the global phenomenon first-hand. The theater experience wasn\'t something to forget.\r\n\r\nAll in all, the title of this review says it all. \'Marvel\'s The Avengers\' is quite possibly the greatest superhero movie in history. The combination of hardcore assassins Widow and Hawkeye, reclusive Banner, arrogant Iron Man, leader Cap and the Norse brothers Thor and Loki mixes itself together into a concoction of personalities and superpowers which guarantees to impress.\r\n\r\nMarvel has set the bar high for themselves. Since its release, only a select few superhero movies have compared to it. And all of them have been Marvel!', 'Positive', 5),
(57, 'As others that have commented around the web... I\'m a 130 pilot in the Coast Guard. Having said that, and being the skeptic I am, I went expecting the over-the-top cheese factors. There was some cheese, but all in all, not much.. and the film was pretty accurate.<br /><br />I watched the trailer again today. After seeing the film yesterday, I\'ve realized the trailer gives the impression the movie is nothing but rescue after rescue action scenes. This isn\'t the case.<br /><br />The movie is truly more character/story driven than action. The inner struggles both Costner and Kutcher are dealing with.. Kutcher\'s is revealed further into than movie than Costner\'s is.<br /><br />Of course, there is a minor love story.. no surprise there. But for the most part, the movie tells the tale of two lives that come together, and after some time, help each other heal old wounds.<br /><br />As girlie as it sounds, Costner and, as much as I try not to like him, Kutcher do actually work quite well together and compliment each other very well in the movie.<br /><br />As critics have stated, you\'ve seen it all before.. Top Gun, Officer and a Gentlemen, etc. But what movie hasn\'t been remade a million times.<br /><br />I can recall only one F word being spoken.. and can\'t really recall any other language.<br /><br />The movie is 2+ hours, and for some, may tend to get a little long towards the end.<br /><br />You\'ll laugh, you may cry, but I can honestly say, it was worth the $4 I paid.<br /><br />I hope you enjoy the movie.', 'Positive', 5),
(58, 'I went to an advance screening of this movie thinking I was about to embark on 120 minutes of cheezy lines, mindless plot, and the kind of nauseous acting that made \"The Postman\" one of the most malignant displays of cinematic blundering of our time. But I was shocked. Shocked to find a film starring Costner that appealed to the soul of the audience. Shocked that Ashton Kutcher could act in such a serious role. Shocked that a film starring both actually engaged and captured my own emotions. Not since \'Robin Hood\' have I seen this Costner: full of depth and complex emotion. Kutcher seems to have tweaked the serious acting he played with in \"Butterfly Effect\". These two actors came into this film with a serious, focused attitude that shone through in what I thought was one of the best films I\'ve seen this year. No, its not an Oscar worthy movie. It\'s not an epic, or a profound social commentary film. Rather, its a story about a simple topic, illuminated in a way that brings that audience to a higher level of empathy than thought possible. That\'s what I think good film-making is and I for one am throughly impressed by this work. Bravo!', 'Positive', 5),
(59, 'If you had asked me how the movie was throughout the film, I would have told you it was great! However, I left the theatre feeling unsatisfied. After thinking a little about it, I believe the problem was the pace of the ending. I feel that the majority of the movie moved kind of slow, and then the ending developed very fast. So, I would say the ending left me disappointed.<br /><br />I thought that the characters were well developed. Costner and Kutcher both portrayed their roles very well. Yes! Ashton Kutcher can act! Also, the different relationships between the characters seemed very real. Furthermore,I thought that the different plot lines were well developed. Overall, it was a good movie and I would recommend seeing it.<br /><br />In conclusion: Good Characters, Great Plot, Poorly Written/Edited Ending. Still, Go See It!!!', 'Negative', 5),
(60, 'I went and saw this movie last night after being coaxed to by a few friends of mine. I\'ll admit that I was reluctant to see it because from what I knew of Ashton Kutcher he was only able to do comedy. I was wrong. Kutcher played the character of Jake Fischer very well, and Kevin Costner played Ben Randall with such professionalism. The sign of a good movie is that it can toy with our emotions. This one did exactly that. The entire theater (which was sold out) was overcome by laughter during the first half of the movie, and were moved to tears during the second half. While exiting the theater I not only saw many women in tears, but many full grown men as well, trying desperately not to let anyone see them crying. This movie was great, and I suggest that you go see it before you judge.', 'Positive', 5),
(61, 'I\'ve seen this story before but my kids haven\'t. Boy with troubled past joins military, faces his past, falls in love and becomes a man. The mentor this time is played perfectly by Kevin Costner; An ordinary man with common everyday problems who lives an extraordinary conviction, to save lives. After losing his team he takes a teaching position training the next generation of heroes. The young troubled recruit is played by Kutcher. While his scenes with the local love interest are a tad stiff and don\'t generate enough heat to melt butter, he compliments Costner well. I never really understood Sela Ward as the neglected wife and felt she should of wanted Costner to quit out of concern for his safety as opposed to her selfish needs. But her presence on screen is a pleasure. The two unaccredited stars of this movie are the Coast Guard and the Sea. Both powerful forces which should not be taken for granted in real life or this movie. The movie has some slow spots and could have used the wasted 15 minutes to strengthen the character relationships. But it still works. The rescue scenes are intense and well filmed and edited to provide maximum impact. This movie earns the audience applause. And the applause of my two sons.', 'Positive', 5),
(62, 'I was looking forward to The Guardian, but when I walked into the theater I wasn\'t really in the mood for it at that particular time. It\'s kind of like the Olive Garden - I like it, but I have to be in the right mindset to thoroughly enjoy it.<br /><br />I\'m not exactly sure what was dampening my spirit. The trailers looked good, but the water theme was giving me bad flashbacks to the last Kevin Costner movie that dealt with the subject - Waterworld. Plus, despite the promise Ashton Kutcher showed in The Butterfly Effect, I\'m still not completely sold on him. Something about the guy just annoys me. Probably has to do with his simian features.<br /><br />It took approximately two minutes for my fears to subside and for my hesitancies to slip away. The movie immediately throws us into the midst of a tense rescue mission, and I was gripped tighter than Kenny Rogers\' orange face lift. My concerns briefly bristled at Kutcher\'s initial appearance due to the fact that too much effort was made to paint him as ridiculously cool and rebellious. Sunglasses, a tough guy toothpick in his mouth, and sportin\' a smirk that\'d make George Clooney proud? Yeah, we get it. I was totally ready to hate him.<br /><br />But then he had to go and deliver a fairly strong performance and force me to soften my jabs. <br /><br />Darn you, ape man! Efficiently mixing tense, exciting rescue scenes, drama, humor, and solid acting, The Guardian is easily a film that I dare say the majority of audiences will enjoy. You can quibble about its clichés, predictability, and rare moments of overcooked sappiness, but none of that takes away from the entertainment value.<br /><br />I had a bad feeling that the pace would slow too much when Costner started training the young guys, but on the contrary, the training sessions just might be the most interesting aspect of the film. Coast Guard Rescue Swimmers are heroes whose stories have never really been portrayed on the big screen, so I feel the inside look at what they go through and how tough it is to make it is very informative and a great way to introduce audiences to this under-appreciated group.<br /><br />Do you have what it takes to be a rescue swimmer? Just think about it -you get to go on dangerous missions in cold, dark, rough water, and then you must fight disorientation, exhaustion, hypothermia, and a lack of oxygen all while trying to help stranded, panicked people who are depending on you for their survival. And if all that isn\'t bad enough, sometimes you can\'t save everybody so you have to make the tough decision of who lives and who dies.<br /><br />Man, who wants all that responsibility? Not me! I had no idea what it was really like for these guys, and who would have thought I\'d have an Ashton Kutcher/Kevin Costner movie to thank for the education? <br /><br />Not only does The Guardian do a great job of paying tribute to this rare breed of hero, but lucky for us it also does a good job of entertaining its paying customers.<br /><br />THE GIST <br /><br />Moviegoers wanting an inside look at what it\'s like to embark on a daring rescue mission in the middle of the ocean might want to give The Guardian a chance. I saw it for free, but had I paid I would\'ve felt I had gotten my money\'s worth.', 'Negative', 5),
(63, 'I work at a movie theater and every Thursday night we have an employee screening of one movie that comes out the next day...Today it was The Guardian. I saw the trailers and the ads and never expected much from it, and in no way really did i anticipate seeing this movie. Well turns out this movie was a lot more than I would have thought. It was a great story first of all. Ashton Kutcher and Kevin Costner did amazing acting work in this film. Being a big fan of That 70\'s Show I always found it hard thinking of Kutcher as anyone but Kelso despite the great acting he did in The Butterfly Effect, but after seeing this movie I think I might be able to finally look at him as a serious actor.<br /><br />It was also a great tribute to the unsung heroes of the U.S. Coast Guard.', 'Positive', 5),
(64, 'The task of bringing together Earth\'s mightiest heroes took Joss Whedon into uncharted territory with 2012\'s \"The Avengers,\" and, despite the weight of the Marvel Cinematic Universe on his shoulders, the results were staggeringly entertaining. The task of making a sequel to that ground-breaking, monumental event film, however, and being expected to deliver on par or better results, is an entirely different beast.\r\n\r\n\"Avengers: Age of Ultron\" was definitely built on the bullet point takeaways of \"The Avengers,\" which are: Make time and space for wit, banter and humor for the sake of humor to prevent the film from taking itself too seriously; give each character a story arch and independent moments; choreography clever action sequences with well-timed glory shots. These components are in full force in \"Ultron\" and make enjoying the blockbuster as easy as shoving a lollipop in your mouth.', 'Positive', 6),
(65, 'Yet \"Ultron\" is infinitely more complex than its predecessor. The number of heroes featured barely fits into a single action figure play case, meaning more subplots and back story, in addition to creating an arch of the creation and life of Ultron itself. With a plot that takes the Avengers from the eastern European country of \"Sokovia\" to New York to the African nation of \"Wakanda\" to Seoul, South Korea to Sokovia again, much of \"Age of Ultron\" is a non-stop blur.\r\n\r\nThe film opens with the Avengers leading an assault on a secret HYDRA facility where they have located the staff that Loki used to lead the Chitauri invasion in \"The Avengers.\" When they secure it and bring it back to New York, Tony Stark (Robert Downey Jr.) and Bruce Banner (Mark Ruffalo) discover that its power source contains a blueprint for artificial intelligence, which would allow Stark to proceed with his Ultron project, an initiative to create peace-keeping robots that could defend the world in place of the Avengers should another alien invasion occur. When Ultron (voiced by James Spader) becomes conscious, however, he interprets his peace-keeping instructions as an imperative to wipe out humankind.', 'Positive', 6),
(66, 'In 2012, there came a day unlike any other day where the worlds greatest heroes were united against a common threat and THE AVENGERS blew away audiences of all ages with the first ever comic book movie crossover. In 2015, there came another day unlike any other day and this time the world is threatened by a Ultron, the cynical critical atypical child of Skynet and Megatron...... No actually he\'s just a wisecracking artificial intelligence with delusions of godhood and all round evil. Turning on his creators, he threatens all life on earth with his sidekicks \"illusion- woman\" and \"not-the-flash\"....I mean, Scarlet Witch and Quicksilver, and it is up to the Avengers to take him out before he can usher in THE AGE OF ULTRON.', 'Positive', 6),
(67, 'being a huge Marvel fan, and also Josh Whedon fan I was super excited for him to come back and do another Avengers movie. The first film was pretty brilliant. But with this film, Whedon wasn\'t given much air to breathe, with constant Studio interference and orders of certain shots to be re- done, or scrapped if not worse. Put in.\r\n\r\nSo, you thinking why is this film so bad, if you are a fan, you should love it. Well the film changes pace, very quickly and abruptly, which is a poor sign of movie making. The Characters do not act like they would usually act in the same scenario, the progression of the story is all over the place, Scene\'s that just have no weight or meaning to the film, but in there because it looks cool or is setting up another independent super hero movie, the Villain that is so smart, but doesn\'t use the internet and his ability to control', 'Negative', 6),
(68, 'Brilliant acting , if you watch this in Querentine you can understand even better, If Kerala haven\'t controlled the virus it\'s might take unimaginable lives the way they acted in movie you think it\'s happening in real life , there are no songs or useless things shown in the movie like typical Indian movies does.', 'Positive', 7),
(69, 'This movie is a beginning for the Indian film industry to try something different.The director explained the real incident in a powerful way with some fiction which made The movie more effective. The whole crew members did a great job and The impact it made in me as a movie lover is big. One of the finest directorial ventures from India. 10/10 for sure', 'Positive', 7),
(70, 'I know that title may seem a little presumptuous, since a movie about the Kerala Floods is in works. But till then, the closest we have to the HBO Masterpiece is Virus. Whatever Chernobyl did to entice the audience, the same has been done in Virus. But less effectively. Whatever Chernobyl did to stay true to the story, Virus had done more. In terms of a disaster movie, Virus wouldn\'t be your cup of coffee. But for a survival one, it can hold and twist your nerves till the curtains draw.\r\n', 'Positive', 7),
(71, 'Nipah is a horrible thing, it kills 70% of infected yet sometimes it shows no symptoms, a fearsome combination. This film is an investigative drama based on real events from 2018 in Kerala, where this bat virus started to infect and spread in the human population. I believe this is the first Indian film I\'ve seen in decades and I was pleasantly surprised. The actors are doing a good job, the story is scientifically interesting. However, I have to say that most of the characters were not fleshed out well, making it difficult to remember who is who and what is their role in the story.\r\n\r\nOne of the reasons for tension is the meddling of the Ministry of Defence who wants at all costs to portray the outbreak as a terrorist attack. Medics and investigators must hurry not only to determine the course of the outbreak and identify the carriers in time, but also bring evidence that it wasn\'t a malevolent act so that the investigation remains in the hands of medical personnel. Another is the way scientists and government people need to approach poor and sometimes violent communities of people who do not trust them.\r\n\r\nFor a non-Indian, their way of shaking the head when they want to make a point seems a bit silly and it takes out some of the tension in a story that should be by all accounts terrifying. Also funny to hear them go into English, then back again to Malayalam in the same sentence, like it\'s the most normal thing in the world. And that while discussing between ministry people.\r\n\r\nAll in all a nice movie, feeling modern, showing both an interesting outbreak story and providing glimpses into the Indian culture.\r\n', 'Positive', 7),
(72, 'This is one of the best (medical) thrillers I have seen and also a very realistic portrayal of the characters from the actual virus outbreak scenario based on my reading of news reports ( I had closely followed the outbreak when it happened). The makers of this movie has done a great research before creating this movie and a respect them for that. I thoroughly enjoyed watching the movie and I will recommend this to anyone who wants to watch a good medical thriller. (One thing I felt that could have been avoided were somewhat gross scenes like vomiting. But then, maybe in a medical thriller - such things are to be expected. )', 'Positive', 7),
(73, 'Virus is not just one of the best movies of the year, it is one of the best movies ever made in Mollywood history. It is so well crafted doc-fiction. Aashiq Abu delivers the best movie of his career and is simply one of the best directors in India. The movie keeps us thrilled and always triggers suspense and goosebumps. There is no single standout performance as every single actor in this movie was perfect. Kudos to Rajeev Ravi. His cinematography was another level. Sushin Shyam\'s music was one of the backbones of the movie and he can be Malayalam\'s Hans Zimmer. Overall, Virus is a perfect movie that everyone should warch in theatres. Mollywood will be proud of Virus. P. S. Audiences may feel a bit lost in the time realtions during the movie but the climax makes all that connections.', 'Positive', 7),
(74, 'The great survival thriller, a must watchable motivational movie. The best story and the direction, all the cast teams are acted well. All the very best team #Virus', 'Positive', 7),
(75, 'Brilliant movie! Hats of to the director Aashiq Abu in keeping it raw and real. This movie brings together a host of well-known Malayalam actors from the current generation angry young man Tovino as the DC to Indrans as the #1 Nipah victim\'s father and each one of them I believe brought in one of their greatest performances even with short screen times. It truly brings into perspective what doctors and health workers go through on a daily basis and Ashiq Abu and team does justice in bringing this to the fore. The screenplay has brought out the Nipah incident in an eerily beautiful way and the humans emotions have been captured intensely even though it may not invest you deeply into the characters due to short screens times. The bgm was on spot and Sushin Shyam does a great job in bringing out the grim and tense atmosphere, a class effort from him as always. All in all a laudable effort and a must watch movie at the top of an already crowded list of top Malayalam movies this year.', 'Positive', 7),
(76, 'The real story behind the Nipah virus but not sure of its credibility since there have been some changes wrt the names of the characters & places involved it seems. 1st half of the movie had introductions of so many characters and hence it was very difficult to even keep track who does what but almost every one of them is linked in some way or the other and linkage/decoding of the spread of the disease was nicely made and delivered in real sense with real facts as if it happened in real life aka with no cinematic or commercial essence added to it, which is the major reason for the movie being slow since the scenes that should\'ve been elevated were not elevated at all, I think music should\'ve played a major role to fill this gap but that have been missed and the explanation of characters with some cinematic feel might\'ve given a better grip to keep the audiences engaged. The fact that even the most popular actors who were seen without makeup where unnoticeable and we could recognize them only after double confirming with the film cast listings, I think this is the only fact that keeps the Malayalam cinema as a unique one.\r\n', 'Negative', 7),
(77, 'I work at a movie theater and every Thursday night we have an employee screening of one movie that comes out the next day...Today it was The Guardian. I saw the trailers and the ads and never expected much from it, and in no way really did i anticipate seeing this movie. Well turns out this movie was a lot more than I would have thought. It was a great story first of all. Ashton Kutcher and Kevin Costner did amazing acting work in this film. Being a big fan of That 70\'s Show I always found it hard thinking of Kutcher as anyone but Kelso despite the great acting he did in The Butterfly Effect, but after seeing this movie I think I might be able to finally look at him as a serious actor.<br /><br />It was also a great tribute to the unsung heroes of the U.S. Coast Guard.', 'Positive', 7),
(78, 'If you had asked me how the movie was throughout the film, I would have told you it was great! However, I left the theatre feeling unsatisfied. After thinking a little about it, I believe the problem was the pace of the ending. I feel that the majority of the movie moved kind of slow, and then the ending developed very fast. So, I would say the ending left me disappointed.<br /><br />I thought that the characters were well developed. Costner and Kutcher both portrayed their roles very well. Yes! Ashton Kutcher can act! Also, the different relationships between the characters seemed very real. Furthermore,I thought that the different plot lines were well developed. Overall, it was a good movie and I would recommend seeing it.<br /><br />In conclusion: Good Characters, Great Plot, Poorly Written/Edited Ending. Still, Go See It!!!', 'Negative', 7),
(79, 'Kumbalangi Nights is such a aesthetic movie; the simplicity, the realness feel,the genuineness of the characters, they are flawed, so real and relatable, the cinematography, the score, the highlight of the film would be Soubin Shabir and Fahad Fazil, the acting performance by them was a tapestry in perfection, the vibe of the entire movie give me chills and made me leave the theater with a smile.', 'Positive', 8),
(80, 'This is a movie that every single man will connect to and embrace. Fahadh Faasil and Friends shatters all pre-established strictures of movie-making and imbues something hereto unprecedented, thus elevating the grounds of Malayalam film industry above the limits of criticism. The film delivers entertainment and instruction on an equal footing, never failing to keep us involved with the fortunes and predicaments of its characters. The film\'s final sequences are epiphanic. It effectively manages to tell us-from within its single setting and few characters-that perhaps holding onto humanity is the best hope for a society which is on the verge of disintegration from heinous prejudices.', 'Positive', 8),
(81, 'This is a movie that every single man will connect to and embrace. Fahadh Faasil and Friends shatters all pre-established strictures of movie-making and imbues something hereto unprecedented, thus elevating the grounds of Malayalam film industry above the limits of criticism. The film delivers entertainment and instruction on an equal footing, never failing to keep us involved with the fortunes and predicaments of its characters. The film\'s final sequences are epiphanic. It effectively manages to tell us-from within its single setting and few characters-that perhaps holding onto humanity is the best hope for a society which is on the verge of disintegration from heinous prejudices.', 'Positive', 8),
(82, 'Story of a dysfunctional family of four brothers Saji, Bonie, Bobby and Frankie. The brothers set aside their differences to help bobby achieve his dream of marying Babymol. Slowly the dysfunctional family turns into a happy functional family. Almost forgot, Jack Torrence from Shinning is Raymond, the complete man.', 'Negative', 8),
(83, 'Outstanding work by the team, each and every character in the movie was perfect for their respected roles. I just loved it completely', 'Positive', 8),
(84, 'The plot is very simple - \"Hundreds of people chasing to tame the bull that went amok\". But at the end, there is an unanswered question - Who is wild here? Man (or) the animal? Like his earlier movie \'Angamalay Diaries\', Lijo Jose has captured the life style of the village town wonderfully. Special mention to the night photography and sound effects team. Though the movie makes you wonder at times - \'Where this movie is heading to?\', it is a worthy watch and an unique film.', 'Positive', 9),
(85, 'This is not the Tamil Jallikattu, but a whole different kind of sport - one of savage masculine behaviour inflicted upon a single animal, which makes for disturbing viewing.\r\n\r\nThis is the way I look at this film:\r\n\r\n\'Jallikattu\' is an allegorical tale of mankind\'s eternal struggle to subdue Nature. However it is not possible to control Nature, and when she runs riot, the result is mayhem. In their eagerness to control and consume the beast, the menfolk of the village are themselves reduced to a primal state of savagery symbolized by the human mound that engulfs the buffalo in the end.', 'Positive', 9),
(86, 'Cannot believe that the movie is came by a malayalam director in malayalam industry. Fabulous is not enough to describe the movie Nailed it', 'Negative', 9),
(87, 'Visual treat and the politics of the movie is amazing .', 'Positive', 9),
(88, 'An over-hyped movie, which is thin on story and relies on strong visual and cinematography to render the message. The acting seems forced and exaggerated, and the characters go overboard to portray their wild side. Overall its a movie which pretends to be on the right side of good cinema, but leaves you with a negative feeling and a bad taste in your mouth. You are going to miss nothing by ignoring this movie.', 'Negative', 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saa_movie`
--
ALTER TABLE `saa_movie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saa_review`
--
ALTER TABLE `saa_review`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `saa_movie`
--
ALTER TABLE `saa_movie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `saa_review`
--
ALTER TABLE `saa_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
