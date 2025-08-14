local games = {
    [2753915549] = {
        name = "Meu Hub 1",
        scripts = {
            "loadstring(game:HttpGet('https://meusite.com/autofarm.lua'))()",
            "loadstring(game:HttpGet('https://meusite.com/esp.lua'))()"
        }
    },
    [654321] = {
        name = "Meu Hub 2",
        scripts = {
            "loadstring(game:HttpGet('https://meusite.com/macro.lua'))()"
        }
    }
}

for placeId, info in pairs(games) do
    for _, script in ipairs(info.scripts) do
        print(string.format("[%s] [%s] [%s]", placeId, info.name, script))
    end
end
