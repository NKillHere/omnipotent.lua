-- thank you for downloading Omnipotent.lua, probably the best and the only open source lua for Rawetrip right now I am planning on finishing the killsay to sync to the checkbox(check line 115), but you can help by submitting to NKillBruh#2968 a update to the lua. next updates might add AntiAim, kill sings, custom killsound/hitsound, logs under crosshair, a menu and killmarks
console.print_color("Welcome to Omnipotent Software", color.new(0, 255, 0))
cheat.popup("Welcome", "Welcome to Omnipotent.lua") -- easy to understand, the cheat makes a pop up with the message, the comma making a subtitle to the title
ui.add_checkbox("Omnipotent Clantag") -- adds a checkbox to the cheat's lua settings

local labels = {
    "Ω",
    "Ω",
    "Ω O",
    "Ω Om",
    "Ω Omn",
    "Ω Omni",
    "Ω Omnip",
    "Ω Omnipo",
    "Ω Omnipot",
    "Ω Omnipote",
    "Ω Omnipoten",
    "Ω Omnipotent",
    "Ω Omnipoten",
    "Ω Omnipote",
    "Ω Omnipot",
    "Ω Omnipo",
    "Ω Omnip",
    "Ω Omni",
    "Ω Omn",
    "Ω Om",
    "Ω O",
    "Ω",
    "Ω"
}

local time = {
	first = 0, second = 0
}

cheat.RegisterCallback("on_paint", function()
    if not ui.get_bool("Omnipotent Clantag") then return end
    if time.first < globalvars.get_tickcount() then   
		time.second = time.second + 1
        if time.second > #labels + 1 then
            time.second = 0
        end

        engine.set_clantag(labels[time.second])

        time.first = globalvars.get_tickcount() + 17 -- how fast it goes
    end
end)

ui.add_checkbox("Casual English Killsay(Now with 100% less toxicity!)")
local randomz
events.register_event("player_death", function(e)
        local attacker = e:get_int("attacker")
        local attacker_to_player = engine.get_player_for_user_id(attacker)

        local lp_idx = engine.get_local_player_index()

        if attacker_to_player == lp_idx then
            phrases = {
                "Omnipotent.lua owns me and all",
                "What russian paste you got?",
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
                "You either drip or drown, Spiderman!",
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
                "Juan.",
                "Feeling good, might open source later"
            }
            randomz = math.random(0, 28)
            console.execute_client_cmd("say " .. phrases[randomz])
        end
    end
)











