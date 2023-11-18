
local M = {}

function M.animateWindow2(self, node)
	DEBUG_MESSAGE = "Animating Window"
	
	local s = 1.0
	gui.animate(node, gui.PROP_SCALE, vmath.vector4(s, s, s, 0), gui.EASING_INOUT, 0.4, 0)
end


function M.animateWindow1(node, d)
	
	local start_scale = 0.01
	gui.set_scale(node, vmath.vector4(start_scale, start_scale, start_scale, 0))

	
	local from_color = gui.get_color(node)
	local to_color = gui.get_color(node)
	from_color.w = 0
	gui.set_color(node, from_color)


	gui.animate(node, gui.PROP_COLOR, to_color, gui.EASING_IN, 1.5, d)


	local s = 1.5
	gui.animate(node, gui.PROP_SCALE, vmath.vector4(s, s, s, 0), gui.EASING_IN, 1.2,
	d, M.animateWindow2)
end

function M.animateButton4(self, node)

	local s = 1
	gui.animate(node, gui.PROP_SCALE, vmath.vector4(s, s, s, 0), gui.EASING_INOUT, 0.12, 0)
end


function M.animateButton3(self, node)

	local s = 1.06
	gui.animate(node, gui.PROP_SCALE, vmath.vector4(s, s, s, 0), gui.EASING_INOUT, 0.12,
	0, M.animateButton4)
end


function M.animateButton2(self, node)

	local s = 0.98
	gui.animate(node, gui.PROP_SCALE, vmath.vector4(s, s, s, 0), gui.EASING_INOUT, 0.12,
	0, M.animateButton3)
end


function M.animateButton1(node, d)

	local start_scale = 0.7
	gui.set_scale(node, vmath.vector4(start_scale, start_scale, start_scale, 0))

	
	local from_color = gui.get_color(node)
	local to_color = gui.get_color(node)
	from_color.w = 0
	gui.set_color(node, from_color)


	gui.animate(node, gui.PROP_COLOR, to_color, gui.EASING_IN, 0.2, d)


	local s = 1.1
	gui.animate(node, gui.PROP_SCALE, vmath.vector4(s, s, s, 0), gui.EASING_IN, 0.2,
	d, M.animateButton2)
end


function M.animateButtonPress(node, d)
	DEBUG_MESSAGE2 = "Executing M.animateButtonPress"
	
	local from_color = gui.get_color(node)
	local to_color = gui.get_color(node)
	from_color.w = 0.85
	gui.set_color(node, from_color)

	gui.animate(node, gui.PROP_COLOR, to_color, gui.EASING_IN, 0.1, d)

	local s = 1.2
	gui.animate(node, gui.PROP_SCALE, vmath.vector4(s, s, s, 0), gui.EASING_IN, 0.1, d)
end


function M.animateButtonRelease(node, d)

	local s = 1.0
	gui.animate(node, gui.PROP_SCALE, vmath.vector4(s, s, s, 0), gui.EASING_IN, 0.1, d)
end


return M