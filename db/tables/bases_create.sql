CREATE TABLE `bases` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default 'Leerer Asteroid',
  `owner` int(11) NOT NULL default '0',
  `x` int(11) NOT NULL default '1',
  `y` int(11) NOT NULL default '1',
  `system` tinyint(4) NOT NULL default '1',
  `bewohner` int(11) unsigned NOT NULL default '0',
  `arbeiter` int(11) unsigned NOT NULL default '0',
  `e` int(11) unsigned NOT NULL default '0',
  `maxe` smallint(5) unsigned NOT NULL default '1000',
  `cargo` text NOT NULL,
  `maxcargo` int(11) NOT NULL default '0',
  `core` int(11) NOT NULL default '0',
  `klasse` int(5) NOT NULL default '1',
  `width` int(5) NOT NULL default '5',
  `height` int(5) NOT NULL default '8',
  `maxtiles` smallint(6) NOT NULL default '0',
  `size` tinyint(3) unsigned NOT NULL default '0',
  `terrain` text NOT NULL default '',
  `bebauung` text NOT NULL default '',
  `active` text NOT NULL default '',
  `coreactive` tinyint(3) unsigned NOT NULL default '0',
  `autogtuacts` text NOT NULL default '',
  `version` int(11) NOT NULL default '0',
  `marines` int unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `owner` (`owner`,`id`),
  KEY `coords` (`x`,`y`,`system`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8; 