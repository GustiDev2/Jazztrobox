AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")




isplaying = false
function ENT:Initialize()

    self:SetModel("models/jazztrobox/jukebox/jukebox.mdl")
    self:PhysicsInit(SOLID_VPHYSICS)
    self:SetMoveType(MOVETYPE_VPHYSICS)
    self:SetSolid(SOLID_VPHYSICS)

    local phys = self:GetPhysicsObject()

    if phys:IsValid() then

        phys:Wake()
    end

    audfix = self:GetPos()
end



util.AddNetworkString( "floatshit" )
util.AddNetworkString( "jazzboxgui" )
util.AddNetworkString( "stopsound" )

function ENT:Use(c , a)
    self:SetUseType( SIMPLE_USE )
    net.Start( "jazzboxgui" )
    net.Send( c )
end
function ENT:Think()
    for k, v in ipairs( player.GetAll() ) do
        net.Receive("floatshit", function(self)
            local jazzfloat = net.ReadFloat()
            if isplaying== false then
                isplaying = true
                sound.Play( Jazz_Songs_jukebox[jazzfloat], Vector(audfix), 75, 100, 1 )
            elseif isplaying == true then
                RunConsoleCommand("stopsound", "");
                timer.Simple( 0.1, function() sound.Play( Jazz_Songs_jukebox[jazzfloat], Vector(audfix), 75, 100, 1 )  end )
                            
            end

        end)




        net.Receive("stopsound", function()
            RunConsoleCommand("stopsound", "");
            isplaying = false



                
        end)
    end
    self:NextThink( CurTime() )
    return true
end

function ENT:OnRemove()
    isplaying = false
RunConsoleCommand("stopsound", "");
end





   

