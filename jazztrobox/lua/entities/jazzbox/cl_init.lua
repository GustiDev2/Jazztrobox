AddCSLuaFile("shared.lua")

include("shared.lua")

function ENT:Draw()

    self:DrawModel()

end

surface.CreateFont( "jazzjukeboxfont", {
	font = "KG Shake It Off Chunky",
	extended = false,
	size = 50,
	weight = 0,
	blursize = 0,
	scanlines = 100,
	antialias = true,
	underline = false,
	italic = false,
	strikeout = false,
	symbol = false,
	rotary = false,
	shadow = false,
	additive = false,
	outline = false,
} )





net.Receive( "jazzboxgui", function()



    
    if( !frame ) then
        local frame = vgui.Create( "DFrame" )
        frame:SetSize( 750, 1000)
        frame:SetSizable( true )
        frame:SetMinHeight( 100 )
        frame:SetMinWidth( 100 )
        frame:Center()
        frame:SetVisible( true )
        frame:MakePopup()
        frame:SetTitle("Songs")

        frame:SetPaintShadow( true )
        frame.Paint = function(self, w, h )
            draw.RoundedBox (0, 0, 0, w, h, Color(56, 36, 76, 255))

        end
        frame:SetDeleteOnClose( true )

        local DScrollPanel = vgui.Create( "DScrollPanel", frame )
        DScrollPanel:Dock( FILL )

      

        local x,y = frame:GetSize()

        local button = DScrollPanel:Add( "DButton", frame )
        button:SetText( "All Spice" )
        button:SetSize(640, 50)
        button:Dock( TOP )
        button:DockMargin( 0, 0, 0, 10 )
        button:SetFontInternal("jazzjukeboxfont")
        button.Paint = function(self, w, h )
            draw.RoundedBox (5, 0, 0, w, h, Color(232, 188, 60, 255))
        end
        for k, v in ipairs(Jazz_Songs_jukebox) do
            button.DoClick = function()
                net.Start("floatshit")
					net.WriteFloat(1)
				net.SendToServer()
            
                frame:Close()

            end
        end

        local button = DScrollPanel:Add( "DButton", frame )
        button:SetText( "5 4 3 2 1" )
        button:SetSize(640, 50)
        button:Dock( TOP )
        button:DockMargin( 0, 0, 0, 10 )
        button:SetFontInternal("jazzjukeboxfont")
        button.Paint = function(self, w, h )
            draw.RoundedBox (5, 0, 0, w, h, Color(232, 188, 60, 255))
        end
        for k, v in ipairs(Jazz_Songs_jukebox) do
            button.DoClick = function()
                net.Start("floatshit")
					net.WriteFloat(2)
				net.SendToServer()
            
                frame:Close()

            end
        end

        local button = DScrollPanel:Add( "DButton", frame )
        button:SetText( "Band Outro" )
        button:SetSize(640, 50)
        button:Dock( TOP )
        button:DockMargin( 0, 0, 0, 10 )
        button:SetFontInternal("jazzjukeboxfont")
        button.Paint = function(self, w, h )
            draw.RoundedBox (5, 0, 0, w, h, Color(232, 188, 60, 255))
        end
        for k, v in ipairs(Jazz_Songs_jukebox) do
            button.DoClick = function()
                net.Start("floatshit")
					net.WriteFloat(3)
				net.SendToServer()
            
                frame:Close()

            end
        end

        local button = DScrollPanel:Add( "DButton", frame )
        button:SetText( "Bartender Song" )
        button:SetSize(640, 50)
        button:Dock( TOP )
        button:DockMargin( 0, 0, 0, 10 )
        button:SetFontInternal("jazzjukeboxfont")
        button.Paint = function(self, w, h )
            draw.RoundedBox (5, 0, 0, w, h, Color(232, 188, 60, 255))
        end
        for k, v in ipairs(Jazz_Songs_jukebox) do
            button.DoClick = function()
                net.Start("floatshit")
					net.WriteFloat(4)
				net.SendToServer()
            
                frame:Close()

            end
        end

        local button = DScrollPanel:Add( "DButton", frame )
        button:SetText( "Big Bang Funk" )
        button:SetSize(640, 50)
        button:Dock( TOP )
        button:DockMargin( 0, 0, 0, 10 )
        button:SetFontInternal("jazzjukeboxfont")
        button.Paint = function(self, w, h )
            draw.RoundedBox (5, 0, 0, w, h, Color(232, 188, 60, 255))
        end
        for k, v in ipairs(Jazz_Songs_jukebox) do
            button.DoClick = function()
                net.Start("floatshit")
					net.WriteFloat(5)
				net.SendToServer()
            
                frame:Close()

            end
        end

        local button = DScrollPanel:Add( "DButton", frame )
        button:SetText( "Danger Song" )
        button:SetSize(640, 50)
        button:Dock( TOP )
        button:DockMargin( 0, 0, 0, 10 )
        button:SetFontInternal("jazzjukeboxfont")
        button.Paint = function(self, w, h )
            draw.RoundedBox (5, 0, 0, w, h, Color(232, 188, 60, 255))
        end
        for k, v in ipairs(Jazz_Songs_jukebox) do
            button.DoClick = function()
                net.Start("floatshit")
					net.WriteFloat(6)
				net.SendToServer()
            
                frame:Close()

            end
        end

        local button = DScrollPanel:Add( "DButton", frame )
        button:SetText( "Drum Thunder" )
        button:SetSize(640, 50)
        button:Dock( TOP )
        button:DockMargin( 0, 0, 0, 10 )
        button:SetFontInternal("jazzjukeboxfont")
        button.Paint = function(self, w, h )
            draw.RoundedBox (5, 0, 0, w, h, Color(232, 188, 60, 255))
        end
        for k, v in ipairs(Jazz_Songs_jukebox) do
            button.DoClick = function()
                net.Start("floatshit")
					net.WriteFloat(7)
				net.SendToServer()
            
                frame:Close()

            end
        end

        local button = DScrollPanel:Add( "DButton", frame )
        button:SetText( "Love Affair" )
        button:SetSize(640, 50)
        button:Dock( TOP )
        button:DockMargin( 0, 0, 0, 10 )
        button:SetFontInternal("jazzjukeboxfont")
        button.Paint = function(self, w, h )
            draw.RoundedBox (5, 0, 0, w, h, Color(232, 188, 60, 255))
        end
        for k, v in ipairs(Jazz_Songs_jukebox) do
            button.DoClick = function()
                net.Start("floatshit")
					net.WriteFloat(8)
				net.SendToServer()
            
                frame:Close()

            end
        end

        local button = DScrollPanel:Add( "DButton", frame )
        button:SetText( "Pariah" )
        button:SetSize(640, 50)
        button:Dock( TOP )
        button:DockMargin( 0, 0, 0, 10 )
        button:SetFontInternal("jazzjukeboxfont")
        button.Paint = function(self, w, h )
            draw.RoundedBox (5, 0, 0, w, h, Color(232, 188, 60, 255))
        end
        for k, v in ipairs(Jazz_Songs_jukebox) do
            button.DoClick = function()
                net.Start("floatshit")
					net.WriteFloat(9)
				net.SendToServer()
            
                frame:Close()

            end
        end

        local button = DScrollPanel:Add( "DButton", frame )
        button:SetText( "Pianist Song" )
        button:SetSize(640, 50)
        button:Dock( TOP )
        button:DockMargin( 0, 0, 0, 10 )
        button:SetFontInternal("jazzjukeboxfont")
        button.Paint = function(self, w, h )
            draw.RoundedBox (5, 0, 0, w, h, Color(232, 188, 60, 255))
        end
        for k, v in ipairs(Jazz_Songs_jukebox) do
            button.DoClick = function()
                net.Start("floatshit")
					net.WriteFloat(10)
				net.SendToServer()
            
                frame:Close()

            end
        end

        local button = DScrollPanel:Add( "DButton", frame )
        button:SetText( "Plumskinzz" )
        button:SetSize(640, 50)
        button:Dock( TOP )
        button:DockMargin( 0, 0, 0, 10 )
        button:SetFontInternal("jazzjukeboxfont")
        button.Paint = function(self, w, h )
            draw.RoundedBox (5, 0, 0, w, h, Color(232, 188, 60, 255))
        end
        for k, v in ipairs(Jazz_Songs_jukebox) do
            button.DoClick = function()
                net.Start("floatshit")
					net.WriteFloat(11)
				net.SendToServer()
            
                frame:Close()

            end
        end

        local button = DScrollPanel:Add( "DButton", frame )
        button:SetText( "Pocket" )
        button:SetSize(640, 50)
        button:Dock( TOP )
        button:DockMargin( 0, 0, 0, 10 )
        button:SetFontInternal("jazzjukeboxfont")
        button.Paint = function(self, w, h )
            draw.RoundedBox (5, 0, 0, w, h, Color(232, 188, 60, 255))
        end
        for k, v in ipairs(Jazz_Songs_jukebox) do
            button.DoClick = function()
                net.Start("floatshit")
					net.WriteFloat(12)
				net.SendToServer()
            
                frame:Close()

            end
        end

        local button = DScrollPanel:Add( "DButton", frame )
        button:SetText( "Singer Song" )
        button:SetSize(640, 50)
        button:Dock( TOP )
        button:DockMargin( 0, 0, 0, 10 )
        button:SetFontInternal("jazzjukeboxfont")
        button.Paint = function(self, w, h )
            draw.RoundedBox (5, 0, 0, w, h, Color(232, 188, 60, 255))
        end
        for k, v in ipairs(Jazz_Songs_jukebox) do
            button.DoClick = function()
                net.Start("floatshit")
					net.WriteFloat(13)
				net.SendToServer()
            
                frame:Close()

            end
        end

        local button = DScrollPanel:Add( "DButton", frame )
        button:SetText( "Warm Song" )
        button:SetSize(640, 50)
        button:Dock( TOP )
        button:DockMargin( 0, 0, 0, 10 )
        button:SetFontInternal("jazzjukeboxfont")
        button.Paint = function(self, w, h )
            draw.RoundedBox (5, 0, 0, w, h, Color(232, 188, 60, 255))
        end
        for k, v in ipairs(Jazz_Songs_jukebox) do
            button.DoClick = function()
                net.Start("floatshit")
					net.WriteFloat(14)
				net.SendToServer()
            
                frame:Close()

            end
        end

        local button = DScrollPanel:Add( "DButton", frame )
        button:SetText( "You Did It Again" )
        button:SetSize(640, 50)
        button:Dock( TOP )
        button:DockMargin( 0, 0, 0, 10 )
        button:SetFontInternal("jazzjukeboxfont")
        button.Paint = function(self, w, h )
            draw.RoundedBox (5, 0, 0, w, h, Color(232, 188, 60, 255))
        end
        for k, v in ipairs(Jazz_Songs_jukebox) do
            button.DoClick = function()
                net.Start("floatshit")
					net.WriteFloat(15)
				net.SendToServer()
            
                frame:Close()

            end
        end

        local button = DScrollPanel:Add( "DButton", frame )
        button:SetText( "Intermission Music" )
        button:SetSize(640, 50)
        button:Dock( TOP )
        button:DockMargin( 0, 0, 0, 10 )
        button:SetFontInternal("jazzjukeboxfont")
        button.Paint = function(self, w, h )
            draw.RoundedBox (5, 0, 0, w, h, Color(232, 188, 60, 255))
        end
        for k, v in ipairs(Jazz_Songs_jukebox) do
            button.DoClick = function()
                net.Start("floatshit")
					net.WriteFloat(16)
				net.SendToServer()
            
                frame:Close()

            end
        end

        local button = DScrollPanel:Add( "DButton", frame )
        button:SetText( "Que Chevere Short Ver" )
        button:SetSize(640, 50)
        button:Dock( TOP )
        button:DockMargin( 0, 0, 0, 10 )
        button:SetFontInternal("jazzjukeboxfont")
        button.Paint = function(self, w, h )
            draw.RoundedBox (5, 0, 0, w, h, Color(232, 188, 60, 255))
        end
        for k, v in ipairs(Jazz_Songs_jukebox) do
            button.DoClick = function()
                net.Start("floatshit")
					net.WriteFloat(17)
				net.SendToServer()
            
                frame:Close()

            end
        end

        local button = DScrollPanel:Add( "DButton", frame )
        button:SetText( "Trash Chute Loop" )
        button:SetSize(640, 50)
        button:Dock( TOP )
        button:DockMargin( 0, 0, 0, 10 )
        button:SetFontInternal("jazzjukeboxfont")
        button.Paint = function(self, w, h )
            draw.RoundedBox (5, 0, 0, w, h, Color(232, 188, 60, 255))
        end
        for k, v in ipairs(Jazz_Songs_jukebox) do
            button.DoClick = function()
                net.Start("floatshit")
					net.WriteFloat(18)
				net.SendToServer()
            
                frame:Close()

            end
        end

        local button = DScrollPanel:Add( "DButton", frame )
        button:SetText( "Que Chevere Full" )
        button:SetSize(640, 50)
        button:Dock( TOP )
        button:DockMargin( 0, 0, 0, 10 )
        button:SetFontInternal("jazzjukeboxfont")
        button.Paint = function(self, w, h )
            draw.RoundedBox (5, 0, 0, w, h, Color(232, 188, 60, 255))
        end
        for k, v in ipairs(Jazz_Songs_jukebox) do
            button.DoClick = function()
                net.Start("floatshit")
					net.WriteFloat(19)
				net.SendToServer()
            
                frame:Close()

            end
        end

        local button = DScrollPanel:Add( "DButton", frame )
        button:SetText( "Last Heist" )
        button:SetSize(640, 50)
        button:Dock( TOP )
        button:DockMargin( 0, 0, 0, 10 )
        button:SetFontInternal("jazzjukeboxfont")
        button.Paint = function(self, w, h )
            draw.RoundedBox (5, 0, 0, w, h, Color(232, 188, 60, 255))
        end
        for k, v in ipairs(Jazz_Songs_jukebox) do
            button.DoClick = function()
                net.Start("floatshit")
					net.WriteFloat(20)
				net.SendToServer()
            
                frame:Close()

            end
        end

        local button = DScrollPanel:Add( "DButton", frame )
        button:SetText( "Stop Sound" )
        button:SetSize(640, 50)
        button:Dock( TOP )
        button:DockMargin( 0, 0, 0, 10 )
        button:SetFontInternal("jazzjukeboxfont")
        button.Paint = function(self, w, h )
            draw.RoundedBox (5, 0, 0, w, h, Color(232, 188, 60, 255))
        end
        button.DoClick = function()
            net.Start("stopsound")
            net.SendToServer()
            frame:Close()
            

        end


    end

    end)
