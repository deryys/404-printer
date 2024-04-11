for i=1, #Config.Printers, 1 do
    exports.ox_target:addModel(Config.Printers[i], {
    label = "Print",
    icon = "fa-solid fa-print",
    distance = 2,
    onSelect = function ()
        local photo = lib.inputDialog("Printer",
        {
            {type = "input", label = "Photo url", required = true},
            {type = "number", label = "Width", required = true, default = 1280},
            {type = "number", label = "Height", required = true, default = 720}
        })
        if not photo then return end
        TriggerServerEvent("Kenjy_Printer:createPhoto", photo)
    end
})
end

RegisterNetEvent("Kenjy_Printer:openPhoto", function(data)
    SendNUIMessage({
       action = "show",
       photo = data
    })
    SetNuiFocus(true, true)
end)

RegisterNuiCallback("close", function()
    SetNuiFocus(false, false)
end)