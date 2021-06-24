USE `es_extended`;

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_police','Polizei',1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_police','Polizei',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_police', 'Polizei', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('police', 'Polizei')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('police',0,'recruit','Rekrut',20,'{}','{}'),
	('police',1,'officer','Streifenpolizist',40,'{}','{}'),
	('police',2,'sergeant','Wachtmeister',60,'{}','{}'),
	('police',3,'lieutenant','Kommissar',85,'{}','{}'),
	('police',4,'boss','Polizeidirektor',100,'{}','{}')
;

CREATE TABLE `fine_types` (
	`id` int NOT NULL AUTO_INCREMENT,
	`label` varchar(255) DEFAULT NULL,
	`amount` int DEFAULT NULL,
	`category` int DEFAULT NULL,

	PRIMARY KEY (`id`)
);

INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
    (NULL, 'Missbrauch der Hupe', 300, 0),
    (NULL, 'Illegales Überqueren einer durchgehenden Linie', 400, 0),
    (NULL, 'Fahren auf der falschen Straßenseite', 2500, 0),
    (NULL, 'Illegale Kehrtwende', 2500, 0),
    (NULL, 'Fahren abseits befestigter Straßen', 1700, 0),
    (NULL, 'Missachtung der Sicherheitsrichtlinien', 300, 0),
    (NULL, 'Illegales Anhalten eines Fahrzeugs', 1500, 0),
    (NULL, 'Falschparken', 700, 0),
    (NULL, 'Missachtung der Vorfahrt', 700, 0),
    (NULL, 'Betrieb eines Verkehrsuntauglichen Fahrzeuges', 900, 0),
    (NULL, 'Missachtung eines Stopschildes', 1050, 0),
    (NULL, 'Missachtung einer roten Ampel', 1300, 0),
    (NULL, 'Rechts überholen', 1000, 0),
    (NULL, 'Fahren eines nicht zugelassenen Fahrzeuges', 1000, 0),
    (NULL, 'Fahren ohne Fahrerlaubnis', 15000, 0),
    (NULL, 'Fahrerflucht', 8000, 0),
    (NULL, 'Geschwindigkeitsübertretung von mehr als 5 kmh', 900, 0),
    (NULL, 'Geschwindigkeitsübertretung von mehr als 5-15 kmh', 1200, 0),
    (NULL, 'Geschwindigkeitsübertretung von mehr als 15-30 kmh', 1800, 0),
    (NULL, 'Geschwindigkeitsübertretung von mehr als 30 kmh', 3000, 0),
    (NULL, 'Verkehrsbehinderung', 1100, 1),
    (NULL, 'Öffentliche Vergiftung', 900, 1),
    (NULL, 'Ordnungswidriges Verhalten', 900, 1),
    (NULL, 'Behinderung der Justiz', 1300, 1),
    (NULL, 'Beleidigungen gegenüber Zivilisten', 750, 1),
    (NULL, 'Missachtung eines Sicherheitsorgans', 1100, 1),
    (NULL, 'Verbale Bedrohung eines Zivilisten', 900, 1),
    (NULL, 'Verbale Bedrohung eines Sicherheitsorgans', 1500, 1),
    (NULL, 'Falsche Informationen bereitstellen', 2500, 1),
    (NULL, 'Versuch der Korruption', 15000, 1),
    (NULL, 'Eine Waffe inneralb der Stadtgrenzen schwingen', 1200, 2),
    (NULL, 'Eine tödliche Waffe innerhalb der Stadtgrenzen schwingen', 3000, 2),
    (NULL, 'Keine Schusswaffenlizenz', 6000, 2),
    (NULL, 'Besitz einer illegalen Waffe', 7000, 2),
    (NULL, 'Besitz von Einbruchwerkzeugen', 3000, 2),
    (NULL, 'Schwerer Kraftfahrzeugdiebstahl', 18000, 2),
    (NULL, 'Absicht, eine illegale Substanz zu verkaufen/verteilen', 15000, 2),
    (NULL, 'Herstellung einer illegalen Substanz', 15000, 2),
    (NULL, 'Besitz einer illegalen Substanz', 6500, 2),
    (NULL, 'Entführung eines Zivilisten', 15000, 2),
    (NULL, 'Entführung eines Sicherheitsorgans', 20000, 2),
    (NULL, 'Raub', 6500, 2),
    (NULL, 'Bewaffneter Raub', 6500, 2),
    (NULL, 'Bewaffneter Bankraub', 15000, 2),
    (NULL, 'Angriff auf einen Zivilisten', 20000, 3),
    (NULL, 'Angriff auf ein Sicherheitsorgan', 25000, 3),
    (NULL, 'Mordversuch an einem Zivilisten', 30000, 3),
    (NULL, 'Mordversuch an einem Sicherheitsorgan', 50000, 3),
    (NULL, 'Mord an einem Zivilisten', 100000, 3),
    (NULL, 'Mord an einem Sicherheitsorgan', 300000, 3),
    (NULL, 'Fahrlässige Tötung', 18000, 3),
    (NULL, 'Betrug', 20000, 2),
    (NULL, 'Missachtung der Priorität eines Einsatzfahrzeuges', 900, 1),
    (NULL, 'Behinderung eines Rettungseinsatzes', 1500, 1),
    (NULL, 'Behinderung eines Polizeieinsatzes', 1500, 1),
    (NULL, 'Behinderung eines Feuerwehreinsatzes', 1500, 1),
    (NULL, 'Leichte Körperverletzung', 750, 1),
    (NULL, 'Schwere Körperverletzung', 2500, 2),
    (NULL, 'Fahrlässige Körperverletzung', 1500, 1),
    (NULL, 'Totschlag', 80000, 3),
    (NULL, 'Korruption', 180000, 2),
    (NULL, 'Amtsmissbrauch', 50000, 2),
    (NULL, 'Unterlassene Hilfeleistung', 1500, 1),
    (NULL, 'Unterschlagung von Öffentlichen Geldern', 160000, 2),
    (NULL, 'Gründung und Unterhaltung einer kriminellen Organisation', 25000, 2),
    (NULL, 'Zugehörigkeit einer kriminellen Organisation', 5000, 1),
    (NULL, 'Benutzung einer falschen Identität', 1800, 1),
    (NULL, 'Umweltverschmutzung', 600, 1),
    (NULL, 'Gefährliches Verhalten im Straßenverkehr', 1400, 1),
    (NULL, 'Tierquälerei', 600, 1);
