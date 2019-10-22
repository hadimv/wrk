local cjson = require "cjson"

request = function()
   number = '09'
   math.randomseed(os.clock() * 10000000000)
   number = number..math.random(100000000, 900000000)
   body = {phoneNumber = number}
   wrk.body = cjson.encode(body)
   wrk.method = "CLAIM"
   wrk.headers["Content-Type"] = "application/json"
   return wrk.format()
end

function response(status, headers, body)
end
