local TextChatService = game:GetService("TextChatService")
local avisoFile = "aviso5.txt"

local mensagem1 = "Compatilhe o Nexor Hub"
local mensagem2 = "com seus amigos! 🙏🏻"

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
