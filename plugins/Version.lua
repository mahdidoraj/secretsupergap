do

function run(msg, matches)
  return 'SecretBot'.. VERSION .. [[ 
 
  ویرایش کننده : Mahdi S.Love
  
  کانال : @secrebotchan
  
  ادرس پشتیبانی : https://telegram.me/joinchat/CJKleAaIuGkE83V71XSQjQ
  
  SecretBot نسخه 1
  
  __________________]]
end

return {
  description = "Shows bot version", 
  usage = "!version: Shows bot version",
  patterns = {
    "^!version$"
  }, 
  run = run 
}

end