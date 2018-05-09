gl.setup(NATIVE_WIDTH, NATIVE_HEIGHT)

local last_pressed = "<Press some keys on your remote control>"

util.data_mapper{
    ["sys/cec/key"] = function(key)
        last_pressed = key
    end
}

local font = resource.load_font "font.ttf"

function node.render()
    font:write(10, 10, last_pressed, 40, 1,1,1,1)
end
