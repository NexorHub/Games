local TextChatService = game:GetService("TextChatService")
local mensagem1 = "Nexor Hub atualizado!"
local mensagem2 = "Veja as novas funcionalidades em fixos, + Key fácil."
pcall(function()
    TextChatService.TextChannels.RBXGeneral:SendAsync(mensagem1)
    task.wait(1) --mensagem para algo importante?
    TextChatService.TextChannels.RBXGeneral:SendAsync(mensagem2)
end)
