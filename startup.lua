while true do
    local modem = peripheral.wrap("left")
    modem.open(3)  -- Open channel 3 so that we can listen on it
    local event, modemSide, senderChannel, 
        replyChannel, message, senderDistance = os.pullEvent("modem_message")
        
    print("sender channel "..senderChannel)
    print("reply channel: "..replyChannel)
    print("side is "..modemSide)
    print("message: "..message)
    t = io.open("p", "w")
    t:write(message.."\n")
    t:close()
    print("The sender is: "..(senderDistance or "an unknown number of").." blocks away from me.")

    local m = peripheral.wrap("left")
    m.open(4)
    local msg = os.pullEvent("modem_message")
    if msg == "forward" then
        turtle.forward()
        local out = io.open('p', 'r')
        a = io.open("p", "w")
        a:write(out)
        a:write(msg)
        a:close()
        out:close()
    end
    local b = peripheral.wrap("left")
    b.open(4)
    local msg = os.pullEvent("modem_message")
    if msg == "forward" then
        turtle.forward()
        local out = io.open('p', 'r')
        a = io.open("p", "w")
        a:write(out)
        a:write(msg)
        a:close()
        out:close()
    end
end
