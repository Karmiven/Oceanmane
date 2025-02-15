-- **********************
-- * JOHN THE FISHERMAN *
-- *     (601005)       *
--***********************
DELETE FROM `creature_template` WHERE (`entry` = 601005);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(601005, 3285, 0, 0, 0, 0, 'John the Fisherman', 'Pro Angler', 'Buy', 0, 80, 80, 0, 35, 128, 1, 1.14286, 1, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 0);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 601005);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(601005, 0, 3285, 1, 0, 0);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 601005);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(601005, 1, 45991, 34484, 0, 0);

DELETE FROM `npc_vendor` WHERE (`entry` = 601005);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(601005, 0, 2763, 0, 0, 0, 0),
(601005, 0, 3342, 0, 0, 0, 0),
(601005, 0, 3563, 0, 0, 0, 0),
(601005, 0, 4509, 0, 0, 0, 0),
(601005, 0, 5996, 0, 0, 0, 0),
(601005, 0, 6256, 0, 0, 0, 0),
(601005, 0, 6263, 0, 0, 0, 0),
(601005, 0, 6365, 0, 0, 0, 0),
(601005, 0, 6366, 0, 0, 0, 0),
(601005, 0, 6367, 0, 0, 0, 0),
(601005, 0, 6372, 0, 0, 0, 0),
(601005, 0, 6529, 0, 0, 0, 0),
(601005, 0, 6530, 0, 0, 0, 0),
(601005, 0, 6532, 0, 0, 0, 0),
(601005, 0, 6533, 0, 0, 0, 0),
(601005, 0, 6811, 0, 0, 0, 0),
(601005, 0, 7052, 0, 0, 0, 0),
(601005, 0, 7307, 0, 0, 0, 0),
(601005, 0, 7996, 0, 0, 0, 0),
(601005, 0, 8827, 0, 0, 0, 0),
(601005, 0, 12225, 0, 0, 0, 0),
(601005, 0, 16082, 0, 0, 0, 0),
(601005, 0, 16083, 0, 0, 0, 0),
(601005, 0, 18229, 0, 0, 0, 0),
(601005, 0, 18294, 0, 0, 0, 0),
(601005, 0, 19022, 0, 0, 0, 0),
(601005, 0, 19969, 0, 0, 0, 0),
(601005, 0, 19970, 0, 0, 0, 0),
(601005, 0, 19971, 0, 0, 0, 0),
(601005, 0, 19972, 0, 0, 0, 0),
(601005, 0, 19979, 0, 0, 0, 0),
(601005, 0, 25978, 0, 0, 0, 0),
(601005, 0, 27532, 0, 0, 0, 0),
(601005, 0, 33223, 0, 0, 0, 0),
(601005, 0, 33820, 0, 0, 0, 0),
(601005, 0, 34832, 0, 0, 0, 0),
(601005, 0, 34836, 0, 0, 0, 0),
(601005, 0, 34861, 0, 0, 0, 0),
(601005, 0, 38802, 0, 0, 0, 0),
(601005, 0, 44050, 0, 0, 0, 0),
(601005, 0, 45858, 0, 0, 0, 0),
(601005, 0, 45991, 0, 0, 0, 0),
(601005, 0, 45992, 0, 0, 0, 0),
(601005, 0, 46006, 0, 0, 0, 0),
(601005, 0, 50287, 0, 0, 0, 0),
(601005, 0, 50406, 0, 0, 0, 0),
(601005, 0, 50816, 0, 0, 0, 0);

DELETE FROM `creature` WHERE (`id1` = 601005);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9008138, 601005, 0, 0, 1, 0, 0, 1, 1, 1, -10748.2, 2519.04, 0.740228, 1.52697, 300, 0, 0, 6410, 0, 2, 0, 0, 0, '', NULL, 0, NULL);

