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

DELETE FROM `creature` WHERE (`id1` = 601018);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9008144, 601018, 0, 0, 1, 0, 0, 1, 1, 1, -10651.3, 2160.2, 1.27368, 3.90887, 300, 0, 0, 65191, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9008145, 601018, 0, 0, 1, 0, 0, 1, 1, 1, -10672.4, 2153.8, 2.64595, 0.38133, 300, 0, 0, 63504, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9008149, 601018, 0, 0, 1, 0, 0, 1, 1, 1, -10672.9, 2128.28, -5.97042, 3.72579, 300, 0, 0, 63504, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9008152, 601018, 0, 0, 1, 0, 0, 1, 1, 1, -10695.4, 2090.52, -9.20651, 0.136992, 300, 0, 0, 63504, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9008157, 601018, 0, 0, 1, 0, 0, 1, 1, 1, -10656.2, 2054.4, -17.661, 1.38907, 300, 0, 0, 66904, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9008163, 601018, 0, 0, 1, 0, 0, 1, 1, 1, -10598.9, 2148.19, -3.04586, 4.33949, 300, 0, 0, 65191, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9008164, 601018, 0, 0, 1, 0, 0, 1, 1, 1, -10576.1, 2129.33, -10.0774, 3.32876, 300, 0, 0, 63504, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9008166, 601018, 0, 0, 1, 0, 0, 1, 1, 1, -10537.7, 2058.38, -35.6219, 0.616856, 300, 0, 0, 66904, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9008167, 601018, 0, 0, 1, 0, 0, 1, 1, 1, -10529.2, 2067.29, -37.1913, 4.13905, 300, 0, 0, 63504, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9008172, 601018, 0, 0, 1, 0, 0, 1, 1, 1, -10529.9, 2106.81, -43.5749, 2.3646, 300, 0, 0, 63504, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9008173, 601018, 0, 0, 1, 0, 0, 1, 1, 1, -10523.1, 2120.65, -37.8345, 2.17501, 300, 0, 0, 61924, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9008174, 601018, 0, 0, 1, 0, 0, 1, 1, 1, -10499.3, 2133.68, -34.6326, 2.61562, 300, 0, 0, 65191, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9008175, 601018, 0, 0, 1, 0, 0, 1, 1, 1, -10516.6, 2170.46, -27.4177, 0.45813, 300, 0, 0, 61924, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9008176, 601018, 0, 0, 1, 0, 0, 1, 1, 1, -10502.2, 2173.4, -29.0867, 3.64771, 300, 0, 0, 66904, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9008177, 601018, 0, 0, 1, 0, 0, 1, 1, 1, -10528.6, 2168.97, -26.8856, 1.75977, 300, 0, 0, 66904, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9008178, 601018, 0, 0, 1, 0, 0, 1, 1, 1, -10530, 2190.24, -26.2811, 3.3059, 300, 0, 0, 66904, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9008179, 601018, 0, 0, 1, 0, 0, 1, 1, 1, -10538.2, 2194.13, -25.4815, 4.08565, 300, 0, 0, 65191, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9008181, 601018, 0, 0, 1, 0, 0, 1, 1, 1, -10636.9, 2218.34, -11.1411, 5.18033, 300, 0, 0, 66904, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9008182, 601018, 0, 0, 1, 0, 0, 1, 1, 1, -10625.7, 2201.44, -11.2424, 2.18286, 300, 0, 0, 65191, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9008187, 601018, 0, 0, 1, 0, 0, 1, 1, 1, -10558.9, 2187.34, -24.0277, 0.839831, 300, 0, 0, 61924, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9008188, 601018, 0, 0, 1, 0, 0, 1, 1, 1, -10553.2, 2200.04, -24.4482, 4.50489, 300, 0, 0, 63504, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9008189, 601018, 0, 0, 1, 0, 0, 1, 1, 1, -10541.4, 2173.4, -25.5346, 1.01623, 300, 0, 0, 63504, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9008190, 601018, 0, 0, 1, 0, 0, 1, 1, 1, -10519.3, 2189.1, -26.9834, 4.78795, 300, 0, 0, 63504, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9008200, 601018, 0, 0, 1, 0, 0, 1, 1, 1, -10596.7, 2196.96, -50.9606, 4.64327, 300, 13, 0, 63504, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9008201, 601018, 0, 0, 1, 0, 0, 1, 1, 1, -10645.3, 2137.21, -48.1358, 5.93824, 300, 0, 0, 65191, 0, 0, 0, 0, 0, '', NULL, 0, NULL);


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

