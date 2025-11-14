if getgenv().AlreadyExecutedtozx then return end
getgenv().AlreadyExecutedtozx = true

local target_url = "https://raw.githubusercontent.com/NexorHub/Games/refs/heads/main/Kernel/a0597b71603b2597.lua.txt"

task.spawn(function()
    local queue_on_teleport = (syn and syn.queue_on_teleport) or queue_on_teleport or queueonteleport
    if queue_on_teleport then
        pcall(function()
            queue_on_teleport('loadstring(game:HttpGet("' .. target_url .. '"))()')
        end)
    end
end)

pcall(function()
    loadstring(game:HttpGet(target_url))()
end)
