os.setComputerLabel("HUB")
multishell.launch({}, "/user.lua")

--os.loadAPI("public/monitor")

local monitor = peripheral.find("monitor")

function drawOff()
    monitor.write("                                                                            ")
    monitor.write("                          ULTRA MINER                                       ")
    monitor.write("                                       .lua                                 ")
end
drawOff()