DELETE FROM `creature` WHERE (`id1` = 601019);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9008148, 601019, 0, 0, 1, 0, 0, 1, 1, 1, -10657.3, 2150.36, 2.97202, 3.47093, 300, 0, 0, 93909, 85240, 0, 0, 0, 0, '', NULL, 0, NULL),
(9008150, 601019, 0, 0, 1, 0, 0, 1, 1, 1, -10680.3, 2113.15, -8.66984, 4.29992, 300, 10, 0, 93909, 85240, 1, 0, 0, 0, '', NULL, 0, NULL),
(9008151, 601019, 0, 0, 1, 0, 0, 1, 1, 1, -10687.5, 2091.44, -10.2133, 0.975484, 300, 4, 0, 93909, 85240, 1, 0, 0, 0, '', NULL, 0, NULL),
(9008155, 601019, 0, 0, 1, 0, 0, 1, 1, 1, -10657.8, 2062.87, -17.8454, 0.155365, 300, 5, 0, 93909, 85240, 1, 0, 0, 0, '', NULL, 0, NULL),
(9008162, 601019, 0, 0, 1, 0, 0, 1, 1, 1, -10602.8, 2124.74, -5.89249, 2.38212, 300, 7, 0, 93909, 85240, 1, 0, 0, 0, '', NULL, 0, NULL),
(9008184, 601019, 0, 0, 1, 0, 0, 1, 1, 1, -10616.2, 2213.83, -11.3868, 0.356497, 300, 6, 0, 93909, 85240, 1, 0, 0, 0, '', NULL, 0, NULL),
(9008185, 601019, 0, 0, 1, 0, 0, 1, 1, 1, -10594.8, 2218.38, -14.0383, 5.89465, 300, 7, 0, 93909, 85240, 1, 0, 0, 0, '', NULL, 0, NULL),
(9008192, 601019, 0, 0, 1, 0, 0, 1, 1, 1, -10507.8, 2183.37, -27.9923, 4.22568, 300, 4, 0, 93909, 85240, 1, 0, 0, 0, '', NULL, 0, NULL),
(9008193, 601019, 0, 0, 1, 0, 0, 1, 1, 1, -10521.3, 2134.84, -33.9084, 0.316281, 300, 0, 0, 93909, 85240, 0, 0, 0, 0, '', NULL, 0, NULL),
(9008198, 601019, 0, 0, 1, 0, 0, 1, 1, 1, -10608.7, 2163.89, -50.2707, 1.51378, 300, 7, 0, 93909, 85240, 1, 0, 0, 0, '', NULL, 0, NULL),
(9008199, 601019, 0, 0, 1, 0, 0, 1, 1, 1, -10623.3, 2183.41, -49.344, 1.69536, 300, 5, 0, 93909, 85240, 1, 0, 0, 0, '', NULL, 0, NULL),
(9008203, 601019, 0, 0, 1, 0, 0, 1, 1, 1, -10659.4, 2119.9, -47.4475, 0.266563, 300, 0, 0, 93909, 85240, 0, 0, 0, 0, '', NULL, 0, NULL),
(9008210, 601019, 0, 0, 1, 0, 0, 1, 1, 1, -10535.3, 2092.96, -41.857, 2.34544, 300, 5, 0, 93909, 85240, 1, 0, 0, 0, '', NULL, 0, NULL),
(9008213, 601019, 0, 0, 1, 0, 0, 1, 1, 1, -10556.3, 2125.63, -42.6755, 2.80041, 300, 0, 0, 93909, 85240, 0, 0, 0, 0, '', NULL, 0, NULL);


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

DELETE FROM `creature` WHERE (`id1` = 601020);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9008146, 601020, 0, 0, 1, 0, 0, 1, 1, 1, -10667.1, 2144.5, 1.61684, 0.400023, 300, 0, 0, 378000, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9008156, 601020, 0, 0, 1, 0, 0, 1, 1, 1, -10637.5, 2066.38, -16.9326, 2.78566, 300, 4, 0, 378000, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9008158, 601020, 0, 0, 1, 0, 0, 1, 1, 1, -10605.8, 2113.89, -8.70323, 3.67206, 300, 6, 0, 378000, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9008161, 601020, 0, 0, 1, 0, 0, 1, 1, 1, -10594, 2133.47, -5.72594, 3.53438, 300, 10, 0, 378000, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9008183, 601020, 0, 0, 1, 0, 0, 1, 1, 1, -10633.3, 2213.06, -10.8396, 3.92794, 300, 10, 0, 378000, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9008186, 601020, 0, 0, 1, 0, 0, 1, 1, 1, -10573.9, 2200.18, -21.8095, 5.96275, 300, 5, 0, 378000, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9008191, 601020, 0, 0, 1, 0, 0, 1, 1, 1, -10508.6, 2172.04, -28.2819, 1.88127, 300, 0, 0, 378000, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9008194, 601020, 0, 0, 1, 0, 0, 1, 1, 1, -10512, 2131.91, -34.2213, 2.62614, 300, 0, 0, 378000, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9008195, 601020, 0, 0, 1, 0, 0, 1, 1, 1, -10519.7, 2144.06, -31.9233, 4.51274, 300, 0, 0, 378000, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9008197, 601020, 0, 0, 1, 0, 0, 1, 1, 1, -10589.6, 2177.71, -49.5789, 4.50442, 300, 0, 0, 378000, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9008204, 601020, 0, 0, 1, 0, 0, 1, 1, 1, -10632.9, 2118.12, -48.8028, 2.4883, 300, 0, 0, 378000, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9008205, 601020, 0, 0, 1, 0, 0, 1, 1, 1, -10564.8, 2132.97, -41.7027, 5.44422, 300, 0, 0, 378000, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9008206, 601020, 0, 0, 1, 0, 0, 1, 1, 1, -10567.1, 2123.03, -41.8477, 5.73796, 300, 0, 0, 378000, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9008211, 601020, 0, 0, 1, 0, 0, 1, 1, 1, -10551.3, 2106.04, -43.6269, 4.0503, 300, 3, 0, 378000, 0, 1, 0, 0, 0, '', NULL, 0, NULL);


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

