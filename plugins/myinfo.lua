do 
local function run(msg, matches) 

hash2 = 'bot:myinfo2:2'..msg.from.id 
hash3 = 'bot:myinfo3:3'..msg.from.id 
hash4 = 'bot:myinfo4:4'..msg.from.id 
hash5 = 'bot:myinfo5:5'..msg.from.id 
hash6 = 'bot:myinfo6:6'..msg.from.id 
hash7 = 'bot:myinfo7:7'..msg.from.id 
hash8 = 'bot:myinfo8:8'..msg.from.id 
hash9 = 'bot:myinfo9:9'..msg.from.id 
hash10 = 'bot:myinfo10:10'..msg.from.id 
hash = 'bot:myinfo'..msg.from.id 

if matches[1]:lower() == 'setmyage' then 

redis:set(hash2,'waiting:'..msg.from.id) 
return 'Ok. now send your age' 
else 
if redis:get(hash2) == 'waiting:'..msg.from.id then 
redis:set(hash2,msg.text) 
return 'Your age has been saved' 
end 
end 

if matches[1]:lower() == 'setmyname' then 

redis:set(hash3,'waiting:'..msg.from.id) 
return 'Ok. now send your name' 
else 
if redis:get(hash3) == 'waiting:'..msg.from.id then 
redis:set(hash3,msg.text) 
return 'Your name has been saved' 
end 
end 

if matches[1]:lower() == 'setmyaddress' then 
redis:set(hash9,'waiting:'..msg.from.id) 
return 'Ok. now send your address' 
else 
if redis:get(hash9) == 'waiting:'..msg.from.id then 
redis:set(hash9,msg.text) 
return 'Your address has been saved' 
end 
end 

if matches[1]:lower() == 'setmysex' then 
redis:set(hash4,'waiting:'..msg.from.id) 
return 'Ok. now send your sex' 
else 
if redis:get(hash4) == 'waiting:'..msg.from.id then 
redis:set(hash4,msg.text) 
return 'Your sex has been saved' 
end 
end 

if matches[1]:lower() == 'setmyedu' then 
redis:set(hash5,'waiting:'..msg.from.id) 
return 'Ok. now send your eduction' 
else 
if redis:get(hash5) == 'waiting:'..msg.from.id then 
redis:set(hash5,msg.text) 
return 'Your education has been saved' 
end 
end 

if matches[1]:lower() == 'setmynum' then 
redis:set(hash6,'waiting:'..msg.from.id) 
return 'Ok. now send your phone number' 
else 
if redis:get(hash6) == 'waiting:'..msg.from.id then 
redis:set(hash6,msg.text) 
return 'Your phone number has been saved' 
end 
end 

if matches[1]:lower() == 'setmychannel' then 
redis:set(hash7,'waiting:'..msg.from.id) 
return 'Ok. now send your channel address' 
else 
if redis:get(hash7) == 'waiting:'..msg.from.id then 
redis:set(hash7,msg.text) 
return 'Your channel address has been saved' 
end 
end 

if matches[1]:lower() == 'setmyinsta' then 
redis:set(hash8,'waiting:'..msg.from.id) 
return 'Ok now Send your instagram address' 
else 
if redis:get(hash8) == 'waiting:'..msg.from.id then 
redis:set(hash8,msg.text) 
return 'Your instagram address has been saved' 
end 
end 

if matches[1]:lower() == 'setmysite' then 
redis:set(hash10,'waiting:'..msg.from.id) 
return 'Ok. now Send your site address' 
else 
if redis:get(hash10) == 'waiting:'..msg.from.id then 
redis:set(hash10,msg.text) 
return 'Your site address has been saved' 
end 
end 

if matches[1]:lower() == 'myinfo' then 
return "<b>Hi "..value.."</b>\n" 
.."\n".."<b>Your Name</b>∶"..(redis:get(hash3) or '<i>NO NAME</i>').."\n" 
.."<b>Your Age</b>∶"..(redis:get(hash2)  or '<i>NO AGE</i>').."\n" 
.."<b>Your Sex</b>∶"..(redis:get(hash4)  or '<i>NO SEX</i>').."\n" 
.."<b>Your Address</b>∶"..(redis:get(hash9)  or '<i>NO Address</i>').."\n" 
.."<b>Your Education</b>∶"..(redis:get(hash5)  or '<i>NO Education</i>').."\n" 
.."<b>Your Number</b>∶"..(redis:get(hash6)  or '<i>NO Number</i>').."\n" 
.."<b>Your Channel</b>∶"..(redis:get(hash7)  or '<i>NO Channel</i>').."\n" 
.."<b>Your insta</b>∶"..(redis:get(hash8)  or '<i>NO insta</i>').."\n" 
.."<b>Your Site</b>∶"..(redis:get(hash10)  or '<i>NO Site</i>').."\n\n" 
.."<b>Our channel</b>∶ @MoonsTeam".."\n" 

end 
if matches[1]:lower()== 'delmyinfo' then 
    redis:del(hash, hash2, hash3, hash4, hash5, hash6, hash7, hash8, hash9, hash10) 
    return 'Your information has been deleted' 
    end 
end 

return { 
    patterns = { 
        '^[/!](setmyname)$', 
        '^[/!](setmyage)$', 
        '^[/!](setmyaddress)$', 
        '^[/!](myinfo)$', 
        '^[/!](setmysex)$', 
        '^[/!](setmyedu)$', 
        '^[/!](setmynum)$', 
        '^[/!](setmychannel)$', 
        '^[/!](setmyinsta)$', 
        '^[/!](setmysite)$', 
        '^[/!](delmyinfo)$', 
        '(.*)', 
    }, 
    run = run, 
    pre_process = pre_process 
} 
end 

-- by @MoonsTeam , @Makan
