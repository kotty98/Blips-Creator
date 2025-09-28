local createdPeds = {}
local createdBlips = {}

-- Function to create ped (statický a nezničitelný)
local function createPed(model, coords, heading, scenario)
    RequestModel(model)
    while not HasModelLoaded(model) do
        Wait(10)
    end
    
    local ped = CreatePed(4, model, coords.x, coords.y, coords.z - 1.0, heading, false, true)

    SetEntityAsMissionEntity(ped, true, true)
    FreezeEntityPosition(ped, true)
    SetEntityInvincible(ped, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    SetPedFleeAttributes(ped, 0, false)
    SetPedCombatAttributes(ped, 46, true)
    SetPedSeeingRange(ped, 0.0)
    SetPedHearingRange(ped, 0.0)
    SetPedAlertness(ped, 0.0)
    SetPedCanRagdoll(ped, false)
    SetPedCanRagdollFromPlayerImpact(ped, false)
    SetPedCanBeTargetted(ped, false)
    SetPedCanBeKnockedOffVehicle(ped, false)
    
    if scenario then
        TaskStartScenarioInPlace(ped, scenario, 0, true)
    end
    
    return ped
end

-- Function to create blip without distance text
local function createBlip(coords, sprite, color, scale, label)
    local blip = AddBlipForCoord(coords.x, coords.y, coords.z)
    
    SetBlipSprite(blip, sprite)
    SetBlipDisplay(blip, 4)
    SetBlipScale(blip, scale)
    SetBlipColour(blip, color)
    SetBlipAsShortRange(blip, true)

    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName(label)
    EndTextCommandSetBlipName(blip)
    
    return blip
end

-- JobCenter menu (ox_lib context)
local function registerJobCenterMenu()
    local options = {}
    for _, doc in ipairs(Config.JobCenter.documents) do
        table.insert(options, {
            title = doc.label .. " - $" .. doc.price,
            description = "Zakoupit dokument",
            event = "jobcenter:attemptPurchase",
            args = { item = doc.item }
        })
    end

    lib.registerContext({
        id = 'jobcenter_menu',
        title = 'Job Center',
        options = options
    })
end

-- Initialize peds and blips
Citizen.CreateThread(function()
    while not ESX do Citizen.Wait(100) end
    while not ESX.IsPlayerLoaded() do Citizen.Wait(100) end

    -- Normální NPCs z Config.NPCS
    for _, npcData in ipairs(Config.NPCS or {}) do
        local model = npcData[1]
        local coords = vec3(npcData[2], npcData[3], npcData[4])
        local heading = npcData[5]
        local scenario = npcData[6]
        
        local ped = createPed(model, coords, heading, scenario)
        table.insert(createdPeds, ped)
    end

    -- Blips z Config.Blips
    for _, blipData in ipairs(Config.Blips or {}) do
        local coords = blipData.coords
        local sprite = blipData.sprite or 1
        local color = blipData.color or 0
        local scale = blipData.scale or 0.7
        local label = blipData.label or "Unknown"
        
        local blip = createBlip(coords, sprite, color, scale, label)
        table.insert(createdBlips, blip)
    end

    -- JobCenter NPC
    local jobCoords = Config.JobCenter.coords
    local jobPed = createPed(`s_m_m_highsec_01`, jobCoords, 0.0, nil)
    table.insert(createdPeds, jobPed)

    -- Blip pro JobCenter
    local jobBlip = createBlip(jobCoords, 407, 3, 0.8, "Job Center")
    table.insert(createdBlips, jobBlip)

    -- ox_target interakce
    exports.ox_target:addLocalEntity(jobPed, {
        {
            name = 'jobcenter_open_menu',
            label = 'Otevřít Job Center',
            icon = 'fa-solid fa-id-card',
            onSelect = function()
                lib.showContext('jobcenter_menu')
            end
        }
    })

    -- registrace menu
    registerJobCenterMenu()
end)

-- Event pro pokus o koupi dokumentu
RegisterNetEvent('jobcenter:attemptPurchase', function(data)
    TriggerServerEvent('jobcenter:tryBuy', data.item)
end)

-- Notifikace
RegisterNetEvent('jobcenter:notify', function(msg)
    if lib and lib.notify then
        lib.notify({ description = msg })
    else
        TriggerEvent('esx:showNotification', msg)
    end
end)

-- Cleanup na stopnutí resource
AddEventHandler('onResourceStop', function(resource)
    if resource == GetCurrentResourceName() then
        for _, ped in ipairs(createdPeds) do
            DeletePed(ped)
        end
        for _, blip in ipairs(createdBlips) do
            RemoveBlip(blip)
        end
    end
end)
