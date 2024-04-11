RegisterNetEvent("Kenjy_Printer:createPhoto", function (data)
    exports.ox_inventory:AddItem(source, "photo", 1, {url = data[1], width = data[2], height = data[3]})
end)

exports('photo', function(event, item, inventory, slot, data)
    if event == 'usingItem' then
        local item = exports.ox_inventory:GetSlot(inventory.id, slot)
        if item.metadata.url then
           	TriggerClientEvent("Kenjy_Printer:openPhoto", inventory.id, item.metadata)
        end
    end
end)