DELETE FROM `creature_text` WHERE (`CreatureID` = 601005);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(601005, 0, 0, 'Ahh.. the sea. Once it casts its spell, it holds one in its net of wonder forever.', 12, 7, 100, 1, 0, 0, 0, 0, 'John the Fisherman - Sea Quote'),
(601005, 1, 0, 'Many men go fishing all of their lives without knowing that it is not fish they are after.', 12, 7, 100, 1, 0, 0, 0, 0, 'John the Fisherman - Fishing Wisdom'),
(601005, 2, 0, 'I wonder if they ever found that hidden treasure buried on the Isle of Dread?', 12, 7, 100, 1, 0, 0, 0, 0, 'John the Fisherman - Isle of Dread');


-- *************************
-- * Cutie Pig (For Alice) *
-- *   (601031)            *
--**************************
DELETE FROM `creature_template` WHERE (`entry` = 601031);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(601031, 0, 0, 0, 0, 0, 'Cutie Pig', 'For Alice', '', 0, 1, 1, 0, 190, 0, 1, 1.14286, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 0);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 601031);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(601031, 0, 16257, 1, 0, 0);

DELETE FROM `creature` WHERE (`id1` = 601031);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9008136, 601031, 0, 0, 1, 0, 0, 1, 1, 0, -10695.7, 2427.17, 7.73167, 5.1701, 300, 25, 0, 42, 0, 1, 0, 0, 0, '', NULL, 0, NULL);


-- ***********************
-- * Cowlie (The Milker) *
-- *     (601030)        *
--************************
DELETE FROM `creature_template` WHERE (`entry` = 601030);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(601030, 0, 0, 0, 0, 0, 'Cowlie', 'The Milker', '', 0, 1, 1, 0, 190, 0, 1, 1.14286, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 0);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 601030);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(601030, 0, 1060, 1, 0, 0);

DELETE FROM `creature` WHERE (`id1` = 601030);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(601030, 601030, 0, 0, 1, 0, 0, 1, 1, 0, -10740.6, 2430.06, 6.73322, 6.2533, 300, 25, 0, 42, 0, 1, 0, 0, 0, '', 0, 0, NULL);


-- *******************************************
-- * Khorran Ironsong (Blacksmith Trainer) *
-- *     (601006)                            *
--********************************************
DELETE FROM `creature_template` WHERE (`entry` = 601006);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(601006, 0, 0, 0, 0, 0, 'Khorran Ironsong', 'Blacksmithing Trainer', NULL, 1017, 35, 35, 0, 35, 83, 1, 1.14286, 1, 1, 18, 1, 0, 0, 1, 2000, 2000, 1, 1, 1, 4608, 2048, 0, 0, 2, 0, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.1, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 601006);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(601006, 0, 2090, 1, 1, 12340);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 601006);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(601006, 1, 1903, 0, 0, 18019);

DELETE FROM `npc_trainer` WHERE (`ID` = 601006);
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`, `ReqSpell`) VALUES
(601006, -201006, 0, 0, 0, 0, 0),
(601006, -201005, 0, 0, 0, 0, 0),
(601006, -201004, 0, 0, 0, 0, 0);


DELETE FROM `creature` WHERE (`id1` = 601006);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001776, 601006, 0, 0, 1, 0, 0, 1, 1, 1, -10714.4, 2419.36, 7.60694, 2.4524, 300, 0, 0, 1677, 0, 0, 0, 0, 0, '', NULL, 0, NULL);


-- *******************************************
-- * Talu Whisperreed (Herbalist)            *
-- *     (601007)                            *
--********************************************
DELETE FROM `creature_template` WHERE (`entry` = 601007);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(601007, 0, 0, 0, 0, 0, 'Talu Whisperreed', 'Herbalism Trainer', NULL, 7691, 35, 35, 0, 35, 83, 1, 1.14286, 1, 1, 18, 1, 0, 0, 1, 2000, 2000, 1, 1, 1, 512, 2048, 0, 0, 2, 0, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.1, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 601007);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(601007, 0, 2091, 1, 1, 12340);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 601007);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(601007, 1, 1907, 0, 0, 18019);

DELETE FROM `npc_trainer` WHERE (`ID` = 601007);
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`, `ReqSpell`) VALUES
(601007, -201020, 0, 0, 0, 0, 0),
(601007, -201019, 0, 0, 0, 0, 0),
(601007, -201018, 0, 0, 0, 0, 0);


