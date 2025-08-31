local TextChatService = game:GetService("TextChatService")
local avisoFile = "aviso4.txt"

local mensagem1 = ""
local mensagem2 = ""

pcall(function()
    if not isfile(avisoFile) then
        TextChatService.TextChannels.RBXGeneral:SendAsync(mensagem1)
        task.wait(1)
        TextChatService.TextChannels.RBXGeneral:SendAsync(mensagem2)
        writefile(avisoFile, "executado")
    else
        warn("Aviso já foi executado, não será enviado novamente.")
    end
end)
