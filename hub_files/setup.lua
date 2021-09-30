if fs.exists("json") then
else
    shell.run("pastebin get 4nRg9CHU json")
end
if fs.exists("disk/hub_files/json") then
else
    shell.run("pastebin get 4nRg9CHU disk/hub_files/json")
end

os.loadAPI("json")

local x = 1
local y = 1

function setUp()
    shell.run("mkdir public")
    m = io.open("public/monitor", "w")
    m:write("m = peripheral.find(\"monitor\")")
    m:close()
end

local modem = peripheral.wrap("top")

function hostModem()
    
    modem.transmit(3, 1, "mine_id: 0|pos: "..x..","..y)

    t = io.open("disk/hub_files/turtles", "w")    
    t:write("id:0|1|1")
    t:close()
end

function updateForward()
    modem.transmit(4, 1, "forward")
    modem.transmit(5, 1, "id:0|pos: "..x..","..y)
end

hostModem()
