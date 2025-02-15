-- +------------------------------------------------+
-- |                                                |
-- |      Quest 100050 Tides of Corruption          |
-- |                                                |
-- +------------------------------------------------+
DELETE FROM `quest_template` WHERE (`ID` = 100050);
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardMoneyDifficulty`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES
(100050, 2, 83, 80, 0, 0, 4, 0, 0, 0, 0, 0, 6, 1500000, 0, 0, 0, 0, 0, 0, 256, 0, 910001, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 47546, 1, 50653, 1, 50718, 1, 50668, 1, 50468, 1, 0, 0, 1, -10651, 2100.62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2047, 'The Tides of Corruption', 'Defeat and confront Zharkalis the Whispering.', 'Long ago, our people shared this land with a mighty red dragon, Vaerostraz the Tidekeeper. He watched over our village, but dark forces have corrupted him. Slay Zharkalis the Whispering and his followers to break the curse.', 'Defeat Zharkalis and his corrupted forces at Oceanmane Village.', 'You have cleansed the corruption! Vaerostraz has been freed.', 601022, 601023, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Defeat Zharkalis the Whispering', 'Slay Corrupted Plant Horror', '', '', 0);

DELETE FROM `quest_offer_reward` WHERE (`ID` = 100050);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(100050, 4, 0, 0, 0, 0, 0, 0, 0, 'The corruption of Vaerostraz has been lifted. Oceanmane and it\'s people will be forever grateful for your bravery.', 0);

DELETE FROM `quest_request_items` WHERE (`ID` = 100050);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `CompletionText`, `VerifiedBuild`) VALUES
(100050, 1, 0, 'The corruption runs deep... but you must not waver. Zharkalis and his minions cannot be allowed to twist Vaerostraz’s mind further. Finish what you have started, hero.', 0);


DELETE FROM `creature_queststarter` WHERE (`quest` = 100050);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
(601017, 100050);

DELETE FROM `creature_questender` WHERE (`quest` = 100050);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
(601017, 100050);


-- +------------------------------------------------+
-- |                                                |
-- |      Quest 100051 Cleansing The Corruption     |
-- |                                                |
-- +------------------------------------------------+
DELETE FROM `quest_template` WHERE (`ID` = 100051);
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardMoneyDifficulty`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES
(100051, 2, 83, 80, 0, 0, 1, 0, 0, 0, 0, 0, 6, 700000, 0, 0, 0, 0, 0, 0, 256, 0, 910001, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50467, 1, 37862, 1, 37647, 1, 0, 0, 0, 0, 0, 0, 1, -10651, 2100.62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2047, 'Cleansing the Corruption', 'Defeat the corrupted Satyrs and spirits of the Tainted Oceanmanes.', 'The caves on Oceanmane have become a breeding ground for corruption. Slay the twisted Tidecallers and Oceanmanes before their taint spreads beyond the depths.', 'Slay the corrupted tidecallers and tainted Oceanmanes within the flooded caves.', 'You have purged the corruption from the cave, preventing its spread to Oceanmane.', 601020, 601021, 0, 0, 10, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Slay 10 Corrupted Tidecallers', 'Slay 10 Corrupted Tidecallers', '', '', 0);

DELETE FROM `quest_offer_reward` WHERE (`ID` = 100051);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(100051, 4, 0, 0, 0, 0, 0, 0, 0, 'With the corrupted ones defeated, Oceanmane stands stronger. Your courage will not be forgotten.', 0);

DELETE FROM `quest_request_items` WHERE (`ID` = 100051);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `CompletionText`, `VerifiedBuild`) VALUES
(100051, 1, 0, 'You are making great strides. The corrupted Tidecallers and Tainted Oceanmanes are falling, but more still remain in the depths of the cave.', 0);

DELETE FROM `creature_queststarter` WHERE (`quest` = 100051);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
(601026, 100051);

DELETE FROM `creature_questender` WHERE (`quest` = 100051);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
(601026, 100051);
