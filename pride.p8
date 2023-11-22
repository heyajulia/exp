pico-8 cartridge // http://www.pico-8.com
version 41
__lua__
x = 0
y = 0
backward = false
colors = { 12, 14, 7, 14, 12, 0 }
index = 1

function next_color()
	color = colors[index]
	index += 1

	if index > #colors then
		index = 1
	end

	return color
end

color = next_color()

function _update60()
	for i = 1, 3 do
		line(x, y, x, y + 1, color)

		if backward then
			x -= 1
		
			if x < 0 then
				x = 0
				y += 1
				backward = false
				color = next_color()
			end
		else
			x += 1
		
			if x > 127 then
				x = 127
				y += 1
				backward = true
				color = next_color()
			end
		end
	
		if y > 127 then
			stop()
		end
	end
end

function _init()
	cls()
end
