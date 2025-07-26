-- Script feito por ATR Scripter
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local UserInputService = game:GetService("UserInputService")
local CoreGui = game:GetService("CoreGui")

local keyObrigatoria = "KeynovaRoubeumBrainrot"
local referersPermitidos = {
    "https://rekonise.com/key-script-x-roube-um-brainrot-dvdwv",
    "https://direct-link.net/1374597/9mfQu2IK9zI3"
}

-- Interface de Verificação de Key
local function criarTelaKey()
    local ScreenGui = Instance.new("ScreenGui", CoreGui)
    ScreenGui.Name = "ATR_KeySystem"

    local Frame = Instance.new("Frame", ScreenGui)
    Frame.Size = UDim2.new(0, 300, 0, 150)
    Frame.Position = UDim2.new(0.5, -150, 0.5, -75)
    Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    Frame.BorderSizePixel = 0

    local Titulo = Instance.new("TextLabel", Frame)
    Titulo.Text = "🔑 SCRIPT FEITO POR ATR SCRIPTER"
    Titulo.Size = UDim2.new(1, 0, 0, 30)
    Titulo.BackgroundTransparency = 1
    Titulo.TextColor3 = Color3.fromRGB(255, 255, 255)
    Titulo.Font = Enum.Font.GothamBold
    Titulo.TextSize = 14

    local CaixaKey = Instance.new("TextBox", Frame)
    CaixaKey.PlaceholderText = "Digite sua key aqui"
    CaixaKey.Size = UDim2.new(1, -20, 0, 30)
    CaixaKey.Position = UDim2.new(0, 10, 0, 40)
    CaixaKey.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    CaixaKey.TextColor3 = Color3.fromRGB(255, 255, 255)
    CaixaKey.ClearTextOnFocus = false
    CaixaKey.Font = Enum.Font.Gotham
    CaixaKey.TextSize = 14

    local BotaoVerificar = Instance.new("TextButton", Frame)
    BotaoVerificar.Text = "✅ Verificar Key"
    BotaoVerificar.Size = UDim2.new(0.5, -15, 0, 30)
    BotaoVerificar.Position = UDim2.new(0, 10, 0, 80)
    BotaoVerificar.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
    BotaoVerificar.TextColor3 = Color3.fromRGB(255, 255, 255)
    BotaoVerificar.Font = Enum.Font.GothamBold
    BotaoVerificar.TextSize = 14

    local BotaoCopiar = Instance.new("TextButton", Frame)
    BotaoCopiar.Text = "🔗 Copiar link da key"
    BotaoCopiar.Size = UDim2.new(0.5, -15, 0, 30)
    BotaoCopiar.Position = UDim2.new(0.5, 5, 0, 80)
    BotaoCopiar.BackgroundColor3 = Color3.fromRGB(30, 100, 200)
    BotaoCopiar.TextColor3 = Color3.fromRGB(255, 255, 255)
    BotaoCopiar.Font = Enum.Font.GothamBold
    BotaoCopiar.TextSize = 14

    BotaoCopiar.MouseButton1Click:Connect(function()
        setclipboard("https://arthur11191.github.io/KEY-SYSTEM/key/obm/")
    end)

    BotaoVerificar.MouseButton1Click:Connect(function()
        if CaixaKey.Text == keyObrigatoria then
            ScreenGui:Destroy()
            iniciarMenuPrincipal()
        else
            Titulo.Text = "❌ KEY INVÁLIDA"
            Titulo.TextColor3 = Color3.fromRGB(255, 0, 0)
        end
    end)
end

-- Menu Principal após key
function iniciarMenuPrincipal()
    local ScreenGui = Instance.new("ScreenGui", CoreGui)
    ScreenGui.Name = "ATR_Menu"

    local Frame = Instance.new("Frame", ScreenGui)
    Frame.Size = UDim2.new(0, 350, 0, 300)
    Frame.Position = UDim2.new(0.5, -175, 0.5, -150)
    Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    Frame.BorderSizePixel = 0

    local Titulo = Instance.new("TextLabel", Frame)
    Titulo.Text = "🧠 MENU ATR Scripter X Brainrot"
    Titulo.Size = UDim2.new(1, 0, 0, 40)
    Titulo.BackgroundTransparency = 1
    Titulo.TextColor3 = Color3.fromRGB(255, 255, 255)
    Titulo.Font = Enum.Font.GothamBold
    Titulo.TextSize = 16

    -- Botão de Minimizar
    -- Cria bolinha minimizar arrastável
local btnMinimizar = Instance.new("TextButton", mainFrame)
btnMinimizar.Size = UDim2.new(0, 40, 0, 40)
btnMinimizar.Position = UDim2.new(1, -45, 0, 5)
btnMinimizar.Text = "-"
btnMinimizar.Font = Enum.Font.SourceSansBold
btnMinimizar.TextSize = 28
btnMinimizar.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
btnMinimizar.TextColor3 = Color3.new(1, 1, 1)
btnMinimizar.BorderSizePixel = 0
btnMinimizar.AutoButtonColor = true

-- Função drag para arrastar a bolinha
local UserInputService = game:GetService("UserInputService")
local dragging
local dragInput
local dragStart
local startPos

btnMinimizar.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or
       input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = btnMinimizar.Position
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

btnMinimizar.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or
       input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if dragging and input == dragInput then
        local delta = input.Position - dragStart
        local newPos = UDim2.new(
            startPos.X.Scale,
            startPos.X.Offset + delta.X,
            startPos.Y.Scale,
            startPos.Y.Offset + delta.Y
        )
        btnMinimizar.Position = newPos
    end
end)

-- Botão minimizar esconde o menu
btnMinimizar.MouseButton1Click:Connect(function()
    mainFrame.Visible = false
    wait(0.2)
    mainFrame.Visible = true
end)

    -- Criar botões para funções (6 páginas)
    for i = 1, 6 do
        local Botao = Instance.new("TextButton", Frame)
        Botao.Size = UDim2.new(0.45, 0, 0, 35)
        Botao.Position = UDim2.new(0.05 + ((i - 1) % 2) * 0.5, 0, 0, 50 + math.floor((i - 1) / 2) * 45)
        Botao.Text = "Função " .. i
        Botao.Name = "Funcao" .. i
        Botao.TextColor3 = Color3.fromRGB(255, 255, 255)
        Botao.BackgroundColor3 = Color3.fromRGB(50, 50, 50)

        Botao.MouseButton1Click:Connect(function()
            print("Função " .. i .. " ativada!")
            -- Aqui você pode ligar/desligar a função real
        end)
    end
end

-- Iniciar sistema
criarTelaKey()
