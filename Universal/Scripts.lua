local url = "https://api.junkie-development.de/api/v1/luascripts/public/b1d8d974eaf51d928591b7b0dba54887404c1e14e868f52995a8d24b668ad890/download"
local response = game:HttpGet(url)
local fn, err = loadstring(response)
if not fn then
    warn("Erro ao compilar script remoto:", err)
else
    local ok, ret = pcall(fn)
    if not ok then
        warn("Erro ao executar script remoto:", ret)
    end
end
