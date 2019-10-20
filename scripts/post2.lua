local cjson = require "cjson"

local number = 09104558962

function request()
    number = number+1
    t = {phoneNumber = number}
    wrk.body = cjson.encode(t)
    wrk.method = "POST"
    wrk.headers["Content-Type"] = "application/json"
    return wrk.request()
end

function response(status, headers, body)
    print(wrk.body)
    number = number+1
    print(number)
end
