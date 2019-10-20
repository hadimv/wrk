--  invalid user test
wrk.method = "POST"
wrk.body = '--------------------------12345\r\nContent-Disposition: form-data; name="data"\r\n\r\n{"phone_number":"09336521656","device_id":"dev"}\r\n--------------------------12345--\r\n'

wrk.headers["Content-Type"] = "multipart/form-data; boundary=------------------------12345"

function response(status, headers, body)
    print(body)

end
