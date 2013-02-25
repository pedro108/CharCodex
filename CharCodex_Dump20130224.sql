CREATE DATABASE  IF NOT EXISTS `charcodex_development` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `CharCodex_development`;
-- MySQL dump 10.13  Distrib 5.5.16, for osx10.5 (i386)
--
-- Host: localhost    Database: CharCodex_development
-- ------------------------------------------------------
-- Server version	5.5.25a

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `character_class_spells_characters`
--

DROP TABLE IF EXISTS `character_class_spells_characters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_class_spells_characters` (
  `character_id` int(11) NOT NULL,
  `character_class_spell_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_class_spells_characters`
--

LOCK TABLES `character_class_spells_characters` WRITE;
/*!40000 ALTER TABLE `character_class_spells_characters` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_class_spells_characters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `race_attributes`
--

DROP TABLE IF EXISTS `race_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `race_attributes` (
  `race_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `race_attributes`
--

LOCK TABLES `race_attributes` WRITE;
/*!40000 ALTER TABLE `race_attributes` DISABLE KEYS */;
INSERT INTO `race_attributes` VALUES (1,44,2,1),(1,47,2,2),(1,48,-2,3),(2,45,2,4),(2,46,2,5),(2,44,-2,6),(3,44,2,7),(3,48,2,8),(3,43,-2,9),(6,45,2,10),(6,48,2,11),(6,43,-2,12);
/*!40000 ALTER TABLE `race_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spells_per_day`
--

DROP TABLE IF EXISTS `spells_per_day`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spells_per_day` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `character_class_id` int(11) DEFAULT NULL,
  `class_level` int(11) DEFAULT NULL,
  `zero_spell_level` int(11) DEFAULT NULL,
  `first_spell_level` int(11) DEFAULT NULL,
  `second_spell_level` int(11) DEFAULT NULL,
  `third_spell_level` int(11) DEFAULT NULL,
  `fourth_spell_level` int(11) DEFAULT NULL,
  `fifth_spell_level` int(11) DEFAULT NULL,
  `sixth_spell_level` int(11) DEFAULT NULL,
  `seventh_spell_level` int(11) DEFAULT NULL,
  `eighth_spell_level` int(11) DEFAULT NULL,
  `ninth_spell_level` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spells_per_day_on_character_class_id` (`character_class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spells_per_day`
--

LOCK TABLES `spells_per_day` WRITE;
/*!40000 ALTER TABLE `spells_per_day` DISABLE KEYS */;
INSERT INTO `spells_per_day` VALUES (41,2,1,3,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(42,2,2,4,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(43,2,3,4,2,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(44,2,4,4,3,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(45,2,5,4,3,2,1,NULL,NULL,NULL,NULL,NULL,NULL),(46,2,6,4,3,3,2,NULL,NULL,NULL,NULL,NULL,NULL),(47,2,7,4,4,3,2,1,NULL,NULL,NULL,NULL,NULL),(48,2,8,4,4,3,3,2,NULL,NULL,NULL,NULL,NULL),(49,2,9,4,4,4,3,2,1,NULL,NULL,NULL,NULL),(50,2,10,4,4,4,3,3,2,NULL,NULL,NULL,NULL),(51,2,11,4,4,4,4,3,2,1,NULL,NULL,NULL),(52,2,12,4,4,4,4,3,3,2,NULL,NULL,NULL),(53,2,13,4,4,4,4,4,3,2,1,NULL,NULL),(54,2,14,4,4,4,4,4,3,3,2,NULL,NULL),(55,2,15,4,4,4,4,4,4,3,2,1,NULL),(56,2,16,4,4,4,4,4,4,3,3,2,NULL),(57,2,17,4,4,4,4,4,4,4,3,2,1),(58,2,18,4,4,4,4,4,4,4,3,3,2),(59,2,19,4,4,4,4,4,4,4,4,3,3),(60,2,20,4,4,4,4,4,4,4,4,4,4),(61,3,1,3,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(62,3,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(63,3,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(64,3,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(65,3,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(66,3,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(67,3,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(68,3,8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(69,3,9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(70,3,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(71,3,11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(72,3,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(73,3,13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(74,3,14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(75,3,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(76,3,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(77,3,17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(78,3,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(79,3,19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(80,3,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(81,7,1,3,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(82,7,2,4,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(83,7,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(84,7,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(85,7,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(86,7,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(87,7,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(88,7,8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(89,7,9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(90,7,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(91,7,11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(92,7,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(93,7,13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(94,7,14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(95,7,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(96,7,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(97,7,17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(98,7,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(99,7,19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(100,7,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `spells_per_day` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spell_schools`
--

DROP TABLE IF EXISTS `spell_schools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spell_schools` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `spell_school_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spell_schools`
--

LOCK TABLES `spell_schools` WRITE;
/*!40000 ALTER TABLE `spell_schools` DISABLE KEYS */;
INSERT INTO `spell_schools` VALUES (1,'Abjuration','<p>Abjurations are protective spells. They create physical or magical barriers, negate magical or physical abilities, harm trespassers, or even banish the subject of the spell to another plane of existence.</p><p>\nIf one abjuration spell is active within 10 feet of another for 24 hours or more, the magical fields interfere with each other and create barely visible energy fluctuations. The DC to find such spells with the Perception skill drops by 4.</p><p>\nIf an abjuration creates a barrier that keeps certain types of creatures at bay, that barrier cannot be used to push away those creatures. If you force the barrier against such a creature, you feel a discernible pressure against the barrier. If you continue to apply pressure, you end the spell.</p>',NULL),(2,'Conjuration','<p>Each conjuration spell belongs to one of five subschools. Conjurations transport creatures from another plane of existence to your plane (calling); create objects or effects on the spot (creation); heal (healing); bring manifestations of objects, creatures, or forms of energy to you (summoning); or transport creatures or objects over great distances (teleportation). Creatures you conjure usually-but not always-obey your commands.\n</p><p>\nA creature or object brought into being or transported to your location by a conjuration spell cannot appear inside another creature or object, nor can it appear floating in an empty space. It must arrive in an open location on a surface capable of supporting it.\n</p><p>\nThe creature or object must appear within the spell\'s range, but it does not have to remain within the range.</p>',NULL),(3,'Calling','<p>A calling spell transports a creature from another plane to the plane you are on. The spell grants the creature the one-time ability to return to its plane of origin, although the spell may limit the circumstances under which this is possible. Creatures who are called actually die when they are killed; they do not disappear and reform, as do those brought by a summoning spell (see below). The duration of a calling spell is instantaneous, which means that the called creature can\'t be dispelled.</p>',2),(4,'Creation','<p>A creation spell manipulates matter to create an object or creature in the place the spellcaster designates. If the spell has a duration other than instantaneous, magic holds the creation together, and when the spell ends, the conjured creature or object vanishes without a trace. If the spell has an instantaneous duration, the created object or creature is merely assembled through magic. It lasts indefinitely and does not depend on magic for its existence.</p>',2),(5,'Healing','<p>Certain divine conjurations heal creatures or even bring them back to life.</p>',2),(6,'Summoning','<p>A summoning spell instantly brings a creature or object to a place you designate. When the spell ends or is dispelled, a summoned creature is instantly sent back to where it came from, but a summoned object is not sent back unless the spell description specifically indicates this. A summoned creature also goes away if it is killed or if its hit points drop to 0 or lower, but it is not really dead. It takes 24 hours for the creature to reform, during which time it can\'t be summoned again.\n</p><p>\nWhen the spell that summoned a creature ends and the creature disappears, all the spells it has cast expire. A summoned creature cannot use any innate summoning abilities it may have.</p>',2),(7,'Teleportation','<p>A teleportation spell transports one or more creatures or objects a great distance. The most powerful of these spells can cross planar boundaries. Unlike summoning spells, the transportation is (unless otherwise noted) one-way and not dispellable.\n</p><p>\nTeleportation is instantaneous travel through the Astral Plane. Anything that blocks astral travel also blocks teleportation.</p>',2),(8,'Divination','<p>Divination spells enable you to learn secrets long forgotten, predict the future, find hidden things, and foil deceptive spells.\n</p><p>\nMany divination spells have cone-shaped areas. These move with you and extend in the direction you choose. The cone defines the area that you can sweep each round. If you study the same area for multiple rounds, you can often gain additional information, as noted in the descriptive text for the spell.</p>',NULL),(9,'Scrying','<p>A scrying spell creates an invisible magical sensor that sends you information. Unless noted otherwise, the sensor has the same powers of sensory acuity that you possess. This level of acuity includes any spells or effects that target you, but not spells or effects that emanate from you. The sensor, however, is treated as a separate, independent sensory organ of yours, and thus functions normally even if you have been blinded or deafened, or otherwise suffered sensory impairment.\n</p><p>\nA creature can notice the sensor by making a Perception check with a DC 20 + the spell level. The sensor can be dispelled as if it were an active spell.\n</p><p>\nLead sheeting or magical protection blocks a scrying spell, and you sense that the spell is blocked.</p>',8),(10,'Enchantment','<p>Enchantment spells affect the minds of others, influencing or controlling their behavior.\n</p><p>\nAll enchantments are mind-affecting spells. Two subschools of enchantment spells grant you influence over a subject creature.</p>',NULL),(11,'Charm','<p>A charm spell changes how the subject views you, typically making it see you as a good friend.</p>',10),(12,'Compulsion','<p>A compulsion spell forces the subject to act in some manner or changes the way its mind works. Some compulsion spells determine the subject\'s actions or the effects on the subject, others allow you to determine the subject\'s actions when you cast the spell, and still others give you ongoing control over the subject.</p>',10),(13,'Evocation','<p>Evocation spells manipulate magical energy or tap an unseen source of power to produce a desired end. In effect, an evocation draws upon magic to create something out of nothing. Many of these spells produce spectacular effects, and evocation spells can deal large amounts of damage.</p>',NULL),(14,'Illusion','<p>Illusion spells deceive the senses or minds of others. They cause people to see things that are not there, not see things that are there, hear phantom noises, or remember things that never happened.</p>',NULL),(15,'Figment','<p>A figment spell creates a false sensation. Those who perceive the figment perceive the same thing, not their own slightly different versions of the figment. It is not a personalized mental impression. Figments cannot make something seem to be something else. A figment that includes audible effects cannot duplicate intelligible speech unless the spell description specifically says it can. If intelligible speech is possible, it must be in a language you can speak. If you try to duplicate a language you cannot speak, the figment produces gibberish. Likewise, you cannot make a visual copy of something unless you know what it looks like (or copy another sense exactly unless you have experienced it).\n</p><p>\nBecause figments and glamers are unreal, they cannot produce real effects the way that other types of illusions can. Figments and glamers cannot cause damage to objects or creatures, support weight, provide nutrition, or provide protection from the elements. Consequently, these spells are useful for confounding foes, but useless for attacking them directly.\n</p><p>\nA figment\'s AC is equal to 10 + its size modifier.</p>',14),(16,'Glamer','<p>A glamer spell changes a subject\'s sensory qualities, making it look, feel, taste, smell, or sound like something else, or even seem to disappear.</p>',14),(17,'Pattern','<p>Like a figment, a pattern spell creates an image that others can see, but a pattern also affects the minds of those who see it or are caught in it. All patterns are mind-affecting spells.</p>',14),(18,'Phantasm','<p>A phantasm spell creates a mental image that usually only the caster and the subject (or subjects) of the spell can perceive. This impression is totally in the minds of the subjects. It is a personalized mental impression, all in their heads and not a fake picture or something that they actually see. Third parties viewing or studying the scene don\'t notice the phantasm. All phantasms are mind-affecting spells.</p>',14),(19,'Shadow','<p>A shadow spell creates something that is partially real from extradimensional energy. Such illusions can have real effects. Damage dealt by a shadow illusion is real.</p>',14),(20,'Necromancy','<p>Necromancy spells manipulate the power of death, unlife, and the life force. Spells involving undead creatures make up a large part of this school.</p>',NULL),(21,'Transmutation','<p>Transmutation spells change the properties of some creature, thing, or condition.</p>',NULL),(22,'Polymorph','<p>A polymorph spell transforms your physical body to take on the shape of another creature. While these spells make you appear to be the creature, granting you a +10 bonus on Disguise skill checks, they do not grant you all of the abilities and powers of the creature. Each polymorph spell allows you to assume the form of a creature of a specific type, granting you a number of bonuses to your ability scores and a bonus to your natural armor. In addition, each polymorph spell can grant you a number of other benefits, including movement types, resistances, and senses. If the form you choose grants these benefits, or a greater ability of the same type, you gain the listed benefit. If the form grants a lesser ability of the same type, you gain the lesser ability instead. Your base speed changes to match that of the form you assume. If the form grants a swim or burrow speed, you maintain the ability to breathe if you are swimming or burrowing. The DC for any of these abilities equals your DC for the polymorph spell used to change you into that form.\n</p><p>\nIn addition to these benefits, you gain any of the natural attacks of the base creature, including proficiency in those attacks. These attacks are based on your base attack bonus, modified by your Strength or Dexterity as appropriate, and use your Strength modifier for determining damage bonuses.\n</p><p>\nIf a polymorph spell causes you to change size, apply the size modifiers appropriately, changing your armor class, attack bonus, Combat Maneuver Bonus, and Stealth skill modifiers. Your ability scores are not modified by this change unless noted by the spell.\n</p><p>\nUnless otherwise noted, polymorph spells cannot be used to change into specific individuals. Although many of the fine details can be controlled, your appearance is always that of a generic member of that creature\'s type. Polymorph spells cannot be used to assume the form of a creature with a template or an advanced version of a creature.\n</p><p>\nWhen you cast a polymorph spell that changes you into a creature of the animal, dragon, elemental, magical beast, plant, or vermin type, all of your gear melds into your body. Items that provide constant bonuses and do not need to be activated continue to function while melded in this way (with the exception of armor and shield bonuses, which cease to function). Items that require activation cannot be used while you maintain that form. While in such a form, you cannot cast any spells that require material components (unless you have the Eschew Materials or Natural Spell feat), and can only cast spells with somatic or verbal components if the form you choose has the capability to make such movements or speak, such as a dragon. Other polymorph spells might be subject to this restriction as well, if they change you into a form that is unlike your original form (subject to GM discretion). If your new form does not cause your equipment to meld into your form, the equipment resizes to match your new size.\n</p><p>\nWhile under the effects of a polymorph spell, you lose all extraordinary and supernatural abilities that depend on your original form (such as keen senses, scent, and darkvision), as well as any natural attacks and movement types possessed by your original form. You also lose any class features that depend upon form, but those that allow you to add features (such as sorcerers that can grow claws) still function. While most of these should be obvious, the GM is the final arbiter of what abilities depend on form and are lost when a new form is assumed. Your new form might restore a number of these abilities if they are possessed by the new form.\n</p><p>\nYou can only be affected by one polymorph spell at a time. If a new polymorph spell is cast on you (or you activate a polymorph effect, such as wild shape), you can decide whether or not to allow it to affect you, taking the place of the old spell. In addition, other spells that change your size have no effect on you while you are under the effects of a polymorph spell.\n</p><p>\nIf a polymorph spell is cast on a creature that is smaller than Small or larger than Medium, first adjust its ability scores to one of these two sizes using the following table before applying the bonuses granted by the polymorph spell.\n</p><p>\n-Size adjustment html table-</p>',21);
/*!40000 ALTER TABLE `spell_schools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `magic_weapons`
--

DROP TABLE IF EXISTS `magic_weapons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `magic_weapons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `weapon_id` int(11) NOT NULL,
  `construction` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `magic_weapons`
--

LOCK TABLES `magic_weapons` WRITE;
/*!40000 ALTER TABLE `magic_weapons` DISABLE KEYS */;
/*!40000 ALTER TABLE `magic_weapons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `armor_types`
--

DROP TABLE IF EXISTS `armor_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `armor_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `armor_types`
--

LOCK TABLES `armor_types` WRITE;
/*!40000 ALTER TABLE `armor_types` DISABLE KEYS */;
INSERT INTO `armor_types` VALUES (33,'Light armor','2013-02-18 00:34:42','2013-02-18 00:34:42'),(34,'Medium armor','2013-02-18 00:34:42','2013-02-18 00:34:42'),(35,'Heavy armor','2013-02-18 00:34:42','2013-02-18 00:34:42'),(36,'Shield','2013-02-18 00:34:42','2013-02-18 00:34:42');
/*!40000 ALTER TABLE `armor_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `terrains`
--

DROP TABLE IF EXISTS `terrains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `terrains` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `terrain_type` int(11) NOT NULL,
  `is_object` tinyint(1) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `miniature_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miniature_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miniature_file_size` int(11) DEFAULT NULL,
  `miniature_updated_at` datetime DEFAULT NULL,
  `dimension_x` int(11) NOT NULL,
  `dimension_y` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `terrains`
--

LOCK TABLES `terrains` WRITE;
/*!40000 ALTER TABLE `terrains` DISABLE KEYS */;
INSERT INTO `terrains` VALUES (9,'Dungeon','2011-08-28 19:12:42','2012-05-17 02:29:18',0,0,4,'dungeon.png','image/png',5604,'2012-05-17 02:29:18',1,1),(10,'Floresta','2011-08-28 21:15:10','2012-05-17 02:29:32',0,0,4,'floresta.png','image/png',5250,'2012-05-17 02:29:32',1,1),(11,'Árvore','2011-08-28 21:15:33','2012-05-17 02:24:40',2,0,4,'arvore.png','image/png',5505,'2012-05-17 02:24:40',1,1),(12,'Baú','2011-08-28 22:17:57','2013-02-19 02:13:05',1,1,4,'bau.png','image/png',9887,'2012-05-17 02:30:10',1,2),(13,'Alçapão','2011-08-28 22:18:38','2012-05-17 02:31:20',0,0,4,'alcapao.jpg','image/jpeg',2942,'2012-05-17 02:31:20',2,2),(14,'Escadas','2011-08-28 22:19:06','2012-05-17 02:31:36',1,0,4,'escadas.jpg','image/jpeg',1794,'2012-05-17 02:31:36',2,1),(15,'Estátua','2011-08-28 22:30:51','2013-02-19 02:13:36',2,1,4,'estatua.jpg','image/jpeg',1299,'2012-05-17 02:31:59',1,1),(16,'Trono','2011-08-28 22:31:10','2013-02-19 02:13:42',1,1,4,'trono.png','image/png',20912,'2012-05-17 02:32:19',2,2);
/*!40000 ALTER TABLE `terrains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daily_spells`
--

DROP TABLE IF EXISTS `daily_spells`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daily_spells` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `spell_level` int(11) NOT NULL,
  `character_class_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daily_spells`
--

LOCK TABLES `daily_spells` WRITE;
/*!40000 ALTER TABLE `daily_spells` DISABLE KEYS */;
/*!40000 ALTER TABLE `daily_spells` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spell_descriptors`
--

DROP TABLE IF EXISTS `spell_descriptors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spell_descriptors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spell_descriptors`
--

LOCK TABLES `spell_descriptors` WRITE;
/*!40000 ALTER TABLE `spell_descriptors` DISABLE KEYS */;
INSERT INTO `spell_descriptors` VALUES (1,'acid',NULL),(2,'air',NULL),(3,'chaotic',NULL),(4,'cold',NULL),(5,'darkness',NULL),(6,'death',NULL),(7,'earth',NULL),(8,'electricity',NULL),(9,'evil',NULL),(10,'fear',NULL),(11,'fire',NULL),(12,'force',NULL),(13,'good',NULL),(14,'language-dependent',NULL),(15,'lawful',NULL),(16,'light',NULL),(17,'mind-affecting',NULL),(18,'sonic',NULL),(19,'water',NULL);
/*!40000 ALTER TABLE `spell_descriptors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spells`
--

DROP TABLE IF EXISTS `spells`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spells` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `casting_time` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `duration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `range` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `effect` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `target` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `area` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `component` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `saving_throw` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `spell_resistance` tinyint(1) NOT NULL,
  `level` int(11) DEFAULT NULL,
  `spell_school_id` int(11) DEFAULT NULL,
  `sub_spell_school_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spells`
--

LOCK TABLES `spells` WRITE;
/*!40000 ALTER TABLE `spells` DISABLE KEYS */;
INSERT INTO `spells` VALUES (1,'Acid Arrow','<p>An arrow of acid springs from your hand and speeds to its target. You must succeed on a ranged touch attack to hit your target. The arrow deals 2d4 points of acid damage with no splash damage. For every three caster levels you possess, the acid, unless neutralized, lasts for another round (to a maximum of 6 additional rounds at 18th level), dealing another 2d4 points of damage in each round.</p>','1 standard action','1 round + 1 round per three levels','long (400 ft. + 40 ft./level)','one arrow of acid',NULL,NULL,'V, S, M (rhubarb leaf and an adder\'s stomach), F (a dart)','none',0,NULL,2,4);
/*!40000 ALTER TABLE `spells` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adventures_monsters`
--

DROP TABLE IF EXISTS `adventures_monsters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adventures_monsters` (
  `adventure_id` int(11) DEFAULT NULL,
  `monster_id` int(11) DEFAULT NULL,
  KEY `monsters_index` (`monster_id`,`adventure_id`),
  KEY `adventures_index` (`adventure_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adventures_monsters`
--

LOCK TABLES `adventures_monsters` WRITE;
/*!40000 ALTER TABLE `adventures_monsters` DISABLE KEYS */;
/*!40000 ALTER TABLE `adventures_monsters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `magic_items`
--

DROP TABLE IF EXISTS `magic_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `magic_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `equipment_slot_id` int(11) DEFAULT NULL,
  `construction` text COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `bonus` text COLLATE utf8_unicode_ci,
  `weight` float NOT NULL,
  `magic_item_group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `magic_items`
--

LOCK TABLES `magic_items` WRITE;
/*!40000 ALTER TABLE `magic_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `magic_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipment_slots`
--

DROP TABLE IF EXISTS `equipment_slots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipment_slots` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment_slots`
--

LOCK TABLES `equipment_slots` WRITE;
/*!40000 ALTER TABLE `equipment_slots` DISABLE KEYS */;
INSERT INTO `equipment_slots` VALUES (115,'Body'),(116,'Waist'),(117,'Armor'),(118,'Chest'),(119,'Eyes'),(120,'Feet'),(121,'Hands'),(122,'Two Hands'),(123,'Head'),(124,'Headband'),(125,'Neck'),(126,'Ring'),(127,'Shield'),(128,'Shoulders'),(129,'Wrists');
/*!40000 ALTER TABLE `equipment_slots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'Aboleth',NULL),(2,'Abyssal','The language of demons, Abyssal is often spoken by evil spirits.'),(3,'Aklo','This ancient tongue is spoken by the denizens of the Darklands, strange eldritch entities, and certain ancient intruders from the First World.'),(4,'Ancient Osiriani','This precursor to modern Osiriani shares many similarities and differs mainly in its hieroglyphics and lexicon. Speakers of this tongue can speak modern Osiriani, but with an archaic accent.'),(5,'Aquan','The so-called \"tongue of the sea\" is spoken primarily in the sunken nation of the locathahs - those who trade frequently with the ocean empires often speak this tongue as well.'),(6,'Auran','A soft-spoken, breathy language, also known as the \"tongue of the heavens.\"'),(7,'Azlanti','One of the most widely spoken languages of its time, Azlanti became the basis for dozens of languages all over Avistan and Garund.'),(8,'Boggard',NULL),(9,'Celestial','The language of angels'),(10,'Common',NULL),(11,'Cyclops','Once the ancient language of the giants, this tongue was created before the rise of humanity by the cyclopes of Ghol-gan.'),(12,'Dark folk',NULL),(13,'Draconic',NULL),(14,'Druidic','Druidic is a secret language known only to druids. It is a free language for a druid; that is, it doesn\'t take up a language slot. Druids are forbidden to teach this language to nondruids and has its own alphabet.'),(15,'Dwarven',NULL),(16,'D\'ziriak','The insectoid d\'ziriak language consists of buzzes and chitters. It is an obscure one known by few outside their race.'),(17,'Elven',NULL),(18,'Giant','This brutish tongue and its numerous minor variants are spoken in any region where the wrath of giants is known.'),(19,'Gnoll',NULL),(20,'Gnome',NULL),(21,'Goblin','The official language of hobgoblins, this dialect is similar to the Goblin tongue.'),(22,'Grippli',NULL),(23,'Halfling',NULL),(24,'Ignan','Also called the \"tongue of fire.\"'),(25,'Infernal','The language of devils is often spoken by evil spirits.'),(26,'Necril','An ancient language of the dead, this whispering tongue is shared among undead throughout Golarion, and is also often associated with necromancy.'),(27,'Orc',NULL),(28,'Protean','Like the proteans chaotic nature, the protean language itself is mutable, evolving so quickly that few outsiders can understand it without magical aid.'),(29,'Shadowtongue','Shadowtongue is a mix of Infernal, Azlanti, and Common, and is rarely spoken beyond Nidal\'s borders.'),(30,'Sphinx',NULL),(31,'Sylvan','The language of the fey.'),(32,'Tengu','The official language of the tengu race.'),(33,'Terran','Also called the \"tongue of earth.\"'),(34,'Treant',NULL),(35,'Undercommon','This language is derived from an ancient combination of Elven and even older tongues.'),(36,'Vegepygmy','Vegepygmy is not a spoken language since vegepygmies cannot speak. They communicate via a crude language of rhythmic taps, beats, and clicks.');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `armors`
--

DROP TABLE IF EXISTS `armors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `armors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `price` float NOT NULL,
  `armor_bonus` int(11) NOT NULL,
  `max_dex_bonus` int(11) NOT NULL,
  `check_penalty` int(11) NOT NULL,
  `spell_failure` float NOT NULL,
  `weight` float NOT NULL,
  `armor_type_id` int(11) DEFAULT NULL,
  `equipment_slot_id` int(11) DEFAULT NULL,
  `price_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `armors`
--

LOCK TABLES `armors` WRITE;
/*!40000 ALTER TABLE `armors` DISABLE KEYS */;
INSERT INTO `armors` VALUES (1,'Leather',NULL,10,2,6,0,10,15,33,117,15);
/*!40000 ALTER TABLE `armors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weapon_proficiency_levels`
--

DROP TABLE IF EXISTS `weapon_proficiency_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weapon_proficiency_levels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weapon_proficiency_levels`
--

LOCK TABLES `weapon_proficiency_levels` WRITE;
/*!40000 ALTER TABLE `weapon_proficiency_levels` DISABLE KEYS */;
INSERT INTO `weapon_proficiency_levels` VALUES (1,'Simple'),(2,'Martial'),(3,'Exotic');
/*!40000 ALTER TABLE `weapon_proficiency_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_weapons`
--

DROP TABLE IF EXISTS `character_weapons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_weapons` (
  `character_id` int(11) NOT NULL,
  `weapon_id` int(11) NOT NULL,
  `equipped` tinyint(1) NOT NULL,
  `offhand` tinyint(1) NOT NULL,
  `dual_wield` tinyint(1) NOT NULL,
  `quantity` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_weapons`
--

LOCK TABLES `character_weapons` WRITE;
/*!40000 ALTER TABLE `character_weapons` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_weapons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bonus_spells`
--

DROP TABLE IF EXISTS `bonus_spells`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bonus_spells` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ability_score` int(11) NOT NULL,
  `spell_level` int(11) NOT NULL,
  `bonus` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bonus_spells`
--

LOCK TABLES `bonus_spells` WRITE;
/*!40000 ALTER TABLE `bonus_spells` DISABLE KEYS */;
INSERT INTO `bonus_spells` VALUES (145,12,1,1),(146,13,1,1),(147,14,1,1),(148,14,2,1),(149,15,1,1),(150,15,2,1),(151,16,1,1),(152,16,2,1),(153,16,3,1),(154,17,1,1),(155,17,2,1),(156,17,3,1),(157,18,1,1),(158,18,2,1),(159,18,3,1),(160,18,4,1),(161,19,1,1),(162,19,2,1),(163,19,3,1),(164,19,4,1),(165,20,1,2),(166,20,2,1),(167,20,3,1),(168,20,4,1),(169,20,5,1),(170,21,1,2),(171,21,2,1),(172,21,3,1),(173,21,4,1),(174,21,5,1),(175,22,1,2),(176,22,2,2),(177,22,3,1),(178,22,4,1),(179,22,5,1),(180,22,6,1),(181,23,1,2),(182,23,2,2),(183,23,3,1),(184,23,4,1),(185,23,5,1),(186,23,6,1),(187,24,1,2),(188,24,2,2),(189,24,3,2),(190,24,4,1),(191,24,5,1),(192,24,6,1),(193,24,7,1),(194,25,1,2),(195,25,2,2),(196,25,3,2),(197,25,4,1),(198,25,5,1),(199,25,6,1),(200,25,7,1),(201,26,1,2),(202,26,2,2),(203,26,3,2),(204,26,4,2),(205,26,5,1),(206,26,6,1),(207,26,7,1),(208,26,8,1),(209,27,1,2),(210,27,2,2),(211,27,3,2),(212,27,4,2),(213,27,5,1),(214,27,6,1),(215,27,7,1),(216,27,8,1);
/*!40000 ALTER TABLE `bonus_spells` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feats`
--

DROP TABLE IF EXISTS `feats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `feat_type_id` int(11) NOT NULL,
  `bonus` text COLLATE utf8_unicode_ci NOT NULL,
  `prerequisites` text COLLATE utf8_unicode_ci NOT NULL,
  `benefits` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_feats_on_feat_type_id` (`feat_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feats`
--

LOCK TABLES `feats` WRITE;
/*!40000 ALTER TABLE `feats` DISABLE KEYS */;
INSERT INTO `feats` VALUES (1,'Acrobatic','<p style=\"margin-top: 0.1em; margin-bottom: 0.1em; font-size: 12px;\">You are skilled at leaping, jumping, and flying.</p>\n<p class=\"stat-block-1\" style=\"margin-top: 0.1em; margin-bottom: 0.1em; font-size: 12px; padding-left: 0px;\"><strong style=\"margin-top: 0px;\">Benefit:</strong>&nbsp;You get a +2 bonus on all&nbsp;Acrobatics&nbsp;and&nbsp;<a style=\"color: #33337c; text-decoration: none;\" href=\"http://paizo.com/pathfinderRPG/prd/skills/fly.html#_fly\">F</a>ly&nbsp;skill checks. If you have 10 or more ranks in one of these skills, the bonus increases to +4 for that skill.</p>',1,'@character.skills[:fly] += 2\n@character.skills[:acrobatics] += 2\n  ','true','+2 bonus on Acrobatics and Fly checks');
/*!40000 ALTER TABLE `feats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_classes`
--

DROP TABLE IF EXISTS `character_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `dice_id` int(11) NOT NULL,
  `base_multiplier` float NOT NULL,
  `fortitude` tinyint(1) NOT NULL,
  `reflex` tinyint(1) NOT NULL,
  `will` tinyint(1) NOT NULL,
  `spontaneous_spellcaster` tinyint(1) DEFAULT NULL,
  `skill_ranks` int(11) DEFAULT NULL,
  `photo_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_file_size` int(11) DEFAULT NULL,
  `photo_updated_at` datetime DEFAULT NULL,
  `spellcaster_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_classes`
--

LOCK TABLES `character_classes` WRITE;
/*!40000 ALTER TABLE `character_classes` DISABLE KEYS */;
INSERT INTO `character_classes` VALUES (1,'Fighter','<p style=\"margin-top: 0px; font-size: 12px;\">Some take up arms for glory, wealth, or revenge. Others do battle to prove themselves, to protect others, or because they know nothing else. Still others learn the ways of weaponcraft to hone their bodies in battle and prove their mettle in the forge of war. Lords of the battlefield, fighters are a disparate lot, training with many weapons or just one, perfecting the uses of armor, learning the fighting techniques of exotic masters, and studying the art of combat, all to shape themselves into living weapons. Far more than mere thugs, these skilled warriors reveal the true deadliness of their weapons, turning hunks of metal into arms capable of taming kingdoms, slaughtering monsters, and rousing the hearts of armies. Soldiers, knights, hunters, and artists of war, fighters are unparalleled champions, and woe to those who dare stand against them.</p>\r\n<p style=\"font-size: 12px;\"><strong style=\"margin-top: 0px;\">Role</strong>: Fighters excel at combat&mdash;defeating their enemies, controlling the flow of battle, and surviving such sorties themselves. While their specific weapons and methods grant them a wide variety of tactics, few can match fighters for sheer battle prowess.</p>',5,1,1,0,0,0,2,'pathfinder1_fighter.jpg','image/jpeg',232070,'2013-02-22 21:03:39',NULL),(2,'Wizard','<p style=\"margin-top: 0px; font-size: 12px;\">Beyond the veil of the mundane hide the secrets of absolute power. The works of beings beyond mortals, the legends of realms where gods and spirits tread, the lore of creations both wondrous and terrible&mdash;such mysteries call to those with the ambition and the intellect to rise above the common folk to grasp true might. Such is the path of the wizard. These shrewd magic-users seek, collect, and covet esoteric knowledge, drawing on cultic arts to work wonders beyond the abilities of mere mortals. While some might choose a particular field of magical study and become masters of such powers, others embrace versatility, reveling in the unbounded wonders of all magic. In either case, wizards prove a cunning and potent lot, capable of smiting their foes, empowering their allies, and shaping the world to their every desire.</p>\r\n<p style=\"font-size: 12px;\"><strong style=\"margin-top: 0px;\">Role</strong>: While universalist wizards might study to prepare themselves for any manner of danger, specialist wizards research schools of magic that make them exceptionally skilled within a specific focus. Yet no matter their specialty, all wizards are masters of the impossible and can aid their allies in overcoming any danger.</p>',3,0.5,0,0,1,0,2,'pathfinder5-wizard.jpg','image/jpeg',191624,'2013-02-22 21:03:11',1),(3,'Cleric','<p style=\"margin-top: 0px; font-family: Verdana, Geneva, sans-serif; font-size: 12px;\">In faith and the miracles of the divine, many find a greater purpose. Called to serve powers beyond most mortal understanding, all priests preach wonders and provide for the spiritual needs of their people. Clerics are more than mere priests, though; these emissaries of the divine work the will of their deities through strength of arms and the magic of their gods. Devoted to the tenets of the religions and philosophies that inspire them, these ecclesiastics quest to spread the knowledge and influence of their faith. Yet while they might share similar abilities, clerics prove as different from one another as the divinities they serve, with some offering healing and redemption, others judging law and truth, and still others spreading conflict and corruption. The ways of the cleric are varied, yet all who tread these paths walk with the mightiest of allies and bear the arms of the gods themselves.</p>\r\n<p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 12px;\"><strong style=\"margin-top: 0px;\">Role</strong>: More than capable of upholding the honor of their deities in battle, clerics often prove stalwart and capable combatants. Their true strength lies in their capability to draw upon the power of their deities, whether to increase their own and their allies\' prowess in battle, to vex their foes with divine magic, or to lend healing to companions in need.</p>\r\n<p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 12px;\">As their powers are influenced by their faith, all clerics must focus their worship upon a divine source. While the vast majority of clerics revere a specific deity, a small number dedicate themselves to a divine concept worthy of devotion&mdash;such as battle, death, justice, or knowledge&mdash;free of a deific abstraction. (Work with your GM if you prefer this path to selecting a specific deity.)</p>',4,0.75,1,0,1,0,2,'pathfinder_cleric_of_sarenrae.jpeg','image/jpeg',105857,'2013-02-22 22:45:42',1);
/*!40000 ALTER TABLE `character_classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gear_categories`
--

DROP TABLE IF EXISTS `gear_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gear_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gear_categories`
--

LOCK TABLES `gear_categories` WRITE;
/*!40000 ALTER TABLE `gear_categories` DISABLE KEYS */;
INSERT INTO `gear_categories` VALUES (37,'Adventuring Gear'),(38,'Special substances and items'),(39,'Tools and skill kits'),(40,'Clothing'),(41,'Food, drink and lodging'),(42,'Mounts and related gear'),(43,'Transport'),(44,'Services'),(45,'Spellcasting');
/*!40000 ALTER TABLE `gear_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rogue_talents`
--

DROP TABLE IF EXISTS `rogue_talents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rogue_talents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `benefit` text COLLATE utf8_unicode_ci,
  `bonus` text COLLATE utf8_unicode_ci,
  `advanced` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rogue_talents`
--

LOCK TABLES `rogue_talents` WRITE;
/*!40000 ALTER TABLE `rogue_talents` DISABLE KEYS */;
/*!40000 ALTER TABLE `rogue_talents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `races`
--

DROP TABLE IF EXISTS `races`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `races` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `size_id` int(11) DEFAULT NULL,
  `arbitrary_attributes` int(11) DEFAULT NULL,
  `photo_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_file_size` int(11) DEFAULT NULL,
  `photo_updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `races`
--

LOCK TABLES `races` WRITE;
/*!40000 ALTER TABLE `races` DISABLE KEYS */;
INSERT INTO `races` VALUES (1,'Dwarf','<p style=\"margin-top: 0px; font-size: 12px;\">Dwarves are a stoic but stern race, ensconced in cities carved from the hearts of mountains and fiercely determined to repel the depredations of savage races like orcs and goblins. More than any other race, the dwarves have acquired a reputation as dour and humorless craftsmen of the earth. It could be said that dwarven history shapes the dark disposition of many dwarves, for they reside in high mountains and dangerous realms below the earth, constantly at war with giants, goblins, and other such horrors.</p>\r\n<p style=\"font-size: 12px;\"><strong style=\"margin-top: 0px;\">Physical Description</strong>: Dwarves are a short and stocky race, and stand about a foot shorter than most humans, with wide, compact bodies that account for their burly appearance. Male and female dwarves pride themselves on the length of their hair, and men often decorate their beards with a variety of clasps and intricate braids. A clean-shaven male dwarf is a sure sign of madness, or worse&mdash;no one familiar with their race trusts a beardless dwarf.</p>\r\n<p style=\"font-size: 12px;\"><strong style=\"margin-top: 0px;\">Society</strong>: The great distances between their mountain citadels account for many of the cultural differences that exist within dwarven society. Despite these schisms, dwarves throughout the world are characterized by their love of stonework, their passion for stone- and metal-based craftsmanship and architecture, and a fierce hatred of giants, orcs, and goblinoids.</p>\r\n<p style=\"font-size: 12px;\"><strong style=\"margin-top: 0px;\">Relations</strong>: Dwarves and orcs have long dwelt in proximity, theirs a history of violence as old as both their races. Dwarves generally distrust and shun half-orcs. They find halflings, elves, and gnomes to be too frail, flighty, or &ldquo;pretty&rdquo; to be worthy of proper respect. It is with humans that dwarves share the strongest link, for humans\' industrious nature and hearty appetites come closest to matching those of the dwarven ideal.</p>\r\n<p style=\"font-size: 12px;\"><strong style=\"margin-top: 0px;\">Alignment and Religion</strong>: Dwarves are driven by honor and tradition, and while they are often satirized as standoffish, they have a strong sense of friendship and justice, and those who win their trust understand that, while they work hard, they play even harder&mdash;especially when good ale is involved. Most dwarves are lawful good.</p>\r\n<p style=\"font-size: 12px;\"><strong style=\"margin-top: 0px;\">Adventurers</strong>: Although dwarven adventurers are rare compared to humans, they can be found in most regions of the world. Dwarves often leave the confines of their redoubts to seek glory for their clans, to find wealth with which to enrich the fortress-homes of their birth, or to reclaim fallen dwarven citadels from racial enemies. Dwarven warfare is often characterized by tunnel fighting and melee combat, and as such most dwarves tend toward classes such as fighters and barbarians.</p>',50,0,'dwarf.png','image/png',397642,'2013-02-24 23:23:39'),(2,'Elf','<p style=\"margin-top: 0px; font-family: Verdana, Geneva, sans-serif; font-size: 12px;\">The long-lived elves are children of the natural world, similar in many superficial ways to fey creatures, yet different as well. Elves value their privacy and traditions, and while they are often slow to make friends, at both the personal and national levels, once an outsider is accepted as a comrade, such alliances can last for generations. Elves have a curious attachment to their surroundings, perhaps as a result of their incredibly long lifespans or some deeper, more mystical reason. Elves who dwell in a region for long find themselves physically adapting to match their surroundings, most noticeably taking on coloration reflecting the local environment. Those elves that spend their lives among the short-lived races, on the other hand, often develop a skewed perception of mortality and become morose, the result of watching wave after wave of companions age and die before their eyes.</p>\r\n<p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 12px;\"><strong style=\"margin-top: 0px;\">Physical Description</strong>: Although generally taller than humans, elves possess a graceful, fragile physique that is accentuated by their long, pointed ears. Their eyes are wide and almond-shaped, and filled with large, vibrantly colored pupils. While elven clothing often plays off the beauty of the natural world, those elves that live in cities tend to bedeck themselves in the latest fashion.</p>\r\n<p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 12px;\"><strong style=\"margin-top: 0px;\">Society</strong>: Many elves feel a bond with nature and strive to live in harmony with the natural world. Most, however, find manipulating earth and stone to be distasteful, and prefer instead to indulge in the finer arts, with their inborn patience making them particularly suited to wizardry.</p>\r\n<p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 12px;\"><strong style=\"margin-top: 0px;\">Relations</strong>: Elves are prone to dismissing other races, writing them off as rash and impulsive, yet they are excellent judges of character. An elf might not want a dwarf neighbor, but would be the first to acknowledge that dwarf\'s skill at smithing. They regard gnomes as strange (and sometimes dangerous) curiosities, and halflings with a measure of pity, for these small folk seem to the elves to be adrift, without a traditional home. Elves are fascinated with humans, as evidenced by the number of half-elves in the world, even if they usually disown such offspring. They regard half-orcs with distrust and suspicion.</p>\r\n<p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 12px;\"><strong style=\"margin-top: 0px;\">Alignment and Religion</strong>: Elves are emotional and capricious, yet value kindness and beauty. Most elves are chaotic good.</p>\r\n<p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 12px;\"><strong style=\"margin-top: 0px;\">Adventurers</strong>: Many elves embark on adventures out of a desire to explore the world, leaving their secluded forest realms to reclaim forgotten elven magic or search out lost kingdoms established millennia ago by their forefathers. For those raised among humans, the ephemeral and unfettered life of an adventurer holds natural appeal. Elves generally eschew melee because of their frailty, preferring instead to pursue classes such as wizards and rangers.</p>',50,NULL,'elf.png','image/png',322129,'2013-02-24 23:24:01'),(3,'Gnome','<p style=\"margin-top: 0px; font-family: Verdana, Geneva, sans-serif; font-size: 12px;\">Gnomes trace their lineage back to the mysterious realm of the fey, a place where colors are brighter, the wildlands wilder, and emotions more primal. Unknown forces drove the ancient gnomes from that realm long ago, forcing them to seek refuge in this world; despite this, the gnomes have never completely abandoned their fey roots or adapted to mortal culture. As a result, gnomes are widely regarded by the other races as alien and strange.</p>\r\n<p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 12px;\"><strong style=\"margin-top: 0px;\">Physical Description</strong>: Gnomes are one of the smallest of the common races, generally standing just over 3 feet in height. Their hair tends toward vibrant colors such as the fiery orange of autumn leaves, the verdant green of forests at springtime, or the deep reds and purples of wildflowers in bloom. Similarly, their flesh tones range from earthy browns to floral pinks, frequently with little regard for heredity. Gnomes possess highly mutable facial characteristics, and many have overly large mouths and eyes, an effect which can be both disturbing and stunning, depending on the individual.</p>\r\n<p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 12px;\"><strong style=\"margin-top: 0px;\">Society</strong>: Unlike most races, gnomes do not generally organize themselves within classic societal structures. Whimsical creatures at heart, they typically travel alone or with temporary companions, ever seeking new and more exciting experiences. They rarely form enduring relationships among themselves or with members of other races, instead pursuing crafts, professions, or collections with a passion that borders on zealotry. Male gnomes have a strange fondness for unusual hats and headgear, while females often proudly wear elaborate and eccentric hairstyles.</p>\r\n<p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 12px;\"><strong style=\"margin-top: 0px;\">Relations</strong>: Gnomes have difficulty interacting with the other races, on both emotional and physical levels. Gnome humor is hard to translate and often comes across as malicious or senseless to other races, while gnomes in turn tend to think of the taller races as dull and lumbering giants. They get along well with halflings and humans, but are overly fond of playing jokes on dwarves and half-orcs, whom most gnomes feel need to lighten up. They respect elves, but often grow frustrated with the comparatively slow pace at which members of the long-lived race make decisions. To the gnomes, action is always better than inaction, and many gnomes carry several highly involved projects with them at all times to keep themselves entertained during rest periods.</p>\r\n<p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 12px;\"><strong style=\"margin-top: 0px;\">Alignment and Religion</strong>: Although gnomes are impulsive tricksters, with sometimes inscrutable motives and equally confusing methods, their hearts are generally in the right place. They are prone to powerful fits of emotion, and find themselves most at peace within the natural world.</p>\r\n<p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 12px;\"><strong style=\"margin-top: 0px;\">Adventurers</strong>: Gnomes\' propensity for wanderlust makes them natural adventurers. They often become wanderers to experience new aspects of life, for nothing is as novel as the uncounted dangers facing adventurers. Gnomes make up for their weakness with a proclivity for sorcery or bardic music.</p>',49,NULL,'gnome.png','image/png',162008,'2013-02-24 23:24:52'),(4,'Half-elf','<p style=\"margin-top: 0px; font-family: Verdana, Geneva, sans-serif; font-size: 12px;\">Elves have long drawn the covetous gazes of other races. Their generous life spans, magical affinity, and inherent grace each contribute to the admiration or bitter envy of their neighbors. Of all their traits, however, none so entrance their human associates as their beauty. Since the two races first came into contact with each other, the humans have held up elves as models of physical perfection, seeing in the fair folk idealized versions of themselves. For their part, many elves find humans attractive despite their comparatively barbaric ways, drawn to the passion and impetuosity with which members of the younger race play out their brief lives.</p>\r\n<p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 12px;\">Sometimes this mutual infatuation leads to romantic relationships. Though usually short-lived, even by human standards, these trysts commonly lead to the birth of half-elves, a race descended of two cultures yet inheritor of neither. Half-elves can breed with one another, but even these &ldquo;pureblood&rdquo; half-elves tend to be viewed as bastards by humans and elves alike.</p>\r\n<p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 12px;\"><strong style=\"margin-top: 0px;\">Physical Description</strong>: Half-elves stand taller than humans but shorter than elves. They inherit the lean build and comely features of their elven lineage, but their skin color is dictated by their human side. While half-elves retain the pointed ears of elves, theirs are more rounded and less pronounced. A half-elf\'s human-like eyes tend to range a spectrum of exotic colors running from amber or violet to emerald green and deep blue.</p>\r\n<p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 12px;\"><strong style=\"margin-top: 0px;\">Society</strong>: The lack of a unified homeland and culture forces half-elves to remain versatile, able to conform to nearly any environment. While often attractive to both races for the same reasons as their parents, half-elves rarely fit in with either humans or elves, as both races see too much evidence of the other in them. This lack of acceptance weighs heavily on many half-elves, yet others are bolstered by their unique status, seeing in their lack of a formalized culture the ultimate freedom. As a result, half-elves are incredibly adaptable, capable of adjusting their mindsets and talents to whatever societies they find themselves in.</p>\r\n<p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 12px;\"><strong style=\"margin-top: 0px;\">Relations</strong>: A half-elf understands loneliness, and knows that character is often less a product of race than of life experience. As such, half-elves are often open to friendships and alliances with other races, and less likely to rely on first impressions when forming opinions of new acquaintances.</p>\r\n<p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 12px;\"><strong style=\"margin-top: 0px;\">Alignment and Religion</strong>: Half-elves\' isolation strongly influences their characters and philosophies. Cruelty does not come naturally to them, nor does blending in and bending to societal convention&mdash;as a result, most half-elves are chaotic good. Half-elves\' lack of a unified culture makes them less likely to turn to religion, but those who do generally follow the common faiths of their homeland.</p>\r\n<p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 12px;\"><strong style=\"margin-top: 0px;\">Adventurers</strong>: Half-elves tend to be itinerants, wandering the lands in search of a place they might finally call home. The desire to prove oneself to the community and establish a personal identity&mdash;or even a legacy&mdash;drives many half-elf adventurers to lives of bravery.</p>',50,1,'halfelf.png','image/png',277984,'2013-02-24 23:26:06'),(5,'Half-orc','<p style=\"margin-top: 0px; font-family: Verdana, Geneva, sans-serif; font-size: 12px;\">Half-orcs are monstrosities, their tragic births the result of perversion and violence&mdash;or at least, that\'s how other races see them. It\'s true that half-orcs are rarely the result of loving unions, and as such are usually forced to grow up hard and fast, constantly fighting for protection or to make names for themselves. Feared, distrusted, and spat upon, half-orcs still consistently manage to surprise their detractors with great deeds and unexpected wisdom&mdash;though sometimes it\'s easier just to crack a few skulls.</p>\r\n<p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 12px;\"><strong style=\"margin-top: 0px;\">Physical Description</strong>: Both genders of half-orc stand between 6 and 7 feet tall, with powerful builds and greenish or grayish skin. Their canines often grow long enough to protrude from their mouths, and these &ldquo;tusks,&rdquo; combined with heavy brows and slightly pointed ears, give them their notoriously bestial appearance. While half-orcs may be impressive, few ever describe them as beautiful.</p>\r\n<p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 12px;\"><strong style=\"margin-top: 0px;\">Society</strong>: Unlike half-elves, where at least part of society\'s discrimination is born out of jealousy or attraction, half-orcs get the worst of both worlds: physically weaker than their orc kin, they also tend to be feared or attacked outright by the legions of humans who don\'t bother making the distinction between full orcs and halfbloods. Still, while not exactly accepted, half-orcs in civilized societies tend to be valued for their martial prowess, and orc leaders have actually been known to spawn them intentionally, as the halfbreeds regularly make up for their lack of physical strength with increased cunning and aggression, making them natural chieftains and strategic advisors.</p>\r\n<p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 12px;\"><strong style=\"margin-top: 0px;\">Relations</strong>: A lifetime of persecution leaves the average half-orc wary and quick to anger, yet those who break through his savage exterior might find a well-hidden core of empathy. Elves and dwarves tend to be the least accepting of half-orcs, seeing in them too great a resemblance to their racial enemies, but other races aren\'t much more understanding. Human societies with few orc problems tend to be the most accommodating, and there half-orcs make natural mercenaries and enforcers.</p>\r\n<p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 12px;\"><strong style=\"margin-top: 0px;\">Alignment &amp; Religion</strong>: Forced to live either among brutish orcs or as lonely outcasts in civilized lands, most half-orcs are bitter, violent, and reclusive. Evil comes easily to them, but they are not evil by nature&mdash;rather, most half-orcs are chaotic neutral, having been taught by long experience that there\'s no point doing anything but that which directly benefits themselves.</p>\r\n<p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 12px;\"><strong style=\"margin-top: 0px;\">Adventurers</strong>: Staunchly independent, many half-orcs take to lives of adventure out of necessity, seeking to escape their painful pasts or improve their lot through force of arms. Others, more optimistic or desperate for acceptance, take up the mantle of crusaders in order to prove their worth to the world.</p>',50,1,'halforc.png','image/png',547793,'2013-02-24 23:28:07'),(6,'Halfling','<p style=\"margin-top: 0px; font-family: Verdana, Geneva, sans-serif; font-size: 12px;\">Optimistic and cheerful by nature, blessed with uncanny luck and driven by a powerful wanderlust, halflings make up for their short stature with an abundance of bravado and curiosity. At once excitable and easy-going, halflings like to keep an even temper and a steady eye on opportunity, and are not as prone as some of the more volatile races to violent or emotional outbursts. Even in the jaws of catastrophe, a halfling almost never loses his sense of humor.</p>\r\n<p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 12px;\">Halflings are inveterate opportunists. Unable to physically defend themselves from the rigors of the world, they know when to bend with the wind and when to hide away. Yet a halfling\'s curiosity often overwhelms his good sense, leading to poor decisions and narrow escapes.</p>\r\n<p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 12px;\">Though their curiosity drives them to travel and seek new places and experiences, halflings possess a strong sense of house and home, often spending above their means to enhance the comforts of home life.</p>\r\n<p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 12px;\"><strong style=\"margin-top: 0px;\">Physical Description</strong>: Halflings rise to a humble height of 3 feet. They prefer to walk barefoot, leading to the bottoms of their feet being roughly calloused. Tufts of thick, curly hair warm the tops of their broad, tanned feet. Their skin tends toward a rich almond color and their hair toward light shades of brown. A halfling\'s ears are pointed, but proportionately not much larger than those of a human.</p>\r\n<p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 12px;\"><strong style=\"margin-top: 0px;\">Society</strong>: Halflings claim no cultural homeland and control no settlements larger than rural assemblies of free towns. Far more often, they dwell at the knees of their human cousins in human cities, eking out livings as they can from the scraps of larger societies. Many halflings lead perfectly fulfilling lives in the shadow of their larger neighbors, while some prefer more nomadic lives on the road, traveling the world and experiencing all it has to offer.</p>\r\n<p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 12px;\"><strong style=\"margin-top: 0px;\">Relations</strong>: A typical halfling prides himself on his ability to go unnoticed by other races&mdash;it is this trait that allows so many halflings to excel at thievery and trickery. Most halflings, knowing full well the stereotyped view other races take of them as a result, go out of their way to be forthcoming and friendly to the bigger races when they\'re not trying to go unnoticed. They get along fairly well with gnomes, although most halflings regard these eccentric creatures with a hefty dose of caution. Halflings coexist well with humans as a general rule, but since some of the more aggressive human societies value halflings as slaves, halflings try not to grow too complacent when dealing with them. Halflings respect elves and dwarves, but these races generally live in remote regions far from the comforts of civilization that halflings enjoy, thus limiting opportunities for interaction. Only half-orcs are generally shunned by halflings, for their great size and violent natures are a bit too intimidating for most halflings to cope with.</p>\r\n<p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 12px;\"><strong style=\"margin-top: 0px;\">Alignment and Religion</strong>: Halflings are loyal to their friends and families, but since they dwell in a world dominated by races twice as large as themselves, they\'ve come to grips with the fact that sometimes they\'ll need to scrap and scrounge for survival. Most halflings are neutral as a result.</p>\r\n<p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 12px;\"><strong style=\"margin-top: 0px;\">Adventurers</strong>: Their inherent luck coupled with their insatiable wanderlust makes halflings ideal for lives of adventure. Other such vagabonds tend to put up with the curious race in hopes that some of their mystical luck will rub off.</p>',49,NULL,'halfling.png','image/png',116964,'2013-02-24 23:29:31'),(7,'Human','<p style=\"margin-top: 0px; font-family: Verdana, Geneva, sans-serif; font-size: 12px;\">Humans possess exceptional drive and a great capacity to endure and expand, and as such are currently the dominant race in the world. Their empires and nations are vast, sprawling things, and the citizens of these societies carve names for themselves with the strength of their sword arms and the power of their spells. Humanity is best characterized by its tumultuousness and diversity, and human cultures run the gamut from savage but honorable tribes to decadent, devil-worshiping noble families in the most cosmopolitan cities. Human curiosity and ambition often triumph over their predilection for a sedentary lifestyle, and many leave their homes to explore the innumerable forgotten corners of the world or lead mighty armies to conquer their neighbors, simply because they can.</p>\r\n<p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 12px;\"><strong style=\"margin-top: 0px;\">Physical Description</strong>: The physical characteristics of humans are as varied as the world\'s climes. From the dark-skinned tribesmen of the southern continents to the pale and barbaric raiders of the northern lands, humans possess a wide variety of skin colors, body types, and facial features. Generally speaking, humans\' skin color assumes a darker hue the closer to the equator they live.</p>\r\n<p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 12px;\"><strong style=\"margin-top: 0px;\">Society</strong>: Human society comprises a multitude of governments, attitudes, and lifestyles. Though the oldest human cultures trace their histories thousands of years into the past, when compared to the societies of common races like elves and dwarves, human society seems to be in a state of constant flux as empires fragment and new kingdoms subsume the old. In general, humans are known for their flexibility, ingenuity, and ambition.</p>\r\n<p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 12px;\"><strong style=\"margin-top: 0px;\">Relations</strong>: Humans are fecund, and their drive and numbers often spur them into contact with other races during bouts of territorial expansion and colonization. In many cases, this leads to violence and war, yet humans are also swift to forgive and forge alliances with races who do not try to match or exceed them in violence. Proud, sometimes to the point of arrogance, humans might look upon dwarves as miserly drunkards, elves as flighty fops, halflings as craven thieves, gnomes as twisted maniacs, and half-elves and half-orcs as embarrassments&mdash;but the race\'s diversity among its own members also makes humans quite adept at accepting others for what they are.</p>\r\n<p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 12px;\"><strong style=\"margin-top: 0px;\">Alignment and Religion</strong>: Humanity is perhaps the most heterogeneous of all the common races, with a capacity for great evil and boundless good. Some assemble into vast barbaric hordes, while others build sprawling cities that cover miles. Taken as a whole, most humans are neutral, yet they generally tend to congregate in nations and civilizations with specific alignments. Humans also have the widest range in gods and religion, lacking other races\' ties to tradition and eager to turn to anyone offering them glory or protection.</p>\r\n<p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 12px;\"><strong style=\"margin-top: 0px;\">Adventurers</strong>: Ambition alone drives countless humans, and for many, adventuring serves as a means to an end, whether it be wealth, acclaim, social status, or arcane knowledge. A few pursue adventuring careers simply for the thrill of danger. Humans hail from myriad regions and backgrounds, and as such can fill any role within an adventuring party.</p>\r\n<p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 12px;\"><strong style=\"margin-top: 0px;\">Names</strong>: Unlike other races, who generally cleave to specific traditions and shared histories, humanity\'s diversity has resulted in a near-infinite set of names. The humans of a northern barbarian tribe have much different names than those hailing from a subtropical nation of sailors and tradesmen. Throughout most of the world humans speak Common, yet their names are as varied as their beliefs and appearances.</p>',50,1,'human.png','image/png',315063,'2013-02-24 23:31:09');
/*!40000 ALTER TABLE `races` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `characters_feats`
--

DROP TABLE IF EXISTS `characters_feats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `characters_feats` (
  `character_id` int(11) NOT NULL,
  `feat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `characters_feats`
--

LOCK TABLES `characters_feats` WRITE;
/*!40000 ALTER TABLE `characters_feats` DISABLE KEYS */;
/*!40000 ALTER TABLE `characters_feats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content_locales`
--

DROP TABLE IF EXISTS `content_locales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `content_locales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_id` int(11) NOT NULL,
  `content_text` text COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content_locales`
--

LOCK TABLES `content_locales` WRITE;
/*!40000 ALTER TABLE `content_locales` DISABLE KEYS */;
INSERT INTO `content_locales` VALUES (13,5,'<p>lorem ipsum</p>','pt','2011-08-28 17:40:31','2011-08-28 17:40:31','Conteudo 1');
/*!40000 ALTER TABLE `content_locales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `price_types`
--

DROP TABLE IF EXISTS `price_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `price_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `price_types`
--

LOCK TABLES `price_types` WRITE;
/*!40000 ALTER TABLE `price_types` DISABLE KEYS */;
INSERT INTO `price_types` VALUES (13,'CP','Copper pieces',1),(14,'SP','Silver pieces',2),(15,'GP','Gold pieces',3),(16,'PP','Platinum pieces',4);
/*!40000 ALTER TABLE `price_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weapon_types`
--

DROP TABLE IF EXISTS `weapon_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weapon_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weapon_types`
--

LOCK TABLES `weapon_types` WRITE;
/*!40000 ALTER TABLE `weapon_types` DISABLE KEYS */;
INSERT INTO `weapon_types` VALUES (1,'Piercing'),(2,'Bludgeoning'),(3,'Slashing');
/*!40000 ALTER TABLE `weapon_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sizes`
--

DROP TABLE IF EXISTS `sizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sizes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `armor_class_modifier` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sizes`
--

LOCK TABLES `sizes` WRITE;
/*!40000 ALTER TABLE `sizes` DISABLE KEYS */;
INSERT INTO `sizes` VALUES (46,'Fine',NULL),(47,'Diminutive',NULL),(48,'Tiny',NULL),(49,'Small',NULL),(50,'Medium',NULL),(51,'Large',NULL),(52,'Huge',NULL),(53,'Gargantuan',NULL),(54,'Colossal',NULL);
/*!40000 ALTER TABLE `sizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `attribute_id` int(11) NOT NULL,
  `have_subskill` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES (176,'Acrobatics',NULL,45,0),(177,'Appraise',NULL,46,0),(178,'Bluff',NULL,48,0),(179,'Climb',NULL,43,0),(180,'Craft',NULL,46,1),(181,'Diplomacy',NULL,48,0),(182,'Disable Device',NULL,45,0),(183,'Disguise',NULL,48,0),(184,'Escape Artist',NULL,45,0),(185,'Fly',NULL,45,0),(186,'Handle Animal',NULL,48,0),(187,'Heal',NULL,47,0),(188,'Intimidate',NULL,48,0),(189,'Knowledge (arcana)',NULL,46,0),(190,'Knowledge (Dungeoneering)',NULL,46,0),(191,'Knowledge (Engineering)',NULL,46,0),(192,'Knowledge (geography)',NULL,46,0),(193,'Knowledge (history)',NULL,46,0),(194,'Knowledge (local)',NULL,46,0),(195,'Knowledge (nature)',NULL,46,0),(196,'Knowledge (nobility)',NULL,46,0),(197,'Knowledge (planes)',NULL,46,0),(198,'Knowledge (religion)',NULL,46,0),(199,'Linguistics',NULL,46,0),(200,'Perception',NULL,47,0),(201,'Perform',NULL,48,1),(202,'Profession',NULL,47,1),(203,'Ride',NULL,45,0),(204,'Sense Motive',NULL,47,0),(205,'Sleight of Hand',NULL,45,0),(206,'Spellcraft',NULL,46,0),(207,'Stealth',NULL,45,0),(208,'Survival',NULL,47,0),(209,'Swim',NULL,43,0),(210,'Use Magic Device',NULL,48,0);
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_magic_weapons`
--

DROP TABLE IF EXISTS `character_magic_weapons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_magic_weapons` (
  `character_id` int(11) NOT NULL,
  `magic_weapon_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `equipped` tinyint(1) NOT NULL,
  `offhand` tinyint(1) NOT NULL,
  `dual_wield` tinyint(1) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_magic_weapons`
--

LOCK TABLES `character_magic_weapons` WRITE;
/*!40000 ALTER TABLE `character_magic_weapons` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_magic_weapons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `characters_languages`
--

DROP TABLE IF EXISTS `characters_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `characters_languages` (
  `character_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `characters_languages`
--

LOCK TABLES `characters_languages` WRITE;
/*!40000 ALTER TABLE `characters_languages` DISABLE KEYS */;
/*!40000 ALTER TABLE `characters_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gears`
--

DROP TABLE IF EXISTS `gears`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gears` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `price` int(11) DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `gear_category_id` int(11) NOT NULL,
  `price_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gears`
--

LOCK TABLES `gears` WRITE;
/*!40000 ALTER TABLE `gears` DISABLE KEYS */;
INSERT INTO `gears` VALUES (7,'Rope',NULL,5,10,37,13);
/*!40000 ALTER TABLE `gears` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weapon_features_weapons`
--

DROP TABLE IF EXISTS `weapon_features_weapons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weapon_features_weapons` (
  `weapon_id` int(11) NOT NULL,
  `weapon_feature_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weapon_features_weapons`
--

LOCK TABLES `weapon_features_weapons` WRITE;
/*!40000 ALTER TABLE `weapon_features_weapons` DISABLE KEYS */;
/*!40000 ALTER TABLE `weapon_features_weapons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_armors`
--

DROP TABLE IF EXISTS `character_armors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_armors` (
  `character_id` int(11) DEFAULT NULL,
  `armor_id` int(11) DEFAULT NULL,
  `equipped` tinyint(1) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_armors`
--

LOCK TABLES `character_armors` WRITE;
/*!40000 ALTER TABLE `character_armors` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_armors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `magic_armor_magic_properties`
--

DROP TABLE IF EXISTS `magic_armor_magic_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `magic_armor_magic_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `magic_armor_id` int(11) NOT NULL,
  `magic_property_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `magic_armor_magic_properties`
--

LOCK TABLES `magic_armor_magic_properties` WRITE;
/*!40000 ALTER TABLE `magic_armor_magic_properties` DISABLE KEYS */;
/*!40000 ALTER TABLE `magic_armor_magic_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alignments`
--

DROP TABLE IF EXISTS `alignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alignments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alignments`
--

LOCK TABLES `alignments` WRITE;
/*!40000 ALTER TABLE `alignments` DISABLE KEYS */;
INSERT INTO `alignments` VALUES (64,'Lawful Good'),(65,'Lawful Neutral'),(66,'Lawful Evil'),(67,'Neutral Good'),(68,'True Neutral'),(69,'Neutral Evil'),(70,'Chaotic Good'),(71,'Chaotic Neutral'),(72,'Chaotic Evil');
/*!40000 ALTER TABLE `alignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `magic_weapon_magic_properties`
--

DROP TABLE IF EXISTS `magic_weapon_magic_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `magic_weapon_magic_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `magic_weapon_id` int(11) NOT NULL,
  `magic_property_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `magic_weapon_magic_properties`
--

LOCK TABLES `magic_weapon_magic_properties` WRITE;
/*!40000 ALTER TABLE `magic_weapon_magic_properties` DISABLE KEYS */;
/*!40000 ALTER TABLE `magic_weapon_magic_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spell_schools_spells`
--

DROP TABLE IF EXISTS `spell_schools_spells`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spell_schools_spells` (
  `spell_id` int(11) DEFAULT NULL,
  `spell_school_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spell_schools_spells`
--

LOCK TABLES `spell_schools_spells` WRITE;
/*!40000 ALTER TABLE `spell_schools_spells` DISABLE KEYS */;
/*!40000 ALTER TABLE `spell_schools_spells` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weapon_types_weapons`
--

DROP TABLE IF EXISTS `weapon_types_weapons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weapon_types_weapons` (
  `weapon_id` int(11) NOT NULL,
  `weapon_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weapon_types_weapons`
--

LOCK TABLES `weapon_types_weapons` WRITE;
/*!40000 ALTER TABLE `weapon_types_weapons` DISABLE KEYS */;
INSERT INTO `weapon_types_weapons` VALUES (1,1),(2,1);
/*!40000 ALTER TABLE `weapon_types_weapons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `race_character_classes`
--

DROP TABLE IF EXISTS `race_character_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `race_character_classes` (
  `race_id` int(11) NOT NULL,
  `character_class_id` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bonus` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `race_character_classes`
--

LOCK TABLES `race_character_classes` WRITE;
/*!40000 ALTER TABLE `race_character_classes` DISABLE KEYS */;
/*!40000 ALTER TABLE `race_character_classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feat_types`
--

DROP TABLE IF EXISTS `feat_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feat_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feat_types`
--

LOCK TABLES `feat_types` WRITE;
/*!40000 ALTER TABLE `feat_types` DISABLE KEYS */;
INSERT INTO `feat_types` VALUES (1,'General'),(2,'Combat'),(3,'Critical'),(4,'Metamagic'),(5,'Item creation'),(6,'Class feature'),(7,'Racial trait');
/*!40000 ALTER TABLE `feat_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_magic_armors`
--

DROP TABLE IF EXISTS `character_magic_armors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_magic_armors` (
  `character_id` int(11) DEFAULT NULL,
  `magic_armor_id` int(11) DEFAULT NULL,
  `equipped` tinyint(1) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_magic_armors`
--

LOCK TABLES `character_magic_armors` WRITE;
/*!40000 ALTER TABLE `character_magic_armors` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_magic_armors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `characters_gears`
--

DROP TABLE IF EXISTS `characters_gears`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `characters_gears` (
  `character_id` int(11) NOT NULL,
  `gear_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `characters_gears`
--

LOCK TABLES `characters_gears` WRITE;
/*!40000 ALTER TABLE `characters_gears` DISABLE KEYS */;
/*!40000 ALTER TABLE `characters_gears` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `race_traits`
--

DROP TABLE IF EXISTS `race_traits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `race_traits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `race_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `benefits` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bonus` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `index_race_traits_on_race_id` (`race_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `race_traits`
--

LOCK TABLES `race_traits` WRITE;
/*!40000 ALTER TABLE `race_traits` DISABLE KEYS */;
INSERT INTO `race_traits` VALUES (1,1,'Darkvision (12 squares)','Dwarves can see in the dark up to 60 feet.',NULL),(2,1,'Defensive Training','Dwarves get a +4 dodge bonus to AC against monsters of the giant subtype.',NULL),(3,1,'Greed','Dwarves receive a +2 racial bonus on Appraise skill checks made to determine the price of nonmagical goods that contain precious metals or gemstones.',NULL),(4,1,'Hatred','Dwarves receive a +1 bonus on attack rolls against humanoid creatures of the orc and goblinoid subtypes due to special training against these hated foes.',NULL),(5,1,'Hardy','Dwarves receive a +2 racial bonus on saving throws against poison, spells, and spell-like abilities.',NULL),(6,1,'Stability','Dwarves receive a +4 racial bonus to their Combat Maneuver Defense when resisting a bull rush or trip attempt while standing on the ground.',NULL),(7,1,'Stonecunning','Dwarves receive a +2 bonus on Perception checks to potentially notice unusual stonework, such as traps and hidden doors located in stone walls or floors. They receive a check to notice such features whenever they pass within 10 feet of them, whether or no',NULL),(8,1,'Weapon Familiarity','Dwarves are proficient with battleaxes, heavy picks, and warhammers, and treat any weapon with the word “dwarven” in its name as a martial weapon.',NULL),(9,2,'Low-light vision','Elves can see twice as far as humans in conditions of dim light.',NULL),(10,2,'Elven Immunities','Elves are immune to magic sleep effects and get a +2 racial saving throw bonus against enchantment spells and effects.',NULL),(11,2,'Keen Senses','Elves receive a +2 racial bonus on Perception skill checks.',NULL),(12,2,'Elven Immunities','Elves receive a +2 racial bonus on caster level checks made to overcome spell resistance. In addition, elves receive a +2 racial bonus on Spellcraft skill checks made to identify the properties of magic items.',NULL),(13,2,'Weapon Familiarity','Elves are proficient with longbows (including composite longbows), longswords, rapiers, and shortbows (including composite shortbows), and treat any weapon with the word “elven” in its name as a martial weapon.',NULL),(14,3,'Low-light vision','Gnomes can see twice as far as humans in conditions of dim light.',NULL),(15,3,'Defensive Training','Gnomes get a +4 dodge bonus to AC against monsters of the giant type.',NULL),(16,3,'Gnome Magic','Gnomes add +1 to the DC of any saving throws against illusion spells that they cast. Gnomes with a Charisma of 11 or higher also gain the following spell-like abilities: 1/day—dancing lights, ghost sound, prestidigitation, and speak with animals. The cast',NULL),(17,3,'Hatred','Gnomes receive a +1 bonus on attack rolls against humanoid creatures of the reptilian and goblinoid subtypes due to special training against these hated foes.',NULL),(18,3,'Illusion Resistance','Gnomes get a +2 racial saving throw bonus against illusion spells or effects.',NULL),(19,3,'Keen Senses','Gnomes receive a +2 racial bonus on Perception skill checks.',NULL),(20,3,'Obsessive','Gnomes receive a +2 racial bonus on a Craft or Profession skill of their choice.',NULL),(21,3,'Weapon Familiarity','Gnomes treat any weapon with the word “gnome” in its name as a martial weapon.',NULL),(22,4,'Low-light vision','Half-elves can see twice as far as humans in conditions of dim light.',NULL),(23,4,'Adaptability','Half-elves receive Skill Focus as a bonus feat at 1st level.',NULL),(24,4,'Elf Blood','Half-elves count as both elves and humans for any effect related to race.',NULL),(25,4,'Elven Immunities','Half-elves are immune to magic sleep effects and get a +2 racial saving throw bonus against enchantment spells and effects.',NULL),(26,4,'Keen Senses','Half-elves receive a +2 racial bonus on Perception skill checks.',NULL),(27,4,'Multitalented','Half-elves choose two favored classes at first level and gain +1 hit point or +1 skill point whenever they take a level in either one of those classes. ',NULL),(28,5,'Darkvision (12 squares)','Half-orcs can see in the dark up to 60 feet.',NULL),(29,5,'Intimidating','Half-orcs receive a +2 racial bonus on Intimidate skill checks due to their fearsome nature.',NULL),(30,5,'Orc Blood','Half-orcs count as both humans and orcs for any effect related to race.',NULL),(31,5,'Orc Ferocity','Once per day, when a half-orc is brought below 0 hit points but not killed, he can fight on for one more round as if disabled. At the end of his next turn, unless brought to above 0 hit points, he immediately falls unconscious and begins dying.',NULL),(32,5,'Weapon Familiarity','Half-orcs are proficient with greataxes and falchions and treat any weapon with the word “orc” in its name as a martial weapon.',NULL),(33,6,'Fearless','Halflings receive a +2 racial bonus on all saving throws against fear. This bonus stacks with the bonus granted by halfling luck.',NULL),(34,6,'Halfling Luck','Halflings receive a +1 racial bonus on all saving throws.',NULL),(35,6,'Keen Senses','Halflings receive a +2 racial bonus on Perception skill checks.',NULL),(36,6,'Sure-Footed','Halflings receive a +2 racial bonus on Acrobatics and Climb skill checks.',NULL),(37,6,'Weapon Familiarity','Halflings are proficient with slings and treat any weapon with the word “halfling” in its name as a martial weapon.',NULL),(38,7,'Bonus Feat','Humans select one extra feat at 1st level.',NULL),(39,7,'Skilled','Humans gain an additional skill rank at first level and one additional rank whenever they gain a level.',NULL);
/*!40000 ALTER TABLE `race_traits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contents`
--

DROP TABLE IF EXISTS `contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contents`
--

LOCK TABLES `contents` WRITE;
/*!40000 ALTER TABLE `contents` DISABLE KEYS */;
INSERT INTO `contents` VALUES (5,1,'2011-08-28 17:40:31','2011-08-28 17:40:31',4);
/*!40000 ALTER TABLE `contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20110207231550'),('20110213210748'),('20110213210944'),('20110213211031'),('20110213213835'),('20110213213848'),('20110214015344'),('20110214115642'),('20110214115738'),('20110423003608'),('20110423003630'),('20110423005615'),('20110423140737'),('20110423173141'),('20110423183031'),('20110424141347'),('20110424234448'),('20110717221137'),('20110718014353'),('20110718021259'),('20110718022808'),('20110724184028'),('20110724190616'),('20110724204758'),('20110724205925'),('20110724211802'),('20110724212809'),('20110731162651'),('20110814141105'),('20110828165422'),('20110828231304'),('20110925011856'),('20111001233221'),('20111001234444'),('20111001235237'),('20111002014136'),('20111002040148'),('20111002054602'),('20111002054735'),('20111002054828'),('20111002054920'),('20111002055212'),('20111002055835'),('20111002060037'),('20111002060103'),('20111002060240'),('20111002060346'),('20111002060749'),('20111002061023'),('20111002061432'),('20111002131059'),('20111002131300'),('20111002131608'),('20111002131640'),('20111002131826'),('20111002132042'),('20111008004248'),('20111008004430'),('20111009201704'),('20111120183725'),('20111120230211'),('20111120231953'),('20111120233303'),('20111120233855'),('20111120235050'),('20111121002129'),('20111121003048'),('20111203170552'),('20111203172006'),('20111203173134'),('20111203174208'),('20111203175511'),('20111203180249'),('20111203180444'),('20111203180718'),('20111203181956'),('20111203183112'),('20111203205742'),('20111203210003'),('20111203210350'),('20111203211346'),('20111203211906'),('20111203212059'),('20111203212429'),('20111203233956'),('20111203234311'),('20111218191056'),('20111218192249'),('20111218192653'),('20111218194430'),('20111218195015'),('20111218195934'),('20111218200306'),('20111218200523'),('20111218200839'),('20111218201231'),('20111218202556'),('20111218203925'),('20111218205707'),('20120121171539'),('20120205234520'),('20120206002538'),('20120517024922'),('20120730200513'),('20120730205507'),('20120730212528'),('20120730220305'),('20120730221534'),('20120730223759'),('20120731012719'),('20120731215406'),('20120801204235'),('20120803220503'),('20120803235232'),('20120803235433'),('20120804013908'),('20120804173543'),('20120804181134'),('20120804205419'),('20120818175712'),('20120818175852'),('20120818183420'),('20120818183633'),('20120818184420'),('20120818191927'),('20120818193429'),('20120818202632'),('20120818204202'),('20120818210352'),('20120818213336'),('20120818220135'),('20120818220434'),('20120818220804'),('20120901222311'),('20120902130430'),('20130217233510'),('20130217233902'),('20130217234106'),('20130218000226'),('20130219025608'),('20130219224412'),('20130219230351'),('20130220153826'),('20130220161520'),('20130220170336'),('20130221141940'),('20130221145657'),('20130221154910');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `magic_properties`
--

DROP TABLE IF EXISTS `magic_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `magic_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `bonus` text COLLATE utf8_unicode_ci,
  `level_cost` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `equipment_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `magic_properties`
--

LOCK TABLES `magic_properties` WRITE;
/*!40000 ALTER TABLE `magic_properties` DISABLE KEYS */;
/*!40000 ALTER TABLE `magic_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `domain_powers`
--

DROP TABLE IF EXISTS `domain_powers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `domain_powers` (
  `domain_id` int(11) DEFAULT NULL,
  `required_level` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `bonus` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domain_powers`
--

LOCK TABLES `domain_powers` WRITE;
/*!40000 ALTER TABLE `domain_powers` DISABLE KEYS */;
INSERT INTO `domain_powers` VALUES (1,1,1,'Lightning Arc (Sp)','<p><span style=\"font-size: 12px;\">As a standard action, you can unleash an arc of electricity targeting any foe within 30 feet as a ranged touch attack. This arc of electricity deals 1d6 points of electricity damage + 1 point for every two cleric levels you possess. You can use this ability a number of times per day equal to 3 + your Wisdom modifier.</span></p>',NULL),(1,6,2,'Electricity Resistance (Ex)','<p><span style=\"font-size: 12px;\">At 6th level, you gain resist electricity 10. This resistance increases to 20 at 12th level. At 20th level, you gain immunity to electricity.</span></p>','@character.resistances[:eletric] = case @character.level\n  when 6..11 then 10\n  when 12..19 then 20\n  when 20 then 255'),(2,1,3,'Touch of Chaos (Sp)','<p>You can imbue a target with chaos as a melee touch attack. For the next round, anytime the target rolls a d20, he must roll twice and take the less favorable result. You can use this ability a number of times per day equal to 3 + your Wisdom modifier.</p>',NULL),(2,8,4,'Chaos Blade (Su)','<p><span style=\"font-size: 12px;\">At 8th level, you can give a weapon touched the</span><em style=\"font-size: 12px;\">&nbsp;anarchic&nbsp;</em><span style=\"font-size: 12px;\">special weapon quality for a number of rounds equal to 1/2 your cleric level. You can use this ability once per day at 8th level, and an additional time per day for every four levels beyond 8th.</span></p>',NULL);
/*!40000 ALTER TABLE `domain_powers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_class_features`
--

DROP TABLE IF EXISTS `character_class_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_class_features` (
  `character_class_id` int(11) DEFAULT NULL,
  `required_level` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `bonus` text COLLATE utf8_unicode_ci,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_class_features`
--

LOCK TABLES `character_class_features` WRITE;
/*!40000 ALTER TABLE `character_class_features` DISABLE KEYS */;
INSERT INTO `character_class_features` VALUES (1,1,'Bonus feats','<p id=\"bonus-feats-fighter\" style=\"font-size: 12px;\">At 1st level, and at every even level thereafter, a fighter gains a bonus feat in addition to those gained from normal advancement (meaning that the fighter gains a feat at every level). These bonus feats must be selected from those listed as combat feats, sometimes also called &ldquo;fighter bonus feats.&rdquo;</p>\n<p style=\"font-size: 12px;\">Upon reaching 4th level, and every four levels thereafter (8th, 12th, and so on), a fighter can choose to learn a new bonus feat in place of a bonus feat he has already learned. In effect, the fighter loses the bonus feat in exchange for the new one. The old feat cannot be one that was used as a prerequisite for another feat, prestige class, or other ability. A fighter can only change one feat at any given level and must choose whether or not to swap the feat at the time he gains a new bonus feat for the level.</p>',NULL,1),(1,2,'Bravery (Ex)','<p><span style=\"font-size: 12px;\">Starting at 2nd level, a fighter gains a +1 bonus on Will saves</span><span style=\"font-size: 12px;\">&nbsp;against fear. This bonus increases by +1 for every four levels beyond 2nd.</span></p>',NULL,2),(2,1,'Cantrips','<p><span style=\"font-size: 12px;\">Wizards can prepare a number of cantrips, or 0-level spells, each day, as noted on Table: &ldquo;Spells per Day.&rdquo; These spells are cast like any other spell, but they are not expended when cast and may be used again. A wizard can prepare a cantrip from a prohibited school, but it uses up two of his available slots.</span></p>',NULL,3);
/*!40000 ALTER TABLE `character_class_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spell_descriptors_spells`
--

DROP TABLE IF EXISTS `spell_descriptors_spells`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spell_descriptors_spells` (
  `spell_id` int(11) DEFAULT NULL,
  `spell_descriptor_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spell_descriptors_spells`
--

LOCK TABLES `spell_descriptors_spells` WRITE;
/*!40000 ALTER TABLE `spell_descriptors_spells` DISABLE KEYS */;
INSERT INTO `spell_descriptors_spells` VALUES (1,1);
/*!40000 ALTER TABLE `spell_descriptors_spells` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_class_spells`
--

DROP TABLE IF EXISTS `character_class_spells`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_class_spells` (
  `character_class_id` int(11) NOT NULL,
  `spell_id` int(11) NOT NULL,
  `spell_level` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_class_spells`
--

LOCK TABLES `character_class_spells` WRITE;
/*!40000 ALTER TABLE `character_class_spells` DISABLE KEYS */;
INSERT INTO `character_class_spells` VALUES (2,1,2,1);
/*!40000 ALTER TABLE `character_class_spells` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_id` int(11) DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weapons`
--

DROP TABLE IF EXISTS `weapons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weapons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `damage` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `weapon_proficiency_level_id` int(11) NOT NULL,
  `weapon_group_id` int(11) DEFAULT NULL,
  `critical_threat` int(11) DEFAULT NULL,
  `critical_power` int(11) DEFAULT NULL,
  `range` int(11) DEFAULT NULL,
  `weight` float NOT NULL,
  `price` float NOT NULL,
  `obs` text COLLATE utf8_unicode_ci NOT NULL,
  `equipment_slot_id` int(11) DEFAULT NULL,
  `price_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weapons`
--

LOCK TABLES `weapons` WRITE;
/*!40000 ALTER TABLE `weapons` DISABLE KEYS */;
INSERT INTO `weapons` VALUES (2,'Shortsword','<p><span style=\"font-family: Verdana, Geneva, sans-serif; font-size: 12px;\">This sword is about 2 feet in length.</span></p>','1d6',2,2,19,2,NULL,2,10,'',NULL,15);
/*!40000 ALTER TABLE `weapons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages_races`
--

DROP TABLE IF EXISTS `languages_races`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages_races` (
  `race_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages_races`
--

LOCK TABLES `languages_races` WRITE;
/*!40000 ALTER TABLE `languages_races` DISABLE KEYS */;
INSERT INTO `languages_races` VALUES (1,10),(1,15),(2,10),(2,17),(3,10),(3,20),(3,31),(4,10),(4,17),(5,10),(5,27),(6,10),(6,23),(7,10);
/*!40000 ALTER TABLE `languages_races` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_attributes`
--

DROP TABLE IF EXISTS `character_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_attributes` (
  `value` int(11) NOT NULL,
  `character_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_attributes`
--

LOCK TABLES `character_attributes` WRITE;
/*!40000 ALTER TABLE `character_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encounters`
--

DROP TABLE IF EXISTS `encounters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encounters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adventure_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `grid` text COLLATE utf8_unicode_ci NOT NULL,
  `dimension` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encounters`
--

LOCK TABLES `encounters` WRITE;
/*!40000 ALTER TABLE `encounters` DISABLE KEYS */;
INSERT INTO `encounters` VALUES (9,'batalha 1',6,'2011-10-22 16:49:11','2011-10-22 16:49:11','{\"0\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":1,\"column\":1,\"t_type\":0},\"1\":{\"bg\":9,\"mst\":6,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"292\",\"line\":1,\"column\":2,\"t_type\":0},\"2\":{\"bg\":9,\"mst\":6,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"292\",\"line\":1,\"column\":3,\"t_type\":0},\"3\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":1,\"column\":4,\"t_type\":0},\"4\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":1,\"column\":5,\"t_type\":0},\"5\":{\"bg\":9,\"mst\":6,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"251\",\"line\":1,\"column\":6,\"t_type\":0},\"6\":{\"bg\":9,\"mst\":6,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"251\",\"line\":1,\"column\":7,\"t_type\":0},\"7\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":1,\"column\":8,\"t_type\":0},\"8\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":1,\"column\":9,\"t_type\":0},\"9\":{\"bg\":9,\"mst\":null,\"obj\":12,\"obj_instance\":\"312\",\"mst_instance\":\"\",\"line\":1,\"column\":10,\"t_type\":1},\"10\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":2,\"column\":1,\"t_type\":0},\"11\":{\"bg\":9,\"mst\":6,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"292\",\"line\":2,\"column\":2,\"t_type\":0},\"12\":{\"bg\":9,\"mst\":6,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"292\",\"line\":2,\"column\":3,\"t_type\":0},\"13\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":2,\"column\":4,\"t_type\":0},\"14\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":2,\"column\":5,\"t_type\":0},\"15\":{\"bg\":9,\"mst\":6,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"251\",\"line\":2,\"column\":6,\"t_type\":0},\"16\":{\"bg\":9,\"mst\":6,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"251\",\"line\":2,\"column\":7,\"t_type\":0},\"17\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":2,\"column\":8,\"t_type\":0},\"18\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":2,\"column\":9,\"t_type\":0},\"19\":{\"bg\":9,\"mst\":null,\"obj\":12,\"obj_instance\":\"312\",\"mst_instance\":\"\",\"line\":2,\"column\":10,\"t_type\":1},\"20\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":3,\"column\":1,\"t_type\":0},\"21\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":3,\"column\":2,\"t_type\":0},\"22\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":3,\"column\":3,\"t_type\":0},\"23\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":3,\"column\":4,\"t_type\":0},\"24\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":3,\"column\":5,\"t_type\":0},\"25\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":3,\"column\":6,\"t_type\":0},\"26\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":3,\"column\":7,\"t_type\":0},\"27\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":3,\"column\":8,\"t_type\":0},\"28\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":3,\"column\":9,\"t_type\":0},\"29\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":3,\"column\":10,\"t_type\":0},\"30\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":4,\"column\":1,\"t_type\":0},\"31\":{\"bg\":9,\"mst\":null,\"obj\":15,\"obj_instance\":\"308\",\"mst_instance\":\"\",\"line\":4,\"column\":2,\"t_type\":2},\"32\":{\"bg\":9,\"mst\":5,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"293\",\"line\":4,\"column\":3,\"t_type\":0},\"33\":{\"bg\":9,\"mst\":5,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"294\",\"line\":4,\"column\":4,\"t_type\":0},\"34\":{\"bg\":9,\"mst\":5,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"295\",\"line\":4,\"column\":5,\"t_type\":0},\"35\":{\"bg\":9,\"mst\":5,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"296\",\"line\":4,\"column\":6,\"t_type\":0},\"36\":{\"bg\":9,\"mst\":5,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"297\",\"line\":4,\"column\":7,\"t_type\":0},\"37\":{\"bg\":9,\"mst\":null,\"obj\":15,\"obj_instance\":\"311\",\"mst_instance\":\"\",\"line\":4,\"column\":8,\"t_type\":2},\"38\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":4,\"column\":9,\"t_type\":0},\"39\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":4,\"column\":10,\"t_type\":0},\"40\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":5,\"column\":1,\"t_type\":0},\"41\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":5,\"column\":2,\"t_type\":0},\"42\":{\"bg\":9,\"mst\":5,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"298\",\"line\":5,\"column\":3,\"t_type\":0},\"43\":{\"bg\":9,\"mst\":5,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"299\",\"line\":5,\"column\":4,\"t_type\":0},\"44\":{\"bg\":9,\"mst\":5,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"300\",\"line\":5,\"column\":5,\"t_type\":0},\"45\":{\"bg\":9,\"mst\":5,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"301\",\"line\":5,\"column\":6,\"t_type\":0},\"46\":{\"bg\":9,\"mst\":5,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"302\",\"line\":5,\"column\":7,\"t_type\":0},\"47\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":5,\"column\":8,\"t_type\":0},\"48\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":5,\"column\":9,\"t_type\":0},\"49\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":5,\"column\":10,\"t_type\":0},\"50\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":6,\"column\":1,\"t_type\":0},\"51\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":6,\"column\":2,\"t_type\":0},\"52\":{\"bg\":9,\"mst\":5,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"303\",\"line\":6,\"column\":3,\"t_type\":0},\"53\":{\"bg\":9,\"mst\":5,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"304\",\"line\":6,\"column\":4,\"t_type\":0},\"54\":{\"bg\":9,\"mst\":5,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"305\",\"line\":6,\"column\":5,\"t_type\":0},\"55\":{\"bg\":9,\"mst\":5,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"306\",\"line\":6,\"column\":6,\"t_type\":0},\"56\":{\"bg\":9,\"mst\":5,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"307\",\"line\":6,\"column\":7,\"t_type\":0},\"57\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":6,\"column\":8,\"t_type\":0},\"58\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":6,\"column\":9,\"t_type\":0},\"59\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":6,\"column\":10,\"t_type\":0},\"60\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":7,\"column\":1,\"t_type\":0},\"61\":{\"bg\":9,\"mst\":null,\"obj\":15,\"obj_instance\":\"309\",\"mst_instance\":\"\",\"line\":7,\"column\":2,\"t_type\":2},\"62\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":7,\"column\":3,\"t_type\":0},\"63\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":7,\"column\":4,\"t_type\":0},\"64\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":7,\"column\":5,\"t_type\":0},\"65\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":7,\"column\":6,\"t_type\":0},\"66\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":7,\"column\":7,\"t_type\":0},\"67\":{\"bg\":9,\"mst\":null,\"obj\":15,\"obj_instance\":\"310\",\"mst_instance\":\"\",\"line\":7,\"column\":8,\"t_type\":2},\"68\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":7,\"column\":9,\"t_type\":0},\"69\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":7,\"column\":10,\"t_type\":0},\"70\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":8,\"column\":1,\"t_type\":0},\"71\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":8,\"column\":2,\"t_type\":0},\"72\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":8,\"column\":3,\"t_type\":0},\"73\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":8,\"column\":4,\"t_type\":0},\"74\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":8,\"column\":5,\"t_type\":0},\"75\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":8,\"column\":6,\"t_type\":0},\"76\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":8,\"column\":7,\"t_type\":0},\"77\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":8,\"column\":8,\"t_type\":0},\"78\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":8,\"column\":9,\"t_type\":0},\"79\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":8,\"column\":10,\"t_type\":0},\"80\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":9,\"column\":1,\"t_type\":0},\"81\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":9,\"column\":2,\"t_type\":0},\"82\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":9,\"column\":3,\"t_type\":0},\"83\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":9,\"column\":4,\"t_type\":0},\"84\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":9,\"column\":5,\"t_type\":0},\"85\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":9,\"column\":6,\"t_type\":0},\"86\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":9,\"column\":7,\"t_type\":0},\"87\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":9,\"column\":8,\"t_type\":0},\"88\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":9,\"column\":9,\"t_type\":0},\"89\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":9,\"column\":10,\"t_type\":0},\"90\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":10,\"column\":1,\"t_type\":0},\"91\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":10,\"column\":2,\"t_type\":0},\"92\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":10,\"column\":3,\"t_type\":0},\"93\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":10,\"column\":4,\"t_type\":0},\"94\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":10,\"column\":5,\"t_type\":0},\"95\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":10,\"column\":6,\"t_type\":0},\"96\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":10,\"column\":7,\"t_type\":0},\"97\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":10,\"column\":8,\"t_type\":0},\"98\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":10,\"column\":9,\"t_type\":0},\"99\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":10,\"column\":10,\"t_type\":0}}',NULL),(12,'Encontro1',4,'2013-02-19 02:15:19','2013-02-21 20:01:16','{\"0\":{\"bg\":11,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":1,\"column\":1,\"t_type\":2},\"1\":{\"bg\":11,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":1,\"column\":2,\"t_type\":2},\"2\":{\"bg\":11,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":1,\"column\":3,\"t_type\":2},\"3\":{\"bg\":11,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":1,\"column\":4,\"t_type\":2},\"4\":{\"bg\":11,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":1,\"column\":5,\"t_type\":2},\"5\":{\"bg\":11,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":1,\"column\":6,\"t_type\":2},\"6\":{\"bg\":11,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":1,\"column\":7,\"t_type\":2},\"7\":{\"bg\":11,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":1,\"column\":8,\"t_type\":2},\"8\":{\"bg\":11,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":1,\"column\":9,\"t_type\":2},\"9\":{\"bg\":11,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":1,\"column\":10,\"t_type\":2},\"10\":{\"bg\":11,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":1,\"column\":11,\"t_type\":2},\"11\":{\"bg\":11,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":1,\"column\":12,\"t_type\":2},\"12\":{\"bg\":11,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":2,\"column\":1,\"t_type\":2},\"13\":{\"bg\":11,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":2,\"column\":2,\"t_type\":2},\"14\":{\"bg\":11,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":2,\"column\":3,\"t_type\":2},\"15\":{\"bg\":11,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":2,\"column\":4,\"t_type\":2},\"16\":{\"bg\":11,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":2,\"column\":5,\"t_type\":2},\"17\":{\"bg\":11,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":2,\"column\":6,\"t_type\":2},\"18\":{\"bg\":11,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":2,\"column\":7,\"t_type\":2},\"19\":{\"bg\":11,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":2,\"column\":8,\"t_type\":2},\"20\":{\"bg\":11,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":2,\"column\":9,\"t_type\":2},\"21\":{\"bg\":11,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":2,\"column\":10,\"t_type\":2},\"22\":{\"bg\":11,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":2,\"column\":11,\"t_type\":2},\"23\":{\"bg\":11,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":2,\"column\":12,\"t_type\":2},\"24\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":3,\"column\":1,\"t_type\":0},\"25\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":3,\"column\":2,\"t_type\":0},\"26\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":3,\"column\":3,\"t_type\":0},\"27\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":3,\"column\":4,\"t_type\":0},\"28\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":3,\"column\":5,\"t_type\":0},\"29\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":3,\"column\":6,\"t_type\":0},\"30\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":3,\"column\":7,\"t_type\":0},\"31\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":3,\"column\":8,\"t_type\":0},\"32\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":3,\"column\":9,\"t_type\":0},\"33\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":3,\"column\":10,\"t_type\":0},\"34\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":3,\"column\":11,\"t_type\":0},\"35\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":3,\"column\":12,\"t_type\":0},\"36\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":4,\"column\":1,\"t_type\":0},\"37\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":4,\"column\":2,\"t_type\":0},\"38\":{\"bg\":10,\"mst\":6,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"178\",\"line\":4,\"column\":3,\"t_type\":0},\"39\":{\"bg\":10,\"mst\":6,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"178\",\"line\":4,\"column\":4,\"t_type\":0},\"40\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":4,\"column\":5,\"t_type\":0},\"41\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":4,\"column\":6,\"t_type\":1},\"42\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":4,\"column\":7,\"t_type\":1},\"43\":{\"bg\":10,\"mst\":6,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"179\",\"line\":4,\"column\":8,\"t_type\":0},\"44\":{\"bg\":10,\"mst\":6,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"179\",\"line\":4,\"column\":9,\"t_type\":0},\"45\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":4,\"column\":10,\"t_type\":0},\"46\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":4,\"column\":11,\"t_type\":0},\"47\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":4,\"column\":12,\"t_type\":0},\"48\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":5,\"column\":1,\"t_type\":0},\"49\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":5,\"column\":2,\"t_type\":0},\"50\":{\"bg\":10,\"mst\":6,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"178\",\"line\":5,\"column\":3,\"t_type\":0},\"51\":{\"bg\":10,\"mst\":6,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"178\",\"line\":5,\"column\":4,\"t_type\":0},\"52\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":5,\"column\":5,\"t_type\":0},\"53\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":5,\"column\":6,\"t_type\":1},\"54\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":5,\"column\":7,\"t_type\":1},\"55\":{\"bg\":10,\"mst\":6,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"179\",\"line\":5,\"column\":8,\"t_type\":0},\"56\":{\"bg\":10,\"mst\":6,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"179\",\"line\":5,\"column\":9,\"t_type\":0},\"57\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":5,\"column\":10,\"t_type\":0},\"58\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":5,\"column\":11,\"t_type\":0},\"59\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":5,\"column\":12,\"t_type\":0},\"60\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":6,\"column\":1,\"t_type\":0},\"61\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":6,\"column\":2,\"t_type\":0},\"62\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":6,\"column\":3,\"t_type\":0},\"63\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":6,\"column\":4,\"t_type\":0},\"64\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":6,\"column\":5,\"t_type\":0},\"65\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":6,\"column\":6,\"t_type\":0},\"66\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":6,\"column\":7,\"t_type\":0},\"67\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":6,\"column\":8,\"t_type\":0},\"68\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":6,\"column\":9,\"t_type\":0},\"69\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":6,\"column\":10,\"t_type\":0},\"70\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":6,\"column\":11,\"t_type\":0},\"71\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":6,\"column\":12,\"t_type\":0},\"72\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":7,\"column\":1,\"t_type\":0},\"73\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":7,\"column\":2,\"t_type\":0},\"74\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":7,\"column\":3,\"t_type\":0},\"75\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":7,\"column\":4,\"t_type\":0},\"76\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":7,\"column\":5,\"t_type\":0},\"77\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":7,\"column\":6,\"t_type\":0},\"78\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":7,\"column\":7,\"t_type\":0},\"79\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":7,\"column\":8,\"t_type\":0},\"80\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":7,\"column\":9,\"t_type\":0},\"81\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":7,\"column\":10,\"t_type\":0},\"82\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":7,\"column\":11,\"t_type\":0},\"83\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":7,\"column\":12,\"t_type\":0},\"84\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":8,\"column\":1,\"t_type\":0},\"85\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":8,\"column\":2,\"t_type\":0},\"86\":{\"bg\":10,\"mst\":5,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"180\",\"line\":8,\"column\":3,\"t_type\":0},\"87\":{\"bg\":10,\"mst\":5,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"181\",\"line\":8,\"column\":4,\"t_type\":0},\"88\":{\"bg\":10,\"mst\":5,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"182\",\"line\":8,\"column\":5,\"t_type\":0},\"89\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":8,\"column\":6,\"t_type\":0},\"90\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":8,\"column\":7,\"t_type\":0},\"91\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":8,\"column\":8,\"t_type\":0},\"92\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":8,\"column\":9,\"t_type\":0},\"93\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":8,\"column\":10,\"t_type\":0},\"94\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":8,\"column\":11,\"t_type\":0},\"95\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":8,\"column\":12,\"t_type\":0},\"96\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":9,\"column\":1,\"t_type\":0},\"97\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":9,\"column\":2,\"t_type\":0},\"98\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":9,\"column\":3,\"t_type\":0},\"99\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":9,\"column\":4,\"t_type\":0},\"100\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":9,\"column\":5,\"t_type\":0},\"101\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":9,\"column\":6,\"t_type\":0},\"102\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":9,\"column\":7,\"t_type\":0},\"103\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":9,\"column\":8,\"t_type\":0},\"104\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":9,\"column\":9,\"t_type\":0},\"105\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":9,\"column\":10,\"t_type\":0},\"106\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":9,\"column\":11,\"t_type\":0},\"107\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":9,\"column\":12,\"t_type\":0},\"108\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":10,\"column\":1,\"t_type\":0},\"109\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":10,\"column\":2,\"t_type\":0},\"110\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":10,\"column\":3,\"t_type\":0},\"111\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":10,\"column\":4,\"t_type\":0},\"112\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":10,\"column\":5,\"t_type\":0},\"113\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":10,\"column\":6,\"t_type\":0},\"114\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":10,\"column\":7,\"t_type\":0},\"115\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":10,\"column\":8,\"t_type\":0},\"116\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":10,\"column\":9,\"t_type\":0},\"117\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":10,\"column\":10,\"t_type\":0},\"118\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":10,\"column\":11,\"t_type\":0},\"119\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":10,\"column\":12,\"t_type\":0},\"120\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":11,\"column\":1,\"t_type\":0},\"121\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":11,\"column\":2,\"t_type\":0},\"122\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":11,\"column\":3,\"t_type\":0},\"123\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":11,\"column\":4,\"t_type\":0},\"124\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":11,\"column\":5,\"t_type\":0},\"125\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":11,\"column\":6,\"t_type\":0},\"126\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":11,\"column\":7,\"t_type\":0},\"127\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":11,\"column\":8,\"t_type\":0},\"128\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":11,\"column\":9,\"t_type\":0},\"129\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":11,\"column\":10,\"t_type\":0},\"130\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":11,\"column\":11,\"t_type\":0},\"131\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":11,\"column\":12,\"t_type\":0},\"132\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":12,\"column\":1,\"t_type\":0},\"133\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":12,\"column\":2,\"t_type\":0},\"134\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":12,\"column\":3,\"t_type\":0},\"135\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":12,\"column\":4,\"t_type\":0},\"136\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":12,\"column\":5,\"t_type\":0},\"137\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":12,\"column\":6,\"t_type\":0},\"138\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":12,\"column\":7,\"t_type\":0},\"139\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":12,\"column\":8,\"t_type\":0},\"140\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":12,\"column\":9,\"t_type\":0},\"141\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":12,\"column\":10,\"t_type\":0},\"142\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":12,\"column\":11,\"t_type\":0},\"143\":{\"bg\":10,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":12,\"column\":12,\"t_type\":0}}',12),(13,'Encontro 2.1',4,'2013-02-19 02:35:12','2013-02-19 02:52:33','{\"0\":{\"bg\":9,\"mst\":null,\"obj\":15,\"obj_instance\":\"1\",\"mst_instance\":\"\",\"line\":1,\"column\":1,\"t_type\":0},\"1\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":1,\"column\":2,\"t_type\":0},\"2\":{\"bg\":9,\"mst\":null,\"obj\":16,\"obj_instance\":\"112\",\"mst_instance\":\"\",\"line\":1,\"column\":3,\"t_type\":1},\"3\":{\"bg\":9,\"mst\":null,\"obj\":16,\"obj_instance\":\"112\",\"mst_instance\":\"\",\"line\":1,\"column\":4,\"t_type\":1},\"4\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":1,\"column\":5,\"t_type\":0},\"5\":{\"bg\":9,\"mst\":null,\"obj\":15,\"obj_instance\":\"111\",\"mst_instance\":\"\",\"line\":1,\"column\":6,\"t_type\":2},\"6\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":2,\"column\":1,\"t_type\":0},\"7\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":2,\"column\":2,\"t_type\":0},\"8\":{\"bg\":9,\"mst\":null,\"obj\":16,\"obj_instance\":\"112\",\"mst_instance\":\"\",\"line\":2,\"column\":3,\"t_type\":1},\"9\":{\"bg\":9,\"mst\":null,\"obj\":16,\"obj_instance\":\"112\",\"mst_instance\":\"\",\"line\":2,\"column\":4,\"t_type\":1},\"10\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":2,\"column\":5,\"t_type\":0},\"11\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":2,\"column\":6,\"t_type\":0},\"12\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":3,\"column\":1,\"t_type\":0},\"13\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":3,\"column\":2,\"t_type\":0},\"14\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":3,\"column\":3,\"t_type\":0},\"15\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":3,\"column\":4,\"t_type\":0},\"16\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":3,\"column\":5,\"t_type\":0},\"17\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":3,\"column\":6,\"t_type\":0},\"18\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":4,\"column\":1,\"t_type\":0},\"19\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":4,\"column\":2,\"t_type\":0},\"20\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":4,\"column\":3,\"t_type\":0},\"21\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":4,\"column\":4,\"t_type\":0},\"22\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":4,\"column\":5,\"t_type\":0},\"23\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":4,\"column\":6,\"t_type\":0},\"24\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":5,\"column\":1,\"t_type\":0},\"25\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":5,\"column\":2,\"t_type\":0},\"26\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":5,\"column\":3,\"t_type\":0},\"27\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":5,\"column\":4,\"t_type\":0},\"28\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":5,\"column\":5,\"t_type\":0},\"29\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":5,\"column\":6,\"t_type\":0},\"30\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":6,\"column\":1,\"t_type\":0},\"31\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":6,\"column\":2,\"t_type\":0},\"32\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":6,\"column\":3,\"t_type\":0},\"33\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":6,\"column\":4,\"t_type\":0},\"34\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":6,\"column\":5,\"t_type\":0},\"35\":{\"bg\":9,\"mst\":null,\"obj\":null,\"obj_instance\":\"\",\"mst_instance\":\"\",\"line\":6,\"column\":6,\"t_type\":0}}',NULL);
/*!40000 ALTER TABLE `encounters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monsters`
--

DROP TABLE IF EXISTS `monsters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monsters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `photo_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_file_size` int(11) DEFAULT NULL,
  `photo_updated_at` datetime DEFAULT NULL,
  `miniature_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miniature_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miniature_file_size` int(11) DEFAULT NULL,
  `miniature_updated_at` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `dimension` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monsters`
--

LOCK TABLES `monsters` WRITE;
/*!40000 ALTER TABLE `monsters` DISABLE KEYS */;
INSERT INTO `monsters` VALUES (5,'Goblin','2011-08-28 18:36:06','2012-05-17 02:33:37','goblin-d20.jpg','image/jpeg',11235,'2012-05-17 02:33:37','goblin.png','image/png',5756,'2012-05-17 02:33:37',4,1),(6,'Troll','2011-08-28 19:07:51','2012-05-17 02:34:27','pathfinder-Troll.jpg','image/jpeg',91265,'2012-05-17 02:34:27','troll.png','image/png',17139,'2012-05-17 02:34:27',4,2);
/*!40000 ALTER TABLE `monsters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deities_domains`
--

DROP TABLE IF EXISTS `deities_domains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deities_domains` (
  `deity_id` int(11) NOT NULL,
  `domain_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deities_domains`
--

LOCK TABLES `deities_domains` WRITE;
/*!40000 ALTER TABLE `deities_domains` DISABLE KEYS */;
/*!40000 ALTER TABLE `deities_domains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_type` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `crypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `persistence_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `single_access_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `perishable_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `login_count` int(11) NOT NULL DEFAULT '0',
  `failed_login_count` int(11) NOT NULL DEFAULT '0',
  `last_request_at` datetime DEFAULT NULL,
  `current_login_at` datetime DEFAULT NULL,
  `last_login_at` datetime DEFAULT NULL,
  `current_login_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_login_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (4,'admin','Pedro de Jesus',0,'pedro.henrique.108@gmail.com','05da200b62ae670df9ee665f2d2a9b223bdf08b42b66c25afef1dec515d7075072330ada244fcb33b7d407f04a7a75bf765b7a2bea3283c60794d0a3c1515d7e','QhUVohd2E5lOBUKuMiIG','57e0d5b0340d71017e9d64a8769f4ab43e5fc98c27607d28ae40b4b87717742f4421d60a64d004a9362825316bf8e8d4be3d6332cfca5ec0e8b6315a411ca316','2rPGAfSemTWXhlwiRJne','ysrdkBzkQglf19Ia1Da8',50,0,'2013-02-25 00:13:49','2013-02-20 14:24:50','2013-02-20 14:21:49','127.0.0.1','127.0.0.1','2011-08-28 17:24:29','2013-02-25 00:13:49'),(5,'jogador','jogador',3,'teste@gmail.com','a2644f2ba93e37f513fffb02e3efaa6b7ea91eb56abf1379a87f613d0b63661486d84494e3bbeeb52848b158200a3c6eac86192f3bb476a4512543f9714a95de','soiqPXGjzNmdW9uVXKhr','4793fc85964be6f68d7472d6209303f61f1e7675150a6b57e1990cb8c0e51aad18b4dc570d128079e76147ef2b8be4790844c14efe927aee47542eb5abea368c','BhMrWipRz9epEiirUTg','06XvMrNsgIIVvI51SlzK',2,0,'2011-10-22 16:43:35','2011-10-22 16:43:21','2011-10-22 16:43:03','127.0.0.1','127.0.0.1','2011-10-22 16:42:57','2011-10-22 16:43:35'),(6,'mestre','mestre',2,'teste2@gmail.com','7f1ff5634b79236cacdc8aa456e9dd37849878b877e9421ed52c02b71d4b2adba3bcc3bf120ca2f32b20a5c24eb14a46016b84c726b9a2eacd16a4e7d0484a1a','bnvdSvKAcUeZpDQT3pYy','81d10cc43535626472df24d16694d04fb5caba5bbcd20cfbb11f68754d9aede64af532daa98872b159167298717b83ba443534033882249bbbbe670fdd6d34fa','qua0TqgztO9QGvcobhO','tu65RWQkgPp8DGz6qL7S',1,0,'2011-10-22 16:52:42','2011-10-22 16:44:14',NULL,'127.0.0.1',NULL,'2011-10-22 16:44:08','2011-10-22 16:52:42');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_magic_items`
--

DROP TABLE IF EXISTS `character_magic_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_magic_items` (
  `character_id` int(11) NOT NULL,
  `magic_item_id` int(11) NOT NULL,
  `equipped` tinyint(1) NOT NULL,
  `quantity` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_magic_items`
--

LOCK TABLES `character_magic_items` WRITE;
/*!40000 ALTER TABLE `character_magic_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_magic_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_skills`
--

DROP TABLE IF EXISTS `character_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_skills` (
  `character_id` int(11) DEFAULT NULL,
  `skill_id` int(11) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `subskill` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_skills`
--

LOCK TABLES `character_skills` WRITE;
/*!40000 ALTER TABLE `character_skills` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_character_classes`
--

DROP TABLE IF EXISTS `character_character_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_character_classes` (
  `character_id` int(11) NOT NULL,
  `character_class_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `hp_gained` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_character_classes`
--

LOCK TABLES `character_character_classes` WRITE;
/*!40000 ALTER TABLE `character_character_classes` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_character_classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `levels`
--

DROP TABLE IF EXISTS `levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `levels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` int(11) NOT NULL,
  `fastXP` int(11) NOT NULL,
  `mediumXP` int(11) NOT NULL,
  `slowXP` int(11) NOT NULL,
  `badSavingThrow` int(11) NOT NULL,
  `goodSavingThrow` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `levels`
--

LOCK TABLES `levels` WRITE;
/*!40000 ALTER TABLE `levels` DISABLE KEYS */;
INSERT INTO `levels` VALUES (141,1,0,0,0,0,2),(142,2,1300,2000,3000,0,3),(143,3,3300,5000,7500,1,3),(144,4,6000,9000,14000,1,4),(145,5,10000,15000,23000,1,4),(146,6,15000,23000,35000,2,5),(147,7,23000,35000,53000,2,5),(148,8,34000,51000,77000,2,6),(149,9,50000,75000,115000,3,6),(150,10,71000,105000,160000,3,7),(151,11,105000,155000,235000,3,7),(152,12,145000,220000,330000,4,8),(153,13,210000,315000,475000,4,8),(154,14,295000,445000,665000,4,9),(155,15,425000,635000,955000,5,9),(156,16,600000,890000,1350000,5,10),(157,17,850000,1300000,1900000,5,10),(158,18,1200000,1800000,2700000,6,11),(159,19,1700000,2550000,3850000,6,11),(160,20,2400000,3600000,5350000,6,12);
/*!40000 ALTER TABLE `levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dices`
--

DROP TABLE IF EXISTS `dices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dices`
--

LOCK TABLES `dices` WRITE;
/*!40000 ALTER TABLE `dices` DISABLE KEYS */;
INSERT INTO `dices` VALUES (1,3,'d3'),(2,4,'d4'),(3,6,'d6'),(4,8,'d8'),(5,10,'d10'),(6,12,'d12'),(7,20,'d20');
/*!40000 ALTER TABLE `dices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `characters`
--

DROP TABLE IF EXISTS `characters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `characters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `adventure_id` int(11) DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT '1',
  `photo_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_file_size` int(11) DEFAULT NULL,
  `photo_updated_at` datetime DEFAULT NULL,
  `miniature_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miniature_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miniature_file_size` int(11) DEFAULT NULL,
  `miniature_updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deity_id` int(11) DEFAULT NULL,
  `race_id` int(11) DEFAULT NULL,
  `alignment_id` int(11) DEFAULT NULL,
  `experience_points` int(11) NOT NULL DEFAULT '0',
  `progression_type` int(11) DEFAULT NULL,
  `hit_points` int(11) DEFAULT NULL,
  `fortitude` int(11) DEFAULT NULL,
  `reflex` int(11) DEFAULT NULL,
  `will` int(11) DEFAULT NULL,
  `armor_class_armor` int(11) NOT NULL DEFAULT '0',
  `armor_class_shield` int(11) NOT NULL DEFAULT '0',
  `armor_class_dex` int(11) NOT NULL DEFAULT '0',
  `armor_class_size` int(11) NOT NULL DEFAULT '0',
  `armor_class_natural` int(11) NOT NULL DEFAULT '0',
  `armor_class_deflection` int(11) NOT NULL DEFAULT '0',
  `armor_class_misc` int(11) NOT NULL DEFAULT '0',
  `base_attack_bonus` int(11) NOT NULL DEFAULT '0',
  `initiative` int(11) NOT NULL DEFAULT '0',
  `cmb` int(11) NOT NULL DEFAULT '0',
  `cmd` int(11) NOT NULL DEFAULT '0',
  `damage_reduction` int(11) DEFAULT NULL,
  `spell_resistance` int(11) DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `height` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `eyes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `money` float NOT NULL DEFAULT '0',
  `weight_capacity` float NOT NULL DEFAULT '0',
  `armor_class_dodge` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `characters`
--

LOCK TABLES `characters` WRITE;
/*!40000 ALTER TABLE `characters` DISABLE KEYS */;
INSERT INTO `characters` VALUES (10,'Broxigar',4,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-21 19:59:33','2013-02-24 19:28:51',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0),(21,'Krasus',4,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-24 19:31:17','2013-02-24 19:40:07',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0);
/*!40000 ALTER TABLE `characters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_classes_skills`
--

DROP TABLE IF EXISTS `character_classes_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_classes_skills` (
  `character_class_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_classes_skills`
--

LOCK TABLES `character_classes_skills` WRITE;
/*!40000 ALTER TABLE `character_classes_skills` DISABLE KEYS */;
INSERT INTO `character_classes_skills` VALUES (1,179),(1,180),(1,186),(1,188),(1,190),(1,191),(1,202),(1,203),(1,208),(1,209),(2,177),(2,180),(2,185),(2,189),(2,190),(2,191),(2,192),(2,193),(2,194),(2,195),(2,196),(2,197),(2,198),(2,199),(2,202),(2,206),(3,177),(3,180),(3,181),(3,187),(3,189),(3,193),(3,196),(3,197),(3,199),(3,202),(3,204),(3,206);
/*!40000 ALTER TABLE `character_classes_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `magic_armors`
--

DROP TABLE IF EXISTS `magic_armors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `magic_armors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `armor_id` int(11) NOT NULL,
  `construction` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `magic_armors`
--

LOCK TABLES `magic_armors` WRITE;
/*!40000 ALTER TABLE `magic_armors` DISABLE KEYS */;
/*!40000 ALTER TABLE `magic_armors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weapon_groups`
--

DROP TABLE IF EXISTS `weapon_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weapon_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weapon_groups`
--

LOCK TABLES `weapon_groups` WRITE;
/*!40000 ALTER TABLE `weapon_groups` DISABLE KEYS */;
INSERT INTO `weapon_groups` VALUES (1,'Unarmed Attacks','2013-02-18 00:34:43','2013-02-18 00:34:43'),(2,'Light Melee','2013-02-18 00:34:43','2013-02-18 00:34:43'),(3,'One-Handed Melee','2013-02-18 00:34:43','2013-02-18 00:34:43'),(4,'Two-Handed Melee','2013-02-18 00:34:43','2013-02-18 00:34:43'),(5,'Ranged','2013-02-18 00:34:43','2013-02-18 00:34:43');
/*!40000 ALTER TABLE `weapon_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `characters_domains`
--

DROP TABLE IF EXISTS `characters_domains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `characters_domains` (
  `character_id` int(11) NOT NULL,
  `domain_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `characters_domains`
--

LOCK TABLES `characters_domains` WRITE;
/*!40000 ALTER TABLE `characters_domains` DISABLE KEYS */;
/*!40000 ALTER TABLE `characters_domains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deities`
--

DROP TABLE IF EXISTS `deities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `alignment_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deities`
--

LOCK TABLES `deities` WRITE;
/*!40000 ALTER TABLE `deities` DISABLE KEYS */;
INSERT INTO `deities` VALUES (1,'Moradin',NULL,64),(2,'Asmodeus',NULL,66),(3,'Abadar','<p><span style=\"font-family: sans-serif; font-size: 13px; line-height: 19.200000762939453px;\">Abadar is known to be a patient deity. Maintaining a strong neutral stance in his actions, he sets forth to further expand civilization and order in the world and among the peoples of Golarion.</span></p>',65);
/*!40000 ALTER TABLE `deities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adventures`
--

DROP TABLE IF EXISTS `adventures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adventures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adventures`
--

LOCK TABLES `adventures` WRITE;
/*!40000 ALTER TABLE `adventures` DISABLE KEYS */;
INSERT INTO `adventures` VALUES (4,'Kingmaker','2011-08-28 19:22:48','2011-08-28 19:22:48',4),(5,'Council of thieves','2011-09-03 15:55:20','2011-09-03 15:55:20',4),(6,'aventura 1','2011-10-22 16:45:56','2011-10-22 16:45:56',6);
/*!40000 ALTER TABLE `adventures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `magic_item_groups`
--

DROP TABLE IF EXISTS `magic_item_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `magic_item_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `magic_item_groups`
--

LOCK TABLES `magic_item_groups` WRITE;
/*!40000 ALTER TABLE `magic_item_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `magic_item_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weapon_features`
--

DROP TABLE IF EXISTS `weapon_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weapon_features` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weapon_features`
--

LOCK TABLES `weapon_features` WRITE;
/*!40000 ALTER TABLE `weapon_features` DISABLE KEYS */;
INSERT INTO `weapon_features` VALUES (1,'Brace','If you use a readied action to set a brace weapon against a charge, you deal double damage on a successful hit against a charging character.'),(2,'Disarm','When you use a disarm weapon, you get a +2 bonus on Combat Maneuver Checks to disarm an enemy.'),(3,'Double','You can use a double weapon to fight as if fighting with two weapons, but if you do, you incur all the normal attack penalties associated with fighting with two weapons, just as if you were using a one-handed weapon and a light weapon. You can choose to wield one end of a double weapon two-handed, but it cannot be used as a double weapon when wielded in this way. Only one end of the weapon can be used in any given round.'),(4,'Monk','A monk weapon can be used by a monk to perform a flurry of blows.'),(5,'Nonlethal','These weapons deal nonlethal damage'),(6,'Reach','You use a reach weapon to strike opponents 10 feet away, but you can\'t use it against an adjacent foe.'),(7,'Trip','You can use a trip weapon to make trip attacks. If you are tripped during your own trip attempt, you can drop the weapon to avoid being tripped.');
/*!40000 ALTER TABLE `weapon_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `domains`
--

DROP TABLE IF EXISTS `domains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `domains` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `domain_id` int(11) DEFAULT NULL,
  `first_level_spell_id` int(11) DEFAULT NULL,
  `second_level_spell_id` int(11) DEFAULT NULL,
  `third_level_spell_id` int(11) DEFAULT NULL,
  `fourth_level_spell_id` int(11) DEFAULT NULL,
  `fifth_level_spell_id` int(11) DEFAULT NULL,
  `sixth_level_spell_id` int(11) DEFAULT NULL,
  `seventh_level_spell_id` int(11) DEFAULT NULL,
  `eighth_level_spell_id` int(11) DEFAULT NULL,
  `ninth_level_spell_id` int(11) DEFAULT NULL,
  `first_level_spell_restriction` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `second_level_spell_restriction` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `third_level_spell_restriction` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fourth_level_spell_restriction` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fifth_level_spell_restriction` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sixth_level_spell_restriction` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seventh_level_spell_restriction` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `eighth_level_spell_restriction` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ninth_level_spell_restriction` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domains`
--

LOCK TABLES `domains` WRITE;
/*!40000 ALTER TABLE `domains` DISABLE KEYS */;
INSERT INTO `domains` VALUES (1,'Air','You can manipulate lightning, mist, and wind, traffic with air creatures, and are resistant to electricity damage.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Chaos','Your touch infuses life and weapons with chaos, and you revel in all things anarchic.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `domains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attributes`
--

DROP TABLE IF EXISTS `attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attributes`
--

LOCK TABLES `attributes` WRITE;
/*!40000 ALTER TABLE `attributes` DISABLE KEYS */;
INSERT INTO `attributes` VALUES (43,'Strength'),(44,'Constitution'),(45,'Dexterity'),(46,'Intelligence'),(47,'Wisdom'),(48,'Charisma');
/*!40000 ALTER TABLE `attributes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-02-24 21:24:40
