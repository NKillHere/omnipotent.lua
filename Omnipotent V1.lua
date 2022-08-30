-- thank you for downloading Omnipotent.lua, probably the best and the only open source lua for Rawetrip right now I am planning on finishing the killsay to sync to the checkbox(check line 115), but you can help by submitting to NKillBruh#2968 a update to the lua. next updates might add AntiAim, kill sings, custom killsound/hitsound, logs under crosshair, a menu and killmarks
console.print_color ("Welcome to Omnipotent Software", color.new (0 , 255 , 0))
cheat.popup("Welcome", "Welcome to Omnipotent.lua") -- easy to understand, the cheat makes a pop up with the message, the comma making a subtitle to the title
ui.add_checkbox ("Omnipotent Clantag") -- adds a checkbox to the cheat's lua settings
local_strings_value = 62 -- how many stages are on the clantag

local labels =

{
"_",
"O_",
"Om",
"Om_",
"Omn",
"Omn_",
"Omni",
"Omni_",
"Omnip",
"Omnip_",
"Omnipo",
"Omnipo_",
"Omnipot",
"Omnipot_",
"Omnipote",
"Omnipote_",
"Omnipoten",
"Omnipoten_",
"Omnipotent",
"Omnipotent_",
"Omnipotent.",
"Omnipotent._",
"Omnipotent.l",
"Omnipotent.l_",
"Omnipotent.lu",
"Omnipotent.lu_",
"Omnipotent.lua",
"Omnipotent.lua_",
"Omnipotent.lua",
"Omnipotent.lua_",
"Omnipotent.lua",
"Omnipotent.lu_",
"Omnipotent.lu",
"Omnipotent.l_",
"Omnipotent.l",
"Omnipotent._",
"Omnipotent.",
"Omnipotent_",
"Omnipotent",
"Omnipoten_",
"Omnipoten",
"Omnipote_",
"Omnipote",
"Omnipot_",
"Omnipot",
"Omnipo_",
"Omnipo",
"Omnip_",
"Omnip",
"Omni_",
"Omni",
"Omn_",
"Omn",
"Om_",
"Om",
"O_",
"O",
"_",
" ",
"_",
" ",
}

local first = 0
local second = 0

local function test()
   if first < globalvars.get_tickcount() then
      second = second + 1
      if second > strings_value then
         second = 0
          end

engine.set_clantag(labels[second])
first = globalvars.get_tickcount() + 3																	
      end
end
function toint(n)
    local s = tostring(n)
    local i, j = s:find('%.')
    if i then
        return tonumber(s:sub(1, i-1))
    else
        return n
    end
end
local ctag_time = 0
local last_ctag_time = 0
local ctag_timing = 0
cheat.RegisterCallback("on_paint", function()
ctag_time = (toint(globalvars.get_realtime()*10)-toint(globalvars.get_realtime())*10)
if engine.is_connected() and ui.get_bool("Omnipotent Clantag")then
if last_ctag_time ~= ctag_time then
  last_ctag_time = ctag_time
  if ctag_timing < #labels then
ctag_timing = ctag_timing +1
else
ctag_timing = 1
end
engine.set_clantag(labels[ctag_timing])
end
end
test()
end)

ui.add_checkbox ("Casual English Killsay(Now with 100% less toxicity!)")
local randomz
events.register_event("player_death", function(e)
    local attacker = e:get_int("attacker")
    local attacker_to_player = engine.get_player_for_user_id(attacker)
   
    local lp_idx = engine.get_local_player_index( )
   
    if attacker_to_player == lp_idx then
    phrases = { "Omnipotent.lua owns me and all",
                        "What russian paste you got?",
                        "Man's went flying",
                        "To mars you go!",
                        "I will send you to Jesus",
                        "Aaaand there he goes, where he goes nobody knows!",
                        "Guns dont kill people, I do",
                        "I hope nobody's taping this!",
                        "You got blood on my suit.",
                        "That helmet of yours is a nice bowl for your brains!",
                        "Did somebody slaughter a goat in here? No seriously I wanna know.",
                        "Somebody stole my donuts, and your all gonna pay!",
                        "Mmm, smells like chicken.",
                        "Nice hustle tons of fun, next time eat a salad!",
                        "You either drip or drown, hvh kid!",
                        "That's gotta hurt.",
                        "*CRUNCH*",
                        "See ya maaaaaate!",
                        "Cheat tapping? On god?",
                        "fr(fortnite rule34)",
                        "I am inevitable, for I am Omnipotent.",
                        "This cant be good for me but I feel great!",
                        "*Killsound* I AM UNEMPLOYED",
                        "Coded with love by NKillBruh#2968",
                        "All god, no money.",
                        "player.CharacterAdded:connect(function(plr) if plr:IsA(“BlackFather”) then  plr:Destroy()end end",
                        "Fun Fact : You just got killed by a free cheat user",
                        "Man's went up more than a cryptocurrency", }
         randomz = math.random(0, 28)
            console.execute_client_cmd("say " ..  phrases [randomz])
  end
end)














