-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Máquina: localhost
-- Data de Criação: 07-Maio-2014 às 11:13
-- Versão do servidor: 5.6.12-log
-- versão do PHP: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de Dados: `estudo_sis`
--
CREATE DATABASE IF NOT EXISTS `estudo_sis` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `estudo_sis`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `_estudoassignments`
--

CREATE TABLE IF NOT EXISTS `_estudoassignments` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `task` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `owner` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `assigned_to` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `comments` text,
  `assigned` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `_estudoassignments`
--

INSERT INTO `_estudoassignments` (`id`, `task`, `owner`, `assigned_to`, `comments`, `assigned`) VALUES
(1, 1, 1, 1, NULL, '2014-05-06 13:09'),
(2, 2, 1, 1, NULL, '2014-05-06 13:10'),
(3, 3, 1, 1, NULL, '2014-05-06 13:26');

-- --------------------------------------------------------

--
-- Estrutura da tabela `_estudoattendants`
--

CREATE TABLE IF NOT EXISTS `_estudoattendants` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `project` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `meeting` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `published` char(1) NOT NULL DEFAULT '',
  `attended` char(1) NOT NULL DEFAULT '',
  `authorized` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `_estudobookmarks`
--

CREATE TABLE IF NOT EXISTS `_estudobookmarks` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `owner` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `category` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `description` text,
  `shared` char(1) NOT NULL DEFAULT '',
  `home` char(1) NOT NULL DEFAULT '',
  `comments` char(1) NOT NULL DEFAULT '',
  `users` varchar(255) DEFAULT NULL,
  `created` varchar(16) DEFAULT NULL,
  `modified` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `_estudobookmarks_categories`
--

CREATE TABLE IF NOT EXISTS `_estudobookmarks_categories` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `_estudocalendar`
--

CREATE TABLE IF NOT EXISTS `_estudocalendar` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `owner` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(155) DEFAULT NULL,
  `description` text,
  `shortname` varchar(155) DEFAULT NULL,
  `date_start` varchar(10) DEFAULT NULL,
  `date_end` varchar(10) DEFAULT NULL,
  `time_start` varchar(155) DEFAULT NULL,
  `time_end` varchar(155) DEFAULT NULL,
  `reminder` char(1) NOT NULL DEFAULT '',
  `recurring` char(1) NOT NULL DEFAULT '',
  `recur_day` char(1) NOT NULL DEFAULT '',
  `project` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `_estudofiles`
--

CREATE TABLE IF NOT EXISTS `_estudofiles` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `owner` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `project` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `task` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `date` varchar(16) DEFAULT NULL,
  `size` varchar(155) DEFAULT NULL,
  `extension` varchar(155) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `comments_approval` varchar(255) DEFAULT NULL,
  `approver` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `date_approval` varchar(16) DEFAULT NULL,
  `upload` varchar(16) DEFAULT NULL,
  `published` char(1) NOT NULL DEFAULT '',
  `status` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `vc_status` varchar(255) NOT NULL DEFAULT '0',
  `vc_version` varchar(255) NOT NULL DEFAULT '0.0',
  `vc_parent` int(10) unsigned NOT NULL DEFAULT '0',
  `phase` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `_estudoholiday`
--

CREATE TABLE IF NOT EXISTS `_estudoholiday` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `date` varchar(10) DEFAULT NULL,
  `comments` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `_estudoholiday`
--

INSERT INTO `_estudoholiday` (`id`, `date`, `comments`) VALUES
(1, '', ''),
(2, '06-05-2014', 'teste');

-- --------------------------------------------------------

--
-- Estrutura da tabela `_estudologs`
--

CREATE TABLE IF NOT EXISTS `_estudologs` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(155) DEFAULT NULL,
  `password` varchar(155) DEFAULT NULL,
  `ip` varchar(155) DEFAULT NULL,
  `session` varchar(155) DEFAULT NULL,
  `compt` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `last_visite` varchar(16) DEFAULT NULL,
  `connected` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `_estudologs`
--

INSERT INTO `_estudologs` (`id`, `login`, `password`, `ip`, `session`, `compt`, `last_visite`, `connected`) VALUES
(1, 'admin', 'roK20XGbWEsSM', '127.0.0.1', 'a1gc9pqcue50r8afkb82inlv64', 5, '2014-05-07 11:07', '1399460885');

-- --------------------------------------------------------

--
-- Estrutura da tabela `_estudomeetings`
--

