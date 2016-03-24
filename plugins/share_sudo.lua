do

function run(msg, matches)
send_contact(get_receiver(msg), "+123456789", "BABA", "mahdi", ok_cb, false)
end

return {
patterns = {
"^[!#/]share$",
"^شماره باباتو بده$"

},
run = run
}

end