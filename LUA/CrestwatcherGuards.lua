--Made by Manmadedrummer for Araxia Server

local NPC_ID = 601016  -- Crestwatcher Guard

local LOCATIONS = {
    {name = "Caves", map = 1, x = -10724.191, y = 2189.4995, z = 4.0912714}
}

local CLASS_TRAINERS = {
    {name = "Warrior Trainer", map = 1, x = -10754.1, y = 2415.43, z = 5.60095}
}

local PROFESSION_TRAINERS = {
    {name = "Herbalism Trainer", map = 1, x = -10713.1, y = 2486.85, z = 7.92167},
    {name = "Cooking Trainer", map = 1, x = 10764.6, y = 2423.47, z = 5.17545},
    {name = "Blacksmith Trainer", map = 1, x = -10714.4, y = 2419.36, z = 7.60694}
}

local OTHERS = {
    {name = "Auctioneer", map = 1, x = -10722.8, y = 2434.07, z = 7.60413},
    {name = "Banker", map = 1, x = -10741.6, y = 2404.28, z = 6.96198},
    {name = "Mailbox", map = 1, x = 10725, y = 2471.15, z = 7.58996}
}

local function OnGossipHello(event, player, creature)
    player:GossipClearMenu()
    player:GossipMenuAddItem(0, "Locations", 1, 1)
    player:GossipMenuAddItem(0, "Class Trainers", 1, 2)
    player:GossipMenuAddItem(0, "Profession Trainers", 1, 3)
    player:GossipMenuAddItem(0, "Other", 1, 4)
    player:GossipSendMenu(1, creature)
end

local function ShowLocationsMenu(player, creature)
    player:GossipClearMenu()
    for index, loc in ipairs(LOCATIONS) do
        player:GossipMenuAddItem(0, loc.name, 1, 100 + index)
    end
    player:GossipMenuAddItem(0, "Back", 1, 5)
    player:GossipSendMenu(1, creature)
end

local function ShowClassTrainersMenu(player, creature)
    player:GossipClearMenu()
    for index, trainer in ipairs(CLASS_TRAINERS) do
        player:GossipMenuAddItem(0, trainer.name, 1, 200 + index)
    end
    player:GossipMenuAddItem(0, "Back", 1, 5)
    player:GossipSendMenu(1, creature)
end

local function ShowProfessionTrainersMenu(player, creature)
    player:GossipClearMenu()
    for index, trainer in ipairs(PROFESSION_TRAINERS) do
        player:GossipMenuAddItem(0, trainer.name, 1, 300 + index)
    end
    player:GossipMenuAddItem(0, "Back", 1, 5)
    player:GossipSendMenu(1, creature)
end

local function ShowOthersMenu(player, creature)
    player:GossipClearMenu()
    for index, other in ipairs(OTHERS) do
        player:GossipMenuAddItem(0, other.name, 1, 400 + index)
    end
    player:GossipMenuAddItem(0, "Back", 1, 5)
    player:GossipSendMenu(1, creature)
end

local function OnGossipSelect(event, player, creature, sender, intid, code)
    if intid == 1 then
        ShowLocationsMenu(player, creature)
    elseif intid == 2 then
        ShowClassTrainersMenu(player, creature)
    elseif intid == 3 then
        ShowProfessionTrainersMenu(player, creature)
    elseif intid == 4 then
        ShowOthersMenu(player, creature)
    elseif intid == 5 then
        OnGossipHello(event, player, creature)
    else
        local loc = LOCATIONS[intid - 100]
        if loc then
            player:GossipComplete()
            player:SendBroadcastMessage("Setting a marker for " .. loc.name)
            player:GossipSendPOI(loc.x, loc.y, 7, 6, 0, loc.name)
        else
            local class_trainer = CLASS_TRAINERS[intid - 200]
            if class_trainer then
                player:GossipComplete()
                player:SendBroadcastMessage("Setting a marker for " .. class_trainer.name)
                player:GossipSendPOI(class_trainer.x, class_trainer.y, 7, 6, 0, class_trainer.name)
            else
                local profession_trainer = PROFESSION_TRAINERS[intid - 300]
                if profession_trainer then
                    player:GossipComplete()
                    player:SendBroadcastMessage("Setting a marker for " .. profession_trainer.name)
                    player:GossipSendPOI(profession_trainer.x, profession_trainer.y, 7, 6, 0, profession_trainer.name)
                else
                    local other = OTHERS[intid - 400]
                    if other then
                        player:GossipComplete()
                        player:SendBroadcastMessage("Setting a marker for " .. other.name)
                        player:GossipSendPOI(other.x, other.y, 7, 6, 0, other.name)
                    end
                end
            end
        end
    end
end

RegisterCreatureGossipEvent(NPC_ID, 1, OnGossipHello)
RegisterCreatureGossipEvent(NPC_ID, 2, OnGossipSelect)