CREATE TABLE IF NOT EXISTS `_estudomeetings` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `project` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `priority` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `status` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name` varchar(155) DEFAULT NULL,
  `agenda` text,
  `location` text,
  `minutes` text,
  `chairman` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `recorder` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `date` varchar(10) DEFAULT NULL,
  `start_time` varchar(5) DEFAULT NULL,
  `end_time` varchar(5) DEFAULT NULL,
  `reminder` char(1) NOT NULL DEFAULT '0',
  `reminder_time1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `reminder_time2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `created` varchar(16) DEFAULT NULL,
  `modified` varchar(16) DEFAULT NULL,
  `published` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `_estudomeetings_attachment`
--

CREATE TABLE IF NOT EXISTS `_estudomeetings_attachment` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `owner` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `project` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `meeting` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `date` varchar(16) DEFAULT NULL,
  `size` varchar(155) DEFAULT NULL,
  `extension` varchar(155) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `comments_approval` varchar(255) DEFAULT NULL,
  `approver` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `date_approval` varchar(16) DEFAULT NULL,
  `upload` varchar(16) DEFAULT NULL,
  `published` char(1) NOT NULL DEFAULT '',
  `status` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `vc_status` varchar(255) NOT NULL DEFAULT '0',
  `vc_version` varchar(255) NOT NULL DEFAULT '0.0',
  `vc_parent` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `_estudomeetings_time`
--

CREATE TABLE IF NOT EXISTS `_estudomeetings_time` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `project` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `meeting` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `owner` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `date` varchar(16) DEFAULT NULL,
  `hours` float(10,2) NOT NULL DEFAULT '0.00',
  `comments` text,
  `created` varchar(16) DEFAULT NULL,
  `modified` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `_estudomembers`
--

CREATE TABLE IF NOT EXISTS `_estudomembers` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `organization` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `login` varchar(155) DEFAULT NULL,
  `password` varchar(155) DEFAULT NULL,
  `name` varchar(155) DEFAULT NULL,
  `title` varchar(155) DEFAULT NULL,
  `email_work` varchar(155) DEFAULT NULL,
  `email_home` varchar(155) DEFAULT NULL,
  `phone_work` varchar(155) DEFAULT NULL,
  `phone_home` varchar(155) DEFAULT NULL,
  `mobile` varchar(155) DEFAULT NULL,
  `fax` varchar(155) DEFAULT NULL,
  `comments` text,
  `profil` char(1) NOT NULL DEFAULT '',
  `created` varchar(16) DEFAULT NULL,
  `logout_time` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `last_page` varchar(255) DEFAULT NULL,
  `timezone` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `_estudomembers`
--

INSERT INTO `_estudomembers` (`id`, `organization`, `login`, `password`, `name`, `title`, `email_work`, `email_home`, `phone_work`, `phone_home`, `mobile`, `fax`, `comments`, `profil`, `created`, `logout_time`, `last_page`, `timezone`) VALUES
(1, 1, 'admin', 'roK20XGbWEsSM', 'Administrator', '', 'barros.anapaulas@gmail.com', NULL, '', '', '', '', NULL, '0', '2014-05-06 12:57', 0, 'administration/admin.php', ''),
(2, 1, 'demo', 'devFxxVFZsuos', 'Demo user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2014-05-06 12:57', 0, NULL, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `_estudonotes`
--

CREATE TABLE IF NOT EXISTS `_estudonotes` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `project` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `owner` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic` varchar(255) DEFAULT NULL,
  `subject` varchar(155) DEFAULT NULL,
  `description` text,
  `date` varchar(10) DEFAULT NULL,
  `published` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `_estudonotifications`
--

CREATE TABLE IF NOT EXISTS `_estudonotifications` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `taskAssignment` char(1) NOT NULL DEFAULT '0',
  `removeProjectTeam` char(1) NOT NULL DEFAULT '0',
  `addProjectTeam` char(1) NOT NULL DEFAULT '0',
  `newTopic` char(1) NOT NULL DEFAULT '0',
  `newPost` char(1) NOT NULL DEFAULT '0',
  `statusTaskChange` char(1) NOT NULL DEFAULT '0',
  `priorityTaskChange` char(1) NOT NULL DEFAULT '0',
  `duedateTaskChange` char(1) NOT NULL DEFAULT '0',
  `clientAddTask` char(1) NOT NULL DEFAULT '0',
  `meetingAssignment` char(1) NOT NULL DEFAULT '0',
  `statusMeetingChange` char(1) NOT NULL DEFAULT '0',
  `priorityMeetingChange` char(1) NOT NULL DEFAULT '0',
  `locationMeetingChange` char(1) NOT NULL DEFAULT '0',
  `timeMeetingChange` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `_estudonotifications`
