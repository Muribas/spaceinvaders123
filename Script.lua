-- Carregar Muriel hub
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

--Aviso ao executar
Fluent:Notify({ Title = "Executado com sucesso", Content = "executado com sucesso " })


local Window = Fluent:CreateWindow({
    Title = "Muriel Hub" .. Fluent.Version,
    TabWidth = 160, Size = UDim2.fromOffset(580, 460), Theme = "Dark"
})

local Tabs = {
    Main = Window:AddTab({ Title = "Scripts" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}
--Paragráfos
Tabs.Main:AddParagraph({ Title = "A você caro usuario", Content = "Scripts aqui" })

--Botões
Tabs.Main:AddButton({ Title = "Pulo infinito", Callback = function() 
loadstring(game:HttpGet("https://raw.githubusercontent.com/HeyGyt/infjump/main/main"))()
 end })
 
 --alterador
 local Toggle = Tabs.Main:AddToggle("autofarm", { Title = "autofarm" })
Toggle:OnChanged(function() print(Options.MyToggle.Value) end)