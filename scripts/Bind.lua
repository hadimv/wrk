local cjson = require "cjson"

request = function()
   number = '09'
   math.randomseed(os.clock() * 1000000000)
   number = number..math.random(100000000, 900000000)
   cod = '111111'
   id = math.random(100000000, 900000000)
   body = {phoneNumber = number, verificationCode = cod, deviceId = id}
   wrk.body = cjson.encode(body)
   wrk.method = "BIND"
   wrk.headers["Content-Type"] = "application/json"
   return wrk.format()
end
