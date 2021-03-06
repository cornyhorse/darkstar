-----------------------------------
-- Area: Lower Jeuno
-- NPC: Mataligeat
-- Standard Info NPC
-- !pos -24 0 -60 245
-----------------------------------
package.loaded["scripts/zones/Lower_Jeuno/TextIDs"] = nil;
-----------------------------------

require("scripts/zones/Lower_Jeuno/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    local painfulMemory = player:getQuestStatus(JEUNO,PAINFUL_MEMORY);
    local theRequiem = player:getQuestStatus(JEUNO,THE_REQUIEM);
    local pathOfTheBard = player:getQuestStatus(JEUNO,PATH_OF_THE_BARD);

    -- THE OLD MONUMENT
    if (player:getVar("TheOldMonument_Event") == 1) then
        player:startEvent(141); -- looks like his girlfriend dumped him

    -- PAINFUL MEMORY
    elseif (painfulMemory == QUEST_ACCEPTED) then
        player:startEvent(140); -- he's forgotten why he took up the lute in the first place

    -- THE REQUIEM
    elseif (theRequiem == QUEST_ACCEPTED and player:getVar("TheRequiemCS") == 3) then
        player:startEvent(142); -- huh? the bard interred inside eldieme?

    -- PATH OF THE BARD
    elseif (pathOfTheBard == QUEST_COMPLETED) then
        player:startEvent(143); -- so now you're one of us, huh?

    -- DEFAULT RESPONSE
    else
        player:startEvent(144); -- have you heard of lewenhart?
    end;
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
end;
