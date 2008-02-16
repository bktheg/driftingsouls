CREATE TABLE `ship_types` (
  `id` int(11) NOT NULL auto_increment,
  `nickname` varchar(30) NOT NULL default '',
  `picture` varchar(50) NOT NULL default '',
  `ru` int(11) NOT NULL default '0',
  `rd` int(11) NOT NULL default '0',
  `ra` int(11) NOT NULL default '0',
  `rm` int(11) NOT NULL default '0',
  `eps` int(11) NOT NULL default '0',
  `cost` int(11) NOT NULL default '0',
  `hull` int(11) NOT NULL default '0',
  `panzerung` tinyint(3) unsigned NOT NULL default '0',
  `ablativeArmor` int(11) UNSIGNED NOT NULL default '0',
  `cargo` int(11) NOT NULL default '0',
  `heat` int(11) NOT NULL default '0',
  `crew` int(11) NOT NULL default '0',
  `weapons` text NOT NULL,
  `maxheat` text NOT NULL,
  `torpedodef` tinyint(3) unsigned NOT NULL default '0',
  `shields` int(11) NOT NULL default '0',
  `size` int(11) NOT NULL default '0',
  `jdocks` int(11) NOT NULL default '0',
  `adocks` int(11) NOT NULL default '0',
  `sensorrange` tinyint(4) NOT NULL default '0',
  `hydro` int(11) NOT NULL default '0',
  `recost` smallint(5) unsigned NOT NULL default '0',
  `descrip` text NOT NULL,
  `deutfactor` tinyint(4) NOT NULL default '0',
  `class` tinyint(3) unsigned NOT NULL default '0',
  `flags` text NOT NULL,
  `groupwrap` tinyint(3) unsigned NOT NULL default '10',
  `werft` int(11) NOT NULL default '0',
  `ow_werft` smallint(5) unsigned NOT NULL default '0',
  `chance4Loot` tinyint(3) unsigned NOT NULL default '0',
  `modules` text NOT NULL,
  `shipcount` tinyint(3) unsigned NOT NULL default '1',
  `hide` tinyint(1) NOT NULL default '0',
  `srs` tinyint NOT NULL default '1',
  `scanCost` INT NOT NULL default '0',
  `pickingCost` INT NOT NULL default '0',
  `marines` int unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8; 

INSERT INTO `ship_types` (`id`, `nickname`, `picture`, `ru`, `rd`, `ra`, `rm`, `eps`, `cost`, `hull`, `panzerung`, `cargo`, `heat`, `crew`, `weapons`, `maxheat`, `torpedodef`, `shields`, `size`, `jdocks`, `adocks`, `sensorrange`, `hydro`, `recost`, `descrip`, `deutfactor`, `class`, `flags`, `groupwrap`, `werft`, `ow_werft`, `chance4Loot`, `modules`, `shipcount`, `hide`) VALUES (1, 'GTD Orion', 'data/schiffe/gcp/gtd_orion.png', 18, 27, 0, 450, 1300, 8, 100000, 17, 6000, 4, 10000, 'BGreen=3|TerSlash=3|Terran_Huge_Turret=8|Terran_Turret=3|AAAf=3', 'BGreen=30|TerSlash=30|Terran_Huge_Turret=80|Terran_Turret=30|AAAf=30', 0, 0, 13, 20, 0, 1, 0, 0, 'Die Orion V2 baut auf dem Rumpf der Orion-Zerst&ouml;rer aus dem ersten Shivaner-Krieg auf. Trotz der hohen Verluste dieser Zerst&ouml;rer an shivanische Demon-Zerst&ouml;rer und die Lucifer hielten diese Schiffe die Standarte der GTA hoch. Mit Beginn der Kooperation mit den Vasudanern wurden die verbleibenden Orion-Zerst&ouml;rer aufger&uuml;stet und auf den neusten Stand der Technik gebracht.\r\nViele dieser Zerst&ouml;rer fielen der NTF w&auml;hrend ihrer Rebellion in die H&auml;nde, ebenso wie die Werften, die diese Schiffe bauen konnten. Obwohl die meisten der damals zur NTF &uuml;bergelaufenen Zerst&ouml;rer vernichtet wurden, findet sich immer noch eine unbekannte Anzahl dieser Schiffe in den Arsenalen der wiedererstarkenden Neo Terranischen Front.', 0, 2, 'zerstoererpanzerung secondrow', 10, '', 0, 0, '1:misc;2:misc;3:orion_terran_destroyer_offensive;4:orion_terran_destroyer_deffensive;5:orion_terran_destroyer_engine;6:orion_terran_destroyer_reactor;7:orion_terran_destroyer_tech;8:orion_terran_destroyer_hull;9:orion_terran_destroyer_special', 1, 0);
INSERT INTO `ship_types` (`id`, `nickname`, `picture`, `ru`, `rd`, `ra`, `rm`, `eps`, `cost`, `hull`, `panzerung`, `cargo`, `heat`, `crew`, `weapons`, `maxheat`, `torpedodef`, `shields`, `size`, `jdocks`, `adocks`, `sensorrange`, `hydro`, `recost`, `descrip`, `deutfactor`, `class`, `flags`, `groupwrap`, `werft`, `ow_werft`, `chance4Loot`, `modules`, `shipcount`, `hide`) VALUES (2, 'Zephyrus', 'data/schiffe/gcp/gtt_zephyrus.png', 1, 5, 0, 10, 40, 1, 10000, 1, 480, 2, 30, '', '', 0, 0, 6, 0, 0, 1, 0, 0, 'Der Standardtanker der Terraner, wendiger als sein vasudanisches Pendant - dafÃ¼r aber mit einem kleineren Reaktor und weniger Laderaum ausgestattet', 3, 3, '', 10, '', 0, 0, '1:misctanker', 1, 0);
INSERT INTO `ship_types` (`id`, `nickname`, `picture`, `ru`, `rd`, `ra`, `rm`, `eps`, `cost`, `hull`, `panzerung`, `cargo`, `heat`, `crew`, `weapons`, `maxheat`, `torpedodef`, `shields`, `size`, `jdocks`, `adocks`, `sensorrange`, `hydro`, `recost`, `descrip`, `deutfactor`, `class`, `flags`, `groupwrap`, `werft`, `ow_werft`, `chance4Loot`, `modules`, `shipcount`, `hide`) VALUES (3, 'GVD Hatshepsut', 'data/schiffe/gcp/gvd_hatshepsut.png', 0, 0, 90, 750, 1500, 8, 135000, 18, 7000, 4, 12500, 'BVas=3|SVas=1|Terran_Huge_Turret=6|standard_flak=11|AAAf=4|raketen=5', 'BVas=45|SVas=15|Terran_Huge_Turret=90|standard_flak=110|AAAf=60|raketen=50', 0, 0, 13, 40, 0, 1, 0, 0, '2360 wurde der erste Hatshepsutzerst&ouml;rer in betrieb genommen. Akheton entwickelte diese neue Kla&szlig;e von Zerst&ouml;rern, die nach und nach die alten Typhoons ersetzen sollen, insbesondere im hinblick auf Kompatibilit&auml;t mit modernen Strahlgesch&uuml;tzen,  da bei der Typhoonkla&szlig;e deutlich wurde, da&szlig; die &auml;lteren Reaktoren nicht in der Lage waren mit diesen umzugehen, was zu Fehlfunktionen und Reaktor&uuml;berlastungen f&uuml;hrte. Obgleich eine Nachr&uuml;stung teilweise gelang wurde doch deutlich, da&szlig; eine v&ouml;llige Neuentwicklung unumg&auml;nglich sein w&uuml;rde. Die Hatshepsut ist die logische Folge dieser Erkenntni&szlig;e und ein furchterregender Anblick auf dem Schlachtfeld.\r\n', 0, 2, 'zerstoererpanzerung secondrow', 10, '', 0, 0, '1:misc;2:misc;3:misc;4:hatshepsut_vasudan_destroyer_offensive;5:hatshepsut_vasudan_destroyer_deffensive;6:hatshepsut_vasudan_destroyer_engine;7:hatshepsut_vasudan_destroyer_reactor;8:hatshepsut_vasudan_destroyer_tech;9:hatshepsut_vasudan_destroyer_hull;10:hatshepsut_vasudan_destroyer_special', 1, 0);
INSERT INTO `ship_types` (`id`, `nickname`, `picture`, `ru`, `rd`, `ra`, `rm`, `eps`, `cost`, `hull`, `panzerung`, `cargo`, `heat`, `crew`, `weapons`, `maxheat`, `torpedodef`, `shields`, `size`, `jdocks`, `adocks`, `sensorrange`, `hydro`, `recost`, `descrip`, `deutfactor`, `class`, `flags`, `groupwrap`, `werft`, `ow_werft`, `chance4Loot`, `modules`, `shipcount`, `hide`) VALUES (5, 'GTCv Deimos', 'data/schiffe/gcp/gtcv_deimos.png', 6, 10, 0, 165, 500, 3, 80000, 8, 1000, 4, 1400, 'TerSlash=4|Terran_Huge_Turret=4|Terran_Turret=6|standard_flak=6|AAAf=4', 'TerSlash=40|Terran_Huge_Turret=40|Terran_Turret=18|standard_flak=18|AAAf=12', 0, 0, 8, 0, 0, 1, 0, 0, 'Deimoskorvetten sind ma&szlig;iv gepanzert und bewaffnet und vielseitig nutzbar. Urspr&uuml;nglich als Ersatz f&uuml;r die veralteten Kreuzer der terranischen Flottenverb&auml;nde gedacht, werden sie momentan jedoch als Erg&auml;nzung genutzt, da sich herau&szlig;tellte, da&szlig; ihre Effektivit&auml;t in der J&auml;gerabwehr deutlich hinter der von Kreuzern zur&uuml;ckbleibt. Nichtsdestotrotz bilden diese Schiffe jedoch einen unsch&auml;tzbaren Wert, wenn es um das Au&szlig;chalten von feindlichen Gro&szlig;kampfschiffen geht. Modernste Strahlengesch&uuml;tze stellen die Prim&auml;rwaffen und sind in der Lage problemlos Kreuzer und auch andere Korvetten zu zerst&ouml;ren - etwas das vormals praktisch nur Zerst&ouml;rern und Bombern vorbehalten war.', 0, 5, '', 10, '', 0, 0, '1:misc', 1, 0);
INSERT INTO `ship_types` (`id`, `nickname`, `picture`, `ru`, `rd`, `ra`, `rm`, `eps`, `cost`, `hull`, `panzerung`, `cargo`, `heat`, `crew`, `weapons`, `maxheat`, `torpedodef`, `shields`, `size`, `jdocks`, `adocks`, `sensorrange`, `hydro`, `recost`, `descrip`, `deutfactor`, `class`, `flags`, `groupwrap`, `werft`, `ow_werft`, `chance4Loot`, `modules`, `shipcount`, `hide`) VALUES (6, 'GVC Mentu', 'data/schiffe/gcp/gvc_mentu.png', 0, 0, 13, 110, 220, 2, 60000, 8, 720, 4, 600, 'VSlash=1|Terran_Huge_Turret=2|Terran_Turret=6|standard_flak=3|AAAf=3|raketen=3', 'VSlash=5|Terran_Huge_Turret=10|Terran_Turret=30|standard_flak=15|AAAf=15|raketen=15', 13, 0, 6, 0, 0, 1, 0, 0, 'Die Mentu soll den in die Jahre gekommenen Kreuzer Aten schritt f&uuml;r Schritt ersetzen\r\nWie die Typhoon war auch die Aten nur bedingt f&uuml;r die neuen Strahlengesch&uuml;tze geeignet, und statt die Reaktoren und Antriebe von hunderten Aten-Kreuzern auszuwechseln, wie es bei der Typhoon gemacht wurde, entschloss man sich einen neuen Schiffstyp zu entwickeln, die Mentu.\r\n', 0, 7, '', 10, '', 0, 0, '1:misc;2:misc;3:vasudan_hcruiser_upgrade', 1, 0);
INSERT INTO `ship_types` (`id`, `nickname`, `picture`, `ru`, `rd`, `ra`, `rm`, `eps`, `cost`, `hull`, `panzerung`, `cargo`, `heat`, `crew`, `weapons`, `maxheat`, `torpedodef`, `shields`, `size`, `jdocks`, `adocks`, `sensorrange`, `hydro`, `recost`, `descrip`, `deutfactor`, `class`, `flags`, `groupwrap`, `werft`, `ow_werft`, `chance4Loot`, `modules`, `shipcount`, `hide`) VALUES (7, 'GVD Typhon', 'data/schiffe/gcp/gvd_typhon.png', 14, 21, 0, 370, 1100, 8, 120000, 18, 6500, 4, 12000, 'BVas=2|Terran_Huge_Turret=2|standard_flak=5|AAAf=2|raketen=4', 'BVas=30|Terran_Huge_Turret=20|standard_flak=50|AAAf=20|raketen=40', 0, 0, 13, 30, 0, 1, 0, 0, 'Die Typhoon war das gef&auml;hrlichste Schiff, welches im ersten Shivaner-Krieg aufgeboten werden konnte, und ein Stolz f&uuml;r die Vasudaner. Umso entt&auml;uschter waren sie, als sich herausstellte, dass die Reaktoren und Antriebe der Typhoon keine der neuentwickelten Strahlengesch&uuml;tze unterst&uuml;tzen konnten.\r\nZwar wurde bei einer Reihe von Typhoons neue und geeignete Reaktor-Antriebs Kombinationen eingebaut und an der Bewaffnung die entsprechenden Modifikationen vorgenommen, jedoch wurde die Typhoon inzwischen durch die Hatshepsut weitestgehend abgel&ouml;st. \r\n', 0, 2, 'zerstoererpanzerung secondrow', 10, '', 0, 0, '1:misc;2:typhoon_vasudan_destroyer_offensive;3:typhoon_vasudan_destroyer_deffensive;4:typhoon_vasudan_destroyer_engine;5:typhoon_vasudan_destroyer_reactor;6:typhoon_vasudan_destroyer_tech;7:typhoon_vasudan_destroyer_hull;8:typhoon_vasudan_destroyer_special;9:misc', 1, 0);
INSERT INTO `ship_types` (`id`, `nickname`, `picture`, `ru`, `rd`, `ra`, `rm`, `eps`, `cost`, `hull`, `panzerung`, `cargo`, `heat`, `crew`, `weapons`, `maxheat`, `torpedodef`, `shields`, `size`, `jdocks`, `adocks`, `sensorrange`, `hydro`, `recost`, `descrip`, `deutfactor`, `class`, `flags`, `groupwrap`, `werft`, `ow_werft`, `chance4Loot`, `modules`, `shipcount`, `hide`) VALUES (8, 'GTC Leviathan', 'data/schiffe/gcp/gtc_leviathan.png', 3, 6, 0, 55, 160, 3, 35000, 8, 500, 5, 350, 'SGreen=1|Terran_Turret=3|AAAf=4|doubleraketen=1', 'SGreen=5|Terran_Turret=15|AAAf=48|doubleraketen=5', 0, 0, 6, 0, 0, 1, 0, 0, 'Die Leviathan ist eine Abwandlung der Fenris. Sie sollte die Fenris-Kreuzer von Defensivaktionen abl&ouml;sen, damit diese in Vorm&auml;rschen eingesetzt werden konnten. Zudem verf&uuml;gt die Leviathan &uuml;ber eine deutlich widerstandsf&auml;higere H&uuml;lle was sie f&uuml;r diese Aufgabe auch wie geschaffen machte.\r\nDie neue Leviathan ist ebenfalls mit einer Strahlenkanone nachger&uuml;stet worden. Die Terraner m&ouml;gen eben alte Designs.\r\n', 0, 7, '', 10, '', 0, 0, '1:misc', 1, 0);
INSERT INTO `ship_types` (`id`, `nickname`, `picture`, `ru`, `rd`, `ra`, `rm`, `eps`, `cost`, `hull`, `panzerung`, `cargo`, `heat`, `crew`, `weapons`, `maxheat`, `torpedodef`, `shields`, `size`, `jdocks`, `adocks`, `sensorrange`, `hydro`, `recost`, `descrip`, `deutfactor`, `class`, `flags`, `groupwrap`, `werft`, `ow_werft`, `chance4Loot`, `modules`, `shipcount`, `hide`) VALUES (9, 'Triton FR72 M', 'data/schiffe/gcp/gtt_fr72m.png', 0, 7, 10, 40, 100, 2, 8000, 3, 1500, 2, 30, '', '', 0, 2000, 6, 0, 0, 1, 0, 0, 'Der Triton Dynamics FR72-Transporter konnte sich nie wirklich durchsetzen. F&uuml;r den milit&auml;rischen Gebrauch zu schlecht gesch&uuml;tzt, f&uuml;r den zivilen Gebrauch zu klein.\r\nNach der Freigabe der Pl&auml;ne und dem damit verbundenen Eingest&auml;ndnis des Scheiterns, gelang es einigen Bastlern den FR72 mit einigen veralteten Schildgeneratoren aus dem gro&szlig;en Krieg auszur&uuml;sten und die &uuml;berlebensf&auml;higkeit so betr&auml;chtlich zu erh&ouml;hen. Dadurch wurde der Einsatz in Krisengebieten m&ouml;glich, wo der FR72 M nun ein h&auml;ufiger Anblick ist. ', 0, 1, '', 10, '', 0, 0, '1:misc;2:misc', 1, 0);
INSERT INTO `ship_types` (`id`, `nickname`, `picture`, `ru`, `rd`, `ra`, `rm`, `eps`, `cost`, `hull`, `panzerung`, `cargo`, `heat`, `crew`, `weapons`, `maxheat`, `torpedodef`, `shields`, `size`, `jdocks`, `adocks`, `sensorrange`, `hydro`, `recost`, `descrip`, `deutfactor`, `class`, `flags`, `groupwrap`, `werft`, `ow_werft`, `chance4Loot`, `modules`, `shipcount`, `hide`) VALUES (10, 'GTI Arcadia', 'data/schiffe/gcp/gti_arcadia.png', 62, 93, 0, 1565, 4700, 0, 100000, 20, 50000, 0, 19000, 'BGreen=4|TerSlash=9|Terran_Huge_Turret=10|Terran_Turret=15|AAAf=8|standard_flak_ld=6|heavy_flak_ld=6', 'BGreen=60|TerSlash=180|Terran_Huge_Turret=20|Terran_Turret=300|AAAf=160|standard_flak_ld=120|heavy_flak_ld=120', 0, 0, 18, 25, 0, 10, 0, 0, 'Die Arcadia ist einer der gr&ouml;&szlig;ten Au&szlig;enposten der Terraner. Diese Festung dient dazu, Systeme vor feindlicher Invasion zu sch&uuml;tzen, und mit ihren zahlreichen Gesch&uuml;tzen kann sie die Gegner in Schach halten, bis Hilfe eintrifft.\r\n', 0, 8, 'zerstoererpanzerung srs_awac srs_ext_awac secondrow', 10, 'ganymed', 0, 0, '1:misc;2:misc:3:misc;4:misc;5:misc_large_weapon;6:misc_large_weapon;7:misc_large_weapon;8:misc_large_weapon;9:misc_large_weapon;10:misc_large_weapon;11:misc_large_weapon;12:misc_large_weapon;13:misc_large;14:misc_large;15:misc_large;16:misc_large', 1, 0);
INSERT INTO `ship_types` (`id`, `nickname`, `picture`, `ru`, `rd`, `ra`, `rm`, `eps`, `cost`, `hull`, `panzerung`, `cargo`, `heat`, `crew`, `weapons`, `maxheat`, `torpedodef`, `shields`, `size`, `jdocks`, `adocks`, `sensorrange`, `hydro`, `recost`, `descrip`, `deutfactor`, `class`, `flags`, `groupwrap`, `werft`, `ow_werft`, `chance4Loot`, `modules`, `shipcount`, `hide`) VALUES (12, 'GVC Aten', 'data/schiffe/gcp/gvc_aten.png', 2, 4, 0, 35, 100, 3, 18000, 2, 300, 4, 200, 'Subach_HL-7=4|Terran_Turret=2|AAAf=2|raketen=2', 'Subach_HL-7=20|Terran_Turret=10|AAAf=10|raketen=16', 0, 0, 6, 0, 0, 1, 0, 0, 'Die Aten ist der kleinste Kreuzer des GCP, mit einer vergleichsweise geringen Bewaffnung. Hierin &auml;hnelt sie der Fenris, weist jedoch fast das doppelte an H&uuml;llenst&auml;rke auf. Als Relikt aus dem Gro&szlig;en Krieg wird sie allgemein als veraltet angesehen, obgleich es einige Bem&uuml;hungen gab, zumindest den Einsatz von AAAf-Strahlern zu erm&ouml;glichen. Meist wird sie als Konvoieskorte eingesetzt, nur selten wird man sie an der Front antreffen.', 0, 6, '', 10, '', 0, 0, '1:misc', 1, 0);
INSERT INTO `ship_types` (`id`, `nickname`, `picture`, `ru`, `rd`, `ra`, `rm`, `eps`, `cost`, `hull`, `panzerung`, `cargo`, `heat`, `crew`, `weapons`, `maxheat`, `torpedodef`, `shields`, `size`, `jdocks`, `adocks`, `sensorrange`, `hydro`, `recost`, `descrip`, `deutfactor`, `class`, `flags`, `groupwrap`, `werft`, `ow_werft`, `chance4Loot`, `modules`, `shipcount`, `hide`) VALUES (13, 'GTSG Guardian', 'data/schiffe/gtsg_guardian.png', 0, 5, 0, 15, 50, 0, 150, 3, 50, 0, 0, 'Subach_HL-7=2', 'Subach_HL-7=10', 0, 0, 1, 0, 0, 0, 0, 0, 'Obgleich das Konzept der unbemannten Gesch&uuml;tzplattform deutliche Schw&auml;chen aufweist und Plattformen wie der Watchdog oder Ceberus de facto nicht mehr im Einsatz sind, wurde beschlo&szlig;en die verbliebenen Exemplare noch einmal aufzur&uuml;sten - das Ergebnis ist der Guardian.\r\n\r\n', 0, 10, '', 5, '', 0, 0, '1:jprimary:Subach_HL-7;2:jprimary:Subach_HL-7', 1, 0);
INSERT INTO `ship_types` (`id`, `nickname`, `picture`, `ru`, `rd`, `ra`, `rm`, `eps`, `cost`, `hull`, `panzerung`, `cargo`, `heat`, `crew`, `weapons`, `maxheat`, `torpedodef`, `shields`, `size`, `jdocks`, `adocks`, `sensorrange`, `hydro`, `recost`, `descrip`, `deutfactor`, `class`, `flags`, `groupwrap`, `werft`, `ow_werft`, `chance4Loot`, `modules`, `shipcount`, `hide`) VALUES (14, 'GTSG Mjolnir', 'data/schiffe/gtsg_mjolnir.png', 1, 2, 40, 80, 230, 0, 2500, 10, 120, 0, 5, 'mjolnir=1', 'mjolnir=5', 0, 0, 1, 0, 0, 0, 0, 0, 'Die Mjolnir setzt statt Lasern ein einziges Strahlengesch&uuml;tz ein. Die h&ouml;here Durchschlagskraft wird jedoch durch die ben&ouml;tigte Besatzung ausgeglichen, so dass man eine Mjolnir nicht einfach so irgendwo hinstellen und dann vergessen sollte.\r\n', 0, 10, 'secondrow', 5, '', 0, 0, '1:misc', 1, 0);
INSERT INTO `ship_types` (`id`, `nickname`, `picture`, `ru`, `rd`, `ra`, `rm`, `eps`, `cost`, `hull`, `panzerung`, `cargo`, `heat`, `crew`, `weapons`, `maxheat`, `torpedodef`, `shields`, `size`, `jdocks`, `adocks`, `sensorrange`, `hydro`, `recost`, `descrip`, `deutfactor`, `class`, `flags`, `groupwrap`, `werft`, `ow_werft`, `chance4Loot`, `modules`, `shipcount`, `hide`) VALUES (22, 'GTCol Hephaistos', 'data/schiffe/gcp/gtcol_hephaistos.png', 10, 0, 0, 40, 160, 4, 9000, 1, 2000, 3, 500, '', '', 0, 0, 8, 0, 0, 1, 0, 0, 'Die GTCol Hephaistos ist eine abgespeckte Variante der Tantalos.\r\nDies war n&ouml;tig geworden, da die Tantalos ein Reaktor-Antriebs-System aufwei&szlig;t, welches noch sehr aufwendig zu produzieren ist. Um die dadurch entstehenden Versorgungsengp&auml;sse beim Bau zu verhindern konstruierte das GCP die Hephaistos.', 0, 1, 'colonizer', 10, '', 0, 0, '1:misc', 1, 0);
INSERT INTO `ship_types` (`id`, `nickname`, `picture`, `ru`, `rd`, `ra`, `rm`, `eps`, `cost`, `hull`, `panzerung`, `cargo`, `heat`, `crew`, `weapons`, `maxheat`, `torpedodef`, `shields`, `size`, `jdocks`, `adocks`, `sensorrange`, `hydro`, `recost`, `descrip`, `deutfactor`, `class`, `flags`, `groupwrap`, `werft`, `ow_werft`, `chance4Loot`, `modules`, `shipcount`, `hide`) VALUES (27, 'GTT Triton', 'data/schiffe/gcp/gtt_triton.png', 4, 8, 0, 24, 80, 2, 5000, 3, 600, 5, 50, 'Subach_HL-7=1|standard_flak=1', 'Subach_HL-7=5|standard_flak=5', 0, 0, 6, 0, 4, 1, 0, 0, 'Der Standardfrachter des GCP. Obgleich fr&uuml;her nicht in der Lage Standardcontainer zu transportieren, wurde er in den letzten jahren modifiziert um das andocken von bis zu vier containern, Sentrieguns oder J&auml;gern zu erm&ouml;glichen. Dies &auml;ndert jedoch nichts an seiner Schutzlosigkeit, die aus einer schwachen H&uuml;lle und praktisch nicht existenten Bewaffnung resultiert.\r\n\r\nJedes angedockte Objekt erh&ouml;ht die Flugkosten des Schiffes um 1.', 0, 1, '', 10, '', 0, 0, '1:misc', 1, 0);
INSERT INTO `ship_types` (`id`, `nickname`, `picture`, `ru`, `rd`, `ra`, `rm`, `eps`, `cost`, `hull`, `panzerung`, `cargo`, `heat`, `crew`, `weapons`, `maxheat`, `torpedodef`, `shields`, `size`, `jdocks`, `adocks`, `sensorrange`, `hydro`, `recost`, `descrip`, `deutfactor`, `class`, `flags`, `groupwrap`, `werft`, `ow_werft`, `chance4Loot`, `modules`, `shipcount`, `hide`) VALUES (28, 'Terranischer Frachtcontainer', 'data/schiffe/terrancargo.png', 0, 0, 0, 0, 100, 0, 300, 0, 800, 0, 0, '', '', 0, 0, 1, 0, 0, 0, 0, 0, 'Seit die Terraner den Weltraum bereisen, wissen sie, wie praktisch es ist, Waren in Containern verpackt in speziellen "Versorgungsdepots" zu sammeln.\r\nContainer haben den Vorteil, den Frachtraum eines Frachters der Triton, Poseidon oder Isis-Klasse zu erhÃ¶hen.\r\n', 0, 12, '', 10, '', 0, 0, '', 1, 0);
INSERT INTO `ship_types` (`id`, `nickname`, `picture`, `ru`, `rd`, `ra`, `rm`, `eps`, `cost`, `hull`, `panzerung`, `cargo`, `heat`, `crew`, `weapons`, `maxheat`, `torpedodef`, `shields`, `size`, `jdocks`, `adocks`, `sensorrange`, `hydro`, `recost`, `descrip`, `deutfactor`, `class`, `flags`, `groupwrap`, `werft`, `ow_werft`, `chance4Loot`, `modules`, `shipcount`, `hide`) VALUES (29, 'Vasudanischer Frachtcontainer', 'data/schiffe/vasucargo.png', 0, 0, 0, 0, 100, 0, 300, 0, 800, 0, 0, '', '', 0, 0, 1, 0, 0, 0, 0, 0, 'Auch die Vasudaner wissen, dass Frachtcontainer sehr praktisch sind.\r\nVasudanische Frachtcontainer haben keine Nachteile vor ihren terranischen Entsprechungen.\r\n', 0, 12, '', 10, '', 0, 0, '', 1, 0);
INSERT INTO `ship_types` (`id`, `nickname`, `picture`, `ru`, `rd`, `ra`, `rm`, `eps`, `cost`, `hull`, `panzerung`, `cargo`, `heat`, `crew`, `weapons`, `maxheat`, `torpedodef`, `shields`, `size`, `jdocks`, `adocks`, `sensorrange`, `hydro`, `recost`, `descrip`, `deutfactor`, `class`, `flags`, `groupwrap`, `werft`, `ow_werft`, `chance4Loot`, `modules`, `shipcount`, `hide`) VALUES (30, 'Anuket', 'data/schiffe/gvt_anuket.png', 0, 6, 0, 12, 50, 2, 4000, 1, 580, 2, 30, '', '', 0, 0, 6, 0, 0, 1, 0, 0, 'Deuterium, das Rohmaterial f&uml;r Plastik und der Brennstoff f&uml;r Fusionsreaktoren aller Art, kommt nicht auf Asteroiden vor.\r\nDie Anuket, der vasudanische Tanker, ist etwas beh&auml;biger als das Terranische Gegenst&uml;ck, hat jedoch mehr Frachtraum.\r\n', 3, 3, '', 10, '', 0, 0, '1:misctanker', 1, 0);
INSERT INTO `ship_types` (`id`, `nickname`, `picture`, `ru`, `rd`, `ra`, `rm`, `eps`, `cost`, `hull`, `panzerung`, `cargo`, `heat`, `crew`, `weapons`, `maxheat`, `torpedodef`, `shields`, `size`, `jdocks`, `adocks`, `sensorrange`, `hydro`, `recost`, `descrip`, `deutfactor`, `class`, `flags`, `groupwrap`, `werft`, `ow_werft`, `chance4Loot`, `modules`, `shipcount`, `hide`) VALUES (31, 'Ma at', 'data/schiffe/gcp/gvfr_maat.png', 8, 0, 0, 24, 80, 2, 8500, 4, 1000, 4, 30, 'Subach_HL-7=1|Terran_Turret=3', 'Subach_HL-7=5|Terran_Turret=15', 0, 0, 6, 0, 2, 1, 0, 0, 'Die Ma''at war w&auml;hrend des Gro&szlig;en Krieges der Standard-Transporter der jetztigen Vasudaner. Seine 4 Laserkanonen konnten frechen einzelg&auml;ngerischen GTA-J&auml;ger abwehren, jedoch waren die Ma''at gegen eine Vierer-Staffel machtlos.\r\nAuch heute setzen die Vasudaner die Ma''at als billiges bewaffnetes Transportschiff ein.\r\n\r\nJedes angedockte Objekt erh&ouml;ht die Flugkosten des Schiffes um 1.', 0, 1, '', 10, '', 0, 0, '1:misc', 1, 0);
INSERT INTO `ship_types` (`id`, `nickname`, `picture`, `ru`, `rd`, `ra`, `rm`, `eps`, `cost`, `hull`, `panzerung`, `cargo`, `heat`, `crew`, `weapons`, `maxheat`, `torpedodef`, `shields`, `size`, `jdocks`, `adocks`, `sensorrange`, `hydro`, `recost`, `descrip`, `deutfactor`, `class`, `flags`, `groupwrap`, `werft`, `ow_werft`, `chance4Loot`, `modules`, `shipcount`, `hide`) VALUES (33, 'GTI Ganymede', 'data/schiffe/gcp/gti_ganymede.png', 0, 5, 20, 80, 1200, 0, 90000, 14, 15000, 0, 2500, '', '', 0, 0, 9, 0, 0, 1, 0, 0, 'Die Ganymede ist die Standardwerftanlage des GCP. Sie ist weit verbreitet und in der Lage jedwedes Schiff, vom J&auml;ger bis zum Zerst&ouml;rer zu bauen und zu reparieren. Eine starke H&uuml;lle sch&uuml;tzt die ansonsten unbewaffnete Installation, die unbedingt gesch&uuml;tzt werden sollte.\r\n', 0, 8, 'zerstoererpanzerung secondrow', 10, 12, 0, 0, '1:misc;2:misc;3:misc_ganystation;4:misc_ganystation;5:weapon_ganystation;6:weapon_ganystation', 1, 0);
INSERT INTO `ship_types` (`id`, `nickname`, `picture`, `ru`, `rd`, `ra`, `rm`, `eps`, `cost`, `hull`, `panzerung`, `cargo`, `heat`, `crew`, `weapons`, `maxheat`, `torpedodef`, `shields`, `size`, `jdocks`, `adocks`, `sensorrange`, `hydro`, `recost`, `descrip`, `deutfactor`, `class`, `flags`, `groupwrap`, `werft`, `ow_werft`, `chance4Loot`, `modules`, `shipcount`, `hide`) VALUES (35, 'Flottentender Pyros', 'data/schiffe/pyros.png', 0, 10, 15, 40, 400, 2, 20000, 8, 8200, 4, 250, 'heavy_flak=4|AAAf=4|raketen=2', 'heavy_flak=20|AAAf=20|raketen=20', 0, 0, 14, 2, 3, 1, 0, 0, 'Das Flottenversorgungsschiff Pyros ist eine Neuentwicklung, die Elemente der Tritonfrachter, der Nautilusgro&szlig;raumtransporter und der Modularen Kompaktwerftanlagen vereint. Ein gro&szlig;er Frachtraum, 3 externe Dockinganlagen f&uuml;r Container und Sperrgesch&uuml;tze sowie 2 J&auml;gerhangars sowie die F&auml;higkeit besch&auml;digte Schiffe im Feld zu reparieren, machen dieses Schiff zu einem der beliebtesten in den Lost Lands.\r\n\r\nJedes angedockte Objekt erh&ouml;ht die Flugkosten des Schiffes um 1.', 0, 1, '', 10, 4, 0, 0, '1:misc;2:misc;3:misc_large_weapon;4:misc_large_weapon;5:misc_large_weapon;6:misc_large_weapon;7:misc_large;8:misc_large;9:misc_shipyard', 1, 0);
INSERT INTO `ship_types` (`id`, `nickname`, `picture`, `ru`, `rd`, `ra`, `rm`, `eps`, `cost`, `hull`, `panzerung`, `cargo`, `heat`, `crew`, `weapons`, `maxheat`, `torpedodef`, `shields`, `size`, `jdocks`, `adocks`, `sensorrange`, `hydro`, `recost`, `descrip`, `deutfactor`, `class`, `flags`, `groupwrap`, `werft`, `ow_werft`, `chance4Loot`, `modules`, `shipcount`, `hide`) VALUES (37, 'Rahu', 'data/schiffe/shivaner/st_rahu.png', 0, 8, 0, 20, 80, 2, 15000, 2, 450, 5, 30, 'Shivan_Heavy_Laser=3', 'Shivan_Heavy_Laser=15', 0, 0, 6, 0, 0, 0, 0, 0, 'Auch die Shivaner benÃ¶tigen Nachschub.\r\nDie Rahu entsprechen den Tankern, sind aber, wie jedes shivanische Schiff bewaffnet und hochaggressiv. Die Bewaffnung schlÃ¤gt sich jedoch auf den Laderaum nieder.\r\n', 3, 3, 'jumpdrive_shivan', 10, '', 0, 0, '1:misctanker', 1, 0);
INSERT INTO `ship_types` (`id`, `nickname`, `picture`, `ru`, `rd`, `ra`, `rm`, `eps`, `cost`, `hull`, `panzerung`, `cargo`, `heat`, `crew`, `weapons`, `maxheat`, `torpedodef`, `shields`, `size`, `jdocks`, `adocks`, `sensorrange`, `hydro`, `recost`, `descrip`, `deutfactor`, `class`, `flags`, `groupwrap`, `werft`, `ow_werft`, `chance4Loot`, `modules`, `shipcount`, `hide`) VALUES (44, 'Charybdis', 'data/schiffe/gts_charybdis.png', 3, 9, 0, 75, 120, 2, 10000, 2, 300, 3, 400, 'standard_flak=2', 'standard_flak=10', 0, 0, 7, 0, 0, 8, 0, 0, 'Die GTA Charybdis ist mit modernsten Tachyon-AWACS-Sensoren ausgestattet, die eine Langstreckenaufkl&auml;rung ohnegleichen erm&ouml;glichen. Charybdis sind jedoch nut schlecht gepanzert und bis auf zwei Flakgesch&uuml;tze unbewaffnet, so da&szlig; sie nie unbewacht fliegen sollten. Auch eine Aufkl&auml;rung von Nebeln erwies sich als unm&ouml;glich, wie schon die Untersuchung im Nebel hinter dem Kno&szlig;osportal bewies.', 0, 13, 'srs_awac', 10, '', 0, 0, '1:misc', 1, 0);
INSERT INTO `ship_types` (`id`, `nickname`, `picture`, `ru`, `rd`, `ra`, `rm`, `eps`, `cost`, `hull`, `panzerung`, `cargo`, `heat`, `crew`, `weapons`, `maxheat`, `torpedodef`, `shields`, `size`, `jdocks`, `adocks`, `sensorrange`, `hydro`, `recost`, `descrip`, `deutfactor`, `class`, `flags`, `groupwrap`, `werft`, `ow_werft`, `chance4Loot`, `modules`, `shipcount`, `hide`) VALUES (49, 'Weltraumschrott', 'data/schiffe/hunk.png', 0, 0, 0, 0, 0, 0, 451, 4, 132, 0, 0, '', '', 0, 0, 20, 0, 0, 0, 0, 0, 'Hinterlassenschaft wilder Partys mit Waffeneinsatz, die anschlieÃŸend den Flugverkehr gefÃ¤hrden.\r\nWer in diesen TrÃ¼mmern grÃ¼ndlich sucht, findet vielleicht noch was wertvolles.\r\nAnsonsten sind die Teile ein Fall fÃ¼r die Weltraum-Putze.\r\n', 0, 14, 'instabil nicht_kaperbar sehr_klein', 10, '', 0, 0, '', 1, 0);
INSERT INTO `ship_types` (`id`, `nickname`, `picture`, `ru`, `rd`, `ra`, `rm`, `eps`, `cost`, `hull`, `panzerung`, `cargo`, `heat`, `crew`, `weapons`, `maxheat`, `torpedodef`, `shields`, `size`, `jdocks`, `adocks`, `sensorrange`, `hydro`, `recost`, `descrip`, `deutfactor`, `class`, `flags`, `groupwrap`, `werft`, `ow_werft`, `chance4Loot`, `modules`, `shipcount`, `hide`) VALUES (51, 'GTCa Kottos', 'data/schiffe/gcp/gtca_kottos.png', 0, 8, 0, 135, 400, 5, 100000, 10, 4500, 4, 5500, 'TerSlash=2|heavy_flak=2|standard_flak=3|AAAf=5|raketen=4', 'TerSlash=10|heavy_flak=10|standard_flak=15|AAAf=40|raketen=40', 0, 0, 11, 10, 0, 1, 0, 0, 'Der Standardtr&auml;ger von Vasudanern und Terranern gleicherma&szlig;en. Er ist eines der wenigen Schiffe, da&szlig; J&auml;ger und Bomber zu ihren Zielen transportieren kann, wo diese dann ihren Auftrag durchf&uuml;hren. Und sollten die 28 transportierten J&auml;ger bzw. Bomber nicht ausreichen, so vermag die Kottos, deren Offensivarsenal zwar unter Korvettenniveau liegt, die jedoch durchaus in der Lage ist feindliche Schiffe anzugreifen und dabei dank einer ma&szlig;iven H&uuml;llenst&auml;rke, die nur von Zerst&ouml;rern &uuml;bertroffen wird, auch feindliches Feuer einzustecken, ihnen dabei durchaus zu helfen - auch wenn der m&ouml;gliche Verlust eines solchen Schiffes einen zweimal &uuml;ber de&szlig;en einsatz nachdenken la&szlig;en sollten, verliert man bei der Zerst&ouml;rung doch nicht nur 5500 Mann Crew und ein aufw&auml;ndig produziertes Schiff, sondern auch die M&ouml;glichkeit weitere Staffeln ins Kampfgebiet zu tragen.', 0, 15, '', 10, '', 0, 0, '1:misc_kottos;2:misc_kottos', 1, 0);
INSERT INTO `ship_types` (`id`, `nickname`, `picture`, `ru`, `rd`, `ra`, `rm`, `eps`, `cost`, `hull`, `panzerung`, `cargo`, `heat`, `crew`, `weapons`, `maxheat`, `torpedodef`, `shields`, `size`, `jdocks`, `adocks`, `sensorrange`, `hydro`, `recost`, `descrip`, `deutfactor`, `class`, `flags`, `groupwrap`, `werft`, `ow_werft`, `chance4Loot`, `modules`, `shipcount`, `hide`) VALUES (54, 'GTB Zeus', 'data/schiffe/gcp/gtb_zeus.png', 0, 28, 40, 100, 280, 4, 550, 2, 280, 10, 8, 'Subach_HL-7=8|Prometheus=8|raketen=4|torpedos=4', 'Subach_HL-7=40|Prometheus=40|raketen=8|torpedos=20', 0, 560, 2, 0, 0, 1, 0, 0, 'Der GTB Zeus ist einer der schnellsten im Einsatz befindlichen GCP-Bomber. Er ersetzt die alten Athena-Bomber der GTA die bereits kurz nach dem Gro&szlig;en Krieg au&szliger Dienst gestellt worden waren. Auch wenn er geringf&uuml;gig langsamer ist als die alte Athena, so erreicht der Zeus durch seine bessere Bewaffung sowie Panzerung eine wesentlich h&ouml;here &Uuml;berlebensrate in Kampfeins&auml;tzen. W&auml;hrend der NTF-Rebelion desertierten viele der Zeus-Staffeln und liefen zur NTF &uuml;ber.', 0, 17, 'jaeger abfangen', 10, '', 0, 0, '1:jprimary:Subach_HL-7;2:jprimary:Subach_HL-7;3:jprimary:Prometheus;4:jprimary:Prometheus', 4, 0);
INSERT INTO `ship_types` (`id`, `nickname`, `picture`, `ru`, `rd`, `ra`, `rm`, `eps`, `cost`, `hull`, `panzerung`, `cargo`, `heat`, `crew`, `weapons`, `maxheat`, `torpedodef`, `shields`, `size`, `jdocks`, `adocks`, `sensorrange`, `hydro`, `recost`, `descrip`, `deutfactor`, `class`, `flags`, `groupwrap`, `werft`, `ow_werft`, `chance4Loot`, `modules`, `shipcount`, `hide`) VALUES (56, 'GTF Ulysses', 'data/schiffe/gcp/gtf_ulysses.png', 0, 40, 0, 80, 240, 4, 180, 0, 240, 8, 4, 'Subach_HL-7=16|raketen=8', 'Subach_HL-7=96|raketen=40', 16, 360, 1, 0, 0, 0, 0, 0, '"Die Fledermaus", wie Ihre Piloten sie nennen, ist der erste jemals von Vasudanern und Terranern gemeinsam entwickelte J&auml;ger, der bereits seit dem Gro&szlig;en Krieg eingesetzt wird und auch heute noch genutzt wird. &Uuml;berragende Man&ouml;vrierf&auml;higkeit und eine gute H&ouml;chstgeschwindigkeit wurden bei der Entwicklung h&ouml;her gesch&auml;tzt als Panzerung und Munitionsfassungsverm&ouml;gen, was die Ulysses zu einem J&auml;ger macht, der besser in Angriffs- als in Defensivoperationen genutzt werden sollte.', 0, 9, 'jaeger abfangen', 10, '', 0, 0, '1:jprimary:Subach_HL-7;2:jprimary:Subach_HL-7;3:jprimary:Subach_HL-7;4:jprimary:Subach_HL-7', 4, 0);
INSERT INTO `ship_types` (`id`, `nickname`, `picture`, `ru`, `rd`, `ra`, `rm`, `eps`, `cost`, `hull`, `panzerung`, `cargo`, `heat`, `crew`, `weapons`, `maxheat`, `torpedodef`, `shields`, `size`, `jdocks`, `adocks`, `sensorrange`, `hydro`, `recost`, `descrip`, `deutfactor`, `class`, `flags`, `groupwrap`, `werft`, `ow_werft`, `chance4Loot`, `modules`, `shipcount`, `hide`) VALUES (61, 'Knossosportal', 'data/schiffe/other/knossos.png', 0, 0, 20, 60, 1000, 0, 1000000, 255, 200, 0, 0, '', '', 0, 0, 60, 0, 0, 0, 0, 0, 'Das Knossosportal - eine gigantische Einrichtung zum Stabilisieren von Sprungpunkten. Die Einrichtung wurde von den Uralten entwickelt. Die GTVA und sp&auml;ter die GCP entdeckten eine Reihe an Knossosportalen, jedoch gelang es ihnen bisher nicht diese kontrollieren.', 0, 19, 'zerstoererpanzerung', 10, '', 0, 0, '', 1, 0);
INSERT INTO `ship_types` (`id`, `nickname`, `picture`, `ru`, `rd`, `ra`, `rm`, `eps`, `cost`, `hull`, `panzerung`, `cargo`, `heat`, `crew`, `weapons`, `maxheat`, `torpedodef`, `shields`, `size`, `jdocks`, `adocks`, `sensorrange`, `hydro`, `recost`, `descrip`, `deutfactor`, `class`, `flags`, `groupwrap`, `werft`, `ow_werft`, `chance4Loot`, `modules`, `shipcount`, `hide`) VALUES (69, 'HLF Toth', 'data/schiffe/hol/gvf_toth.png', 12, 24, 0, 24, 160, 4, 200, 0, 160, 8, 4, 'Subach_HL-7=16|raketen=4', 'Subach_HL-7=96|raketen=8', 16, 0, 1, 0, 0, 0, 0, 0, 'Der StandardjÃ¤ger der HoL - zu seiner Glanzzeit einer der wendigsten JÃ¤ger Ã¼berhaupt', 0, 9, 'jaeger abfangen', 10, '', 0, 0, '1:jprimary:Subach_HL-7;2:jprimary:Subach_HL-7;3:jprimary:Subach_HL-7;4:jprimary:Subach_HL-7', 4, 0);
INSERT INTO `ship_types` (`id`, `nickname`, `picture`, `ru`, `rd`, `ra`, `rm`, `eps`, `cost`, `hull`, `panzerung`, `cargo`, `heat`, `crew`, `weapons`, `maxheat`, `torpedodef`, `shields`, `size`, `jdocks`, `adocks`, `sensorrange`, `hydro`, `recost`, `descrip`, `deutfactor`, `class`, `flags`, `groupwrap`, `werft`, `ow_werft`, `chance4Loot`, `modules`, `shipcount`, `hide`) VALUES (77, 'Felsbocken', 'data/schiffe/other/felsbrocken.png', 0, 0, 0, 0, 0, 0, 15, 0, 150, 0, 0, '', '', 0, 0, 1, 0, 0, 0, 0, 0, 'Ein Felsbocken. FÃ¼r gewÃ¶hnlich eine gute Quelle fÃ¼r Metalle. Einige sollen sogar so seltene die Antarit enthalten.', 0, 20, 'nicht_kaperbar instabil sehr_klein', 10, '', 0, 0, '', 1, 0);
INSERT INTO `ship_types` (`id`, `nickname`, `picture`, `ru`, `rd`, `ra`, `rm`, `eps`, `cost`, `hull`, `panzerung`, `cargo`, `heat`, `crew`, `weapons`, `maxheat`, `torpedodef`, `shields`, `size`, `jdocks`, `adocks`, `sensorrange`, `hydro`, `recost`, `descrip`, `deutfactor`, `class`, `flags`, `groupwrap`, `werft`, `ow_werft`, `chance4Loot`, `modules`, `shipcount`, `hide`) VALUES (79, 'Meteorit', 'data/schiffe/truemmer.png', 0, 0, 0, 0, 0, 0, 158, 0, 150, 0, 0, '', '', 0, 0, 1, 0, 0, 0, 0, 0, 'Ein Tr&uuml;mmerteil', 0, 20, 'nicht_kaperbar nicht_pluenderbar', 10, '', 0, 0, '', 1, 0);