DELETE FROM `creature` WHERE (`id1` = 601007);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001790, 601007, 0, 0, 1, 0, 0, 1, 1, 1, -10713.1, 2486.85, 7.92167, 4.74379, 300, 0, 0, 1677, 0, 0, 0, 0, 0, '', NULL, 0, NULL);


-- ***********************************************
-- * Kautha Windstring (Bowyer & Fetching Goods)  *
-- *     (601008)                                *
--************************************************
DELETE FROM `creature_template` WHERE (`entry` = 601008);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(601008, 0, 0, 0, 0, 0, 'Kautha Windstring', 'Bowyer & Fletching Goods', NULL, 0, 30, 30, 0, 35, 4480, 1, 1.14286, 1, 1, 18, 1, 0, 0, 1, 2000, 2000, 1, 1, 1, 512, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.05, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 601008);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(601008, 0, 2114, 1, 1, 12340);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 601008);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(601008, 1, 0, 0, 5259, 18019);

DELETE FROM `npc_vendor` WHERE (`entry` = 601008);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(601008, 0, 2512, 0, 0, 0, 0),
(601008, 0, 2515, 0, 0, 0, 0),
(601008, 0, 3026, 0, 0, 0, 0),
(601008, 0, 3027, 0, 0, 0, 0),
(601008, 0, 3030, 0, 0, 0, 0),
(601008, 0, 5439, 0, 0, 0, 0),
(601008, 0, 11285, 0, 0, 0, 0),
(601008, 0, 11303, 1, 9000, 0, 0),
(601008, 0, 11306, 1, 9000, 0, 0),
(601008, 0, 11307, 1, 9000, 0, 0),
(601008, 0, 11362, 0, 0, 0, 0),
(601008, 0, 28053, 0, 0, 0, 0);

DELETE FROM `creature` WHERE (`id1` = 601008);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001791, 601008, 0, 0, 1, 0, 0, 1, 1, 1, -10706.9, 2478.23, 7.92167, 1.96411, 300, 0, 0, 1253, 0, 0, 0, 0, 0, '', NULL, 0, NULL);


-- ******************
-- *  Taunka Orphan *
-- *  (26365)       *
-- ******************
DELETE FROM `creature_template` WHERE (`entry` = 26365);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(26365, 0, 0, 0, 0, 0, 'Taunka Orphan', '', '', 0, 1, 1, 0, 35, 0, 1, 1, 1, 1, 20, 1, 0, 0, 1, 2000, 2000, 1, 1, 1, 33536, 2048, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 26365);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(26365, 0, 23783, 1, 1, 12340);

INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001793, 26365, 0, 0, 1, 0, 0, 1, 1, 0, -10716, 2485.4, 7.92199, 4.71709, 300, 0, 0, 52, 0, 0, 0, 0, 0, '', NULL, 0, NULL);



-- **********************************************
-- *  Boruun Stormhide (Leather Armor Merchant) *
-- *  (601009)                                  *
-- **********************************************
DELETE FROM `creature_template` WHERE (`entry` = 601009);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(601009, 0, 0, 0, 0, 0, 'Boruun Stormhide', 'Leather Armor Merchant', NULL, 0, 30, 30, 0, 35, 4224, 1, 1.14286, 1, 1, 18, 1, 0, 0, 1, 2000, 2000, 1, 1, 1, 512, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.05, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 601009);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(601009, 0, 2129, 1, 1, 12340);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 601009);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(601009, 1, 5291, 0, 0, 18019);