--

INSERT INTO `_estudonotifications` (`id`, `member`, `taskAssignment`, `removeProjectTeam`, `addProjectTeam`, `newTopic`, `newPost`, `statusTaskChange`, `priorityTaskChange`, `duedateTaskChange`, `clientAddTask`, `meetingAssignment`, `statusMeetingChange`, `priorityMeetingChange`, `locationMeetingChange`, `timeMeetingChange`) VALUES
(1, 1, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(2, 2, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `_estudoorganizations`
--

CREATE TABLE IF NOT EXISTS `_estudoorganizations` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `zip_code` varchar(155) DEFAULT NULL,
  `city` varchar(155) DEFAULT NULL,
  `country` varchar(155) DEFAULT NULL,
  `phone` varchar(155) DEFAULT NULL,
  `fax` varchar(155) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `email` varchar(155) DEFAULT NULL,
  `comments` text,
  `created` varchar(16) DEFAULT NULL,
  `extension_logo` char(3) NOT NULL DEFAULT '',
  `owner` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `_estudoorganizations`
--

INSERT INTO `_estudoorganizations` (`id`, `name`, `address1`, `address2`, `zip_code`, `city`, `country`, `phone`, `fax`, `url`, `email`, `comments`, `created`, `extension_logo`, `owner`) VALUES
(1, 'My Company Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-05-06 12:57', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `_estudophases`
--

CREATE TABLE IF NOT EXISTS `_estudophases` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `order_num` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `status` varchar(10) DEFAULT NULL,
  `name` varchar(155) DEFAULT NULL,
  `date_start` varchar(10) DEFAULT NULL,
  `date_end` varchar(10) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Extraindo dados da tabela `_estudophases`
--

INSERT INTO `_estudophases` (`id`, `project_id`, `order_num`, `status`, `name`, `date_start`, `date_end`, `comments`) VALUES
(1, 1, 0, '0', 'Concept', NULL, NULL, NULL),
(2, 1, 1, '0', 'Planning', NULL, NULL, NULL),
(3, 1, 2, '0', 'Development', NULL, NULL, NULL),
(4, 1, 3, '0', 'Testing', NULL, NULL, NULL),
(5, 1, 4, '0', 'Rollout', NULL, NULL, NULL),
(6, 1, 5, '0', 'Maintenance', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `_estudoposts`
--

CREATE TABLE IF NOT EXISTS `_estudoposts` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `created` varchar(16) DEFAULT NULL,
  `message` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `_estudoprojects`
--

CREATE TABLE IF NOT EXISTS `_estudoprojects` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `organization` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `owner` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `priority` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `status` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name` varchar(155) DEFAULT NULL,
  `description` text,
  `url_dev` varchar(255) DEFAULT NULL,
  `url_prod` varchar(255) DEFAULT NULL,
  `created` varchar(16) DEFAULT NULL,
  `modified` varchar(16) DEFAULT NULL,
  `published` char(1) NOT NULL DEFAULT '',
  `upload_max` varchar(155) DEFAULT NULL,
  `phase_set` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `type` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `_estudoprojects`
--

INSERT INTO `_estudoprojects` (`id`, `organization`, `owner`, `priority`, `status`, `name`, `description`, `url_dev`, `url_prod`, `created`, `modified`, `published`, `upload_max`, `phase_set`, `type`) VALUES
(1, 1, 1, 3, 3, 'Projeto 1', 'Meu projeto 1', 'http://google.com', '', '2014-05-06 13:08', NULL, '1', '51200', 1, '0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `_estudoreports`
--

CREATE TABLE IF NOT EXISTS `_estudoreports` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `owner` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name` varchar(155) DEFAULT NULL,
  `projects` varchar(255) DEFAULT NULL,
  `members` varchar(255) DEFAULT NULL,
  `priorities` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `date_due_start` varchar(10) DEFAULT NULL,
  `date_due_end` varchar(10) DEFAULT NULL,
  `created` varchar(16) DEFAULT NULL,
  `date_complete_start` varchar(10) DEFAULT NULL,
  `date_complete_end` varchar(10) DEFAULT NULL,
  `clients` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `_estudoservices`
--

CREATE TABLE IF NOT EXISTS `_estudoservices` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(155) DEFAULT NULL,
  `name_print` varchar(155) DEFAULT NULL,
  `hourly_rate` float(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `_estudosessions`
--

CREATE TABLE IF NOT EXISTS `_estudosessions` (
  `id` varchar(32) NOT NULL,
  `ipaddr` varchar(16) NOT NULL,
  `session_data` longtext,
  `last_access` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`ipaddr`),
  KEY `last_access` (`last_access`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `_estudosessions`
--

INSERT INTO `_estudosessions` (`id`, `ipaddr`, `session_data`, `last_access`) VALUES
('a1gc9pqcue50r8afkb82inlv64', '127.0.0.1', 'browserSession|N;idSession|s:1:"1";timezoneSession|s:0:"";languageSession|s:5:"pt-br";loginSession|s:5:"admin";passwordSession|s:13:"roK20XGbWEsSM";nameSession|s:13:"Administrator";ipSession|s:9:"127.0.0.1";dateunixSession|s:10:"1399460879";dateSession|s:19:"07-05-2014 11:07:59";profilSession|s:1:"0";logouttimeSession|s:1:"0";tokenSession|s:32:"769b337fd5b0ee121271949b17b490b3";lastvisiteSession|s:16:"2014-05-06 16:00";', 1399460885),
('ati1rl09rrlvc37ghlqksugkl3', '127.0.0.1', 'browserSession|N;idSession|s:1:"1";timezoneSession|s:0:"";languageSession|s:5:"pt-br";loginSession|s:5:"admin";passwordSession|s:13:"roK20XGbWEsSM";nameSession|s:13:"Administrator";ipSession|s:9:"127.0.0.1";dateunixSession|s:10:"1399381510";dateSession|s:19:"06-05-2014 13:05:10";profilSession|s:1:"0";logouttimeSession|s:1:"0";tokenSession|s:32:"769b337fd5b0ee121271949b17b490b3";lastvisiteSession|s:16:"2014-05-06 13:00";', 1399382923);

-- --------------------------------------------------------

--
-- Estrutura da tabela `_estudosorting`
--

CREATE TABLE IF NOT EXISTS `_estudosorting` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `home_projects` varchar(155) DEFAULT NULL,
  `home_tasks` varchar(155) DEFAULT NULL,
  `home_discussions` varchar(155) DEFAULT NULL,
  `home_reports` varchar(155) DEFAULT NULL,
  `projects` varchar(155) DEFAULT NULL,
  `organizations` varchar(155) DEFAULT NULL,
  `project_tasks` varchar(155) DEFAULT NULL,
  `discussions` varchar(155) DEFAULT NULL,
  `project_discussions` varchar(155) DEFAULT NULL,
  `users` varchar(155) DEFAULT NULL,
  `team` varchar(155) DEFAULT NULL,
  `tasks` varchar(155) DEFAULT NULL,
  `report_tasks` varchar(155) DEFAULT NULL,
  `assignment` varchar(155) DEFAULT NULL,
  `reports` varchar(155) DEFAULT NULL,
  `files` varchar(155) DEFAULT NULL,
  `organization_projects` varchar(155) DEFAULT NULL,
  `notes` varchar(155) DEFAULT NULL,
  `calendar` varchar(155) DEFAULT NULL,
  `phases` varchar(155) DEFAULT NULL,
  `support_requests` varchar(155) DEFAULT NULL,
  `bookmarks` varchar(155) DEFAULT NULL,
  `tasks_time` varchar(155) DEFAULT NULL,
  `meetings` varchar(155) DEFAULT NULL,
  `meetings_attachment` varchar(155) DEFAULT NULL,
  `meetings_time` varchar(155) DEFAULT NULL,
  `calendar_view` varchar(155) DEFAULT NULL,
  `tasks_closed` varchar(155) DEFAULT NULL,
  `milestones` varchar(155) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `_estudosorting`
--

INSERT INTO `_estudosorting` (`id`, `member`, `home_projects`, `home_tasks`, `home_discussions`, `home_reports`, `projects`, `organizations`, `project_tasks`, `discussions`, `project_discussions`, `users`, `team`, `tasks`, `report_tasks`, `assignment`, `reports`, `files`, `organization_projects`, `notes`, `calendar`, `phases`, `support_requests`, `bookmarks`, `tasks_time`, `meetings`, `meetings_attachment`, `meetings_time`, `calendar_view`, `tasks_closed`, `milestones`) VALUES
(1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'tas.due_date DESC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `_estudosupport_posts`
--

CREATE TABLE IF NOT EXISTS `_estudosupport_posts` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `request_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message` text,
  `date` varchar(16) DEFAULT NULL,
  `owner` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `project` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `_estudosupport_requests`
--

CREATE TABLE IF NOT EXISTS `_estudosupport_requests` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `status` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `priority` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) DEFAULT NULL,
  `message` text,
  `owner` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `date_open` varchar(16) DEFAULT NULL,
  `date_close` varchar(16) DEFAULT NULL,
  `project` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `_estudotasks`
--

CREATE TABLE IF NOT EXISTS `_estudotasks` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `project` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `priority` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `status` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `owner` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `assigned_to` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name` varchar(155) DEFAULT NULL,
  `description` text,
  `start_date` varchar(10) DEFAULT NULL,
  `due_date` varchar(10) DEFAULT NULL,
  `estimated_time` varchar(10) DEFAULT NULL,
  `actual_time` varchar(10) DEFAULT NULL,
  `comments` text,
  `completion` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `created` varchar(16) DEFAULT NULL,
  `modified` varchar(16) DEFAULT NULL,
  `assigned` varchar(16) DEFAULT NULL,
  `published` char(1) NOT NULL DEFAULT '',
  `parent_phase` int(10) unsigned NOT NULL DEFAULT '0',
  `complete_date` varchar(10) DEFAULT NULL,
  `service` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `milestone` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `_estudotasks`
--

INSERT INTO `_estudotasks` (`id`, `project`, `priority`, `status`, `owner`, `assigned_to`, `name`, `description`, `start_date`, `due_date`, `estimated_time`, `actual_time`, `comments`, `completion`, `created`, `modified`, `assigned`, `published`, `parent_phase`, `complete_date`, `service`, `milestone`) VALUES
(1, 1, 3, 4, 1, 1, 'Reunião de planejamento', 'Reunião de planejamento da Sprint', '2014-05-06', '2014-05-06', '4', NULL, '', 0, '2014-05-06 13:09', '2014-05-06 13:28', '2014-05-06 13:09', '0', 1, '--', 0, '1'),
(2, 1, 3, 3, 1, 1, 'Estruturação da Home', 'CSS da HOME', '2014-05-06', '2014-05-09', '4', NULL, '', 0, '2014-05-06 13:10', NULL, '2014-05-06 13:10', '0', 0, NULL, 0, '1'),
(3, 1, 3, 3, 1, 1, 'Criar conta de Email ', 'Criar conta de emails para os administradores', '2014-05-06', '2014-05-07', '0.5', NULL, '', 0, '2014-05-06 13:26', NULL, '2014-05-06 13:26', '0', 2, NULL, 0, '1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `_estudotasks_time`
--

CREATE TABLE IF NOT EXISTS `_estudotasks_time` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `project` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `task` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `owner` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `date` varchar(16) DEFAULT NULL,
  `hours` float(10,2) NOT NULL DEFAULT '0.00',
  `comments` text,
  `created` varchar(16) DEFAULT NULL,
  `modified` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `_estudoteams`
--

CREATE TABLE IF NOT EXISTS `_estudoteams` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `project` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `published` char(1) NOT NULL DEFAULT '',
  `authorized` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `_estudoteams`
--

INSERT INTO `_estudoteams` (`id`, `project`, `member`, `published`, `authorized`) VALUES
(1, 1, 1, '1', '0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `_estudotopics`
--

CREATE TABLE IF NOT EXISTS `_estudotopics` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `project` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `owner` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(155) DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT '',
  `last_post` varchar(16) DEFAULT NULL,
  `posts` smallint(5) unsigned NOT NULL DEFAULT '0',
  `published` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `_estudoupdates`
--

CREATE TABLE IF NOT EXISTS `_estudoupdates` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `type` char(1) NOT NULL DEFAULT '',
  `item` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `comments` text,
  `created` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `_estudoupdates`
--

INSERT INTO `_estudoupdates` (`id`, `type`, `item`, `member`, `comments`, `created`) VALUES
(1, '1', 1, 1, '\n[status:4]', '2014-05-06 13:27');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
