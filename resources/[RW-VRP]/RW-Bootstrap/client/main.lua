Citizen.CreateThread(
  function()
    while true do
      Citizen.Wait(1)

      local ped = GetPlayerPed(-1)
      local pos = GetEntityCoords(ped)

      SetRadarZoom(1100)

      SetVehicleDensityMultiplierThisFrame(0.0)
      SetPedDensityMultiplierThisFrame(0.0)
      SetRandomVehicleDensityMultiplierThisFrame(0.0)
      SetParkedVehicleDensityMultiplierThisFrame(0.0)
      SetScenarioPedDensityMultiplierThisFrame(0.0, 0.0)

      ClearAreaOfVehicles(pos.x, pos.y, pos.z, 1000, false, false, false, false, false)
      RemoveVehiclesFromGeneratorsInArea(pos.x - 500.0, pos.y - 500.0, pos.z - 500.0, pos.x + 500.0, pos.y + 500.0, pos.z + 500.0)

      SetGarbageTrucks(false)
      SetRandomBoats(false)
      SetCreateRandomCops(false)
      SetCreateRandomCopsNotOnScenarios(false)
      SetCreateRandomCopsOnScenarios(false)

      SetIgnoreLowPriorityShockingEvents(ped, true)
      SetPoliceIgnorePlayer(ped, true)
      SetDispatchCopsForPlayer(ped, false)
      SetMaxWantedLevel(0)
      SetPlayerWantedLevel(ped, 0, false)
      SetPlayerWantedLevelNow(ped, false)

      SetPauseMenuActive(false)
      HudWeaponWheelIgnoreSelection()
      DisableControlAction(0, 36, true)
      DisableControlAction(0, 37, true)
      DisableControlAction(0, 74, true)

      SetPoliceRadarBlips(false)
      HideHudComponentThisFrame(1)
      HideHudComponentThisFrame(2)
      HideHudComponentThisFrame(3)
      HideHudComponentThisFrame(4)
      HideHudComponentThisFrame(5)
      HideHudComponentThisFrame(6)
      HideHudComponentThisFrame(7)
      HideHudComponentThisFrame(8)
      HideHudComponentThisFrame(9)
      HideHudComponentThisFrame(10)
      HideHudComponentThisFrame(11)
      HideHudComponentThisFrame(12)
      HideHudComponentThisFrame(13)
      HideHudComponentThisFrame(14)
      HideHudComponentThisFrame(15)
      HideHudComponentThisFrame(16)
      HideHudComponentThisFrame(17)
      HideHudComponentThisFrame(18)
      HideHudComponentThisFrame(19)
      HideHudComponentThisFrame(20)
      HideHudComponentThisFrame(22)

      SetFrontendRadioActive(false)
      SetMobileRadioEnabledDuringGameplay(false)
      SetUserRadioControlEnabled(false)
      if GetVehiclePedIsIn(PlayerPedId(-1), false) then
        local veh = GetVehiclePedIsIn(PlayerPedId(-1), false)
        SetVehicleRadioEnabled(veh, false)
        SetVehicleRadioLoud(veh, false)
      end
    end
  end
)
