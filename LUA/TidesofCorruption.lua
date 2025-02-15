local ZHARKALIS_ID = 601022
local VAEROSTRAZ_CORRUPTED_ID = 601024
local VAEROSTRAZ_TIDEKEEPER_MODEL_ID = 25835 -- Model ID for Vaerostraz the Tidekeeper
local DESPAWN_TIME = 3000 -- 3 seconds in milliseconds

local function OnZharkalisDeath(event, killer, zharkalis)
    -- Find Corrupted Vaerostraz nearby
    local vaerostraz = zharkalis:GetNearestCreature(100, VAEROSTRAZ_CORRUPTED_ID)
    
    if vaerostraz then
        -- Change model to Vaerostraz the Tidekeeper
        vaerostraz:SetDisplayId(VAEROSTRAZ_TIDEKEEPER_MODEL_ID)
        
        -- Make him yell
        vaerostraz:SendUnitYell("The corruption... fades... I am free! Thank you, champions of Oceanmane!", 0)

        -- Despawn him after 3 seconds
        vaerostraz:DespawnOrUnsummon(DESPAWN_TIME)
    end
end

RegisterCreatureEvent(ZHARKALIS_ID, 4, OnZharkalisDeath)
