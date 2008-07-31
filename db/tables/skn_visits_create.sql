CREATE TABLE `skn_visits` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `user` int(11) NOT NULL default '0',
  `channel` int(11) unsigned NOT NULL default '0',
  `time` int(10) unsigned NOT NULL default '0',
  `version` int(10) unsigned not null default '0',
  PRIMARY KEY  (`id`),
  KEY `user` (`user`, `channel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Com-Net visits'; 