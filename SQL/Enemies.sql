-- +------------------------------------------------+
-- |                                                |
-- |      Tidecorrupt Stalker (601018)              |
-- |                                                |
-- +------------------------------------------------+

DELETE FROM `creature_template` WHERE (`entry` = 601018);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(601018, 0, 0, 0, 0, 0, 'Tidecorrupt Stalker', '', NULL, 0, 80, 83, 1, 90, 0, 1.2, 1.71429, 1, 1, 20, 1, 1, 0, 24, 2000, 2000, 1, 1, 1, 64, 2048, 0, 0, 0, 0, 0, 0, 7, 8, 601018, 601018, 0, 0, 0, 3264, 4268, 'SmartAI', 1, 1, 5.6, 1, 1, 1, 0, 165, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 601018);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(601018, 0, 2021, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 601018) AND (`Index` IN (0, 1, 2, 3));
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(601018, 0, 21061, 12340),
(601018, 1, 22766, 12340),
(601018, 2, 9080, 0),
(601018, 3, 15087, 0);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 601018);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(601018, 1, 1897, 0, 0, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 601018);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(601018, 1, 35069, 100, 0, 1, 0, 1, 2, 'Ancient Skeletal Soldier - (ReferenceTable)');

DELETE FROM `pickpocketing_loot_template` WHERE (`Entry` = 601018);
INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(601018, 4599, 0, 4.7619, 0, 1, 0, 1, 1, 'Putridus Shadowstalker - Cured Ham Steak'),
(601018, 5430, 0, 2.381, 0, 1, 0, 1, 1, 'Putridus Shadowstalker - Intricate Bauble'),
(601018, 7909, 0, 2.381, 0, 1, 0, 1, 1, 'Putridus Shadowstalker - Aquamarine'),
(601018, 16884, 0, 4.7619, 0, 1, 0, 1, 1, 'Putridus Shadowstalker - Sturdy Junkbox');

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 601018;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 601018);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(601018, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 21061, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Tidecorrupt Stalker - On Reset - Cast \'Putrid Breath\''),
(601018, 0, 1, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 22766, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Tidecorrupt Stalker - On Reset - Cast \'Sneak\''),
(601018, 0, 2, 0, 0, 0, 100, 0, 1000, 5000, 7000, 10000, 0, 0, 11, 9080, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Tidecorrupt Stalker - In Combat - Cast \'Hamstring\''),
(601018, 0, 3, 0, 0, 0, 100, 0, 4000, 15000, 22500, 30000, 0, 0, 11, 15087, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Tidecorrupt Stalker - In Combat - Cast \'Evasion\'');



-- +------------------------------------------------+
-- |                                                |
-- |      Tidecorrupt Trickster (601019)            |
-- |                                                |
-- +------------------------------------------------+

DELETE FROM `creature_template` WHERE (`entry` = 601019);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(601019, 38169, 38721, 38722, 0, 0, 'Tidecorrupt Trickster', '', '', 0, 83, 83, 2, 90, 0, 1, 1.14286, 1, 1, 20, 1, 1, 0, 8.9, 2000, 2000, 1, 1, 2, 0, 2048, 0, 0, 0, 0, 0, 0, 6, 8, 601019, 601019, 0, 0, 0, 50, 100000, 'SmartAI', 0, 1, 6, 20, 1, 1, 0, 0, 1, 550189887, 0, 0, 'npc_blazing_skeleton', 11159);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 601019);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(601019, 0, 11338, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 601019) AND (`Index` IN (0, 1, 2, 3));
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(601019, 0, 21061, 12340),
(601019, 1, 8876, 12340),
(601019, 2, 13299, 0),
(601019, 3, 15657, 0);


DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 601019);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(601019, 1, 5281, 0, 0, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 601019);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(601019, 24727, 24727, 1.5, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - (ReferenceTable)'),
(601019, 26000, 26000, 3, 0, 1, 1, 1, 1, 'Darkfallen Deathblade - (ReferenceTable)'),
(601019, 26001, 26001, 3, 0, 1, 1, 1, 1, 'Darkfallen Deathblade - (ReferenceTable)'),
(601019, 26005, 26005, 1, 0, 1, 1, 1, 1, 'Darkfallen Deathblade - (ReferenceTable)'),
(601019, 26006, 26006, 1, 0, 1, 1, 1, 1, 'Darkfallen Deathblade - (ReferenceTable)'),
(601019, 26007, 26007, 1, 0, 1, 1, 1, 1, 'Darkfallen Deathblade - (ReferenceTable)'),
(601019, 26008, 26008, 1, 0, 1, 1, 1, 1, 'Darkfallen Deathblade - (ReferenceTable)'),
(601019, 26040, 26040, 28.6, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - (ReferenceTable)'),
(601019, 33358, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Thread-Bare Cloth Belt'),
(601019, 33360, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Thread-Bare Cloth Bracers'),
(601019, 33362, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Thread-Bare Cloth Pants'),
(601019, 33364, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Thread-Bare Cloth Vest'),
(601019, 33372, 0, 0.2, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Fur-Lined Armor'),
(601019, 33373, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Fur-Lined Belt'),
(601019, 33374, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Fur-Lined Boots'),
(601019, 33375, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Fur-Lined Bracers'),
(601019, 33376, 0, 0.2, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Fur-Lined Gloves'),
(601019, 33377, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Fur-Lined Pants'),
(601019, 33378, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Fur-Lined Shoulderpads'),
(601019, 33390, 0, 0.2, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Icy Mail Armor'),
(601019, 33391, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Icy Mail Belt'),
(601019, 33392, 0, 1.4, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Icy Mail Boots'),
(601019, 33393, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Icy Mail Bracers'),
(601019, 33394, 0, 0.2, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Icy Mail Gloves'),
(601019, 33395, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Icy Mail Pants'),
(601019, 33396, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Icy Mail Shoulderpads'),
(601019, 33404, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Ice-Bound Plate Belt'),
(601019, 33405, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Ice-Bound Plate Boots'),
(601019, 33406, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Ice-Bound Plate Bracers'),
(601019, 33407, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Ice-Bound Plate Chestpiece'),
(601019, 33409, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Ice-Bound Plate Pants'),
(601019, 33410, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Ice-Bound Plate Shoulderpads'),
(601019, 33423, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Rime-Covered Mace'),
(601019, 33425, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Ice-Pitted Blade'),
(601019, 33427, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Frost-Encrusted Rifle'),
(601019, 33428, 0, 0.2, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Dulled Shiv'),
(601019, 33429, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Ice Cleaver'),
(601019, 33430, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Abandoned Greatsword'),
(601019, 33431, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Icesmashing Mace'),
(601019, 33437, 0, 0.2, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Icy Mail Circlet'),
(601019, 33439, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Fur-Lined Leather Helmet'),
(601019, 33443, 0, 8.2, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Sour Goat Cheese'),
(601019, 33444, 0, 3.2, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Pungent Seal Whey'),
(601019, 33457, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Scroll of Agility VI'),
(601019, 33459, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Scroll of Protection VI'),
(601019, 33460, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Scroll of Spirit VI'),
(601019, 33462, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Scroll of Strength VI'),
(601019, 35973, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Mur\'ghoul Robe'),
(601019, 35974, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Mur\'ghoul Handwraps'),
(601019, 35976, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Mur\'ghoul Leggings'),
(601019, 35978, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Mur\'ghoul Wristwraps'),
(601019, 35979, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Foothold Belt'),
(601019, 35980, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Foothold Boots'),
(601019, 35983, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Foothold Hood'),
(601019, 35988, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Bristlepine Sandals'),
(601019, 35992, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Bristlepine Leggings'),
(601019, 36083, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Riplash Belt'),
(601019, 36089, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Riplash Pauldrons'),
(601019, 36090, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Riplash Wristguards'),
(601019, 36092, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Wildevar Boots'),
(601019, 36093, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Wildevar Tunic'),
(601019, 36096, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Wildevar Pants'),
(601019, 36097, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Wildevar Shoulderguards'),
(601019, 36101, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Caribou Vest'),
(601019, 36199, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Skom Helm'),
(601019, 36201, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Skom Spaulders'),
(601019, 36202, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Skom Bracers'),
(601019, 36208, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Nifflevar Legguards'),
(601019, 36210, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Nifflevar Bindings'),
(601019, 36213, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Orca Armor'),
(601019, 36215, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Orca Helmet'),
(601019, 36216, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Orca Legwraps'),
(601019, 36218, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Orca Bindings'),
(601019, 36316, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Wyrmskull Sabatons'),
(601019, 36317, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Wyrmskull Breastplate'),
(601019, 36319, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Wyrmskull Helm'),
(601019, 36321, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Wyrmskull Epaulets'),
(601019, 36322, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Wyrmskull Bracers'),
(601019, 36326, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Halgrind Gloves'),
(601019, 36327, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Halgrind Helmet'),
(601019, 36329, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Halgrind Epaulets'),
(601019, 36406, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Wayfarer\'s Cloak'),
(601019, 36419, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Glass Ring'),
(601019, 36461, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Demon-Skull Orb'),
(601019, 36490, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Tuskarr Cudgel'),
(601019, 36576, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Beaked Axe'),
(601019, 36587, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Taunka Axe'),
(601019, 36660, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Melted Wand'),
(601019, 36671, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Ominous Dagger'),
(601019, 36672, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Strange Dagger'),
(601019, 36674, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Old Tooth'),
(601019, 36685, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Placid Lightmace'),
(601019, 37091, 0, 0.2, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Scroll of Intellect VII'),
(601019, 37093, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Scroll of Stamina VII'),
(601019, 37097, 0, 0.3, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Scroll of Spirit VII'),
(601019, 43463, 0, 0.3, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Scroll of Agility VII'),
(601019, 43465, 0, 0.2, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Scroll of Strength VII'),
(601019, 43467, 0, 0.3, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Scroll of Protection VII'),
(601019, 43507, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Recipe: Tasty Cupcake'),
(601019, 43508, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Recipe: Last Week\'s Mammoth'),
(601019, 43509, 0, 0.2, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Recipe: Bad Clams'),
(601019, 43510, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Recipe: Haunted Herring'),
(601019, 43622, 0, 0.2, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Froststeel Lockbox'),
(601019, 43851, 0, 33.8, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Fur Clothing Scraps'),
(601019, 45912, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Deathblade - Book of Glyph Mastery');

DELETE FROM `pickpocketing_loot_template` WHERE (`Entry` = 601019);
INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(601019, 4599, 0, 7.2, 0, 1, 0, 1, 1, 'Putridus Trickster - Cured Ham Steak'),
(601019, 5430, 0, 8.8, 0, 1, 0, 1, 1, 'Putridus Trickster - Intricate Bauble'),
(601019, 7909, 0, 0.8, 0, 1, 0, 1, 1, 'Putridus Trickster - Aquamarine'),
(601019, 16884, 0, 10.4, 0, 1, 0, 1, 1, 'Putridus Trickster - Sturdy Junkbox');

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 601019;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 601019);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(601019, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 21061, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Tidecorrupt Trickster - On Reset - Cast \'Putrid Breath\''),
(601019, 0, 1, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 8876, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Tidecorrupt Trickster - On Reset - Cast \'Thrash\''),
(601019, 0, 2, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 13299, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Tidecorrupt Trickster - On Reset - Cast \'Poison Proc\''),
(601019, 0, 3, 0, 67, 0, 100, 0, 5000, 5000, 5000, 5000, 0, 5, 11, 15657, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Tidecorrupt Trickster - On Behind Target - Cast \'Backstab\'');



-- +------------------------------------------------+
-- |                                                |
-- |      Tidecorrupt Defiler (601020)              |
-- |                                                |
-- +------------------------------------------------+

DELETE FROM `creature_template` WHERE (`entry` = 601020);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(601020, 38059, 0, 0, 0, 0, 'Tidecorrupt Defiler', '', '', 0, 80, 80, 2, 90, 0, 1, 1.14286, 1, 1, 20, 1, 1, 0, 7.5, 2000, 2000, 1, 1, 1, 32832, 2048, 0, 0, 0, 0, 0, 0, 6, 0, 601020, 601020, 0, 0, 0, 4545, 9187, 'SmartAI', 0, 1, 25, 1, 1, 1, 0, 0, 1, 8388624, 0, 0, '', 11159);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 601020);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(601020, 0, 11345, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 601020) AND (`Index` IN (0, 1, 2));
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(601020, 0, 21061, 12340),
(601020, 1, 14873, 12340),
(601020, 2, 12540, 0);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 601020);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(601020, 1, 10617, 0, 0, 18019);


DELETE FROM `creature_loot_template` WHERE (`Entry` = 601020);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(601020, 1, 35069, 100, 0, 1, 0, 1, 2, 'Ancient Skeletal Soldier - (ReferenceTable)');

DELETE FROM `pickpocketing_loot_template` WHERE (`Entry` = 601020);
INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(601020, 4599, 0, 10.2564, 0, 1, 0, 1, 1, 'Putridus Satyr - Cured Ham Steak'),
(601020, 5430, 0, 5.1282, 0, 1, 0, 1, 1, 'Putridus Satyr - Intricate Bauble'),
(601020, 16884, 0, 11.5385, 0, 1, 0, 1, 1, 'Putridus Satyr - Sturdy Junkbox');


UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 601020;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 601020);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(601020, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 21061, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Tidecorrupt Defiler - On Reset - Cast \'Putrid Breath\''),
(601020, 0, 1, 0, 0, 0, 100, 0, 1000, 5000, 5000, 7000, 0, 0, 11, 14873, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Tidecorrupt Defiler - In Combat - Cast \'Sinister Strike\''),
(601020, 0, 2, 0, 0, 0, 100, 0, 4000, 15000, 22500, 30000, 0, 0, 11, 12540, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Tidecorrupt Defiler - In Combat - Cast \'Gouge\'');



-- +------------------------------------------------+
-- |                                                |
-- |      Twisted Oceanmane Spirit (601021)         |
-- |                                                |
-- +------------------------------------------------+

DELETE FROM `creature_template` WHERE (`entry` = 601021);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(601021, 0, 0, 0, 0, 0, 'Twisted Oceanmane Spirit', NULL, NULL, 0, 81, 83, 0, 90, 0, 2.8, 1, 1, 1, 20, 1, 1, 0, 7.5, 2000, 2000, 1, 1, 2, 0, 2048, 0, 0, 0, 0, 0, 0, 6, 0, 601021, 0, 0, 0, 0, 0, 0, 'SmartAI', 1, 1, 3, 1, 1, 1, 0, 118, 1, 8388624, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 601021);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(601021, 0, 14592, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 601021);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(601021, 0, 18376, 12340),
(601021, 1, 6819, 12340);



DELETE FROM `creature_loot_template` WHERE (`Entry` = 601021);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(601021, 3914, 0, 0.02, 0, 1, 0, 1, 1, 'Eldreth Spirit - Journeyman\'s Backpack'),
(601021, 4500, 0, 0.36, 0, 1, 0, 1, 1, 'Eldreth Spirit - Traveler\'s Backpack'),
(601021, 5759, 0, 0.2551, 0, 1, 0, 1, 1, 'Eldreth Spirit - Thorium Lockbox'),
(601021, 7909, 0, 0.1531, 0, 1, 0, 1, 1, 'Eldreth Spirit - Aquamarine'),
(601021, 7910, 0, 0.2551, 0, 1, 0, 1, 1, 'Eldreth Spirit - Star Ruby'),
(601021, 7972, 0, 7.2449, 0, 1, 0, 1, 1, 'Eldreth Spirit - Ichor of Undeath'),
(601021, 8766, 0, 2.398, 0, 1, 0, 1, 1, 'Eldreth Spirit - Morning Glory Dew'),
(601021, 8948, 0, 5.7143, 0, 1, 0, 1, 1, 'Eldreth Spirit - Dried King Bolete'),
(601021, 10305, 0, 0.46, 0, 1, 0, 1, 1, 'Eldreth Spirit - Scroll of Protection IV'),
(601021, 10306, 0, 0.58, 0, 1, 0, 1, 1, 'Eldreth Spirit - Scroll of Spirit IV'),
(601021, 10307, 0, 0.32, 0, 1, 0, 1, 1, 'Eldreth Spirit - Scroll of Stamina IV'),
(601021, 10308, 0, 0.36, 0, 1, 0, 1, 1, 'Eldreth Spirit - Scroll of Intellect IV'),
(601021, 10309, 0, 0.22, 0, 1, 0, 1, 1, 'Eldreth Spirit - Scroll of Agility IV'),
(601021, 10310, 0, 0.12, 0, 1, 0, 1, 1, 'Eldreth Spirit - Scroll of Strength IV'),
(601021, 12682, 0, 0.02, 0, 1, 0, 1, 1, 'Eldreth Spirit - Plans: Thorium Armor'),
(601021, 12683, 0, 0.02, 0, 1, 0, 1, 1, 'Eldreth Spirit - Plans: Thorium Belt'),
(601021, 12689, 0, 0.02, 0, 1, 0, 1, 1, 'Eldreth Spirit - Plans: Radiant Breastplate'),
(601021, 12691, 0, 0.02, 0, 1, 0, 1, 1, 'Eldreth Spirit - Plans: Wildthorn Mail'),
(601021, 12692, 0, 0.02, 0, 1, 0, 1, 1, 'Eldreth Spirit - Plans: Thorium Shield Spike'),
(601021, 12693, 0, 0.06, 0, 1, 0, 1, 1, 'Eldreth Spirit - Plans: Thorium Boots'),
(601021, 12694, 0, 0.02, 0, 1, 0, 1, 1, 'Eldreth Spirit - Plans: Thorium Helm'),
(601021, 12695, 0, 0.02, 0, 1, 0, 1, 1, 'Eldreth Spirit - Plans: Radiant Gloves'),
(601021, 12697, 0, 0.02, 0, 1, 0, 1, 1, 'Eldreth Spirit - Plans: Radiant Boots'),
(601021, 12704, 0, 0.02, 0, 1, 0, 1, 1, 'Eldreth Spirit - Plans: Thorium Leggings'),
(601021, 12711, 0, 0.02, 0, 1, 0, 1, 1, 'Eldreth Spirit - Plans: Whitesoul Helm'),
(601021, 12713, 0, 0.08, 0, 1, 0, 1, 1, 'Eldreth Spirit - Plans: Radiant Leggings'),
(601021, 12808, 0, 2.9592, 0, 1, 0, 1, 1, 'Eldreth Spirit - Essence of Undeath'),
(601021, 13444, 0, 1.36, 0, 1, 0, 1, 1, 'Eldreth Spirit - Major Mana Potion'),
(601021, 13446, 0, 2.1, 0, 1, 0, 1, 1, 'Eldreth Spirit - Major Healing Potion'),
(601021, 13490, 0, 0.02, 0, 1, 0, 1, 1, 'Eldreth Spirit - Recipe: Greater Stoneshield Potion'),
(601021, 13492, 0, 0.04, 0, 1, 0, 1, 1, 'Eldreth Spirit - Recipe: Purification Potion'),
(601021, 13493, 0, 0.02, 0, 1, 0, 1, 1, 'Eldreth Spirit - Recipe: Greater Arcane Elixir'),
(601021, 14047, 0, 32.0408, 0, 1, 0, 2, 4, 'Eldreth Spirit - Runecloth'),
(601021, 14466, 0, 0.02, 0, 1, 0, 1, 1, 'Eldreth Spirit - Pattern: Frostweave Tunic'),
(601021, 14474, 0, 0.02, 0, 1, 0, 1, 1, 'Eldreth Spirit - Pattern: Frostweave Gloves'),
(601021, 14478, 0, 0.02, 0, 1, 0, 1, 1, 'Eldreth Spirit - Pattern: Brightcloth Robe'),
(601021, 14479, 0, 0.02, 0, 1, 0, 1, 1, 'Eldreth Spirit - Pattern: Brightcloth Gloves'),
(601021, 14484, 0, 0.02, 0, 1, 0, 1, 1, 'Eldreth Spirit - Pattern: Brightcloth Cloak'),
(601021, 14489, 0, 0.02, 0, 1, 0, 1, 1, 'Eldreth Spirit - Pattern: Frostweave Pants'),
(601021, 14492, 0, 0.02, 0, 1, 0, 1, 1, 'Eldreth Spirit - Pattern: Felcloth Boots'),
(601021, 14494, 0, 0.04, 0, 1, 0, 1, 1, 'Eldreth Spirit - Pattern: Brightcloth Pants'),
(601021, 14496, 0, 0.04, 0, 1, 0, 1, 1, 'Eldreth Spirit - Pattern: Felcloth Hood'),
(601021, 14498, 0, 0.02, 0, 1, 0, 1, 1, 'Eldreth Spirit - Pattern: Runecloth Headband'),
(601021, 14499, 0, 0.12, 0, 1, 0, 1, 1, 'Eldreth Spirit - Pattern: Mooncloth Bag'),
(601021, 14504, 0, 0.02, 0, 1, 0, 1, 1, 'Eldreth Spirit - Pattern: Runecloth Shoulders'),
(601021, 14506, 0, 0.04, 0, 1, 0, 1, 1, 'Eldreth Spirit - Pattern: Felcloth Robe'),
(601021, 14508, 0, 0.04, 0, 1, 0, 1, 1, 'Eldreth Spirit - Pattern: Felcloth Shoulders'),
(601021, 15737, 0, 0.02, 0, 1, 0, 1, 1, 'Eldreth Spirit - Pattern: Chimeric Boots'),
(601021, 15743, 0, 0.02, 0, 1, 0, 1, 1, 'Eldreth Spirit - Pattern: Heavy Scorpid Belt'),
(601021, 15745, 0, 0.02, 0, 1, 0, 1, 1, 'Eldreth Spirit - Pattern: Runic Leather Belt'),
(601021, 15746, 0, 0.02, 0, 1, 0, 1, 1, 'Eldreth Spirit - Pattern: Chimeric Leggings'),
(601021, 15755, 0, 0.04, 0, 1, 0, 1, 1, 'Eldreth Spirit - Pattern: Chimeric Vest'),
(601021, 15757, 0, 0.04, 0, 1, 0, 1, 1, 'Eldreth Spirit - Pattern: Wicked Leather Pants'),
(601021, 15765, 0, 0.08, 0, 1, 0, 1, 1, 'Eldreth Spirit - Pattern: Runic Leather Pants'),
(601021, 16043, 0, 0.02, 0, 1, 0, 1, 1, 'Eldreth Spirit - Schematic: Thorium Rifle'),
(601021, 16051, 0, 0.04, 0, 1, 0, 1, 1, 'Eldreth Spirit - Schematic: Thorium Shells'),
(601021, 16215, 0, 0.02, 0, 1, 0, 1, 1, 'Eldreth Spirit - Formula: Enchant Boots - Greater Stamina'),
(601021, 16218, 0, 0.02, 0, 1, 0, 1, 1, 'Eldreth Spirit - Formula: Enchant Bracer - Superior Spirit'),
(601021, 16220, 0, 0.02, 0, 1, 0, 1, 1, 'Eldreth Spirit - Formula: Enchant Boots - Spirit'),
(601021, 16245, 0, 0.02, 0, 1, 0, 1, 1, 'Eldreth Spirit - Formula: Enchant Boots - Greater Agility'),
(601021, 17414, 0, 0.26, 0, 1, 0, 1, 1, 'Eldreth Spirit - Codex: Prayer of Fortitude II'),
(601021, 17683, 0, 0.3, 0, 1, 0, 1, 1, 'Eldreth Spirit - Book: Gift of the Wild II'),
(601021, 18332, 0, 0.3061, 0, 1, 0, 1, 1, 'Eldreth Spirit - Libram of Rapidity'),
(601021, 18333, 0, 0.6122, 0, 1, 0, 1, 1, 'Eldreth Spirit - Libram of Focus'),
(601021, 18334, 0, 0.3061, 0, 1, 0, 1, 1, 'Eldreth Spirit - Libram of Protection'),
(601021, 18335, 0, 0.1531, 0, 1, 0, 1, 1, 'Eldreth Spirit - Pristine Black Diamond'),
(601021, 18340, 0, 0.5102, 0, 1, 0, 1, 1, 'Eldreth Spirit - Eidolon Talisman'),
(601021, 18600, 0, 0.14, 0, 1, 0, 1, 1, 'Eldreth Spirit - Tome of Arcane Brilliance'),
(601021, 19233, 0, 0.02, 0, 1, 0, 1, 1, 'Eldreth Spirit - Five of Beasts'),
(601021, 19234, 0, 0.051, 0, 1, 0, 1, 1, 'Eldreth Spirit - Six of Beasts'),
(601021, 19235, 0, 0.02, 0, 1, 0, 1, 1, 'Eldreth Spirit - Seven of Beasts'),
(601021, 19236, 0, 0.02, 0, 1, 0, 1, 1, 'Eldreth Spirit - Eight of Beasts'),
(601021, 19262, 0, 0.051, 0, 1, 0, 1, 1, 'Eldreth Spirit - Five of Warlords'),
(601021, 19263, 0, 0.02, 0, 1, 0, 1, 1, 'Eldreth Spirit - Six of Warlords'),
(601021, 19264, 0, 0.102, 0, 1, 0, 1, 1, 'Eldreth Spirit - Seven of Warlords'),
(601021, 19265, 0, 0.04, 0, 1, 0, 1, 1, 'Eldreth Spirit - Eight of Warlords'),
(601021, 19272, 0, 0.04, 0, 1, 0, 1, 1, 'Eldreth Spirit - Five of Elementals'),
(601021, 19273, 0, 0.02, 0, 1, 0, 1, 1, 'Eldreth Spirit - Six of Elementals'),
(601021, 19274, 0, 0.02, 0, 1, 0, 1, 1, 'Eldreth Spirit - Seven of Elementals'),
(601021, 19275, 0, 0.04, 0, 1, 0, 1, 1, 'Eldreth Spirit - Eight of Elementals'),
(601021, 19281, 0, 0.02, 0, 1, 0, 1, 1, 'Eldreth Spirit - Five of Portals'),
(601021, 19282, 0, 0.051, 0, 1, 0, 1, 1, 'Eldreth Spirit - Six of Portals'),
(601021, 19283, 0, 0.02, 0, 1, 0, 1, 1, 'Eldreth Spirit - Seven of Portals'),
(601021, 19284, 0, 0.02, 0, 1, 0, 1, 1, 'Eldreth Spirit - Eight of Portals'),
(601021, 21211, 0, 100, 1, 1, 0, 1, 1, 'Eldreth Spirit - Pouch of Reindeer Dust'),
(601021, 22224, 0, 20, 1, 1, 0, 1, 1, 'Eldreth Spirit - Jeering Spectre\'s Essence'),
(601021, 22393, 0, 0.02, 0, 1, 0, 1, 1, 'Eldreth Spirit - Codex: Prayer of Shadow Protection'),
(601021, 22890, 0, 0.02, 0, 1, 0, 1, 1, 'Eldreth Spirit - Tome of Frost Ward V'),
(601021, 24016, 24016, 1, 0, 1, 1, 1, 1, 'Eldreth Spirit - (ReferenceTable)'),
(601021, 24018, 24018, 1, 0, 1, 1, 1, 1, 'Eldreth Spirit - (ReferenceTable)'),
(601021, 24024, 24024, 5, 0, 1, 1, 1, 1, 'Eldreth Spirit - (ReferenceTable)'),
(601021, 24031, 24031, 1, 0, 1, 1, 1, 1, 'Eldreth Spirit - (ReferenceTable)'),
(601021, 24033, 24033, 1, 0, 1, 1, 1, 1, 'Eldreth Spirit - (ReferenceTable)'),
(601021, 24036, 24036, 5, 0, 1, 1, 1, 1, 'Eldreth Spirit - (ReferenceTable)');

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 601021;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 601021);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(601021, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 6822, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Corrupted Spirit - On Reset - Cast \'Corrupted Stamina Passive\''),
(601021, 0, 1, 0, 0, 0, 100, 0, 3000, 12000, 14000, 22000, 0, 0, 11, 18376, 0, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0, 'Corrupted Spirit - In Combat - Cast \'Corruption\''),
(601021, 0, 2, 0, 1, 0, 100, 0, 0, 0, 5000, 5000, 0, 0, 49, 0, 0, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0, 0, 'Corrupted Spirit - Out of Combat - Start Attacking');



-- +------------------------------------------------+
-- |                                                |
-- |      Zharkalis the Whispering (601022)         |
-- |                                                |
-- +------------------------------------------------+

DELETE FROM `creature_template` WHERE (`entry` = 601022);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(601022, 29955, 0, 0, 0, 0, 'Zharkalis', 'The Whispering', NULL, 0, 83, 83, 2, 90, 0, 1, 1.14286, 1, 1, 20, 1, 3, 0, 35, 2000, 2000, 1, 1, 2, 32832, 2048, 8, 0, 0, 0, 0, 0, 6, 76, 601022, 601022, 0, 0, 0, 733851, 896929, 'SmartAI', 0, 1, 60, 100, 1, 1, 0, 0, 1, 1019953019, 0, 3221749761, '0', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 601022);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(601022, 0, 12334, 1, 1, 12340);

DELETE FROM `creature_template_resistance` WHERE (`CreatureID` = 601022);
INSERT INTO `creature_template_resistance` (`CreatureID`, `School`, `Resistance`, `VerifiedBuild`) VALUES
(601022, 6, 188, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 601022);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(601022, 0, 42459, 12340),
(601022, 1, 16100, 12340),
(601022, 2, 21390, 0),
(601022, 3, 21655, 0),
(601022, 4, 7964, 0);


DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 601022);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(601022, 1, 10616, 10616, 14118, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 601022);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(601022, 1, 34103, 100, 0, 1, 0, 1, 2, 'Gothik the Harvester - (ReferenceTable)'),
(601022, 45912, 0, 0.1, 0, 1, 0, 1, 1, 'Gothik the Harvester - Book of Glyph Mastery'),
(601022, 47241, 0, 100, 0, 1, 0, 1, 1, 'Gothik the Harvester - Emblem of Triumph');


DELETE FROM `pickpocketing_loot_template` WHERE (`Entry` = 601022);
INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(601022, 4599, 0, 18.1818, 0, 1, 0, 1, 1, 'Lord Vyletongue - Cured Ham Steak'),
(601022, 5430, 0, 18.1818, 0, 1, 0, 1, 1, 'Lord Vyletongue - Intricate Bauble'),
(601022, 7910, 0, 9.0909, 0, 1, 0, 1, 1, 'Lord Vyletongue - Star Ruby'),
(601022, 16884, 0, 18.1818, 0, 1, 0, 1, 1, 'Lord Vyletongue - Sturdy Junkbox');

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 601022;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 601022);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(601022, 0, 0, 0, 25, 0, 100, 257, 0, 0, 0, 0, 0, 0, 11, 42459, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Zharkalis - On Reset - Cast \'Dual Wield\' (No Repeat)'),
(601022, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 16100, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Zharkalis - In Combat - Cast \'Shoot\''),
(601022, 0, 2, 0, 0, 0, 100, 0, 3000, 7000, 7000, 11000, 0, 0, 11, 21390, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Zharkalis - In Combat - Cast \'Multi-Shot\''),
(601022, 0, 3, 0, 0, 0, 100, 0, 15000, 15000, 15000, 15000, 0, 0, 11, 21655, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Zharkalis - In Combat - Cast \'Blink\''),
(601022, 0, 4, 0, 0, 0, 100, 0, 13000, 13000, 15000, 15000, 0, 0, 11, 7964, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Zharkalis - In Combat - Cast \'Smoke Bomb\'');



-- +------------------------------------------------+
-- |                                                |
-- |      Corrupted Plant Horror (601023)           |
-- |                                                |
-- +------------------------------------------------+

DELETE FROM `creature_template` WHERE (`entry` = 601023);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(601023, 21558, 0, 0, 0, 0, 'Corrupted Plant Horror', NULL, NULL, 0, 82, 82, 0, 90, 0, 1.6, 1.42857, 1, 1, 20, 1, 1, 0, 6, 2000, 2000, 1, 1, 2, 0, 2048, 0, 0, 0, 0, 0, 0, 7, 8, 601023, 0, 0, 0, 0, 4157, 5433, 'SmartAI', 1, 1, 15.75, 15, 1, 1, 0, 150, 1, 650854271, 0, 1073741824, 'boss_high_botanist_freywinn', 12340);


DELETE FROM `creature_template_model` WHERE (`CreatureID` = 601023);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(601023, 0, 12389, 1, 1, 12340);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 601023);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(601023, 22903, 0, 0.2, 0, 1, 0, 1, 1, 'High Botanist Freywinn - Recipe: Insane Strength Potion'),
(601023, 23617, 0, 10, 0, 1, 0, 1, 1, 'High Botanist Freywinn - Plans: Earthpeace Breastplate'),
(601023, 23884, 0, 0.2, 0, 1, 0, 1, 1, 'High Botanist Freywinn - Schematic: Mana Potion Injector'),
(601023, 25022, 25022, 100, 0, 1, 1, 1, 1, 'High Botanist Freywinn - (ReferenceTable)'),
(601023, 31744, 0, 100, 1, 1, 0, 1, 1, 'High Botanist Freywinn - Botanist\'s Field Guide');


DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 601023) AND (`Index` IN (0, 1, 2, 3, 4, 5));
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(601023, 0, 40504, 0),
(601023, 1, 37823, 0),
(601023, 2, 21749, 0),
(601023, 3, 16448, 0),
(601023, 4, 14532, 0),
(601023, 5, 21749, 0);





UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 601023;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 601023);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(601023, 0, 0, 0, 4, 0, 100, 1, 0, 0, 0, 0, 0, 0, 11, 37823, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Corrupted Plant Horror - On Aggro - Cast \'Entangling Roots\' (No Repeat)'),
(601023, 0, 1, 0, 0, 0, 100, 0, 4000, 9000, 9000, 13000, 0, 0, 11, 40504, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Corrupted Plant Horror - In Combat - Cast \'Cleave\''),
(601023, 0, 2, 0, 0, 0, 100, 0, 0, 10000, 15000, 0, 0, 0, 11, 21749, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Corrupted Plant Horror - In Combat - Cast \'Thorn Volley\''),
(601023, 0, 3, 0, 0, 0, 100, 0, 0, 18000, 26000, 0, 0, 0, 11, 16448, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Corrupted Plant Horror - In Combat - Cast \'Black Rot\''),
(601023, 0, 4, 0, 0, 0, 100, 0, 0, 14000, 14000, 0, 0, 0, 11, 14532, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Corrupted Plant Horror - In Combat - Cast \'Creeper Venom\''),
(601023, 0, 5, 0, 2, 0, 100, 0, 10, 40, 5000, 10000, 0, 0, 11, 21749, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Corrupted Plant Horror - Between 10-40% Health - Cast \'Thorn Volley\''),
(601023, 0, 6, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 70594, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Corrupted Plant Horror - On Just Died - Cast \'Deathchill Bolt\'');
