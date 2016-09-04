
srv=net.createServer(net.TCP)
srv:listen(80, function(conn)
    local responseBytes = 0
    local method=""
    local url=""
    local vars=""
    conn:on("receive", function(conn,payload)
        _, _, method, url, vars = string.find(payload, "([A-Z]+) /([^?]*)%??(.*) HTTP")
        if url == "favicon.ico" then
            conn:send("HTTP/1.1 404 file not found")
            responseBytes = -1
            return
        end
        url="index.html"
        responseBytes = 0
        conn:send("HTTP/1.1 200 OK\r\n\r\n")
    end)
    conn:on("sent", function(conn)
        if responseBytes>=0 and method=="GET" then
            if file.open(url, "r") then
                file.seek("set", responseBytes)
                local line=file.read()
                file.close()
                if line then
                    conn:send(line)
                    responseBytes = responseBytes + string.len(line)
                    return
                end
            end
        end
    conn:close() end)
end)
