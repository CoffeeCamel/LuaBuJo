require "os"

function love.load()
	love.window.setTitle("Bullet Journal")

	font = love.graphics.setNewFont("JuliaMono-Regular.ttf")
	fontWidth = font:getWidth("a")
	fontHeight = font:getHeight("a")

	screen = {}
	screen.columns = 60
	screen.rows = 36
	screen.width  = fontWidth * screen.columns
	screen.height = fontHeight * screen.rows
	love.window.setMode(screen.width, screen.height, {borderless=true,resizable=false,x=1360-screen.width,y=(768/2)-(screen.height/2)})
	screen.xMargin = fontWidth * 4
	screen.yMargin = fontHeight * 2

	love.graphics.setBackgroundColor(.95, .95, .88)

	--print(os.date("%V"))
end

function love.draw()
	love.graphics.setColor(.75,.75,.75)
	--love.graphics.print(screen.columns .. "," .. screen.rows)
	for c = 0, screen.columns do
		--love.graphics.points(fontWidth * c, screen.yMargin * r)
		for r = 0, screen.rows do
			--love.graphics.points(fontWidth * c, screen.yMargin * r)
			love.graphics.points(fontWidth * c, fontHeight * r)
		end
	end
	--TO DO:
	--Blinky cursor letter colour to page colour, letter under cursor turns
	--page colour when cursor is letter colour.

	love.graphics.setColor(.1,.1,.15)
	love.graphics.rectangle("fill", 0, screen.height - fontHeight, screen.width, screen.height)
	love.graphics.setColor(.95, .95, .88)
	love.graphics.print(" Commands: SAVE QUIT INDEX", 0, screen.height - fontHeight)
	love.graphics.print("PAGE-05 PREV NEXT ", screen.width - (fontWidth * 18), screen.height - fontHeight)

	--HELPFULL CHARACTERS: ▫ ○ ▪
	love.graphics.setColor(.1,.1,.15)
	love.graphics.print("10/12 43/53 21 Wednesday", screen.xMargin, screen.yMargin)
	love.graphics.print("○ Finished writing z-buffer for rasteriser.", screen.xMargin, screen.yMargin + (fontHeight * 2))
	love.graphics.print("○ Started writing digital Bullet Journal program.", screen.xMargin, screen.yMargin + (fontHeight * 3))
	love.graphics.print("▪ Do laundry.", screen.xMargin, screen.yMargin + (fontHeight * 4))
	love.graphics.print("▫ Write top-down toy in LÖVE demonstrating double-slit", screen.xMargin, screen.yMargin + (fontHeight * 5))
	love.graphics.print("experiment with ray-casting (tracing?) with both light-", screen.xMargin, screen.yMargin + (fontHeight * 6))
	love.graphics.print("as-a-particle and light-as-a-wave modes. Also create", screen.xMargin, screen.yMargin + (fontHeight * 7))
	love.graphics.print("simulations for Poisson's Spot and light travelling", screen.xMargin, screen.yMargin + (fontHeight * 8))
	love.graphics.print("around the complex corners of a 2-dimensional room.", screen.xMargin, screen.yMargin + (fontHeight * 9))
	love.graphics.print("▫ Finish reading Through the Looking Glass.", screen.xMargin, screen.yMargin + (fontHeight * 10))
	love.graphics.print("- Next Book: Arrows of the Sun", screen.xMargin*2, screen.yMargin + (fontHeight * 11))
	love.graphics.print("- Do Bullet Journal pages as week-to-week Thurs-Wed?", screen.xMargin, screen.yMargin + (fontHeight * 12))
	love.graphics.print("- Individual programming project pages to document", screen.xMargin, screen.yMargin + (fontHeight * 13))
	love.graphics.print("timing and reduce into task list.", screen.xMargin, screen.yMargin + (fontHeight * 14))
end
