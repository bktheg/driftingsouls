CREATE TABLE `battles` (
  `id` int(11) NOT NULL auto_increment,
  `x` smallint(6) NOT NULL default '1',
  `y` smallint(6) NOT NULL default '1',
  `system` smallint(6) NOT NULL default '1',
  `ally1` smallint(6) NOT NULL default '0',
  `ally2` smallint(6) NOT NULL default '0',
  `commander1` int(11) NOT NULL default '0',
  `com1Points` smallint(6) NOT NULL default '0',
  `commander2` int(11) NOT NULL default '0',
  `com2Points` smallint(6) NOT NULL default '0',
  `ready1` tinyint(1) unsigned NOT NULL default '0',
  `ready2` tinyint(1) unsigned NOT NULL default '0',
  `com1Msg` longtext character set latin1 NOT NULL,
  `com2Msg` longtext character set latin1 NOT NULL,
  `com1BETAK` tinyint(1) unsigned NOT NULL default '1',
  `com2BETAK` tinyint(1) unsigned NOT NULL default '1',
  `takeCommand1` mediumint(9) NOT NULL default '0',
  `takeCommand2` mediumint(9) NOT NULL default '0',
  `lastaction` int(10) unsigned NOT NULL default '0',
  `blockcount` tinyint(3) NOT NULL default '2',
  `lastturn` int(10) unsigned NOT NULL default '0',
  `flags` int(11) NOT NULL default '0',
  `inakt` tinyint(3) unsigned NOT NULL default '0',
  `onend` text character set latin1,
  `visibility` text character set latin1,
  `quest` int(10) unsigned default NULL,
  PRIMARY KEY  (`id`),
  KEY `coords` (`x`,`y`,`system`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Aktuelle Schlachten'; 

ALTER TABLE battles ADD CONSTRAINT battles_fk_users1 FOREIGN KEY (commander1) REFERENCES users(id);
ALTER TABLE battles ADD CONSTRAINT battles_fk_users2 FOREIGN KEY (commander2) REFERENCES users(id);