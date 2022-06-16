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

    

end

util.AddNetworkString( "floatshit" )
util.AddNetworkString( "jazzboxgui" )
util.AddNetworkString( "stopsound" )

function ENT:Use(c , a)
    self:SetUseType( SIMPLE_USE )
    print("test")
    net.Start( "jazzboxgui" )
    net.Send( c )
end
function ENT:Think()
    for k, v in ipairs( player.GetAll() ) do
        net.Receive("floatshit", function(self)
            local jazzfloat = net.ReadFloat()
            if isplaying== false then
                Entity( player.GetAll()[k]:EntIndex() ):EmitSound( Jazz_Songs_jukebox[jazzfloat] ) 
                isplaying = true
            elseif isplaying == true then
                print("work")
                Entity( player.GetAll()[k]:EntIndex() ):StopSound(Jazz_Songs_jukebox[1])
                Entity( player.GetAll()[k]:EntIndex() ):StopSound(Jazz_Songs_jukebox[2])
                Entity( player.GetAll()[k]:EntIndex() ):StopSound(Jazz_Songs_jukebox[3])
                Entity( player.GetAll()[k]:EntIndex() ):StopSound(Jazz_Songs_jukebox[4])
                Entity( player.GetAll()[k]:EntIndex() ):StopSound(Jazz_Songs_jukebox[5])
                Entity( player.GetAll()[k]:EntIndex() ):StopSound(Jazz_Songs_jukebox[6])
                Entity( player.GetAll()[k]:EntIndex() ):StopSound(Jazz_Songs_jukebox[7])
                Entity( player.GetAll()[k]:EntIndex() ):StopSound(Jazz_Songs_jukebox[8])
                Entity( player.GetAll()[k]:EntIndex() ):StopSound(Jazz_Songs_jukebox[9])
                Entity( player.GetAll()[k]:EntIndex() ):StopSound(Jazz_Songs_jukebox[10])
                Entity( player.GetAll()[k]:EntIndex() ):StopSound(Jazz_Songs_jukebox[11])
                Entity( player.GetAll()[k]:EntIndex() ):StopSound(Jazz_Songs_jukebox[12])
                Entity( player.GetAll()[k]:EntIndex() ):StopSound(Jazz_Songs_jukebox[13])
                Entity( player.GetAll()[k]:EntIndex() ):StopSound(Jazz_Songs_jukebox[14])
                Entity( player.GetAll()[k]:EntIndex() ):StopSound(Jazz_Songs_jukebox[15])
                Entity( player.GetAll()[k]:EntIndex() ):StopSound(Jazz_Songs_jukebox[16])
                Entity( player.GetAll()[k]:EntIndex() ):StopSound(Jazz_Songs_jukebox[17])
                Entity( player.GetAll()[k]:EntIndex() ):StopSound(Jazz_Songs_jukebox[18])
                Entity( player.GetAll()[k]:EntIndex() ):StopSound(Jazz_Songs_jukebox[19])
                Entity( player.GetAll()[k]:EntIndex() ):StopSound(Jazz_Songs_jukebox[20])
                Entity( player.GetAll()[k]:EntIndex() ):EmitSound( Jazz_Songs_jukebox[jazzfloat] ) 
                            
            end

        end)




        net.Receive("stopsound", function()

            Entity( player.GetAll()[k]:EntIndex() ):StopSound(Jazz_Songs_jukebox[1])
            Entity( player.GetAll()[k]:EntIndex() ):StopSound(Jazz_Songs_jukebox[2])
            Entity( player.GetAll()[k]:EntIndex() ):StopSound(Jazz_Songs_jukebox[3])
            Entity( player.GetAll()[k]:EntIndex() ):StopSound(Jazz_Songs_jukebox[4])
            Entity( player.GetAll()[k]:EntIndex() ):StopSound(Jazz_Songs_jukebox[5])
            Entity( player.GetAll()[k]:EntIndex() ):StopSound(Jazz_Songs_jukebox[6])
            Entity( player.GetAll()[k]:EntIndex() ):StopSound(Jazz_Songs_jukebox[7])
            Entity( player.GetAll()[k]:EntIndex() ):StopSound(Jazz_Songs_jukebox[8])
            Entity( player.GetAll()[k]:EntIndex() ):StopSound(Jazz_Songs_jukebox[9])
            Entity( player.GetAll()[k]:EntIndex() ):StopSound(Jazz_Songs_jukebox[10])
            Entity( player.GetAll()[k]:EntIndex() ):StopSound(Jazz_Songs_jukebox[11])
            Entity( player.GetAll()[k]:EntIndex() ):StopSound(Jazz_Songs_jukebox[12])
            Entity( player.GetAll()[k]:EntIndex() ):StopSound(Jazz_Songs_jukebox[13])
            Entity( player.GetAll()[k]:EntIndex() ):StopSound(Jazz_Songs_jukebox[14])
            Entity( player.GetAll()[k]:EntIndex() ):StopSound(Jazz_Songs_jukebox[15])
            Entity( player.GetAll()[k]:EntIndex() ):StopSound(Jazz_Songs_jukebox[16])
            Entity( player.GetAll()[k]:EntIndex() ):StopSound(Jazz_Songs_jukebox[17])
            Entity( player.GetAll()[k]:EntIndex() ):StopSound(Jazz_Songs_jukebox[18])
            Entity( player.GetAll()[k]:EntIndex() ):StopSound(Jazz_Songs_jukebox[19])
            Entity( player.GetAll()[k]:EntIndex() ):StopSound(Jazz_Songs_jukebox[20])



                
        end)
    end
    self:NextThink( CurTime() )
    return true
end

function ENT:OnRemove()
RunConsoleCommand("stopsound", "");
end





   

