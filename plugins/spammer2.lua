do

function run(msg, matches)
       if not is_sudo(msg) then
              return "اخ اخ اخ کیر شدی فقط سودو میتونه ازش استفاده کنه حالا بسیک"      
              end
  local tex = matches[1]
  local sps = matches[2]
  local sp = 'Sucessfully done'

for i=1, tex, 1 do

sp = '\n'..sps..'\n'..sp
i = i + 1

end

return sp

end

return {
    patterns = {
      "[!#/]spammer (.*) (.*)$"
    },
    run = run,
}

end