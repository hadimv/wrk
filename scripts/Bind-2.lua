local cjson = require "cjson"


request = function()
   local n = 0
   number = 09
   math.randomseed(os.clock() * 1000000000)
   number = number..math.random(100000000, 900000000)
   cod = math.random(100000000, 900000000)
   id = math.random(100000000, 900000000)
   t = {phoneNumber = number, verificationCode = cod, deviceId = id}
   wrk.body = cjson.encode(t)
   wrk.method = "BIND"
   wrk.headers["Content-Type"] = "application/json"
   return wrk.format()
end