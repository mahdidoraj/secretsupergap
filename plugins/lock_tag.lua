
antitag = {}-- An empty table for solving multiple kicking problem

do
local function run(msg, matches)
  if is_momod(msg) then -- Ignore mods,owner,admins
    return
  end
  local data = load_data(_config.moderation.data)
  if data[tostring(msg.to.id)]['settings']['lock_tag'] then
    if data[tostring(msg.to.id)]['settings']['lock_tag'] == 'yes' then
      if antitag[msg.from.id] == true then 
        return
      end
      send_large_msg("chat#id".. msg.to.id , "Tag is not allowed here")
      local name = user_print_name(msg.from)
      savelog(msg.to.id, name.." ["..msg.from.id.."] kicked (tag was locked) ")
      chat_del_user('chat#id'..msg.to.id,'user#id'..msg.from.id,ok_cb,false)
		  antitag[msg.from.id] = true
      return
    end
  end
  return
end
local function cron()
  antitag = {} -- Clear antiusername table 
end
return {
  patterns = {
    "@ (.+)",
    "@(.+)",
    "(.+)@",
    "(.+) @",
    "# (.+)",
    "#(.+)",
    "(.+)#",
    "(.+) #"
    },
  run = run,
	cron = cron
}

end