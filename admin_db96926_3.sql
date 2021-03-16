CREATE TABLE IF NOT EXISTS `chat_ChatDailyStats` (
  `Year` smallint(4) unsigned NOT NULL default '0',
  `Month` tinyint(2) unsigned NOT NULL default '0',
  `Day` tinyint(2) unsigned NOT NULL default '0',
  `Registrations` mediumint(8) unsigned default '0',
  `Logins` mediumint(8) unsigned default '0',
  `Guests` mediumint(8) unsigned default '0',
  `MaxUsers` mediumint(8) unsigned default NULL,
  `MaxGuests` mediumint(8) unsigned default NULL,
  PRIMARY KEY  (`Year`,`Month`,`Day`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE IF NOT EXISTS `chat_ChatLiveUsers` (
  `TmpId` mediumint(8) unsigned NOT NULL auto_increment,
  `Pass` char(4) NOT NULL default '',
  `RoomId` tinyint(3) unsigned NOT NULL default '0',
  `LastCheckIn` int(10) unsigned default NULL,
  `Name` char(36) default NULL,
  `Attributes` char(100) default NULL,
  `IsGuest` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`TmpId`,`Pass`),
  UNIQUE KEY `UserId` (`TmpId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=552 ;

CREATE TABLE IF NOT EXISTS `chat_ChatUsers` (
  `UserId` int(10) unsigned NOT NULL auto_increment,
  `TmpId` mediumint(8) unsigned NOT NULL default '0',
  `Name` char(36) NOT NULL default '0',
  `Password` char(32) NOT NULL default '',
  `Email` char(50) default NULL,
  `IsModerator` tinyint(1) unsigned NOT NULL default '0',
  `IsGuest` tinyint(1) unsigned NOT NULL default '0',
  `LastAccess` int(10) unsigned default NULL,
  `TotalTime` int(10) unsigned NOT NULL default '0',
  `RegDate` int(10) unsigned default NULL,
  `IsBanned` tinyint(1) unsigned NOT NULL default '0',
  `Ip` char(15) default NULL,
  `TimesLoggedIn` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`UserId`),
  UNIQUE KEY `UserId` (`UserId`),
  KEY `Name` (`Name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=988 ;