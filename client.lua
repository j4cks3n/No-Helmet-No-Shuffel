-- No Helm No Shuffel
lib.onCache('vehicle', function(vehicle)
    if vehicle and GetPedInVehicleSeat(vehicle, cache.seat) == cache.ped then
        SetPedConfigFlag(cache.ped, 184, true)
        SetPedIntoVehicle(cache.ped, vehicle, cache.seat)
    end
    SetPedConfigFlag(cache.ped, 35, false)
end)

lib.onCache('seat', function(seatIndex)
    if seatIndex ~= -1 then
        SetPedConfigFlag(cache.ped, 184, true)
    end
end)