DELETE FROM `npc_vendor` WHERE (`entry` = 601009);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(601009, 0, 236, 0, 0, 0, 0),
(601009, 0, 237, 0, 0, 0, 0),
(601009, 0, 238, 0, 0, 0, 0),
(601009, 0, 239, 0, 0, 0, 0),
(601009, 0, 843, 0, 0, 0, 0),
(601009, 0, 844, 0, 0, 0, 0),
(601009, 0, 845, 0, 0, 0, 0),
(601009, 0, 846, 0, 0, 0, 0),
(601009, 0, 1843, 0, 0, 0, 0),
(601009, 0, 1844, 0, 0, 0, 0),
(601009, 0, 1849, 0, 0, 0, 0),
(601009, 0, 1850, 0, 0, 0, 0),
(601009, 0, 2370, 0, 0, 0, 0),
(601009, 0, 2371, 0, 0, 0, 0),
(601009, 0, 2372, 0, 0, 0, 0),
(601009, 0, 2373, 0, 0, 0, 0),
(601009, 0, 2374, 0, 0, 0, 0),
(601009, 0, 2375, 0, 0, 0, 0);

DELETE FROM `creature` WHERE (`id1` = 601009);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001787, 601009, 0, 0, 1, 0, 0, 1, 1, 1, -10730.1, 2459.65, 7.45391, 4.44786, 300, 0, 0, 1253, 0, 0, 0, 0, 0, '', NULL, 0, NULL);



-- *************************************************
-- *  Hretok Wavepiercer (Sword & Dagger Merchant) *
-- *  (601010)                                     *
-- *************************************************
DELETE FROM `creature_template` WHERE (`entry` = 601010);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(601010, 0, 0, 0, 0, 0, 'Hretok Wavepiercer', 'Sword & Dagger Merchant', NULL, 0, 30, 30, 0, 35, 4224, 1, 1.14286, 1, 1, 18, 1, 0, 0, 1, 2000, 2000, 1, 1, 1, 4608, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.05, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 601010);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(601010, 0, 2089, 1, 1, 12340);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 601010);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(601010, 1, 10878, 0, 0, 18019);

DELETE FROM `npc_vendor` WHERE (`entry` = 601010);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(601010, 0, 851, 0, 0, 0, 0),
(601010, 0, 922, 0, 0, 0, 0),
(601010, 0, 923, 0, 0, 0, 0),
(601010, 0, 1198, 0, 0, 0, 0),
(601010, 0, 2024, 0, 0, 0, 0),
(601010, 0, 2027, 0, 0, 0, 0),
(601010, 0, 2207, 0, 0, 0, 0),
(601010, 0, 2208, 0, 0, 0, 0),
(601010, 0, 2209, 0, 0, 0, 0),
(601010, 0, 2520, 0, 0, 0, 0),
(601010, 0, 2526, 0, 0, 0, 0),
(601010, 0, 2528, 0, 0, 0, 0),
(601010, 0, 2534, 0, 0, 0, 0);

DELETE FROM `creature` WHERE (`id1` = 601010);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001786, 601010, 0, 0, 1, 0, 0, 1, 1, 1, -10754.1, 2437.54, 6.1821, 3.08582, 300, 10, 0, 1253, 0, 1, 0, 0, 0, '', NULL, 0, NULL);


-- *************************************************
-- *  Othiri Tideflame (Cooking Trainer)           *
-- *  (601011)                                     *
-- *************************************************
DELETE FROM `creature_template` WHERE (`entry` = 601011);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(601011, 0, 0, 0, 0, 0, 'Othiri Tideflame', 'Cooking Trainer', NULL, 0, 45, 45, 0, 35, 80, 1, 1.14286, 1, 1, 18, 1, 0, 0, 1, 2000, 2000, 1, 1, 1, 512, 2048, 0, 0, 2, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.2, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 601011);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(601011, 0, 2107, 1, 1, 12340);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 601011);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(601011, 1, 2196, 0, 0, 18019);

DELETE FROM `npc_trainer` WHERE (`ID` = 601011);
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
(601011, 2550, 0, 0, 0, 0);

