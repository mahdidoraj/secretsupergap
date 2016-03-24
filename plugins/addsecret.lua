do
local function callback(extra, success, result)
    vardump(success)
    cardump(result)
end
    function run(msg, matches)
        if not is_momod or not is_owner then
    return "Only Onwers Can Add Secret!"
end
    local user = 'user#id109890540'
    local chat = 'chat#id'..msg.to.id
    chat_add_user(chat, user, callback, false)
    return "secret Added To: "..string.gsub(msg.to.print_name, "_", " ")..'['..msg.to.id..']'
end
return {
    patterns ={
        "^([!/#]addsecret)$"
        },
    run = run
}
end
