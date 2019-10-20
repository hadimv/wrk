local cjson = require "cjson"


request = function()
   local n = 0
   number = 09104558962
   t = {phoneNumber = number}
   wrk.body = cjson.encode(t)
   wrk.method = "CLAIM"
   wrk.headers["Content-Type"] = "application/json"
   return wrk.format()
end

function response(status, headers, body)
end