DELETE FROM `creature` WHERE (`id1` = 601011);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001781, 601011, 0, 0, 1, 0, 0, 1, 1, 1, -10764.6, 2423.47, 5.17545, 6.23684, 300, 0, 0, 2772, 0, 0, 0, 0, 0, '', NULL, 0, NULL);


-- *************************************************
-- *  Grakhan Deepcurrent  (Warrior Trainer)       *
-- *  (601012)                                     *
-- *************************************************
DELETE FROM `creature_template` WHERE (`entry` = 601012);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(601012, 0, 0, 0, 0, 0, 'Grakhan Deepcurrent', 'Warrior Trainer', NULL, 4527, 40, 40, 0, 35, 49, 1, 1.14286, 1, 1, 18, 1, 0, 0, 1, 2000, 2000, 1, 1, 1, 4608, 2048, 0, 0, 0, 0, 1, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.15, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 601012);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(601012, 0, 2113, 1, 1, 12340);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 601012);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(601012, 1, 12297, 12453, 0, 18019);

DELETE FROM `npc_trainer` WHERE (`ID` = 601012);
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`, `ReqSpell`) VALUES
(601012, -200002, 0, 0, 0, 0, 0),
(601012, -200001, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE (`id1` = 601012);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001785, 601012, 0, 0, 1, 0, 0, 1, 1, 1, -10754.1, 2415.43, 5.60095, 0.526442, 300, 10, 0, 2191, 0, 1, 0, 0, 0, '', NULL, 0, NULL);


-- *************************************
-- *  Tamuun Saltbinder (Banker)       *
-- *  (601013)                         *
-- *************************************
DELETE FROM `creature_template` WHERE (`entry` = 8356);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(8356, 0, 0, 0, 0, 0, 'Tamuun Saltbinder', 'Banker', NULL, 0, 45, 45, 0, 35, 131072, 1, 1.14286, 1, 1, 18, 1, 0, 0, 1, 2000, 2000, 1, 1, 1, 4608, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 3, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 8356);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(8356, 0, 7621, 1, 1, 12340);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 8356);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(8356, 1, 12744, 0, 0, 18019);

DELETE FROM `creature` WHERE (`id1` = 8356);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001784, 8356, 0, 0, 1, 0, 0, 1, 1, 1, -10741.6, 2404.28, 6.96198, 1.55453, 300, 0, 0, 6930, 0, 0, 0, 0, 0, '', NULL, 0, NULL);


-- *************************************
-- *  Tamuun Saltbinder (Reagents)     *
-- *  (601014)                         *
-- *************************************
DELETE FROM `creature_template` WHERE (`entry` = 601014);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(601014, 0, 0, 0, 0, 0, 'Mazali Seastrider', 'Reagents', NULL, 0, 30, 30, 0, 35, 2176, 1, 1.14286, 1, 1, 18, 1, 0, 0, 1, 2000, 2000, 1, 1, 1, 512, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.05, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 601014);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(601014, 0, 7625, 1, 1, 12340);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 601014);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(601014, 1, 2716, 0, 0, 18019);

DELETE FROM `npc_vendor` WHERE (`entry` = 601014);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(601014, 0, 5565, 0, 0, 0, 0),
(601014, 0, 16583, 0, 0, 0, 0),
(601014, 0, 17020, 0, 0, 0, 0),
(601014, 0, 17021, 0, 0, 0, 0),
(601014, 0, 17026, 0, 0, 0, 0),
(601014, 0, 17028, 0, 0, 0, 0),
(601014, 0, 17029, 0, 0, 0, 0),
(601014, 0, 17030, 0, 0, 0, 0),
(601014, 0, 17031, 0, 0, 0, 0),
(601014, 0, 17032, 0, 0, 0, 0),
(601014, 0, 17033, 0, 0, 0, 0),
(601014, 0, 17034, 0, 0, 0, 0),
(601014, 0, 17035, 0, 0, 0, 0),
(601014, 0, 17036, 0, 0, 0, 0),
(601014, 0, 17037, 0, 0, 0, 0),
(601014, 0, 17038, 0, 0, 0, 0),
(601014, 0, 21177, 0, 0, 0, 0),
(601014, 0, 22147, 0, 0, 0, 0),
(601014, 0, 22148, 0, 0, 0, 0),
(601014, 0, 37201, 0, 0, 0, 0),
(601014, 0, 44605, 0, 0, 0, 0),
(601014, 0, 44614, 0, 0, 0, 0),
(601014, 0, 44615, 0, 0, 0, 0);

DELETE FROM `creature` WHERE (`id1` = 601014);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001783, 601014, 0, 0, 1, 0, 0, 1, 1, 1, -10727.7, 2406.82, 7.60551, 1.56121, 300, 0, 0, 1253, 0, 0, 0, 0, 0, '', NULL, 0, NULL);


-- *************************************
-- *  Rohka Fartrader (Auctioneer)    *
-- *  (601015)                         *
-- *************************************
DELETE FROM `creature_template` WHERE (`entry` = 601015);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(601015, 0, 0, 0, 0, 0, 'Rohka Fartrader', 'Auctioneer', NULL, 0, 50, 50, 0, 35, 2097152, 1, 1.14286, 1, 1, 18, 1, 0, 0, 1, 2000, 2000, 1, 1, 1, 4096, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.25, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 601015);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(601015, 0, 7999, 1, 1, 12340);

DELETE FROM `creature` WHERE (`id1` = 601015);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001782, 601015, 0, 0, 1, 0, 0, 1, 1, 0, -10722.8, 2434.07, 7.60413, 3.46618, 300, 0, 0, 3461, 0, 0, 0, 0, 0, '', NULL, 0, NULL);



-- *****************************
-- *  Crestwatcher (Guards)    *
-- *  (601016)                 *
-- *****************************
DELETE FROM `creature_template` WHERE (`entry` = 601016);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(601016, 0, 0, 0, 0, 0, 'Crestwatcher', NULL, 'Directions', 0, 75, 75, 0, 35, 1, 1, 1.14286, 1, 1, 18, 1, 0, 0, 1, 2000, 2000, 1, 1, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.5, 1, 1, 1, 0, 0, 1, 0, 0, 98304, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 601016);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(601016, 0, 2141, 1, 1, 12340),
(601016, 1, 8572, 1, 1, 12340),
(601016, 2, 9391, 1, 1, 12340),
(601016, 3, 9392, 1, 1, 12340);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 601016);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(601016, 1, 12754, 0, 14642, 18019);

DELETE FROM `creature` WHERE (`id1` = 601016);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001777, 601016, 0, 0, 1, 0, 0, 1, 1, 1, -10788.9, 2468.64, 5.61495, 0.0458207, 300, 10, 0, 19941, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001778, 601016, 0, 0, 1, 0, 0, 1, 1, 1, -10771.4, 2411.51, 3.99481, 4.87512, 300, 10, 0, 19941, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001779, 601016, 0, 0, 1, 0, 0, 1, 1, 1, -10734.6, 2361.74, 5.8639, 4.65882, 300, 10, 0, 19941, 0, 1, 0, 0, 0, '', NULL, 0, NULL);

-- *****************************
-- *  Elder Rohatu             *
-- *  (601017)                 *
-- *****************************
DELETE FROM `creature_template` WHERE (`entry` = 601017);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(601017, 0, 0, 0, 0, 0, 'Elder Rohatu', 'Oceanmane Elder', NULL, 0, 83, 83, 2, 35, 3, 1, 1.14286, 1, 1, 20, 1, 3, 0, 35, 2000, 2000, 1, 1, 1, 4160, 2048, 0, 0, 0, 0, 0, 0, 7, 76, 0, 0, 0, 0, 0, 700000, 790000, '', 0, 1, 400, 16, 1, 1, 1, 0, 1, 617299835, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 601017);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(601017, 0, 4307, 1, 1, 12340);


DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 601017);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(601017, 0, 15284, 12340),
(601017, 1, 16856, 12340),
(601017, 2, 23931, 12340),
(601017, 3, 59705, 12340);

DELETE FROM `creature` WHERE (`id1` = 601017);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001792, 601017, 0, 0, 1, 0, 0, 1, 1, 1, -10704.5, 2484.9, 7.92167, 3.45417, 300, 0, 0, 5217200, 0, 0, 0, 0, 0, '', NULL, 0, NULL);


-- *****************************
-- *  Vaerostraz (Corrupted)   *
-- *  (601024)                 *
-- *****************************
DELETE FROM `creature_template` WHERE (`entry` = 601024);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(601024, 0, 0, 0, 0, 0, 'Vaerostraz (Corrupted)', NULL, NULL, 0, 80, 80, 1, 35, 0, 0.66667, 1.14286, 1, 1, 20, 1, 0, 0, 0.3, 2000, 2000, 1, 1, 1, 33587970, 2052, 0, 0, 0, 0, 0, 0, 2, 4, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 0.6, 0.6, 1, 1, 0, 0, 1, 0, 0, 0, '0', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 601024);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(601024, 0, 19980, 1, 1, 12340);

DELETE FROM `creature` WHERE (`id1` = 601024);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9008141, 601024, 0, 0, 1, 0, 0, 1, 1, 0, -10651, 2100.62, -46.3323, 1.11138, 300, 0, 0, 10142, 0, 0, 0, 0, 0, '', NULL, 0, NULL);



-- ******************************
-- *  Vaerostraz the Tidekeeper *
-- *  (601025)                  *
-- ******************************
DELETE FROM `creature_template` WHERE (`entry` = 601025);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(601025, 0, 0, 0, 0, 0, 'Vaerostraz the Tidekeeper', '', '', 0, 50, 52, 0, 35, 0, 1, 1.14286, 1, 1, 20, 1, 0, 0, 1, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.25, 1, 1, 1, 0, 273, 1, 0, 0, 0, '', 12340);


DELETE FROM `creature_template_model` WHERE (`CreatureID` = 601025);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(601025, 0, 25835, 1, 0, 0);


-- ******************************
-- *  Thalgrun Wavebreaker      *
-- *  (601026)                  *
-- ******************************
DELETE FROM `creature_template` WHERE (`entry` = 601026);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(601026, 0, 0, 0, 0, 0, 'Thalgrun Wavebreaker', NULL, 'Directions', 0, 75, 75, 0, 35, 3, 1, 1.14286, 1, 1, 18, 1, 0, 0, 1, 2000, 2000, 1, 1, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.5, 1, 1, 1, 0, 0, 1, 0, 0, 65536, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 601026);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(601026, 0, 23799, 1, 0, 0);

DELETE FROM `creature` WHERE (`id1` = 601026);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001794, 601026, 0, 0, 1, 0, 0, 1, 1, 0, -10787.1, 2428, 5.1556, 5.87627, 300, 7, 0, 7645, 0, 1, 0, 0, 0, '', NULL, 0, NULL);


-- *********************************
-- *  Grandmaster's Training Dummy *
-- *  (31144)                      *
-- *********************************
DELETE FROM `creature_template` WHERE (`entry` = 31144);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(31144, 0, 0, 0, 0, 0, 'Grandmaster\'s Training Dummy', '', '', 0, 80, 80, 2, 7, 0, 1, 1, 1, 1, 20, 1, 0, 0, 1, 2200, 2000, 1, 1, 1, 131072, 2048, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0.000187, 1, 1, 1, 0, 0, 1, 32, 0, 262144, 'npc_training_dummy', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 31144);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(31144, 0, 16074, 1, 1, 12340);

INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001788, 31144, 0, 0, 1, 0, 0, 1, 1, 0, -10688, 2450.9, 8.25502, 2.70529, 300, 0, 0, 3, 0, 0, 0, 0, 0, '', NULL, 0, NULL);