DELETE FROM `creature` WHERE (`id1` = 601021);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9008153, 601021, 0, 0, 1, 0, 0, 1, 1, 0, -10680.1, 2064.02, -14.6846, 1.49738, 300, 5, 0, 16250, 4169, 1, 0, 0, 0, '', NULL, 0, NULL),
(9008154, 601021, 0, 0, 1, 0, 0, 1, 1, 0, -10677.1, 2074.3, -15.0739, 3.66288, 300, 6, 0, 15811, 4078, 1, 0, 0, 0, '', NULL, 0, NULL),
(9008159, 601021, 0, 0, 1, 0, 0, 1, 1, 0, -10617.3, 2125.58, -4.89878, 5.7668, 300, 6, 0, 16696, 4262, 1, 0, 0, 0, '', NULL, 0, NULL),
(9008160, 601021, 0, 0, 1, 0, 0, 1, 1, 0, -10616.7, 2136.9, -2.27033, 4.77476, 300, 4, 0, 16250, 4169, 1, 0, 0, 0, '', NULL, 0, NULL),
(9008165, 601021, 0, 0, 1, 0, 0, 1, 1, 0, -10604.9, 2139.42, -2.33226, 5.40363, 300, 3, 0, 16250, 4169, 1, 0, 0, 0, '', NULL, 0, NULL),
(9008168, 601021, 0, 0, 1, 0, 0, 1, 1, 0, -10497.3, 2054.71, -41.832, 0.0949612, 300, 10, 0, 15811, 4078, 1, 0, 0, 0, '', NULL, 0, NULL),
(9008169, 601021, 0, 0, 1, 0, 0, 1, 1, 0, -10508.1, 2045.51, -40.9169, 3.83463, 300, 10, 0, 15811, 4078, 1, 0, 0, 0, '', NULL, 0, NULL),
(9008170, 601021, 0, 0, 1, 0, 0, 1, 1, 0, -10514.5, 2055.99, -40.3694, 1.84789, 300, 6, 0, 16696, 4262, 1, 0, 0, 0, '', NULL, 0, NULL),
(9008171, 601021, 0, 0, 1, 0, 0, 1, 1, 0, -10512.7, 2067.42, -40.3497, 6.20724, 300, 4, 0, 16250, 4169, 1, 0, 0, 0, '', NULL, 0, NULL),
(9008180, 601021, 0, 0, 1, 0, 0, 1, 1, 0, -10532.5, 2194.03, -25.9419, 3.02952, 300, 5, 0, 16250, 4169, 1, 0, 0, 0, '', NULL, 0, NULL),
(9008207, 601021, 0, 0, 1, 0, 0, 1, 1, 0, -10548.8, 2132.37, -43.1106, 2.43206, 300, 4, 0, 15811, 4078, 1, 0, 0, 0, '', NULL, 0, NULL),
(9008208, 601021, 0, 0, 1, 0, 0, 1, 1, 0, -10561.6, 2120.04, -42.387, 5.07972, 300, 3, 0, 16250, 4169, 1, 0, 0, 0, '', NULL, 0, NULL),
(9008209, 601021, 0, 0, 1, 0, 0, 1, 1, 0, -10536.1, 2119.65, -39.8253, 4.07967, 300, 5, 0, 16696, 4262, 1, 0, 0, 0, '', NULL, 0, NULL);


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

DELETE FROM `creature` WHERE (`id1` = 601022);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9008202, 601022, 0, 0, 1, 0, 0, 1, 1, 1, -10641.8, 2111.69, -48.8494, 1.67501, 300, 4, 0, 782580, 426200, 1, 0, 0, 0, '', NULL, 0, NULL);


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

DELETE FROM `creature` WHERE (`id1` = 601023);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9008196, 601023, 0, 0, 1, 0, 0, 1, 1, 0, -10607.3, 2181.59, -51.2815, 5.29083, 300, 0, 0, 85315, 62535, 0, 0, 0, 0, '', NULL, 0, NULL);

