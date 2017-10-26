#-*- coding: utf-8 -*-
include(Math)

class Campus

public
	def initialize(width, height)
		@plane = Array.new(height){Array.new(width, [1, 1, 1])}
		@width = width
		@height = height
	end
	
	#上書き描画
	def appendDraw(image, x, y)
		image.length().times do |i|
			break if y+i>height
			image[0].length().times do |j|
				break if x+j>width
				@plane[y+i][x+j] = image[i][j]
			end
		end
	end

	def getPlain()
		return @plane;
	end

end


