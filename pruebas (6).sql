-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 13-03-2020 a las 21:02:29
-- Versión del servidor: 10.3.16-MariaDB
-- Versión de PHP: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pruebas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `npl`
--

CREATE TABLE `npl` (
  `id` int(11) NOT NULL,
  `texto` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `npl`
--

INSERT INTO `npl` (`id`, `texto`, `fecha`) VALUES
(1, '[{\r\n		\"1\": \"witness\",\r\n		\"2\": \"Watch\",\r\n		\"3\": \"See\",\r\n		\"tipo\": \"V\"\r\n}]', '2020-01-06 22:44:24'),
(2, '[{\r\n		\"1\": \"Interview\",\r\n		\"2\": \"Listen\",\r\n		\"3\": \"Hear\",\r\n		\"tipo\": \"A\"\r\n}]', '2020-01-03 17:42:14'),
(3, '[{\r\n		\"1\": \"Sensation\",\r\n		\"2\": \"Touch\",\r\n		\"3\": \"Feel\",\r\n		\"tipo\": \"Q\"\r\n}]', '2020-01-03 17:42:22'),
(4, '[{\r\n		\"1\": \"Solve\",\r\n		\"2\": \"Sentient\",\r\n		\"3\": \"Push\",\r\n		\"tipo\": \"Q\"\r\n}]', '2020-01-03 18:00:22'),
(5, '[{\r\n		\"1\": \"Observe\",\r\n		\"2\": \"Reach\",\r\n		\"3\": \"Specify\",\r\n		\"tipo\": \"V\"\r\n}]', '2020-01-03 18:09:48'),
(6, '[{\r\n		\"1\": \"To protest\",\r\n		\"2\": \"Emphasize\",\r\n		\"3\": \"Argue\",\r\n		\"tipo\": \"A\"\r\n}]', '2020-01-03 18:10:40'),
(7, '[{\r\n		\"1\": \"Proclaim\",\r\n		\"2\": \"Mention\",\r\n		\"3\": \"Acoustic\",\r\n		\"tipo\": \"A\"\r\n}]', '2020-01-03 18:06:50'),
(8, '[{\r\n		\"1\": \"Texture\",\r\n		\"2\": \"Maneuver\",\r\n		\"3\": \"Touch\",\r\n		\"tipo\": \"Q\"\r\n}]', '2020-01-03 18:06:53'),
(9, '[{\r\n		\"1\": \"To exhibit\",\r\n		\"2\": \"To inspect\",\r\n		\"3\": \"Sight\",\r\n		\"tipo\": \"V\"\r\n}]', '2020-01-03 18:07:25'),
(10, '[{\r\n		\"1\": \"Scrutinize\",\r\n		\"2\": \"In focus\",\r\n		\"3\": \"Scene\",\r\n		\"tipo\": \"V\"\r\n}]', '2020-01-03 18:12:29'),
(11, '[{\r\n		\"1\": \"Articulate\",\r\n		\"2\": \"Pay Attention\",\r\n		\"3\": \"Tone\",\r\n		\"tipo\": \"A\"\r\n}]', '2020-01-03 18:19:56'),
(12, '[{\r\n		\"1\": \"To stimulate\",\r\n		\"2\": \"Support\",\r\n		\"3\": \"Catch\",\r\n		\"tipo\": \"Q\"\r\n}]', '2020-01-03 18:20:27'),
(13, '[{\r\n		\"1\": \"Stamp\",\r\n		\"2\": \"Rumour\",\r\n		\"3\": \"Drumbeat\",\r\n		\"tipo\": \"A\"\r\n}]', '2020-01-03 18:20:15'),
(14, '[{\r\n		\"1\": \"Movement\",\r\n		\"2\": \"Heat\",\r\n		\"3\": \"Rush\",\r\n		\"tipo\": \"Q\"\r\n}]', '2020-01-03 18:18:27'),
(15, '[{\r\n		\"1\": \"Spark\",\r\n		\"2\": \"Mirror\",\r\n		\"3\": \"Perspective\",\r\n		\"tipo\": \"V\"\r\n}]', '2020-01-03 18:18:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nplnumeracion`
--

CREATE TABLE `nplnumeracion` (
  `id` int(11) NOT NULL,
  `pregunta` int(11) NOT NULL,
  `A` varchar(2) NOT NULL,
  `B` varchar(2) NOT NULL,
  `C` varchar(2) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `nplnumeracion`
--

INSERT INTO `nplnumeracion` (`id`, `pregunta`, `A`, `B`, `C`, `fecha`) VALUES
(1, 1, 'V,', 'A,', 'Q,', '2020-03-04 17:09:42'),
(2, 2, 'Q,', 'V,', 'A,', '2020-03-04 17:09:47'),
(3, 3, 'A,', 'Q,', 'V,', '2020-03-04 17:09:52'),
(4, 4, 'V,', 'A,', 'Q,', '2020-03-04 17:09:57'),
(5, 5, 'A,', 'Q,', 'V,', '2020-03-04 17:10:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plantilla`
--

CREATE TABLE `plantilla` (
  `id` int(11) NOT NULL,
  `barraSuperior` text COLLATE utf8_spanish_ci NOT NULL,
  `textoSuperior` text COLLATE utf8_spanish_ci NOT NULL,
  `colorFondo` text COLLATE utf8_spanish_ci NOT NULL,
  `colorTexto` text COLLATE utf8_spanish_ci NOT NULL,
  `logo` text COLLATE utf8_spanish_ci NOT NULL,
  `icono` text COLLATE utf8_spanish_ci NOT NULL,
  `redesSociales` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `plantilla`
--

INSERT INTO `plantilla` (`id`, `barraSuperior`, `textoSuperior`, `colorFondo`, `colorTexto`, `logo`, `icono`, `redesSociales`, `fecha`) VALUES
(1, '#418EFD', '#ffffff', '#418EFD', '#ffffff', 'vistas/img/plantilla/logo.png', 'vistas/img/plantilla/icono.png', '[{\r\n		\"red\": \"fa-facebook\",\r\n		\"estilo\": \"facebookBlanco\",\r\n		\"url\": \"http://facebook.com/coachteenu\"\r\n	}, {\r\n		\"red\": \"fa-twitter\",\r\n		\"estilo\": \"twitterBlanco\",\r\n		\"url\": \"http://twitter.com/coachteenu\"\r\n	}, {\r\n		\"red\": \"fa-instagram\",\r\n		\"estilo\": \"instagramBlanco\",\r\n		\"url\": \"http://instagram.com/coachteenu\"\r\n	}\r\n\r\n]', '2019-12-06 14:27:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE `preguntas` (
  `id` int(11) NOT NULL,
  `pregunta` text COLLATE utf8_spanish_ci NOT NULL,
  `valores` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`id`, `pregunta`, `valores`, `fecha`) VALUES
(1, 'Honestly, I am a fairly effective and practical organizer (for example, to organize sports meetings, excursions, sections of an association, etc.)', '05,10,11,', '2020-03-06 19:27:33'),
(2, 'I have a living imagination and I often feel the artistic inspiration.', '14,15,16,17,18,', '2019-12-02 18:34:00'),
(3, 'I like laboratory work.', '01,3,6,8,', '2020-03-06 19:27:36'),
(4, 'I have physical resistance and I like hard work (sports, marches, exercise, etc.)', '07,08,10,', '2020-03-06 19:27:41'),
(5, 'I think the economic aspect is very important in life and should be taken into account.', '11,12,', '2019-12-02 18:34:19'),
(6, 'I like to solve things by my own methods.', '01,02,06,07,11,', '2020-03-06 19:27:54'),
(7, 'Literature.', '02,09,17,18,', '2020-03-06 19:27:48'),
(8, 'Physics and Chemistry.', '01,06,07,', '2020-03-06 19:28:03'),
(9, 'Mathematical Calculations (operations, problems, etc.)', '06,07,10,12,', '2020-03-06 19:28:11'),
(10, 'I easily impose myself on my classmates (with my word, my action, etc.)', '05,01,', '2020-03-06 19:28:15'),
(11, 'Theoretical mathematics (theorems, deduction of formulas, etc.)', '01,06,11,', '2020-03-06 19:28:20'),
(12, 'I am really interested in solving other people?s problems; I am helpful.', '03,04,09,', '2020-03-06 19:28:24'),
(13, 'Psychology.', '04,05,', '2020-03-06 19:28:28'),
(14, 'I work hard to solve a difficult issue or problem.', '01,02,11,', '2020-03-06 19:28:35'),
(15, 'Natural Sciences.', '01,07,08,', '2020-03-06 19:28:39'),
(16, 'History.', '02,04,05,', '2020-03-06 19:28:44'),
(17, 'I easily understand and approve the moods of others. I like to put myself in the place of others.', '04,17,18,', '2020-03-06 19:28:49'),
(18, 'Accounting.', '11,12,13,', '2019-12-02 18:34:50'),
(19, 'Solfa.', '15,16,', '2019-12-02 18:34:52'),
(20, 'I have a remarkable ease of speech and I like to talk.', '09,18,', '2020-03-06 19:28:54'),
(21, 'Studies in Economics.', '11,12,', '2019-12-02 18:34:59'),
(22, 'I like to boss groups of people and respond to my orders before another superior (field leader, chief of section, etc.)', '06,07,10,', '2020-03-06 19:28:59'),
(23, 'When I hear any orfe?n or choir, and I notice some failure (someone who is tinkering, bad voice, etc.), it bothers me extraordinarily. I am quite?sensitive in this.', '15,16,', '2019-12-02 18:35:02'),
(24, 'I like to study theoretical problems (scientific, philosophical hypotheses, etc.)', '01,02,', '2020-03-06 19:29:02'),
(25, 'I easily get friendships, even if they arent always many.', '09,12,', '2020-03-06 19:29:07'),
(26, 'I prefer to study alone (not in company), and I concentrate a lot.', '1,2,', '2019-12-02 18:35:10'),
(27, 'I am very interested in the operation of machines and engines and the new mechanical inventions.', '6,7,', '2019-12-02 18:35:12'),
(28, 'I am very indignant about the injustices that others sometimes suffer. More than once I have defended others.', '4,5,', '2019-12-02 18:35:14'),
(29, 'In the cinema, the musical theme of the film remains in my mind a lot. I remember it even after a long time.', '15,16,', '2019-12-02 18:35:16'),
(30, 'I have facility to remember technical or scientific names.', '3,8,', '2019-12-02 18:35:20'),
(31, 'I prefer a free and healthy life in the countryside.', '8,9,', '2019-12-02 18:35:22'),
(32, 'I like acting in public.', '16,18,', '2019-12-02 18:35:23'),
(33, 'I have enough \"commercial view\" (to find and exploit a source of income, subsidies, profits, etc.) and not rarely I have proven that I am right.', '11,12,', '2019-12-02 18:35:25'),
(34, 'Studies of harmony and musical composition.', '15,16,', '2019-12-02 18:35:27'),
(35, 'I easily convince others friendly.', '4,12,', '2019-12-02 18:35:30'),
(36, 'I like to meditate on social reality.', '5,11,', '2019-12-02 18:35:31'),
(37, 'I like traveling and hotel life.', '9,12,', '2019-12-02 18:35:34'),
(38, 'Anatomy.', '3,8,', '2019-12-02 18:35:36'),
(39, 'I enjoy dealing with people and I enjoy the variety of people.', '9,12,', '2019-12-02 18:35:38'),
(40, 'I have a good ear for music. I learn songs and melodies soon and well.', '15,16,', '2019-12-02 18:35:42'),
(41, 'I have written some poems that liked to knowledgeable people.', '17,', '2019-12-02 18:35:45'),
(42, 'I would like to help to solve the anguish of the poor in an organized and efficient way (although this requires me a considerable time and effort).', '5,', '2019-12-02 18:35:47'),
(43, 'Mark the answer positively if either one of these two hypotheses is true: I have a good voice for singing, or else; I know how to play an orchestra instrument well.', '16,', '2019-12-02 18:35:50'),
(44, 'I prefer calm and sedentary work.', '13,', '2019-12-02 18:35:52'),
(45, 'I like to make repairs and practical arrangements (electrical installation, compose mechanisms, etc.)', '6,', '2019-12-02 18:35:55'),
(46, 'Philosophy.', '2,', '2019-12-02 18:35:57'),
(47, 'I like to make sketches, drawings, and cartoons. Others recognize that I have enough skill with them.', '14,', '2019-12-02 18:36:00'),
(48, 'I have the facility to comfort other people; I am comprehensive and I feel the problems of others in me.', '3,', '2019-12-02 18:36:02'),
(49, 'I have a lot of ease for languages.', '9,', '2019-12-02 18:36:04'),
(50, 'I am very interested in the deep study of historical crises.', '2,', '2019-12-02 18:36:06'),
(51, 'I dont mind interrupting sleep several times at night to take care of a sick person.', '3,', '2019-12-02 18:36:09'),
(52, 'I usually make broad and very realistic plans for the future.', '11,', '2019-12-02 18:36:11'),
(53, 'I like to intervene in controversial speeches, controversies or public discussions.', '5,', '2019-12-02 18:36:13'),
(54, 'I have facility to invent interesting stories.', '17,', '2019-12-02 18:36:15'),
(55, 'I like to collaborate on the orders of a boss.', '14,', '2019-12-02 18:36:19'),
(56, 'Religion studies.', '4,', '2019-12-02 18:36:21'),
(57, 'On vacation, or on occasion of visits to the countryside, I am interested in problems and exploitation of farms (birds, rabbits, etc.)', '8,', '2019-12-02 18:36:23'),
(58, 'I have the skills to declamation, and I have ever acted successfully.', '18,', '2019-12-02 18:36:25'),
(59, 'Physical Education (gymnastics).', '10,', '2019-12-02 18:36:27'),
(60, 'French and Italian studies.', '9,', '2019-12-02 18:36:30'),
(61, 'I prefer the same type of work every day.', '13,', '2019-12-02 18:36:31'),
(62, 'I am very interested in animals (different breeds of dogs, horses).', '8,', '2019-12-02 18:36:34'),
(63, 'In moments of inspiration, I can think of original musical themes.', '15,', '2019-12-02 18:36:37'),
(64, 'Geography.', '5,', '2019-12-02 18:36:39'),
(65, 'History of art.', '14,', '2019-12-02 18:36:41'),
(66, 'I am very interested in my classmates when they go through a crisis. Frequently friends ask me for advice.', '4,', '2019-12-02 18:36:44'),
(67, 'Musical Aesthetics study.   ', '15,', '2019-12-02 18:36:46'),
(68, 'English or German.', '8,', '2019-12-02 18:36:48'),
(69, 'I am neat and tidy in my things, including the presentation of my works.', '13,', '2019-12-02 18:36:51'),
(70, 'I really enjoy reading poetry.', '17,', '2019-12-02 18:36:54'),
(71, 'Classmates frequently ask me for clarifications about theorems or mathematical problems.', '1,', '2019-12-02 18:36:58'),
(72, 'I follow with interest in newspapers and magazines, political and international news.', '5,', '2019-12-02 18:36:59'),
(73, 'I am very disturbed by the lack of aesthetic taste (decorations, typography, presentation of a publication, etc.)', '14,', '2019-12-02 18:37:01'),
(74, 'In general, I like competition, fighting. I think many times, gentle and conciliatory procedures achieve nothing.', '10,', '2019-12-02 18:37:03'),
(75, 'Studies on poetry (rhythm, images, etc.)', '17,', '2019-12-02 18:37:05'),
(76, 'Before a sick person or animal, I am very curious to know their ailment.', '3,8,', '2019-12-02 18:37:07'),
(77, 'I like to work with a fixed schedule.', '13,', '2019-12-02 18:37:10'),
(78, 'If there is the opportunity, I act with pleasure in comedies, dramas, etc. They say I do it well.', '18,', '2019-12-02 18:37:11'),
(79, 'I prefer a defined job in which everything is well planned, rather than having to?constantly?invent solutions to new problems on my own.', '13,', '2019-12-02 18:37:13'),
(80, 'I like to contemplate panoramas, landscapes, sunsets, the colors of the clouds and the sea, etc.', '14,', '2019-12-02 18:37:15'),
(81, 'I like to write short articles, reports, etc.', '17,', '2019-12-02 18:37:17'),
(82, 'Studies on musical performance (instrument).', '16,', '2019-12-02 18:37:19'),
(83, 'Recitation Studies.', '18,', '2019-12-02 18:37:21'),
(84, 'I like to organize or cooperate in the sale of something.', '12,', '2019-12-02 18:37:23'),
(85, 'I like to ?tidy up? or help with it (rowdy groups, etc.)?and?on such occasions, it is necessary to act with effective and rapid sanctions.', '10,', '2019-12-02 18:37:24'),
(86, 'Literary things are easily recorded in my memory (poetry, speeches, etc.)', '18,', '2019-12-02 18:37:26'),
(87, 'I like to find out the \"why\" of complicated scientific claims.', '1,', '2019-12-02 18:37:28'),
(88, 'I like to practice artistic painting (watercolor paint, oil paint, etc.).', '14,', '2019-12-02 18:37:30'),
(89, 'Typing.', '13,', '2019-12-02 18:37:32'),
(90, 'I would spend hours in a library studying Literature, Philosophy or History.', '2,', '2019-12-02 18:37:36'),
(91, 'I enjoy teaching something (to someone who did not understand the explanation of the class, etc).', '4,', '2019-12-02 18:37:38'),
(92, 'Studies on drawings and perspectives.', '6,7,14,', '2019-12-02 18:37:40'),
(93, 'When a partner has suffered an accident (injury, etc.), although I am impressed, I tend to help him/her with cold blood.', '3,', '2019-12-02 18:37:42'),
(94, 'I have artistic \"feeling\" when I sing or play a musical instrument. Friends often invite me to it.', '16,', '2019-12-02 18:37:44'),
(95, 'I like to meditate personally on philosophical issues.', '2,', '2019-12-02 18:37:46'),
(96, 'Studies on modeling or artistic size.', '17,', '2019-12-02 18:37:49'),
(97, 'On vacation or when I go on an excursion, I am interested in different crops or field problems (use of the land, irrigation system, crops, tree grafts, etc.)', '7,', '2019-12-02 18:37:52'),
(98, 'Studies on modeling or artistic size.', '14,', '2019-12-02 18:37:54'),
(99, 'I love music. I wouldnt miss a concert.', '15,', '2019-12-02 18:37:56'),
(100, 'Courses on techniques and improvement of office work.', '13,', '2019-12-02 18:37:58'),
(101, 'I like to expose and clarify things, speaking in public in a logical and reasoned way.', '4,', '2019-12-02 18:38:01'),
(102, 'I have skills to make artistic objects (clay modeling, wood carving, etc.)', '14,', '2019-12-02 18:38:03'),
(103, 'Theatrical art theory (drama, comedy, etc.)', '18,', '2019-12-02 18:38:04'),
(104, 'I like regular and methodical jobs (one part every day with a plan and without haste).', '13,', '2019-12-02 18:38:06'),
(105, 'With interest, I read what I can about authors and music schools.', '15,', '2019-12-02 18:38:08'),
(106, 'I am rather conciliatory and kind; I like neither to dispute nor to collide with other people?s opinions.', '9,', '2019-12-02 18:38:10'),
(107, 'When I read novels or stories, it?s like I?m looking at places and people; I picture everything vividly.', '17,', '2019-12-02 18:38:11'),
(108, 'Almost without pretending, I realize many details. I am an effortless observer.', '3,', '2019-12-02 18:38:14'),
(109, 'I like to receive precise orders and instructions, even if they are similar, without many words.', '10,', '2019-12-02 18:38:15'),
(110, 'I like to have an artistically arranged room (paintings, tasteful decoration, etc.)', '15,', '2019-12-02 18:38:23'),
(111, 'I would like to continue studying after obtaining my degree because I like to keep up with the new advances in Science, even if it means self-denial and sacrifice.', '3,6,', '2019-12-02 18:38:26'),
(112, 'I would not mind an activity in which I have to travel to places far from where I live (fields, farms, etc.)', '8,', '2019-12-02 18:38:28'),
(113, 'I would not mind a severe, straight lifestyle.', '10,', '2019-12-02 18:38:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntasvpi`
--

CREATE TABLE `preguntasvpi` (
  `id` int(11) NOT NULL,
  `pregunta` text NOT NULL,
  `valores` text NOT NULL,
  `listapregunta` varchar(1) NOT NULL COMMENT 'Activities:A, Abilities:B, Ocupations:O',
  `listprof` varchar(1) NOT NULL COMMENT 'R,I,A,S,E,C',
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `preguntasvpi`
--

INSERT INTO `preguntasvpi` (`id`, `pregunta`, `valores`, `listapregunta`, `listprof`, `fecha`) VALUES
(1, 'Repair electrical items', '1,0,0,0,0,0,', 'A', 'R', '2020-01-07 16:07:32'),
(2, 'Repair cars', '1,0,0,0,0,0,', 'A', 'R', '2020-01-07 16:07:32'),
(3, 'Repair mechanical items', '1,0,0,0,0,0,', 'A', 'R', '2020-01-07 16:07:32'),
(4, 'Make wooden items', '1,0,0,0,0,0,', 'A', 'R', '2020-01-07 16:07:32'),
(5, 'Drive trucks and tractors', '1,0,0,0,0,0,', 'A', 'R', '2020-01-07 16:07:32'),
(6, 'Use mechanical or blacksmith tools', '1,0,0,0,0,0,', 'A', 'R', '2020-01-07 16:07:32'),
(7, 'Conditioning a car or racing bicycles', '1,0,0,0,0,0,', 'A', 'R', '2020-01-07 16:07:32'),
(8, 'Take a course-workshop', '1,0,0,0,0,0,', 'A', 'R', '2020-01-07 16:07:32'),
(9, 'Take a mechanical drawing course', '1,0,0,0,0,0,', 'A', 'R', '2020-01-07 16:07:32'),
(10, 'Take a wood carving course', '1,0,0,0,0,0,', 'A', 'R', '2020-01-07 16:07:32'),
(11, 'Take a course in automotive mechanics', '1,0,0,0,0,0,', 'A', 'R', '2020-01-07 16:07:32'),
(12, 'Read books or scientific journals', '0,1,0,0,0,0,', 'A', 'I', '2020-01-07 16:07:32'),
(13, 'Work in a laboratory', '0,1,0,0,0,0,', 'A', 'I', '2020-01-07 16:07:32'),
(14, 'Work on a scientific project', '0,1,0,0,0,0,', 'A', 'I', '2020-01-07 16:07:32'),
(15, 'Build rocket models', '0,1,0,0,0,0,', 'A', 'I', '2020-01-07 16:07:32'),
(16, 'Work with a Chemistry team', '0,1,0,0,0,0,', 'A', 'I', '2020-01-07 16:07:32'),
(17, 'Read space issues by myself', '0,1,0,0,0,0,', 'A', 'I', '2020-01-07 16:07:32'),
(18, 'Solve Math or chess problems', '0,1,0,0,0,0,', 'A', 'I', '2020-01-07 16:07:32'),
(19, 'Take a Chemistry course', '0,1,0,0,0,0,', 'A', 'I', '2020-01-07 16:07:32'),
(20, 'Take a Pysics course', '0,1,0,0,0,0,', 'A', 'I', '2020-01-07 16:07:32'),
(21, 'Take a Geometry course', '0,1,0,0,0,0,', 'A', 'I', '2020-01-07 16:07:32'),
(22, 'Take a Biology course', '0,1,0,0,0,0,', 'A', 'I', '2020-01-07 16:07:32'),
(23, 'Sketch, draw or paint', '0,0,1,0,0,0,', 'A', 'A', '2020-01-07 16:07:32'),
(24, 'Attend concerts', '0,0,1,0,0,0,', 'A', 'A', '2020-01-07 16:07:32'),
(25, 'Design furniture or buildings', '0,0,1,0,0,0,', 'A', 'A', '2020-01-07 16:07:32'),
(26, 'Play in a band, ensemble or orchestra', '0,0,1,0,0,0,', 'A', 'A', '2020-01-07 16:07:32'),
(27, 'Play a musical instrument', '0,0,1,0,0,0,', 'A', 'A', '2020-01-07 16:07:32'),
(28, 'Go to recitals, concerts or musical comedies', '0,0,1,0,0,0,', 'A', 'A', '2020-01-07 16:07:32'),
(29, 'Read novels and current affairs', '0,0,1,0,0,0,', 'A', 'A', '2020-01-07 16:07:32'),
(30, 'Make portraits or creative photography', '0,0,1,0,0,0,', 'A', 'A', '2020-01-07 16:07:32'),
(31, 'Read theater', '0,0,1,0,0,0,', 'A', 'A', '2020-01-07 16:07:32'),
(32, 'Read or write poetry', '0,0,1,0,0,0,', 'A', 'A', '2020-01-07 16:07:32'),
(33, 'Take an art course', '0,0,1,0,0,0,', 'A', 'A', '2020-01-07 16:07:32'),
(34, 'Write letters to friends', '0,0,0,1,0,0', 'A', 'S', '2020-01-07 16:07:32'),
(35, 'Go to the church', '0,0,0,1,0,0', 'A', 'S', '2020-01-07 16:07:32'),
(36, 'Belong to social groups', '0,0,0,1,0,0', 'A', 'S', '2020-01-07 16:07:32'),
(37, 'Help others in their personal problems', '0,0,0,1,0,0', 'A', 'S', '2020-01-07 16:07:32'),
(38, 'Take care of children', '0,0,0,1,0,0', 'A', 'S', '2020-01-07 16:07:32'),
(39, 'Attend parties', '0,0,0,1,0,0', 'A', 'S', '2020-01-07 16:07:32'),
(40, 'Dance', '0,0,0,1,0,0', 'A', 'S', '2020-01-07 16:07:32'),
(41, 'Read about psychology', '0,0,0,1,0,0', 'A', 'S', '2020-01-07 16:07:32'),
(42, 'Attend meetings and conferences', '0,0,0,1,0,0', 'A', 'S', '2020-01-07 16:07:32'),
(43, 'Attend sporting events', '0,0,0,1,0,0', 'A', 'S', '2020-01-07 16:07:32'),
(44, 'Make new friends', '0,0,0,1,0,0', 'A', 'S', '2020-01-07 16:07:32'),
(45, 'Influence others', '0,0,0,0,1,0', 'A', 'E', '2020-01-07 16:07:32'),
(46, 'Sell', '0,0,0,0,1,0', 'A', 'E', '2020-01-07 16:07:32'),
(47, 'Discuss politics', '0,0,0,0,1,0', 'A', 'E', '2020-01-07 16:07:32'),
(48, 'Manage my own service or business', '0,0,0,0,1,0', 'A', 'E', '2020-01-07 16:07:32'),
(49, 'Attend conferences', '0,0,0,0,1,0', 'A', 'E', '2020-01-07 16:07:32'),
(50, 'Offer talks', '0,0,0,0,1,0', 'A', 'E', '2020-01-07 16:07:32'),
(51, 'Be official of any group', '0,0,0,0,1,0', 'A', 'E', '2020-01-07 16:07:32'),
(52, 'Supervise the work of others', '0,0,0,0,1,0', 'A', 'E', '2020-01-07 16:07:32'),
(53, 'Meet important people', '0,0,0,0,1,0', 'A', 'E', '2020-01-07 16:07:32'),
(54, 'Lead a group to achieve an end', '0,0,0,0,1,0', 'A', 'E', '2020-01-07 16:07:32'),
(55, 'Participate in a political campaign', '0,0,0,0,1,0', 'A', 'E', '2020-01-07 16:07:32'),
(56, 'Keep my desk and room in order', '0,0,0,0,0,1', 'A', 'C', '2020-01-07 16:07:32'),
(57, 'Type documents or letters for me or others', '0,0,0,0,0,1', 'A', 'C', '2020-01-07 16:07:32'),
(58, 'Add, subtract, multiply numbers in business or administration', '0,0,0,0,0,1', 'A', 'C', '2020-01-07 16:07:32'),
(59, 'Manage business machines of any kind', '0,0,0,0,0,1', 'A', 'C', '2020-01-07 16:07:32'),
(60, 'Keep a detailed record of expenses', '0,0,0,0,0,1', 'A', 'C', '2020-01-07 16:07:32'),
(61, 'Take a typing course', '0,0,0,0,0,1', 'A', 'C', '2020-01-07 16:07:32'),
(62, 'Take a trade course', '0,0,0,0,0,1', 'A', 'C', '2020-01-07 16:07:32'),
(63, 'Take an accounting course', '0,0,0,0,0,1', 'A', 'C', '2020-01-07 16:07:32'),
(64, 'Take a commercial math course', '0,0,0,0,0,1', 'A', 'C', '2020-01-07 16:07:32'),
(65, 'Archive letters, reports, records, etc.', '0,0,0,0,0,1', 'A', 'C', '2020-01-07 16:07:32'),
(66, 'Write business letters', '0,0,0,0,0,1', 'A', 'C', '2020-01-07 16:07:32'),
(67, 'I have used carpentry workshop power tools, such as the saw or electric winch', '1,0,0,0,0,0,', 'B', 'R', '2020-01-07 16:07:32'),
(68, 'I know how to use a voltmeter', '1,0,0,0,0,0,', 'B', 'R', '2020-01-07 16:07:32'),
(69, 'I can adjust a carburetor', '1,0,0,0,0,0,', 'B', 'R', '2020-01-07 16:07:32'),
(70, 'I have worked with mechanical power tools, such as drill and grinding machine', '1,0,0,0,0,0,', 'B', 'R', '2020-01-07 16:07:32'),
(71, 'I can give new finish to stained or varnished wooden furniture', '1,0,0,0,0,0,', 'B', 'R', '2020-01-07 16:07:32'),
(72, 'I can read heliographic copies', '1,0,0,0,0,0,', 'B', 'R', '2020-01-07 16:07:32'),
(73, 'I can do electrical appliance repairs', '1,0,0,0,0,0,', 'B', 'R', '2020-01-07 16:07:32'),
(74, 'I can repair furniture', '1,0,0,0,0,0,', 'B', 'R', '2020-01-07 16:07:32'),
(75, 'I can make mechanical drawings', '1,0,0,0,0,0,', 'B', 'R', '2020-01-07 16:07:32'),
(76, 'I can do simple television repairs', '1,0,0,0,0,0,', 'B', 'R', '2020-01-07 16:07:32'),
(77, 'I can do simple plumbing repairs', '1,0,0,0,0,0,', 'B', 'R', '2020-01-07 16:07:32'),
(78, 'I can understand how a vacuum works', '0,1,0,0,0,0,', 'B', 'I', '2020-01-07 16:07:32'),
(79, 'I would name three high protein foods', '0,1,0,0,0,0,', 'B', 'I', '2020-01-07 16:07:32'),
(80, 'I can understand the half-life of a radioactive element', '0,1,0,0,0,0,', 'B', 'I', '2020-01-07 16:07:32'),
(81, 'I can use logarithm tables', '0,1,0,0,0,0,', 'B', 'I', '2020-01-07 16:07:32'),
(82, 'I can use a scientific calculator', '0,1,0,0,0,0,', 'B', 'I', '2020-01-07 16:07:32'),
(83, 'I can use a microscope', '0,1,0,0,0,0,', 'B', 'I', '2020-01-07 16:07:32'),
(84, 'I can identify three constellations of the stars', '0,1,0,0,0,0,', 'B', 'I', '2020-01-07 16:07:32'),
(85, 'I can find out how leukocytes work', '0,1,0,0,0,0,', 'B', 'I', '2020-01-07 16:07:32'),
(86, 'I can interpret simple Chemistry formulas', '0,1,0,0,0,0,', 'B', 'I', '2020-01-07 16:07:32'),
(87, 'I can understand why artificial satellites do not fall to earth', '0,1,0,0,0,0,', 'B', 'I', '2020-01-07 16:07:32'),
(88, 'I have participated in contests or contests', '0,1,0,0,0,0,', 'B', 'I', '2020-01-07 16:07:32'),
(89, 'I can play a musical instrument', '0,0,1,0,0,0,', 'B', 'A', '2020-01-07 16:07:32'),
(90, 'I can participate in choral groups of two or four voices', '0,0,1,0,0,0,', 'B', 'A', '2020-01-07 16:07:32'),
(91, 'I can play as a musical soloist', '0,0,1,0,0,0,', 'B', 'A', '2020-01-07 16:07:32'),
(92, 'I can act in a play', '0,0,1,0,0,0,', 'B', 'A', '2020-01-07 16:07:32'),
(93, 'I can read interpretively', '0,0,1,0,0,0,', 'B', 'A', '2020-01-07 16:07:32'),
(94, 'I know how to dance modern or classical dance', '0,0,1,0,0,0,', 'B', 'A', '2020-01-07 16:07:32'),
(95, 'I can draw a person, so that it can recognize itself', '0,0,1,0,0,0,', 'B', 'A', '2020-01-07 16:07:32'),
(96, 'I can paint or sculpt', '0,0,1,0,0,0,', 'B', 'A', '2020-01-07 16:07:32'),
(97, 'I can make ceramic items', '0,0,1,0,0,0,', 'B', 'A', '2020-01-07 16:07:32'),
(98, 'I can design changing rooms, posters or furniture', '0,0,1,0,0,0,', 'B', 'A', '2020-01-07 16:07:32'),
(99, 'I write stories or poems well', '0,0,1,0,0,0,', 'B', 'A', '2020-01-07 16:07:32'),
(100, 'I have the ability to explain things to other people', '0,0,0,1,0,0,', 'B', 'S', '2020-01-07 16:07:32'),
(101, 'I have participated in charity or charity campaigns', '0,0,0,1,0,0,', 'B', 'S', '2020-01-07 16:07:32'),
(102, 'I have the ability to cooperate and work in groups', '0,0,0,1,0,0,', 'B', 'S', '2020-01-07 16:07:32'),
(103, 'I have ability to entertain older people', '0,0,0,1,0,0,', 'B', 'S', '2020-01-07 16:07:32'),
(104, 'I am a good host', '0,0,0,1,0,0,', 'B', 'S', '2020-01-07 16:07:32'),
(105, 'I have facility to teach children', '0,0,0,1,0,0,', 'B', 'S', '2020-01-07 16:07:32'),
(106, 'I can plan hobbies for a party', '0,0,0,1,0,0,', 'B', 'S', '2020-01-07 16:07:32'),
(107, 'I have the ability to encourage people with problems or anger', '0,0,0,1,0,0,', 'B', 'S', '2020-01-07 16:07:32'),
(108, 'I have worked as a volunteer in a hospital, clinic or home', '0,0,0,1,0,0,', 'B', 'S', '2020-01-07 16:07:32'),
(109, 'I can plan social activities of a school or organization', '0,0,0,1,0,0,', 'B', 'S', '2020-01-07 16:07:32'),
(110, 'I have facility to capture the personality of individuals', '0,0,0,1,0,0,', 'B', 'S', '2020-01-07 16:07:32'),
(111, 'I have been chosen to hold a position at the school', '0,0,0,0,1,0,', 'B', 'E', '2020-01-07 16:07:32'),
(112, 'I can supervise the work of others', '0,0,0,0,1,0,', 'B', 'E', '2020-01-07 16:07:32'),
(113, 'I have unusual energy and enthusiasm', '0,0,0,0,1,0,', 'B', 'E', '2020-01-07 16:07:32'),
(114, 'I have the ability to tell people how to do things', '0,0,0,0,1,0,', 'B', 'E', '2020-01-07 16:07:32'),
(115, 'I am a good seller', '0,0,0,0,1,0,', 'B', 'E', '2020-01-07 16:07:32'),
(116, 'I have been a spokesperson for a group to present suggestions or complaints', '0,0,0,0,1,0,', 'B', 'E', '2020-01-07 16:07:32'),
(117, 'I won an award in recognition of my performance as a leader', '0,0,0,0,1,0,', 'B', 'E', '2020-01-07 16:07:32'),
(118, 'I have organized a club, group or team', '0,0,0,0,1,0,', 'B', 'E', '2020-01-07 16:07:32'),
(119, 'I have set up a business or service', '0,0,0,0,1,0,', 'B', 'E', '2020-01-07 16:07:32'),
(120, 'I know how to succeed as a leader', '0,0,0,0,1,0,', 'B', 'E', '2020-01-07 16:07:32'),
(121, 'I am a good polemicist', '0,0,0,0,1,0,', 'B', 'E', '2020-01-07 16:07:32'),
(122, 'I type quickly on a typewriter or computer', '0,0,0,0,0,1,', 'B', 'C', '2020-01-07 16:07:32'),
(123, 'I know how to handle a printer or photocopier', '0,0,0,0,0,1,', 'B', 'C', '2020-01-07 16:07:32'),
(124, 'I know how to take good notes.', '0,0,0,0,0,1,', 'B', 'C', '2020-01-07 16:07:32'),
(125, 'I have the ability to organize information, prepare files', '0,0,0,0,0,1,', 'B', 'C', '2020-01-07 16:07:32'),
(126, 'I have done office work', '0,0,0,0,0,1,', 'B', 'C', '2020-01-07 16:07:32'),
(127, 'I know how to use spreadsheets (excel) or perform accounting', '0,0,0,0,0,1,', 'B', 'C', '2020-01-07 16:07:32'),
(128, 'I take little time to process documents', '0,0,0,0,0,1,', 'B', 'C', '2020-01-07 16:07:32'),
(129, 'I know how to use a calculator', '0,0,0,0,0,1,', 'B', 'C', '2020-01-07 16:07:32'),
(130, 'I can post assets and duties', '0,0,0,0,0,1,', 'B', 'C', '2020-01-07 16:07:32'),
(131, 'I know how to use a computer', '0,0,0,0,0,1,', 'B', 'C', '2020-01-07 16:07:32'),
(132, 'I can keep accurate purchase and sale records', '0,0,0,0,0,1,', 'B', 'C', '2020-01-07 16:07:32'),
(133, 'Aeronautical mechanic', '1,0,0,0,0,0,', 'O', 'R', '2020-01-07 16:07:32'),
(134, 'Fish Farming Specialist (marine species breeding)', '1,0,0,0,0,0,', 'O', 'R', '2020-01-07 16:07:32'),
(135, 'Electric station operator', '1,0,0,0,0,0,', 'O', 'R', '2020-01-07 16:07:32'),
(136, 'Master plumber', '1,0,0,0,0,0,', 'O', 'R', '2020-01-07 16:07:32'),
(137, 'Machine operator', '1,0,0,0,0,0,', 'O', 'R', '2020-01-07 16:07:32'),
(138, 'Private investigator', '1,0,0,0,0,0,', 'O', 'R', '2020-01-07 16:07:32'),
(139, 'Building Inspector', '1,0,0,0,0,0,', 'O', 'R', '2020-01-07 16:07:32'),
(140, 'Radio operator', '1,0,0,0,0,0,', 'O', 'R', '2020-01-07 16:07:32'),
(141, 'Employee at a gas station', '1,0,0,0,0,0,', 'O', 'R', '2020-01-07 16:07:32'),
(142, 'Tool designer', '1,0,0,0,0,0,', 'O', 'R', '2020-01-07 16:07:32'),
(143, 'Chief Engineer', '1,0,0,0,0,0,', 'O', 'R', '2020-01-07 16:07:32'),
(144, 'Photoengraver', '1,0,0,0,0,0,', 'O', 'R', '2020-01-07 16:07:32'),
(145, 'Electrical technician', '1,0,0,0,0,0,', 'O', 'R', '2020-01-07 16:07:32'),
(146, 'Meteorologist', '0,1,0,0,0,0,', 'O', 'I', '2020-01-07 16:07:32'),
(147, 'Biologist', '0,1,0,0,0,0,', 'O', 'I', '2020-01-07 16:07:32'),
(148, 'Astronomer', '0,1,0,0,0,0,', 'O', 'I', '2020-01-07 16:07:32'),
(149, 'Aeronautical Designer Engineer', '0,1,0,0,0,0,', 'O', 'I', '2020-01-07 16:07:32'),
(150, 'Anthropologist', '0,1,0,0,0,0,', 'O', 'I', '2020-01-07 16:07:32'),
(151, 'Zoologist', '0,1,0,0,0,0,', 'O', 'I', '2020-01-07 16:07:32'),
(152, 'Chemical', '0,1,0,0,0,0,', 'O', 'I', '2020-01-07 16:07:32'),
(153, 'Independent scientific researcher', '0,1,0,0,0,0,', 'O', 'I', '2020-01-07 16:07:32'),
(154, 'Writer of scientific articles', '0,1,0,0,0,0,', 'O', 'I', '2020-01-07 16:07:32'),
(155, 'Director of a scientific journal', '0,1,0,0,0,0,', 'O', 'I', '2020-01-07 16:07:32'),
(156, 'Geologist', '0,1,0,0,0,0,', 'O', 'I', '2020-01-07 16:07:32'),
(157, 'Botanical', '0,1,0,0,0,0,', 'O', 'I', '2020-01-07 16:07:32'),
(158, 'Scientific researcher', '0,1,0,0,0,0,', 'O', 'I', '2020-01-07 16:07:32'),
(159, 'Physical', '0,1,0,0,0,0,', 'O', 'I', '2020-01-07 16:07:32'),
(160, 'Poet', '0,0,1,0,0,0,', 'O', 'A', '2020-01-07 16:07:32'),
(161, 'Director of a symphony orchestra', '0,0,1,0,0,0,', 'O', 'A', '2020-01-07 16:07:32'),
(162, 'Musician', '0,0,1,0,0,0,', 'O', 'A', '2020-01-07 16:07:32'),
(163, 'Actor', '0,0,1,0,0,0,', 'O', 'A', '2020-01-07 16:07:32'),
(164, 'Commercial Cartoonist', '0,0,1,0,0,0,', 'O', 'A', '2020-01-07 16:07:32'),
(165, 'Freelance writer', '0,0,1,0,0,0,', 'O', 'A', '2020-01-07 16:07:32'),
(166, 'Music arranger', '0,0,1,0,0,0,', 'O', 'A', '2020-01-07 16:07:32'),
(167, 'Merchant in works of art', '0,0,1,0,0,0,', 'O', 'A', '2020-01-07 16:07:32'),
(168, 'Theater director', '0,0,1,0,0,0,', 'O', 'A', '2020-01-07 16:07:32'),
(169, 'Concert signer', '0,0,1,0,0,0,', 'O', 'A', '2020-01-07 16:07:32'),
(170, 'Composer', '0,0,1,0,0,0,', 'O', 'A', '2020-01-07 16:07:32'),
(171, 'Stage director', '0,0,1,0,0,0,', 'O', 'A', '2020-01-07 16:07:32'),
(172, 'Playwright', '0,0,1,0,0,0,', 'O', 'A', '2020-01-07 16:07:32'),
(173, 'Cartoonist', '0,0,1,0,0,0,', 'O', 'A', '2020-01-07 16:07:32'),
(174, 'Religious Missionary', '0,0,0,1,0,0,', 'O', 'S', '2020-01-07 16:07:32'),
(175, 'High school teacher', '0,0,0,1,0,0,', 'O', 'S', '2020-01-07 16:07:32'),
(176, 'Expert in juvenile delinquency matters', '0,0,0,1,0,0,', 'O', 'S', '2020-01-07 16:07:32'),
(177, 'Speech therapist', '0,0,0,1,0,0,', 'O', 'S', '2020-01-07 16:07:32'),
(178, 'Marriage counselor', '0,0,0,1,0,0,', 'O', 'S', '2020-01-07 16:07:32'),
(179, 'Physical education teacher', '0,0,0,1,0,0,', 'O', 'S', '2020-01-07 16:07:32'),
(180, 'Director of sports fields', '0,0,0,1,0,0,', 'O', 'S', '2020-01-07 16:07:32'),
(181, 'Clinical psychologist', '0,0,0,1,0,0,', 'O', 'S', '2020-01-07 16:07:32'),
(182, 'Social science teacher', '0,0,0,1,0,0,', 'O', 'S', '2020-01-07 16:07:32'),
(183, 'Director of a chariatable institution', '0,0,0,1,0,0,', 'O', 'S', '2020-01-07 16:07:32'),
(184, 'Assistant to the municipal school superinterdent', '0,0,0,1,0,0,', 'O', 'S', '2020-01-07 16:07:32'),
(185, 'Personal advisor', '0,0,0,1,0,0,', 'O', 'S', '2020-01-07 16:07:32'),
(186, 'Psychiatric Case Worker', '0,0,0,1,0,0,', 'O', 'S', '2020-01-07 16:07:32'),
(187, 'Vocational Counselor', '0,0,0,1,0,0,', 'O', 'S', '2020-01-07 16:07:32'),
(188, 'Speculator of stock exchange', '0,0,0,0,1,0,', 'O', 'E', '2020-01-07 16:07:32'),
(189, 'Buyer', '0,0,0,0,1,0,', 'O', 'E', '2020-01-07 16:07:32'),
(190, 'Stock and financial securities seller', '0,0,0,0,1,0,', 'O', 'E', '2020-01-07 16:07:32'),
(191, 'Factory Representative', '0,0,0,0,1,0,', 'O', 'E', '2020-01-07 16:07:32'),
(192, 'Television producer', '0,0,0,0,1,0,', 'O', 'E', '2020-01-07 16:07:32'),
(193, 'Hotel manager', '0,0,0,0,1,0,', 'O', 'E', '2020-01-07 16:07:32'),
(194, 'Business executive', '0,0,0,0,1,0,', 'O', 'E', '2020-01-07 16:07:32'),
(195, 'Restaurant employee', '0,0,0,0,1,0,', 'O', 'E', '2020-01-07 16:07:32'),
(196, 'Master of ceremonies', '0,0,0,0,1,0,', 'O', 'E', '2020-01-07 16:07:32'),
(197, 'Travelling Seller Agent', '0,0,0,0,1,0,', 'O', 'E', '2020-01-07 16:07:32'),
(198, 'Real state seller', '0,0,0,0,1,0,', 'O', 'E', '2020-01-07 16:07:32'),
(199, 'Industrial Relations Advisor ', '0,0,0,0,1,0,', 'O', 'E', '2020-01-07 16:07:32'),
(200, 'Sports promoter', '0,0,0,0,1,0,', 'O', 'E', '2020-01-07 16:07:32'),
(201, 'Director of political campains', '0,0,0,0,1,0,', 'O', 'E', '2020-01-07 16:07:32'),
(202, 'Bookkeeper ', '0,0,0,0,0,1,', 'O', 'C', '2020-01-07 16:07:32'),
(203, 'Quality control expert', '0,0,0,0,0,1,', 'O', 'C', '2020-01-07 16:07:32'),
(204, 'Traffic director', '0,0,0,0,0,1,', 'O', 'C', '2020-01-07 16:07:32'),
(205, 'Statistician', '0,0,0,0,0,1,', 'O', 'C', '2020-01-07 16:07:32'),
(206, 'Court stenographer', '0,0,0,0,0,1,', 'O', 'C', '2020-01-07 16:07:32'),
(207, 'Bank payer', '0,0,0,0,0,1,', 'O', 'C', '2020-01-07 16:07:32'),
(208, 'Tax expert', '0,0,0,0,0,1,', 'O', 'C', '2020-01-07 16:07:32'),
(209, 'Inventory controller', '0,0,0,0,0,1,', 'O', 'C', '2020-01-07 16:07:32'),
(210, 'IBM team operator (statistical packages)', '0,0,0,0,0,1,', 'O', 'C', '2020-01-07 16:07:32'),
(211, 'Finance Analyst', '0,0,0,0,0,1,', 'O', 'C', '2020-01-07 16:07:32'),
(212, 'Evaluator', '0,0,0,0,0,1,', 'O', 'C', '2020-01-07 16:07:32'),
(213, 'Payment manager', '0,0,0,0,0,1,', 'O', 'C', '2020-01-07 16:07:32'),
(214, 'Bank inspector', '0,0,0,0,0,1,', 'O', 'C', '2020-01-07 16:07:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `questions` text NOT NULL,
  `options` text NOT NULL,
  `test` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `questions`
--

INSERT INTO `questions` (`id`, `questions`, `options`, `test`, `date`) VALUES
(1, 'When I talk to my friends...', '[{\"A\": \"I usually participate very little.\",\"B\": \"I express directly what I think or feel.\",\"C\": \"Although others don\'t like, I impose my opinions.\"}]', 'social-skills', '0000-00-00 00:00:00'),
(2, 'I think of myself that...', '[{\"A\": \"I fail many things; I\'m a mess.\",\"B\": \"I interact with other people quite well.\",\"C\": \"I\'m great; I have no fault.\"}]', 'social-skills', '0000-00-00 00:00:00'),
(3, 'In my group of friends...', '[{\"A\": \"I participate rather little.\",\"B\": \"I think they count on me and I collaborate.\",\"C\": \"Without me the group would not work.\"}]', 'social-skills', '0000-00-00 00:00:00'),
(4, 'When there are problems in relationships with other partners, what I do is...', '[{\"A\": \"to endure what they decide, even if I am right.\",\"B\": \"to accept the ideas and proposals that are made.\",\"C\": \"to resolve the situation with a threat.\"}]', 'social-skills', '0000-00-00 00:00:00'),
(5, 'If I need someone to do me a favor...', '[{\"A\": \"I don\'t tell him/her anything.\",\"B\": \"I ask if he/she can do me a favor and I explain what I need.\",\"C\": \"I demand that he/she does what I need.\"}]', 'social-skills', '0000-00-00 00:00:00'),
(6, 'When I\'m doing something that I like and I think it\'s very good, but someone tells me they don\'t like it...', '[{\"A\": \"I tell them they\'re right, even if I don\'t believe it and I feel hurt.\",\"B\": \"I say that I think it\'s fine.\",\"C\": \"I say: \'But what do you understand about this, worthless?\'\"}]', 'social-skills', '0000-00-00 00:00:00'),
(7, 'You see a partner and you love his/her clothes or his/her haircut; Then you...', '[{\"A\": \"don\'t tell him/her anything.\",\"B\": \"say something nice.\",\"C\": \"tell him/her that it is fatal, even if he/she thinks otherwise.\"}]', 'social-skills', '0000-00-00 00:00:00'),
(8, 'If someone does something quite unpleasant to me and I get angry...', '[{\"A\": \"I pretend it’s not important to me.\",\"B\": \"I say I’m angry and I don’t like what he/she has done.  \",\"C\": \"I shout he/she is an idiot and will pay for this.\"}]', 'social-skills', '0000-00-00 00:00:00'),
(9, 'When standing in line and someone sneaks in…', '[{\"A\": \"I hold on and say nothing.\",\"B\": \"I express my complaints directly, but with education.\",\"C\": \"Poor who dares to sneak in!\"}]', 'social-skills', '0000-00-00 00:00:00'),
(10, 'When I’m in a family reunion…', '[{\"A\": \"I only communicate with my parents.\",\"B\": \"I speak with all my relatives.\",\"C\": \"If I want to speak I do it and if not I don’t!\"}]', 'social-skills', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuestas`
--

CREATE TABLE `respuestas` (
  `id` int(11) NOT NULL,
  `usuario` text COLLATE utf8_spanish_ci NOT NULL,
  `respuestas` text COLLATE utf8_spanish_ci NOT NULL,
  `prueba` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `respuestas`
--

INSERT INTO `respuestas` (`id`, `usuario`, `respuestas`, `prueba`, `fecha`) VALUES
(1, 'JUAN', 'V,V,Q,A,Q,', 'Neuro-Linguistic Programming', '2020-03-04 20:16:00'),
(3, 'juan', '05,10,11,14,15,16,17,18,01,3,6,8,07,08,10,11,12,01,02,06,07,11,02,09,17,18,01,06,07,06,07,10,12,05,01,01,06,11,03,04,09,04,05,01,02,11,01,07,08,02,04,05,04,17,18,11,12,13,15,16,09,18,11,12,06,07,10,15,16,01,02,09,12,1,2,6,7,4,5,15,16,3,8,8,9,16,18,11,12,15,16,4,12,5,11,9,12,3,8,9,12,15,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,18,12,10,18,1,14,13,2,4,6,7,14,3,16,2,17,7,14,15,13,4,14,18,13,15,0,0,0,0,0,0,0,0,', 'Living Diagnosis Of Interest Test', '2020-03-06 19:39:59'),
(4, 'Juan', 'YES,YES,YES,YES,YES,YES,YES,YES,YES,YES,YES,YES,YES,YES,YES,YES,YES,YES,YES,YES,YES,YES,YES,', 'Study Habits', '2020-03-11 18:33:07'),
(5, 'juan', 'YES,YES,YES,YES,YES,YES,YES,YES,YES,YES,', 'social-skills', '2020-03-13 19:50:54'),
(6, 'JUAN', 'A,A,A,A,A,A,A,A,A,A,', 'social-skills', '2020-03-13 19:52:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `st_questions`
--

CREATE TABLE `st_questions` (
  `id` int(11) NOT NULL,
  `pregunta` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `st_questions`
--

INSERT INTO `st_questions` (`id`, `pregunta`, `fecha`) VALUES
(1, 'Do you always study in the same place?', '0000-00-00 00:00:00'),
(2, 'Do you leave for the last day the preparation of controls or exams?', '0000-00-00 00:00:00'),
(3, 'Do you have a fixed schedule to study?', '0000-00-00 00:00:00'),
(4, 'Do you usually take notes and comments in class about what the teacher explains?', '0000-00-00 00:00:00'),
(5, 'Does the chair you use to study have a backrest and hard seat?', '0000-00-00 00:00:00'),
(6, 'Do you have a large table that is proportionate to the height of the chair  and your height?', '0000-00-00 00:00:00'),
(7, 'Do you study in a ventilated place away from noise or television?', '0000-00-00 00:00:00'),
(8, 'Do you usually read at home the topics that the teacher will explain in class the next day?', '0000-00-00 00:00:00'),
(9, 'Do you spend about two hours a day preparing the classes?', '0000-00-00 00:00:00'),
(10, 'Do you pay attention to the teacher\'s explanations?', '0000-00-00 00:00:00'),
(11, 'Do you study lying in bed or on the couch?', '0000-00-00 00:00:00'),
(12, 'Is the table you use to study varnished?', '0000-00-00 00:00:00'),
(13, 'In the room in which you study, do you have adequate lighting, so that the view is not unduly forced?', '0000-00-00 00:00:00'),
(14, 'Do you use a dictionary to look up the spelling or meaning of the words you don\'t know well?', '0000-00-00 00:00:00'),
(15, 'Do you organize your time according to the difficulty of the subject?', '0000-00-00 00:00:00'),
(16, 'Before you start studying, do you prepare everything you will need during the study session?', '0000-00-00 00:00:00'),
(17, 'Do you have a habit of listening to current songs while you study?', '0000-00-00 00:00:00'),
(18, 'When you study, do you underline the important things?', '0000-00-00 00:00:00'),
(19, 'Do you leave for the last minute the preparation of most of the subjects?', '0000-00-00 00:00:00'),
(20, 'Do you have a habit to ask or photocopy the notes of your classmates?', '0000-00-00 00:00:00'),
(21, 'Is your study table always messy?', '0000-00-00 00:00:00'),
(22, 'Are you in the last rows of the class, so that the teacher does not control you?', '0000-00-00 00:00:00'),
(23, 'Do you outline the lessons you study?', '0000-00-00 00:00:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `npl`
--
ALTER TABLE `npl`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `nplnumeracion`
--
ALTER TABLE `nplnumeracion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `plantilla`
--
ALTER TABLE `plantilla`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `preguntasvpi`
--
ALTER TABLE `preguntasvpi`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `st_questions`
--
ALTER TABLE `st_questions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `npl`
--
ALTER TABLE `npl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `nplnumeracion`
--
ALTER TABLE `nplnumeracion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `plantilla`
--
ALTER TABLE `plantilla`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;
--
-- AUTO_INCREMENT de la tabla `preguntasvpi`
--
ALTER TABLE `preguntasvpi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;
--
-- AUTO_INCREMENT de la tabla `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `st_questions`
--
ALTER TABLE `st_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
