local function run(msg, matches)
if msg.to.type == 'chat' then
    if is_owner(msg) then
        return
    end
    local data = load_data(_config.moderation.data)
    if data[tostring(msg.to.id)] then
        if data[tostring(msg.to.id)]['settings'] then
            if data[tostring(msg.to.id)]['settings']['lock_badw'] then
                lock_adds = data[tostring(msg.to.id)]['settings']['lock_badw']
            end
        end
    end
    local chat = get_receiver(msg)
    local user = "user#id"..msg.from.id
    if lock_adds == "yes" then
        send_large_msg(chat, 'Badwords is not allowed here!!')
        chat_del_user(chat, user, ok_cb, true)
    end
end
end
return {
  patterns = {
    "(ک*س)$",
    "کیر",
	"کص",
	"کــــــــــیر",
	"کــــــــــــــــــــــــــــــیر",
	"کـیـــــــــــــــــــــــــــــــــــــــــــــــــــر",
    "ک×یر",
	"ک÷یر",
	"ک*ص",
	"کــــــــــیرر",
    "kir",
	"kos",
	"گوساله",
	"[Gg]osale",
	"gusale",
	"fuck",
	"son of bich",
	"jakesh",
	"dayous",
	"koni",
	"kos nanat",
	"kosnanat",
	"madarjende",
	"kir",
	"kos",
	"nnt",
	"konde",
	"kon",
	"kunde",
	"kun",
	"sex",
	"sexy",
	"alexis",
	"حروم زاده",
	"مادرجنده",
	"جنده",
	"کسکش",
	"کس",
	"کیر",
	"کس ننت",
	"ننت",
	"اوبی",
	"جاکش",
	"کس نگو",
	"مادر خراب",
	"جقی",
	"جغی",
	"مادر به خطا",
	"حرومی",
	"گاییدم",
	"نگاییدم",
	"مادرتو گاییدم",
	"خارکسده",
	"اب کون",
	"مادر لامپی",
	"خواهرتو گاییدم",
	"سکس",
	"سکسی",
	"کیرم به ارزو های مادرت",
	"کیرم به کانون گرم خانوادت",
	"کیرم به دستای زحمت کش پدرت",
	"استخون مرده هات به کون زنده هات",
	"از عصا به دست تا شیشه شیر به دست ناموستو گاییدم",
	"کسخل",
    "کس کش",
	"بی پدر مادر"
  },
  run = run
}
