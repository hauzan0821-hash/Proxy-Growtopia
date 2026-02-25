-- # Growtopia Proxy # --

--[[

staticYellowFrame
staticBlueFrame
staticGreyFrame
staticPurpleFrame

varlist = {}
varlist[0] = "OnDialogRequest"
varlist[1] = [[set_default_color|`o
add_label_with_icon|big|`2Select a Hotkey|left|2724|
add_spacer|small
add_button_with_icon|1btn_f1|  `9F1  |staticYellowFrame|2724|
add_button_with_icon|1btn_f2|  `9F2  |staticGreyFrame|2724|
add_button_with_icon|1btn_f3|  `9F3  |staticBlueFrame|2724|
add_button_with_icon|1btn_f4|  `9F4  |staticPurpleFrame|2724|
add_button_with_icon|1btn_f5|  `9F5  |staticBlueFrame|2724|
add_button_with_icon|1btn_f6|  `9F6  |staticBlueFrame|2724|
add_button_with_icon|1btn_f7|  `9F7  |staticBlueFrame|2724|
add_button_with_icon|1btn_f8|  `9F8  |staticBlueFrame|2724|
add_button_with_icon|1btn_f9|  `9F9  |staticBlueFrame|2724|
add_button_with_icon|1btn_f10| `9F10 |staticBlueFrame|2724|
add_button_with_icon|1btn_f11| `9F11 |staticBlueFrame|2724|
add_button_with_icon|1btn_f12| `9F12 |staticBlueFrame|2724|
add_button_with_icon|1btn_none| `9none|staticBlueFrame|2724|
add_button_with_icon||END_LIST|noflags|0|0|
add_quick_exit|
end_dialog|wrench_modesxd|Cancel|Okay|
--
varlist.netid = -1
SendVarlist(varlist)
]]

function OnTextOverlay(text)
    var = {}
    var[0] = "OnTextOverlay"
    var[1] = text
    var.netid = -1
    SendVarlist(var)
end

function OnConsoleMessage(text)
    var = {}
    var[0] = "OnConsoleMessage"
    var[1] = text
    var.netid = -1
    SendVarlist(var)
end

OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9/proxy to show commands !")

Announcement = "Thanks for using this proxy ! :)"

function proxy_commands()
    function string.removeColors(varlist)
   return varlist:gsub("`.", "")
end

n1 = GetLocal().name:removeColors()
n2 = n1:gsub(" of Legend", "")
n3 = n2:gsub("Dr.", "")
varlist = {}
varlist[0] = "OnDialogRequest"
varlist[1] = [[set_default_color|`o
add_label_with_icon|big|`3ZACKS PROXY``|left|1790|
add_spacer|small|
add_label_with_icon|small|GA TAU MALES PENGEN BELI HINO ``|left|1432|
add_spacer|small|
add_label_with_icon|small|`9Announcement : `3]]..Announcement..[[``|left|13292|
add_spacer|small|
add_textbox|`9Current World : `3]]..GetLocal().world..[[|left|
add_textbox|`9 X : `3]]..math.floor(GetLocal().tile_x)..[[ `0x `9Y : `3]]..math.floor(GetLocal().tile_y)..[[|left|
add_textbox|`9User ID : `3]]..math.floor(GetLocal().userid)..[[ `0x `9Net ID : `3]]..math.floor(GetLocal().netid)..[[|left|
add_spacer|small|
add_label_with_icon|big|`3Main Commands``|left|5956|
add_spacer|small|
add_textbox|`9Command : `0/surg `0( `3enable / disable auto-surg `0)|left|
add_textbox|`9Command : `0/asurg `0( `3PAGE SURGERY )|left|
add_textbox|`9Command : `0/autocrime `0( `3enable / disable auto-crime `0)|left|
add_textbox|`9Command : `0/modfly `0( `3enable / disable modfly `0)|left|
add_textbox|`9Command : `0/visualspin [`9 number `0] `0( `3set visual spin number `0)|left|
add_textbox|`9Command : `0/buywl `0( `3buy wls with all of your gems `0)|left|
add_textbox|`9Command : `0/fire ban `0( `3auto-ban troller ( fire lighter ) `0)|left|
add_textbox|`9Command : `0/rndm `0( `3warp to a random world `0)|left|
add_textbox|`9Command : `0/spinall `0( `3spin all wheels in world `0)|left|
add_textbox|`9Command : `0/res `0( `3respawn `0)|left|
add_textbox|`9Command : `0/fakeban `0( `3fake perma ban `0)|left|
add_textbox|`9Command : `0/fd `0( `3enable / disable fast drop `0)|left|
add_textbox|`9Command : `0/ft `0( `3enable / disable fast trash `0)|left|
add_textbox|`9Command : `0/gems `0( `3see total gems in world `0)|left|
add_textbox|`9Command : `0/ping `0( `3show your current ping `0)|left|
add_textbox|`9Command : `0/xy `0( `3logs x and y positions `0)|left|
add_textbox|`9Command : `0/testmod `0( `3test situation if mod joined `0)|left|
add_textbox|`9Command : `0/nopickup `0( `3enable / disable anti-pickup items `0)|left|
add_textbox|`9Command : `0/cid `0( `3create new account `0)|left|
add_textbox|`9Command : `0/fc `0( `3force close the proxy `0)|left|
add_textbox|`9Command : `0/findpath [`9 x `0] [`9 y `0] `0( `3path find to x,y `0)|left|
add_textbox|`9Command : `0/ccollect or /cc [`9 range `0] `0( `3collect items in custom range `0)|left|
add_textbox|`9Command : `0/door [`9 id `0] `0( `3join a door using id `0)|left|
add_textbox|`9Command : `0/player or /tp [`9 player name `0] `0( `3tp to a player `0)|left|
add_textbox|`9Command : `0/pickup [`9 id `0] `0( `3only pickup 1 item `0)|left|
add_textbox|`9Command : `0/autocollect or /ac `0( `3enable / disable autocollect `0)|left|
add_textbox|`9Command : `0/blink `0( `3enable / disable blink skin color `0)|left|
add_textbox|`9Command : `0/dropall `0( `3dropp all inv items `0)|left|
add_textbox|`9Command : `0/showoc `0( `3show public/private door `0)|left|
add_textbox|`1Note : `0[`4 Have chance of Shadowban `0]|left|
add_spacer|small|
add_label_with_icon|big|`3World Commands``|left|3802|
add_spacer|small|
add_textbox|`9Command : `!/World|left|
add_spacer|small|
add_textbox|`2Shortcuts :|left|
add_textbox|`9Command : `0/pullall `0( `3pull all players in world `0)|left|
add_textbox|`9Command : `0/kickall `0( `3kick all players in world `0)|left|
add_textbox|`9Command : `0/banall `0( `3ban all players in world `0)|left|
add_textbox|`9Command : `0/tradeall `0( `3trade all players in world `0)|left|
add_spacer|small|
add_label_with_icon|big|`3Wrench Commands``|left|32|
add_spacer|small|
add_textbox|`9Command : `!/wm|left|
add_spacer|small|
add_textbox|`2Shortcuts :|left|
add_textbox|`9Command : `0/wp `0( `3turn on wrench pull `0)|left|
add_textbox|`9Command : `0/wk `0( `3turn on wrench kick `0)|left|
add_textbox|`9Command : `0/wb `0( `3turn on wrench ban `0)|left|
add_textbox|`9Command : `0/woff `0( `3turn wrench mode off `0)|left|
add_spacer|small|
add_label_with_icon|big|`3Growscan Commands``|left|6016|
add_spacer|small|
add_textbox|`9Command : `!/gs or /growscan|left|
add_spacer|small|
add_textbox|`2Shortcuts :|left|
add_textbox|`9Command : `0/growscan 1 or /gs 1 `0( `3scan placed blocks `0)|left|
add_textbox|`9Command : `0/growscan 2 or /gs 2 `0( `3scan dropped items `0)|left|
add_spacer|small|
add_label_with_icon|big|`3Farming Commands``|left|6950|
add_spacer|small|
add_textbox|`9Command : `0/ut add or /ua `0( `3turn on fast ut adder `0)|left|
add_textbox|`9Command : `0/ut empty or /ue `0( `3turn on fast ut emptier `0)|left|
add_textbox|`9Command : `0/ut off or /uoff `0( `3turn off ut mode `0)|left|
add_textbox|`9Command : `0/gaia add or /ga `0( `3turn on fast gaia adder `0)|left|
add_textbox|`9Command : `0/gaia empty or /ge `0( `3turn on fast gaia emptier `0)|left|
add_textbox|`9Command : `0/gaia off or /goff `0( `3turn off gaia mode `0)|left|
add_spacer|small|
add_label_with_icon|big|`3Join Commands``|left|6|
add_spacer|small|
add_textbox|`9Command : `0/join pull or /j pull `0( `3pull player when join `0)|left|
add_textbox|`9Command : `0/join kick or /j kick `0( `3kick player when join `0)|left|
add_textbox|`9Command : `0/join ban or /j ban `0( `3ban player when join `0)|left|
add_textbox|`9Command : `0/join off or /j off `0( `3turn off join mode `0)|left|
add_spacer|small|
add_label_with_icon|big|`3Donation Box Commands``|left|1452|
add_spacer|small|
add_textbox|`9Command : `0/donation empty or /de `0( `3fast empty donation box `0)|left|
add_textbox|`9Command : `0/donation add or /da `0( `3fast add donation box `0)|left|
add_spacer|small|
add_label_with_icon|big|`3Vend Commands``|left|2978|
add_spacer|small|
add_textbox|`9Command : `0/ve `0( `3fast empty vend `0)|left|
add_textbox|`9Command : `0/va `0( `3fast stocker vend `0)|left|
add_textbox|`9Command : `0/vb [`9 amount `0] `0( `3fast buy from vend `0)|left|
add_textbox|`9Command : `0/voff `0( `3turn off vend mode `0)|left|
add_spacer|small|
add_label_with_icon|big|`3Spam Commands``|left|6272|
add_spacer|small|
add_textbox|`9Command : `0/spam `0( `3SPAM PAGE `0)|left|
add_textbox|`9Command : `0// `0( `3START/STOP SPAM `0)|left|
add_spacer|small|
add_label_with_icon|big|`3Harvest Commands``|left|1830|
add_spacer|small|
add_textbox|`9Command : `0/harvestid [`9 id `0] `0( `3set a seed id `0)|left|
add_textbox|`9Command : `0/harvestdelay [`9 delay `0] `0( `3set a delay in ms `0)|left|
add_textbox|`9Command : `0/ht `0( `3start / stop harvest `0)|left|
add_spacer|small|
add_label_with_icon|big|`3Safe Commands``|left|278|
add_spacer|small|
add_textbox|`9Command : `0/safe 1 `0( `3collect & ban all & unacces & leave `0)|left|
add_textbox|`9Command : `0/safe 2 `0( `3collect & unacces & leave `0)|left|
add_textbox|`9Command : `0/safe 3 `0( `3collect & leave `0)|left|
add_textbox|`9Command : `0/safe off `0( `3turns off safe commands `0)|left|
add_spacer|small|
add_label_with_icon|big|`3Bypass Safe Vault Commands``|left|8878|
add_spacer|small|
add_textbox|`9Command : `0/vault `0( `3set x and y for vault pos `0)|left|
add_textbox|`9Command : `0/bypass `0( `3auto bypass vault `0)|left|
add_spacer|small|
add_label_with_icon|big|`3Host Commands``|left|758|
add_spacer|small|
add_textbox|`9Command : `0/check `0( `3check is spin real or fake `0)|left|
add_textbox|`9Command : `0/qq `0( `3check qq spin `0)|left|
add_textbox|`9Command : `0/reme `0( `3check reme spin `0)|left|
add_textbox|`9Command : `0/spinall `0( `3check reme and qq spin `0)|left|
add_textbox|`9Command : `0/dialog `0( `3show / block drop dialog `0)|left|
add_textbox|`9Command : `0/bj `0( `3see total gems collected `0)|left|
add_textbox|`9Command : `0/settax [`9 amount `0] `0( `3set a tax % `0)|left|
add_textbox|`9Command : `0/tax [`9 amount `0] `0( `3calculate tax `0)|left|
add_textbox|`9Command : `0/daw `0( `3drop all wls`0)|left|
add_textbox|`9Command : `0/dad `0( `3drop all dls `0)|left|
add_textbox|`9Command : `0/sethost [`9 world `0] `0( `3set a host world `0)|left|
add_textbox|`9Command : `0/setsave [`9 world `0] `0( `3set a save world `0)|left|
add_textbox|`9Command : `0/host `0( `3warp to host world `0)|left|
add_textbox|`9Command : `0/save `0( `3warp to save world `0)|left|
add_textbox|`9Command : `0/setpos1 `0( `3set pos 1 `0)|left|
add_textbox|`9Command : `0/setpos2 `0( `3set pos 2 `0) [ `1Optional `0]|left|
add_textbox|`9Command : `0/setpos3 `0( `3set pos 3 `0) [ `1Optional `0]|left|
add_textbox|`9Command : `0/setpos4 `0( `3set pos 4 `0) [ `1Optional `0]|left|
add_textbox|`9Command : `0/setposback `0( `3set original pos `0)|left|
add_textbox|`9Command : `0/pos1 `0( `3go to pos 1 `0)|left|
add_textbox|`9Command : `0/pos2 `0( `3go to pos 2 `0)|left|
add_textbox|`9Command : `0/pos3 `0( `3go to pos 3 `0)|left|
add_textbox|`9Command : `0/pos4 `0( `3go to pos 4 `0)|left|
add_textbox|`9Command : `0/back `0( `3go to original pos ( setposback ) `0)|left|
add_textbox|`9Command : `0/win1 [`9 amount `0] `0( `3drop locks to winner 1 `0)|left|
add_textbox|`9Command : `0/win2 [`9 amount `0] `0( `3drop locks to winner 2 `0)|left|
add_textbox|`9Command : `0/win3 [`9 amount `0] `0( `3drop locks to winner 3 `0)|left|
add_textbox|`9Command : `0/win4 [`9 amount `0] `0( `3drop locks to winner 4 `0)|left|
add_textbox|`9Command : `0/dt1 `0( `3drop tax to winner 1 `0)|left|
add_textbox|`9Command : `0/dt2 `0( `3drop tax to winner 2 `0)|left|
add_textbox|`9Command : `0/dt3 `0( `3drop tax to winner 3 `0)|left|
add_textbox|`9Command : `0/dt4 `0( `3drop tax to winner 4 `0)|left|
add_textbox|`9Command : `0/collect `0( `3collect locks from players `0)|left|
add_textbox|`9Command : `0/drop or /cd [`9 amount `0] `0( /drop 120 ( 1 dl & 20 wls) `0) |left|
add_textbox|`9Command : `0/wl [`9 amount `0]|left|
add_textbox|`9Command : `0/dd [`9 amount `0]|left|
add_textbox|`9Command : `0/bb [`9 amount `0]|left| 
add_spacer|small|
add_label_with_icon|big|`3Titles Commands``|left|6276|
add_spacer|small|
add_textbox|`9Command : `0/title `0( `3page title `0)|left|
add_spacer|small|
add_label_with_icon|big|`3Visual Clothes``|left|1784|
add_spacer|small|
add_textbox|`9Command : `0/saveclothe or /sc `0( `3wear set when joining world `0)|left|
add_textbox|`9Command : `0/vhat [`9 id `0] `0( `3set visual hat `0)|left|
add_textbox|`9Command : `0/vshirt [`9 id `0] `0( `3set visual shirt `0)|left|
add_textbox|`9Command : `0/vpant [`9 id `0] `0( `3set visual pant `0)|left|
add_textbox|`9Command : `0/vshoes [`9 id `0] `0( `3set visual shoes `0)|left|
add_textbox|`9Command : `0/vhand [`9 id `0] `0( `3set visual hand `0)|left|
add_textbox|`9Command : `0/vwing [`9 id `0] `0( `3set visual wings `0)|left|
add_textbox|`9Command : `0/vhair [`9 id `0] `0( `3set visual hair `0)|left|
add_textbox|`9Command : `0/vneck [`9 id `0] `0( `3set visual neck `0)|left|
add_textbox|`9Command : `0ances [`9 id `0] `0( `3set visual ances `0)|left|
add_textbox|`9Command : `0/clothe x /clothes `0( `3wear visual set `0)|left|
add_spacer|small|
add_label_with_icon|big|`3Visual Commands``|left|9228|
add_spacer|small|
add_textbox|`9Command : `0/flag [`9 id `0]|left|
add_textbox|`9Command : `0/guild [`9 id `0]|left|
add_textbox|`9Command : `0/weather `0( `3change weather to random `0)|left|
add_textbox|`9Command : `0/give [`9 id `0] [`9 count `0]|left|
add_textbox|`9Command : `0/hide `0( `3hide all players names `0)|left|
add_textbox|`9Command : `0/name [`9 name `0] `0( `3change your name `0)|left|
add_textbox|`9Command : `0/inv `0( `3make everyone invisible `0)|left|
add_spacer|small|
add_label_with_icon|big|`3Check my social media !``|left|8224|
add_spacer|small|
add_url_button||`1Check My Youtube ! ``|NOFLAGS|https://www.youtube.com/channel/UCkTYJ2vLRN43jIQzCRa9Slw|
add_url_button||`1Check My Instagram ! ``|NOFLAGS|https://www.instagram.com/_mandq_/|
add_url_button||`1Join Our Discord Server ! ``|NOFLAGS|https://discord.gg/b8gfzbAcCq|
add_spacer|small|
add_quick_exit|
]]
varlist.netid = -1

SendVarlist(varlist)
end

function proxy_commands2()

    -- add here like quick selection tab to see commands
    
end
function proxy(type, packet)
    if packet == ("action|input\n|text|/proxy") then
        proxy_commands()
        return true
    end
end

AddCallback("proxy_commandsx","OnPacket", proxy)

function proxy_commands2(type, packet)
    if packet == ("action|input\n|text|/proxy") then
        proxy_commands2()
        return true
    end
end

AddCallback("proxy_commands2","OnPacket", proxy_commands2)

function hide_dialog(varlist)
	if varlist[0]:find("OnDialogRequest") and varlist[1]:find("end_dialog|drop_item|Cancel|OK|")then
		return true
	end
end

function string.removeColors(varlist)
	return varlist:gsub("`.", "")
end

dialog_hide = false
function hide_dialogx(type, packet)
    if packet == ("action|input\n|text|/dialog") then
        if dialog_hide == true then
            dialog_hide = false
            OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Drop dialog is now `3visible")
        RemoveCallback("hide_dialog")
        elseif dialog_hide == false then
            dialog_hide = true
            OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Drop dialog is now `3invisible")
            AddCallback("hide_dialog","OnVarlist", hide_dialog)
        end
    return true
end
end

AddCallback("hide_dialogx","OnPacket", hide_dialogx)

pending_drop_dialog = {}

function queue_drop_dialog(item_id)
    table.insert(pending_drop_dialog, tostring(item_id))
end

function suppress_queued_drop_dialog(varlist)
    if varlist[0] ~= "OnDialogRequest" then
        return
    end

    if not varlist[1]:find("end_dialog|drop_item|Cancel|OK|") then
        return
    end

    local item_id = varlist[1]:match("itemID|(%d+)")
    if item_id == nil then
        return
    end

    for i, queued_id in ipairs(pending_drop_dialog) do
        if queued_id == item_id then
            table.remove(pending_drop_dialog, i)
            return true
        end
    end
end

AddCallback("suppress_queued_drop_dialog", "OnVarlist", suppress_queued_drop_dialog)

function cdrop(type, packet)
    if packet:find("action|input") then
    text = packet:gsub("action|input\n|text|", "")
    if text:find("/") then
    cmd = text:gsub("/", "")
    if cmd:find("cdrop") then
    amounts = cmd:gsub("cdrop", "")
    local bgl,dl,wl = 0,0,0
    wl,dl,bgl = amounts:match("(%d+)%s(%d+)%s(%d+)")
    wl = tonumber(wl)
    dl = tonumber(dl)
    bgl = tonumber(bgl)

    OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Dropping `3" ..wl.. " `9wls, `3"..dl.. " `9dls and `3"..bgl.. " `9bgls")
    OnTextOverlay("`9Dropping `3" ..wl.. " `9wls, `3"..dl.. " `9dls and `3"..bgl.. " `9bgls")
    if bgl == 0 then
        if dl == 0 then
            SendPacket(2, "action|drop\n|itemID|242")
            SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|242|\ncount|"..wl)
        else
            SendPacket(2, "action|drop\n|itemID|242")
            SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|242|\ncount|"..wl)
            SendPacket(2, "action|drop\n|itemID|1796")
            SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|1796|\ncount|"..dl)
        end
        return true
    else
        if dl == 0 then
            SendPacket(2, "action|drop\n|itemID|242")
            SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|242|\ncount|"..wl)
            SendPacket(2, "action|drop\n|itemID|7188")
            SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|7188|\ncount|"..bgl)
        else
            SendPacket(2, "action|drop\n|itemID|242")
            SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|242|\ncount|"..wl)
            SendPacket(2, "action|drop\n|itemID|1796")
            SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|1796|\ncount|"..dl)
            SendPacket(2, "action|drop\n|itemID|7188")
            SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|7188|\ncount|"..bgl)
        end
        return true
        end
        end
        end
    	end
        end
    
AddCallback("cdrop", "OnPacket", cdrop)

function cdrop_drop(type, packet)
    if packet:find("action|input") then
    text = packet:gsub("action|input\n|text|", "")
    if text:find("/") then
    cmd = text:gsub("/", "")
    if cmd:find("drop") then
    amount = tonumber(cmd:gsub("drop", ""))
    if amount == nil or amount <= 0 then
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Usage: /drop [amount]")
        return true
    end

    local bgl = amount // 10000
    local dl = (amount % 10000) // 100
    local wl = amount % 100

    OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Dropping `3" ..wl.. " `9wls, `3"..dl.. " `9dls and `3"..bgl.. " `9bgls")
    OnTextOverlay("`9Dropping `3" ..wl.. " `9wls, `3"..dl.. " `9dls and `3"..bgl.. " `9bgls")

    if wl > 0 then
        queue_drop_dialog(242)
        SendPacket(2, "action|drop\n|itemID|242")
        SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|242|\ncount|"..wl)
    end

    if dl > 0 then
        queue_drop_dialog(1796)
        SendPacket(2, "action|drop\n|itemID|1796")
        SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|1796|\ncount|"..dl)
    end

    if bgl > 0 then
        queue_drop_dialog(7188)
        SendPacket(2, "action|drop\n|itemID|7188")
        SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|7188|\ncount|"..bgl)
    end

    return true
    end
    end
    end
    end

AddCallback("cdrop_drop", "OnPacket", cdrop_drop)

function cdrop_drop2(type, packet)
    if packet:find("action|input") then
    text = packet:gsub("action|input\n|text|", "")
    local amount = text:match("^/cd%s+(%d+)$")
    if amount == nil then
        return
    end

    amount = tonumber(amount)
    if amount <= 0 then
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Usage: /cd [amount]")
        return true
    end

    local bgl = amount // 10000
    local dl = (amount % 10000) // 100
    local wl = amount % 100

    OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Dropping `3" ..wl.. " `9wls, `3"..dl.. " `9dls and `3"..bgl.. " `9bgls")
    OnTextOverlay("`9Dropping `3" ..wl.. " `9wls, `3"..dl.. " `9dls and `3"..bgl.. " `9bgls")

    if wl > 0 then
        queue_drop_dialog(242)
        SendPacket(2, "action|drop\n|itemID|242")
        SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|242|\ncount|"..wl)
    end

    if dl > 0 then
        queue_drop_dialog(1796)
        SendPacket(2, "action|drop\n|itemID|1796")
        SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|1796|\ncount|"..dl)
    end

    if bgl > 0 then
        queue_drop_dialog(7188)
        SendPacket(2, "action|drop\n|itemID|7188")
        SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|7188|\ncount|"..bgl)
    end

    return true
    end
end

AddCallback("cdrop_drop2", "OnPacket", cdrop_drop2)

-- quick drop commands

function quick_drop_lock(type, packet)
    if not packet:find("action|input") then
        return
    end

    local text = packet:gsub("action|input\n|text|", "")
    local command, amount_str = text:match("^/(%S+)%s*(%d*)$")
    if command == nil then
        return
    end

    local lock_map = {
        wl = {id = 242, name = "wls"},
        dd = {id = 1796, name = "dls"},
        bb = {id = 7188, name = "bgls"},
        dl = {id = 1796, name = "dls"},
        bgl = {id = 7188, name = "bgls"}
    }

    local lock = lock_map[command]
    if lock == nil then
        return
    end

    local amount = tonumber(amount_str)
    if amount == nil or amount <= 0 then
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Usage: /"..command.." [amount]")
        return true
    end

    for _, item in pairs(GetInventory()) do
        if item.id == lock.id then
            if item.count < amount then
                OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9No enough "..lock.name..".")
                OnTextOverlay("`9No enough "..lock.name..".")
                return true
            end

            OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Dropping `3"..amount.." `9"..lock.name)
            OnTextOverlay("`9Dropping `3"..amount.." `9"..lock.name)
            queue_drop_dialog(lock.id)
            SendPacket(2, "action|drop\n|itemID|"..lock.id)
            SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|"..lock.id.."|\ncount|"..amount)
            return true
        end
    end

    OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9No enough "..lock.name..".")
    OnTextOverlay("`9No enough "..lock.name..".")
    return true
end

AddCallback("quick_drop_lock","OnPacket", quick_drop_lock)

function daw(type, packet)
    if packet == ("action|input\n|text|/daw") then
        local wl_count, dl_count, bgl_count = 0, 0, 0

        for _, item in pairs(GetInventory()) do
            if item.id == 242 then
                wl_count = item.count
            elseif item.id == 1796 then
                dl_count = item.count
            elseif item.id == 7188 then
                bgl_count = item.count
            end
        end

        if wl_count == 0 and dl_count == 0 and bgl_count == 0 then
            OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9No locks to drop")
            OnTextOverlay("`9No locks to drop")
            return true
        end

        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Dropping all locks: `3"..wl_count.." `9wls, `3"..dl_count.." `9dls and `3"..bgl_count.." `9bgls")
        OnTextOverlay("`9Dropping all locks: `3"..wl_count.." `9wls, `3"..dl_count.." `9dls and `3"..bgl_count.." `9bgls")

        if wl_count > 0 then
            queue_drop_dialog(242)
            SendPacket(2, "action|drop\n|itemID|242")
            SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|242|\ncount|"..wl_count)
        end

        if dl_count > 0 then
            queue_drop_dialog(1796)
            SendPacket(2, "action|drop\n|itemID|1796")
            SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|1796|\ncount|"..dl_count)
        end

        if bgl_count > 0 then
            queue_drop_dialog(7188)
            SendPacket(2, "action|drop\n|itemID|7188")
            SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|7188|\ncount|"..bgl_count)
        end

        return true
    end
end

AddCallback("drop_all_wls","OnPacket", daw)


function sethost(type, packet)
    if packet:find("action|input") then
      text = packet:gsub("action|input\n|text|", "")
      if text:find("/") then
        cmd = text:gsub("/", "")
        if cmd:find("sethost") then
            sethost_world = cmd:gsub("sethost", "")
                sethost_world1 = sethost_world
                OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Host world set to : `3"..sethost_world1)
          return true
        end
    end
end
end

AddCallback("sethost","OnPacket", sethost)

function setsave(type, packet)
    if packet:find("action|input") then
      text = packet:gsub("action|input\n|text|", "")
      if text:find("/") then
        cmd = text:gsub("/", "")
        if cmd:find("setsave") then
            setsave_world = cmd:gsub("setsave", "")
            setsave_world1 = setsave_world
                OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Save world set to : `3"..setsave_world)
          return true
        end
    end
end
end

AddCallback("setsave","OnPacket", setsave)

function add(type, packet)
    if packet:find("action|input") then
    text = packet:gsub("action|input\n|text|", "")
    if text:find("/") then
    cmd = text:gsub("/", "")
    if cmd:find("give") then
    amounts = cmd:gsub("give", "")
    local add_item,add_count = 0,0
    add_item,add_count = amounts:match("(%d+)%s(%d+)")
    add_item = tonumber(add_item)
    add_count = tonumber(add_count)

    OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Adding `3Item id : `9 "..add_item.." `3Item count : `9" ..add_count)
    local packet = {}
    packet.type = 13
    packet.int_data = add_item
    packet.count2 = add_count
    SendPacketRawClient(packet)
        return true
        end
        end
        end
    	end
        
AddCallback("give_visual","OnPacket", add)

function doorxxx(type, packet)
    if packet:find("action|input") then
    text = packet:gsub("action|input\n|text|", "")
    if text:find("/") then
    cmd = text:gsub("/", "")
    if cmd:find("door") then
    door_id = cmd:gsub("door ", "")
    OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Joing door id `3"..door_id)
    world = GetLocal().world
    SendPacket(3, "action|join_request\nname|"..world.."|"..door_id.."\ninvitedWorld|0")
        return true
        end
        end
        end
    	end
    
AddCallback("warp_door","OnPacket", doorxxx)

x_pos1, x_pos2, x_pos3, x_pos4, x_posback = -1, -1, -1, -1, -1
y_pos1, y_pos2, y_pos3, y_pos4, y_posback = -1, -1, -1, -1, -1

function pos1(type, packet)
    if packet == ("action|input\n|text|/setpos1") then
        x_pos1 = math.floor(GetLocal().pos_x / 32)
        y_pos1 = math.floor(GetLocal().pos_y / 32)
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9pos 1 set to `3"..x_pos1.." `9,`3"..y_pos1)
        local var = {}
        var[0] = "OnParticleEffect"
        var[1] = 354
        var[2] = { GetLocal().pos_x + 10, GetLocal().pos_y + 15}
        var[3] = 0
        var[4] = 0
        var.netid = -1

        SendVarlist(var)
    return true
    end
end
    
AddCallback("pos1","OnPacket", pos1)

function pos2(type, packet)
    if packet == ("action|input\n|text|/setpos2") then
        x_pos2 = math.floor(GetLocal().pos_x / 32)
        y_pos2 = math.floor(GetLocal().pos_y / 32)
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9pos 2 set to `3"..x_pos2.." `9,`3"..y_pos2)
        local var = {}
        var[0] = "OnParticleEffect"
        var[1] = 354
        var[2] = { GetLocal().pos_x + 10, GetLocal().pos_y + 15}
        var[3] = 0
        var[4] = 0
        var.netid = -1

        SendVarlist(var)
    return true
    end
end
    
AddCallback("pos2","OnPacket", pos2)

function pos3(type, packet)
    if packet == ("action|input\n|text|/setpos3") then
        x_pos3 = math.floor(GetLocal().pos_x / 32)
        y_pos3 = math.floor(GetLocal().pos_y / 32)
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9pos 3 set to `3"..x_pos3.." `9,`3"..y_pos3)
        local var = {}
        var[0] = "OnParticleEffect"
        var[1] = 354
        var[2] = { GetLocal().pos_x + 10, GetLocal().pos_y + 15}
        var[3] = 0
        var[4] = 0
        var.netid = -1

        SendVarlist(var)
    return true
    end
end
    
AddCallback("pos3","OnPacket", pos3)

function pos4(type, packet)
    if packet == ("action|input\n|text|/setpos4") then
        x_pos4 = math.floor(GetLocal().pos_x / 32)
        y_pos4 = math.floor(GetLocal().pos_y / 32)
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9pos 4 set to `3"..x_pos4.." `9,`3"..y_pos4)
        local var = {}
        var[0] = "OnParticleEffect"
        var[1] = 354
        var[2] = { GetLocal().pos_x + 10, GetLocal().pos_y + 15}
        var[3] = 0
        var[4] = 0
        var.netid = -1

        SendVarlist(var)
    return true
    end
end
    
AddCallback("pos4","OnPacket", pos4)

function posback(type, packet)
    if packet == ("action|input\n|text|/setposback") then
        x_posback = math.floor(GetLocal().pos_x / 32)
        y_posback = math.floor(GetLocal().pos_y / 32)
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9host pos set to `3"..x_posback.." `9,`3"..y_posback)
        local var = {}
        var[0] = "OnParticleEffect"
        var[1] = 356
        var[2] = { GetLocal().pos_x + 10, GetLocal().pos_y + 15}
        var[3] = 0
        var[4] = 0
        var.netid = -1

        SendVarlist(var)
    return true
    end
end

AddCallback("posback","OnPacket", posback)

function back(type, packet)
    if packet == ("action|input\n|text|/back") then
        if x_posback == -1 then
            OnTextOverlay("`4Pos Not Set")
        else
        FindPath(x_posback, y_posback)
        end
    return true
    end
end
    
AddCallback("back","OnPacket", back)

function tp_pos1(type, packet)
    if packet == ("action|input\n|text|/pos1") then
        if x_pos1 == -1 then
            OnTextOverlay("`4Pos Not Set")
        else
        FindPath(x_pos1, y_pos1)
        end
    return true
    end
end
    
AddCallback("tp_pos1","OnPacket", tp_pos1)

function tp_pos2(type, packet)
    if packet == ("action|input\n|text|/pos2") then
        if x_pos2 == -1 then
            OnTextOverlay("`4Pos Not Set")
        else
        FindPath(x_pos2, y_pos2)
        end
    return true
    end
end
    
AddCallback("tp_pos2","OnPacket", tp_pos2)

function tp_pos3(type, packet)
    if packet == ("action|input\n|text|/pos3") then
        if x_pos3 == -1 then
            OnTextOverlay("`4Pos Not Set")
        else
        FindPath(x_pos3, y_pos3)
        end
    return true
    end
end
    
AddCallback("tp_pos3","OnPacket", tp_pos3)

function tp_pos4(type, packet)
    if packet == ("action|input\n|text|/pos4") then
        if x_pos4 == -1 then
            OnTextOverlay("`4Pos Not Set")
        else
        FindPath(x_pos4, y_pos4)
        end
    return true
    end
end
    
AddCallback("tp_pos4","OnPacket", tp_pos4)

function win1(type, packet)
  if packet:find("action|input") then
  text = packet:gsub("action|input\n|text|", "")
  if text:find("/") then
  cmd = text:gsub("/", "")
  if cmd:find("win1") then
  amount = cmd:gsub("win1", "")
  if x_pos1 == -1 then
    OnTextOverlay("`4Pos Not Set")
    else
  FindPath(x_pos1, y_pos1)
  local dl,wl = 0,0
  dl = amount % 10000 // 100
  wl = ((amount% 10000) % 100)
  OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Dropping `3" ..wl.. " `9wls and `3"..dl.. " `9dls")
  OnTextOverlay("`9Dropping `3" ..wl.. " `9wls and `3"..dl.. " `9dls")
  if dl == 0 then
  SendPacket(2, "action|drop\n|itemID|242")
  SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|242|\ncount|"..wl)
  else
    SendPacket(2, "action|drop\n|itemID|242")
    SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|242|\ncount|"..wl)
  SendPacket(2, "action|drop\n|itemID|1796")
  SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|1796|\ncount|"..dl)
  end
  FindPath(x_posback, y_posback)
end
  return true
  end
  end
  end
  end
  
AddCallback("win1", "OnPacket", win1)

function win2(type, packet)
  if packet:find("action|input") then
  text = packet:gsub("action|input\n|text|", "")
  if text:find("/") then
  cmd = text:gsub("/", "")
  if cmd:find("win2") then
  amount = cmd:gsub("win2", "")
  if x_pos2 == -1 then
    OnTextOverlay("`4Pos Not Set")
    else
  FindPath(x_pos2, y_pos2)
  local dl,wl = 0,0
  dl = amount % 10000 // 100
  wl = ((amount% 10000) % 100)
  OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Dropping `3" ..wl.. " `9wls and `3"..dl.. " `9dls")
  OnTextOverlay("`9Dropping `3" ..wl.. " `9wls and `3"..dl.. " `9dls")
  if dl == 0 then
  SendPacket(2, "action|drop\n|itemID|242")
  SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|242|\ncount|"..wl)
  else
    SendPacket(2, "action|drop\n|itemID|242")
    SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|242|\ncount|"..wl)
  SendPacket(2, "action|drop\n|itemID|1796")
  SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|1796|\ncount|"..dl)
  end
  FindPath(x_posback, y_posback)
end
  return true
  end
  end
  end
  end
  
AddCallback("win2", "OnPacket", win2)

function win3(type, packet)
    if packet:find("action|input") then
    text = packet:gsub("action|input\n|text|", "")
    if text:find("/") then
    cmd = text:gsub("/", "")
    if cmd:find("win3") then
    amount = cmd:gsub("win3", "")
    if x_pos3 == -1 then
        OnTextOverlay("`4Pos Not Set")
        else
    FindPath(x_pos3, y_pos3)
    local dl,wl = 0,0
    dl = amount % 10000 // 100
    wl = ((amount% 10000) % 100)
    OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Dropping `3" ..wl.. " `9wls and `3"..dl.. " `9dls")
    OnTextOverlay("`9Dropping `3" ..wl.. " `9wls and `3"..dl.. " `9dls")
    if dl == 0 then
    SendPacket(2, "action|drop\n|itemID|242")
    SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|242|\ncount|"..wl)
    else
        SendPacket(2, "action|drop\n|itemID|242")
        SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|242|\ncount|"..wl)
    SendPacket(2, "action|drop\n|itemID|1796")
    SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|1796|\ncount|"..dl)
    end
    FindPath(x_posback, y_posback)
end
    return true
    end
    end
    end
    end
    
AddCallback("win3", "OnPacket", win3)

function win4(type, packet)
    if packet:find("action|input") then
    text = packet:gsub("action|input\n|text|", "")
    if text:find("/") then
    cmd = text:gsub("/", "")
    if cmd:find("win4") then
    amount = cmd:gsub("win4", "")
    if x_pos4 == -1 then
        OnTextOverlay("`4Pos Not Set")
        else
    FindPath(x_pos4, y_pos4)
    local dl,wl = 0,0
    dl = amount % 10000 // 100
    wl = ((amount% 10000) % 100)
    OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Dropping `3" ..wl.. " `9wls and `3"..dl.. " `9dls")
    OnTextOverlay("`9Dropping `3" ..wl.. " `9wls and `3"..dl.. " `9dls")
    if dl == 0 then
    SendPacket(2, "action|drop\n|itemID|242")
    SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|242|\ncount|"..wl)
    else
        SendPacket(2, "action|drop\n|itemID|242")
    SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|242|\ncount|"..wl)
    SendPacket(2, "action|drop\n|itemID|1796")
    SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|1796|\ncount|"..dl)
    end
    FindPath(x_posback, y_posback)
end
    return true
    end
    end
    end
    end
    
AddCallback("win4", "OnPacket", win4)

function playertpxxx(type, packet)
    if packet:find("action|input") then
    text = packet:gsub("action|input\n|text|", "")
    if text:find("/") then
    cmd = text:gsub("/", "")
    if cmd:find("player") then
    player_name_tp = cmd:gsub("player ", "")
        found = true
        for _,playerx in ipairs(GetPlayers()) do
            if playerx.name:sub(3,-3) == player_name_tp then
                found = true
                OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9player found !")
                FindPath(playerx.pos_x / 32 , playerx.pos_y / 32)
        return true
            end
            if not found then
                OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9player `4NOT `9found")
            break 
            end
        end
        return true
        end
        end
        end
    	end
    
AddCallback("warp_player","OnPacket", playertpxxx)

function findpathxxx(type, packet)
    if packet:find("action|input") then
    text = packet:gsub("action|input\n|text|", "")
    if text:find("/") then
    cmd = text:gsub("/", "")
    if cmd:find("findpath") then
    findpathxxs = cmd:gsub("findpath", "")
    local findpathx,findpathy = 0,0
    findpathy,findpathx = findpathxxs:match("(%d+)%s(%d+)")
    findpathy = tonumber(findpathy)
    findpathx = tonumber(findpathx)

    FindPath(findpathy,findpathx)
        return true
        end
        end
        end
    	end
    
AddCallback("findpath_1","OnPacket", findpathxxx)

function findpathxxx2(type, packet)
    if packet:find("action|input") then
    text = packet:gsub("action|input\n|text|", "")
    if text:find("/") then
    cmd = text:gsub("/", "")
    if cmd:find("tp") then
    findpathxxs1 = cmd:gsub("tp", "")
    local findpathx,findpathy = 0,0
    findpathy,findpathx = findpathxxs1:match("(%d+)%s(%d+)")
    findpathy = tonumber(findpathy)
    findpathx = tonumber(findpathx)

    FindPath(findpathy,findpathx)
        return true
        end
        end
        end
    	end
    
AddCallback("findpath_2","OnPacket", findpathxxx2)

function flagxx(type, packet)
    if packet:find("action|input") then
      text = packet:gsub("action|input\n|text|", "")
      if text:find("/") then
        cmd = text:gsub("/", "")
        if cmd:find("flag ") then
            flagxxid = cmd:gsub("flag ", "")
            OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9changing flag to `3" ..flagxxid)
            var2 = {}
            var2[0] = "OnCountryState"
            var2[1] = flagxxid
            var2.netid = GetLocal().netid
            SendVarlist(var2)
          return true
        end
      end
    end
  end
  
AddCallback("flag_changer","OnPacket", flagxx)

function random_world(type, packet)
    if packet == ("action|input\n|text|/rndm") then
        totTxt = ""
        for i = 1,19 do
        totTxt = totTxt..string.char(math.random(97,122))
        end
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9warping to "..totTxt)
        SendPacket(3, "action|join_request\nname|" .. totTxt)
    return true
    end
end
    
AddCallback("random_world","OnPacket", random_world)

function cid(type, packet)
    if packet == ("action|input\n|text|/cid") then
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Making new account..")
        SendPacket(2, "action|growid")
    return true
    end
end
    
AddCallback("cid","OnPacket", cid)

function drop_tax1(type, packet)
    if packet == ("action|input\n|text|/dt1") then
        if x_pos1 == -1 then
            OnTextOverlay("`4Pos Not Set")
            else
        FindPath(x_pos1, y_pos1)
        local dl,wl = 0,0
        dl = drop_tax % 10000 // 100
        wl = ((drop_tax% 10000) % 100)
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Dropping `3" ..wl.. " `9wls and `3"..dl.. " `9dls")
        OnTextOverlay("`9Dropping `3" ..wl.. " `9wls and `3"..dl.. " `9dls")
        if dl == 0 then
        SendPacket(2, "action|drop\n|itemID|242")
        SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|242|\ncount|"..wl)
        else
        SendPacket(2, "action|drop\n|itemID|242")
        SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|242|\ncount|"..wl)
        SendPacket(2, "action|drop\n|itemID|1796")
        SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|1796|\ncount|"..dl)
        end
        FindPath(x_posback, y_posback)
    end
    return true
    end
end

AddCallback("drop_tax1","OnPacket", drop_tax1)

function drop_tax2(type, packet)
    if packet == ("action|input\n|text|/dt2") then
        if x_pos2 == -1 then
            OnTextOverlay("`4Pos Not Set")
            else
        FindPath(x_pos2, y_pos2)
        local dl,wl = 0,0
        dl = drop_tax % 10000 // 100
        wl = ((drop_tax% 10000) % 100)
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Dropping `3" ..wl.. " `9wls and `3"..dl.. " `9dls")
        OnTextOverlay("`9Dropping `3" ..wl.. " `9wls and `3"..dl.. " `9dls")
        if dl == 0 then
        SendPacket(2, "action|drop\n|itemID|242")
        SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|242|\ncount|"..wl)
        else
        SendPacket(2, "action|drop\n|itemID|242")
        SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|242|\ncount|"..wl)
        SendPacket(2, "action|drop\n|itemID|1796")
        SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|1796|\ncount|"..dl)
        end
        FindPath(x_posback, y_posback)
    end
    return true
    end
end

AddCallback("drop_tax2","OnPacket", drop_tax2)

function drop_tax3(type, packet)
    if packet == ("action|input\n|text|/dt3") then
        if x_pos3 == -1 then
            OnTextOverlay("`4Pos Not Set")
            else
        FindPath(x_pos3, y_pos3)
        local dl,wl = 0,0
        dl = drop_tax % 10000 // 100
        wl = ((drop_tax% 10000) % 100)
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Dropping `3" ..wl.. " `9wls and `3"..dl.. " `9dls")
        OnTextOverlay("`9Dropping `3" ..wl.. " `9wls and `3"..dl.. " `9dls")
        if dl == 0 then
        SendPacket(2, "action|drop\n|itemID|242")
        SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|242|\ncount|"..wl)
        else
        SendPacket(2, "action|drop\n|itemID|242")
        SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|242|\ncount|"..wl)
        SendPacket(2, "action|drop\n|itemID|1796")
        SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|1796|\ncount|"..dl)
        end
        FindPath(x_posback, y_posback)
    end
    return true
    end
end

AddCallback("drop_tax3","OnPacket", drop_tax3)

function drop_tax4(type, packet)
    if packet == ("action|input\n|text|/dt4") then
        if x_pos4 == -1 then
            OnTextOverlay("`4Pos Not Set")
            else
        FindPath(x_pos4, y_pos4)
        local dl,wl = 0,0
        dl = drop_tax % 10000 // 100
        wl = ((drop_tax% 10000) % 100)
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Dropping `3" ..wl.. " `9wls and `3"..dl.. " `9dls")
        OnTextOverlay("`9Dropping `3" ..wl.. " `9wls and `3"..dl.. " `9dls")
        if dl == 0 then
        SendPacket(2, "action|drop\n|itemID|242")
        SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|242|\ncount|"..wl)
        else
        SendPacket(2, "action|drop\n|itemID|242")
        SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|242|\ncount|"..wl)
        SendPacket(2, "action|drop\n|itemID|1796")
        SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|1796|\ncount|"..dl)
        end
        FindPath(x_posback, y_posback)
    end
    return true
    end
end

AddCallback("drop_tax4","OnPacket", drop_tax4)

function res(type, packet)
    if packet == ("action|input\n|text|/res") then
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9respawning")
        SendPacket(2, "action|respawn")
    return true
    end
end
    
AddCallback("respawn","OnPacket", res)

mode_wm = "off"

function wm(type, packet)
    if packet == ("action|input\n|text|/wm") then
        if mode_wm == "off" then
            type_wm = "`4Disabled"
        else
            type_wm = "`2Enabled"
        end
if type_wm == "`2Enabled" and mode_wm == "pull" then
varlist = {}
varlist[0] = "OnDialogRequest"
varlist[1] = [[set_default_color|`o
add_label_with_icon|big|`!Wrench Mode|left|32|
add_spacer|small
add_textbox|`9Currently Wrench Mode is `2Enabled `9And is Set To : `3]]..mode_wm..[[|left|
add_spacer|small
add_button_with_icon|wrench_pull|  `9pull  |staticYellowFrame|32|
add_button_with_icon|wrench_kick|  `9kick  |staticBlueFrame|32|
add_button_with_icon|wrench_ban|  `9ban  |staticBlueFrame|32|
add_button_with_icon||END_LIST|noflags|0|0|
add_spacer|small
add_button|wrench_off|`@Turn off wrench mode|noflags|0|0|
add_quick_exit|
end_dialog|wrench_modesxd|`4Cancel|`2Okay|
]]
varlist.netid = -1
SendVarlist(varlist)
elseif type_wm == "`2Enabled" and mode_wm == "kick" then
varlist = {}
varlist[0] = "OnDialogRequest"
varlist[1] = [[set_default_color|`o
add_label_with_icon|big|`!Wrench Mode|left|32|
add_spacer|small
add_textbox|`9Currently Wrench Mode is `2Enabled `9And is Set To : `3]]..mode_wm..[[|left|
add_spacer|small
add_button_with_icon|wrench_pull|  `9pull  |staticBlueFrame|32|
add_button_with_icon|wrench_kick|  `9kick  |staticYellowFrame|32|
add_button_with_icon|wrench_ban|  `9ban  |staticBlueFrame|32|
add_button_with_icon||END_LIST|noflags|0|0|
add_spacer|small
add_button|wrench_off|`@Turn off wrench mode|noflags|0|0|
add_quick_exit|
end_dialog|wrench_modesxd|`4Cancel|`2Okay|
]]
varlist.netid = -1
SendVarlist(varlist)
elseif type_wm == "`2Enabled" and mode_wm == "ban" then
varlist = {}
varlist[0] = "OnDialogRequest"
varlist[1] = [[set_default_color|`o
add_label_with_icon|big|`!Wrench Mode|left|32|
add_spacer|small
add_textbox|`9Currently Wrench Mode is `2Enabled `9And is Set To : `3]]..mode_wm..[[|left|
add_spacer|small
add_button_with_icon|wrench_pull|  `9pull  |staticBlueFrame|32|
add_button_with_icon|wrench_kick|  `9kick  |staticBlueFrame|32|
add_button_with_icon|wrench_ban|  `9ban  |staticYellowFrame|32|
add_button_with_icon||END_LIST|noflags|0|0|
add_spacer|small
add_button|wrench_off|`@Turn off wrench mode|noflags|0|0|
add_quick_exit|
end_dialog|wrench_modesxd|`4Cancel|`2Okay|
]]
varlist.netid = -1
SendVarlist(varlist)
else
varlist = {}
varlist[0] = "OnDialogRequest"
varlist[1] = [[set_default_color|`o
add_label_with_icon|big|`!Wrench Mode|left|32|
add_spacer|small
add_textbox|`9Currently Wrench Mode is `4Disabled|left|
add_spacer|small
add_button_with_icon|wrench_pull|  `9pull  |staticBlueFrame|32|
add_button_with_icon|wrench_kick|  `9kick  |staticBlueFrame|32|
add_button_with_icon|wrench_ban|  `9ban  |staticBlueFrame|32|
add_button_with_icon||END_LIST|noflags|0|0|
add_spacer|small
add_button|wrench_off|`@Turn off wrench mode|noflags|0|0|
add_quick_exit|
end_dialog|wrench_modesxd|`4Cancel|`2Okay|
]]
varlist.netid = -1
SendVarlist(varlist)
end
return true
end
end

AddCallback("wm","OnPacket", wm)

function Wrench_mode(type, packet)
    if packet:find("buttonClicked|wrench_pull") then
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9wrench mode set to `3pull")
        mode_wm = "pull"
        function Wrench(varlist)
            if varlist[0] == "OnDialogRequest" and varlist[1]:find("add_button|report_player|") then
                x = varlist[1]:removeColors()
                x2 = x:match("add_label_with_icon|big|(%w+)")
                SendPacket(2, "action|input\n|text|/pull "..x2)
            return true
            end
        end
        AddCallback("Wrench", "OnVarlist", Wrench)
        return true
    elseif packet:find("buttonClicked|wrench_kick") then
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9wrench mode set to `3kick")
        mode_wm = "kick"
        function Wrench(varlist)
            if varlist[0] == "OnDialogRequest" and varlist[1]:find("add_button|report_player|") then
                x = varlist[1]:removeColors()
                x2 = x:match("add_label_with_icon|big|(%w+)")
                SendPacket(2, "action|input\n|text|/kick "..x2)
            return true
            end
        end
        AddCallback("Wrench", "OnVarlist", Wrench)  
        return true
    elseif packet:find("buttonClicked|wrench_ban") then
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9wrench mode set to `3ban")
        mode_wm = "ban"
        function Wrench(varlist)
            if varlist[0] == "OnDialogRequest" and varlist[1]:find("add_button|report_player|") then
                x = varlist[1]:removeColors()
                x2 = x:match("add_label_with_icon|big|(%w+)")
                SendPacket(2, "action|input\n|text|/ban "..x2)
            return true
            end
        end
        AddCallback("Wrench", "OnVarlist", Wrench)
        return true
    elseif packet:find("buttonClicked|wrench_off") then
        mode_wm = "off"
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9wrench mode is `3off")
        RemoveCallback("Wrench") 
        return true
    end
end

AddCallback("Wrench_mode", "OnPacket", Wrench_mode)


function world_commands(type, packet)
    if packet == ("action|input\n|text|/world") then
varlist = {}
varlist[0] = "OnDialogRequest"
varlist[1] = [[set_default_color|`o
add_label_with_icon|big|`!World Commands|left|3802|
add_spacer|small
add_button|world_pull|`9Pull all players|noflags|0|0|
add_button|world_kick|`9Kick all players|noflags|0|0|
add_button|world_trade|`9Trade all players|noflags|0|0|
add_button|world_ban|`9Ban all players|noflags|0|0|
add_button|world_unban|`@Unban World|noflags|0|0|
add_quick_exit|
end_dialog|World_commands|`4Cancel|`2Okay|
]]
varlist.netid = -1
SendVarlist(varlist)
return true
end
end

AddCallback("world_commands","OnPacket", world_commands)

function world_mode(type, packet)
    if packet:find("buttonClicked|world_pull") then
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9pulling all players")
        for _,player in pairs(GetPlayers()) do
            SendPacket(2,  "action|input\n|text|/pull " .. player.name:sub(3, -3))
        end
        return true
    elseif packet:find("buttonClicked|world_kick") then
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9kicking all players")
        for _,player in pairs(GetPlayers()) do
            SendPacket(2,  "action|input\n|text|/kick " .. player.name:sub(3, -3))
        end 
        return true
    elseif packet:find("buttonClicked|world_trade") then
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9trading all players")
        for _,player in pairs(GetPlayers()) do
            SendPacket(2,  "action|input\n|text|/trade " .. player.name:sub(3, -3))
        end
        return true
    elseif packet:find("buttonClicked|world_ban") then
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9baning all players")
        for _,player in pairs(GetPlayers()) do
            SendPacket(2,  "action|input\n|text|/ban " .. player.name:sub(3, -3))
        end
        return true
    elseif packet:find("buttonClicked|world_unban") then
        SendPacket(2, "action|input\n|text|/uba")
        return true
    end
end

AddCallback("world_mode", "OnPacket", world_mode)

mod_fly = false

function modfly(type, packet)
    if packet == ("action|input\n|text|/modfly") then
        if mod_fly == false then
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9mod fly is now `3enabled")
        EditToggle("ModFly", true)
        mod_fly = true
        elseif mod_fly == true then
            OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9mod fly is now `3disabled")
            EditToggle("ModFly", false)
            mod_fly = false
        end
        return true
    end
end
    
AddCallback("modfly","OnPacket", modfly)

function bypassxy(type, packet)
    if packet == ("action|input\n|text|/vault") then
        for _,tile in pairs(GetTiles()) do
            if tile.fg == 8878 then
                x_pos = tile.pos_x
                y_pos = tile.pos_y
                x_pos = math.floor(x_pos)
                y_pos = math.floor(y_pos)
                OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9x pos set to : `3"..x_pos.." `0x `9y pos set to : `3"..y_pos)
                OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Now wrench Storage Box then type /bypass")
                OnConsoleMessage("`0[ `2Growtopia Proxy `0] `4NOTE : `9you MUST have atleast 1 Dirt Block.")
            end
        end
        return true
    end
end
AddCallback("bypassxy","OnPacket", bypassxy)

function bypass(type, packet)
    if packet == ("action|input\n|text|/bypass") then
        SendPacket(2, "action|dialog_return\ndialog_name|storageboxxtreme\ntilex|"..x_pos.."|\ntiley|"..y_pos.."|\nitemid|2|\nbuttonClicked|do_add\nitemcount|1")
    return true
    end
end
    
AddCallback("bypasspawn","OnPacket", bypass)

hat_change = 0
shirt_change = 0
pant_change = 0
shoes_change = 0
hand_change = 0
wing_change = 0
hair_change = 0
neck_change = 0
ances_chnage = 0

-- make it constumable
function save_clothe_when_enter69(varlist)
        if varlist[0]:find("OnMagicCompassTrackingItemIDChanged") then
            SendPacket(2,"action|setSkin\ncolor|3033464831")
            var2 = {}
            var2[0] = "OnSetClothing"
            var2[1] =  {hat_change, shirt_change, pant_change}
            var2[2] =  {shoes_change , 0, hand_change}
            var2[3] = {wing_change, hair_change, neck_change}
            var2[4] = 3033464831
            var2[5] =  {ances_chnage, 0, 0}
            var2.netid = GetLocal().netid
            SendVarlist(var2)
        return true
        end
    end
AddCallback("save_clothe_when_enter69", "OnVarlist", save_clothe_when_enter69)

function loadset1(type, packet)
    if packet == ("action|input\n|text|/load 1") then
        wing_change = 1784
        ances_chnage = 5134
        hair_change =  2872
        hat_change = 3042
        local var = {}
        var[0] = "OnParticleEffect"
        var[1] = 73
        var[2] = { GetLocal().pos_x + 10, GetLocal().pos_y + 15}
        var[3] = 0
        var[4] = 0
        var.netid = -1
        SendVarlist(var)
    
      SendPacket(2,"action|setSkin\ncolor|3033464831")
      var2 = {}
      var2[0] = "OnSetClothing"
      var2[1] =  {hat_change, shirt_change, pant_change}
      var2[2] =  {shoes_change , 0, hand_change}
      var2[3] = {wing_change, hair_change, neck_change}
      var2[4] = 3033464831
      var2[5] =  {ances_chnage, 0, 0}
      var2.netid = GetLocal().netid
      SendVarlist(var2)
      var23 = {}
      var23[0] = "OnPlayPositioned"
      var23[1] = "audio/change_clothes.wav"
      var23.netid = GetLocal().netid
      SendVarlist(var23)
    return true
    end
end
AddCallback("loadset1","OnPacket", loadset1)

function new_clothes()
    local var = {}
    var[0] = "OnParticleEffect"
    var[1] = 73
    var[2] = { GetLocal().pos_x + 10, GetLocal().pos_y + 15}
    var[3] = 0
    var[4] = 0
    var.netid = -1

    SendVarlist(var)
  SendPacket(2,"action|setSkin\ncolor|3033464831")
  var2 = {}
  var2[0] = "OnSetClothing"
  var2[1] =  {hat_change, shirt_change, pant_change}
  var2[2] =  {shoes_change , 0, hand_change}
  var2[3] = {wing_change, hair_change, neck_change}
  var2[4] = 3033464831
  var2[5] =  {ances_chnage, 0, 0}
  var2.netid = GetLocal().netid
  SendVarlist(var2)
  var23 = {}
  var23[0] = "OnPlayPositioned"
  var23[1] = "audio/change_clothes.wav"
  var23.netid = GetLocal().netid
  SendVarlist(var23)
end

function ances_chnage(type, packet)
  if packet:find("action|input") then
  text = packet:gsub("action|input\n|text|", "")
    if text:find("/vances") then
      ances_chnage = text:gsub("/vances", "")
    OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Ances :`3"..ances_chnage)
    new_clothes() 
    return true
    end
  end
end
  
AddCallback("ances_chnage","OnPacket", ances_chnage)

function neck_change(type, packet)
  if packet:find("action|input") then
  text = packet:gsub("action|input\n|text|", "")
    if text:find("/vneck") then
      neck_change = text:gsub("/vneck", "")
    OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Neck :`3"..neck_change)
    new_clothes() 
    return true
    end
  end
end
  
AddCallback("neck_change","OnPacket", neck_change)

function hair_change(type, packet)
  if packet:find("action|input") then
  text = packet:gsub("action|input\n|text|", "")
    if text:find("/vhair") then
      hair_change = text:gsub("/vhair", "")
    OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Hair :`3"..hair_change)
    new_clothes() 
    return true
    end
  end
end
  
AddCallback("hair_change","OnPacket", hair_change)

function wing_change(type, packet)
  if packet:find("action|input") then
  text = packet:gsub("action|input\n|text|", "")
    if text:find("/vwing") then
      wing_change = text:gsub("/vwing", "")
    OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Wings :`3"..wing_change)
    new_clothes() 
    return true
    end
  end
end
  
AddCallback("wing_change","OnPacket", wing_change)

function hand_change(type, packet)
  if packet:find("action|input") then
  text = packet:gsub("action|input\n|text|", "")
    if text:find("/vhand") then
      hand_change = text:gsub("/vhand", "")
    OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Hand :`3"..hand_change)
    new_clothes() 
    return true
    end
  end
end
  
AddCallback("hand_change","OnPacket", hand_change)

function shoes_change(type, packet)
  if packet:find("action|input") then
  text = packet:gsub("action|input\n|text|", "")
    if text:find("/vshoes") then
      shoes_change = text:gsub("/vshoes", "")
    OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Shoes :`3"..shoes_change)
    new_clothes() 
    return true
    end
  end
end
  
AddCallback("shoes_change","OnPacket", shoes_change)

function pant_change(type, packet)
  if packet:find("action|input") then
  text = packet:gsub("action|input\n|text|", "")
    if text:find("/vpant") then
      pant_change = text:gsub("/vpant", "")
    OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Pants :`3"..pant_change)
    new_clothes() 
    return true
    end
  end
end
  
AddCallback("pant_change","OnPacket", pant_change)

function shirt_change(type, packet)
  if packet:find("action|input") then
  text = packet:gsub("action|input\n|text|", "")
    if text:find("/vshirt") then
      shirt_change = text:gsub("/vshirt", "")
    OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Shirt :`3"..shirt_change)
    new_clothes() 
    return true
    end
  end
end
  
AddCallback("shirt_change","OnPacket", shirt_change)

function hat_change(type, packet)
  if packet:find("action|input") then
  text = packet:gsub("action|input\n|text|", "")
    if text:find("/vhat") then
      hat_change = text:gsub("/vhat", "")
    OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Hat :`3"..hat_change)
    new_clothes() 
    return true
    end
  end
end
  
AddCallback("hat_change","OnPacket", hat_change)

function set_save_clothes(type, packet)
  if packet == ("action|input\n|text|/clothe") or packet == ("action|input\n|text|/clothes") then
    OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Changing clothes")
    new_clothes()
    local var = {}
    var[0] = "OnParticleEffect"
    var[1] = 73
    var[2] = { GetLocal().pos_x + 10, GetLocal().pos_y + 15}
    var[3] = 0
    var[4] = 0
    var.netid = -1

    SendVarlist(var)
  return true
  end
end
  
AddCallback("set_save_clothes","OnPacket", set_save_clothes)

function start_stop_check_gems(type, packet)
    if packet == ("action|input\n|text|/bj") then
        if gems_checker then
            OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9BJ gems checker is `3off")
            gems_checker = false
           else
            OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9BJ gems checker is `3on")
            gems_checker = true
        end
           RunThread(function()
                   setgems()
           end)
    return true
    end
end
AddCallback("start_stop_check_gems","OnPacket", start_stop_check_gems)

gems_checker = false
function setgems()
    while gems_checker do
        Local_Gems = GetLocal().gems
        Sleep(200)
        if Local_Gems ~= GetLocal().gems then
        Sleep(200)
        var = {}
        var[0] = "OnTalkBubble"
        var[1] = GetLocal().netid
        var[2] = 0
        var[3] = 0
        var[4] = 0
        var.netid = -1
        SendVarlist(var)
        SendPacket(2, "action|input\n|text|`9Collected `2+"..math.floor(GetLocal().gems -Local_Gems).." `9Gems")
        end
    end
end


function ve(type, packet)
    if packet == ("action|input\n|text|/ve") then
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9vend mode set to `3empty")
        function vend_mode(varlist)
            if varlist[0] == "OnDialogRequest" and varlist[1]:find("end_dialog|vending|Close|Update|") then
                SendPacket(2, "action|dialog_return\ndialog_name|vending\ntilex|"..varlist[1]:match("embed_data|tilex|(%d+)").."|\ntiley|"..varlist[1]:match("embed_data|tiley|(%d+)").."|\nbuttonClicked|pullstock")
                return true
            end
        end
        AddCallback("vend_mode", "OnVarlist", vend_mode)
    return true
    end
end
    
AddCallback("ve","OnPacket", ve)

function va(type, packet)
    if packet == ("action|input\n|text|/va") then
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9vend mode set to `3add")
        function vend_mode(varlist)
            if varlist[0] == "OnDialogRequest" and varlist[1]:find("end_dialog|vending|Close|Update|") then
                SendPacket(2, "action|dialog_return\ndialog_name|vending\ntilex|"..varlist[1]:match("embed_data|tilex|(%d+)").."|\ntiley|"..varlist[1]:match("embed_data|tiley|(%d+)").."|\nbuttonClicked|addstock")
                return true
            end
            end
        AddCallback("vend_mode", "OnVarlist", vend_mode)
    return true
    end
end
    
AddCallback("va","OnPacket", va)

vend_buy = false
function set_vb(type, packet)
    if packet:find("action|input") then
      text = packet:gsub("action|input\n|text|", "")
      if text:find("/") then
        cmd = text:gsub("/", "")
        if cmd:find("vb") then
            set_vb_123 = cmd:gsub("vb", "")
            set_vb = tonumber(set_vb_123)
                OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Amount to buy : `3"..set_vb.."")
                vend_buy = true
                function vend_mode(varlist)
                    if varlist[0] == "OnDialogRequest" and varlist[1]:find("end_dialog|vending|Close|Buy|") then
                        x_buy = varlist[1]:match("embed_data|tilex|(%d+)")
                        y_buy = varlist[1]:match("embed_data|tiley|(%d+)")
                        expectitem_buy = varlist[1]:match("embed_data|expectitem|(%d+)")
                        expectprice_buy = varlist[1]:match('expectprice|[%d%-]+'):match('%|.*'):sub(2)
                        SendPacket(2, "action|dialog_return\ndialog_name|vending\ntilex|"..x_buy.."|\ntiley|"..y_buy.."|\nexpectprice|"..expectprice_buy.."|\nexpectitem|"..expectitem_buy.."|\nbuycount|"..set_vb)
                        return true
                    end
                end
                AddCallback("vend_mode", "OnVarlist", vend_mode)

                function buy_vend_2(varlist)
                    if varlist[0] == "OnDialogRequest" and varlist[1]:find("end_dialog|vending|Cancel|OK|") then
                        x_buy = varlist[1]:match("embed_data|tilex|(%d+)")
                        y_buy = varlist[1]:match("embed_data|tiley|(%d+)")
                        expectitem_buy = varlist[1]:match("embed_data|expectitem|(%d+)")
                        buy_count = varlist[1]:match("embed_data|buycount|(%d+)")
                        expectprice_buy = varlist[1]:match('expectprice|[%d%-]+'):match('%|.*'):sub(2)
                        SendPacket(2, "action|dialog_return\ndialog_name|vending\ntilex|"..x_buy.."|\ntiley|"..y_buy.."|\nverify|1|\nbuycount|"..buy_count.."|\nexpectprice|"..expectprice_buy.."|\nexpectitem|"..expectitem_buy.."|")
                        return true
                    end
                end
                AddCallback("buy_vend_2", "OnVarlist", buy_vend_2)
                
            return true
        end
    end
end
end
AddCallback("set_vb","OnPacket", set_vb)

function voff(type, packet)
    if packet == ("action|input\n|text|/voff") then
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9vend mode is now `3off")
        RemoveCallback("vend_mode")
        if vend_buy then
        RemoveCallback("buy_vend_2")
        end
        return true
    end
end

AddCallback("voff","OnPacket", voff)

function start_stop_collect(type, packet)
    if packet == ("action|input\n|text|/autocollect") or packet == ("action|input\n|text|/ac")then
        if autocollect then
            OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9autocollect is `3off")
            autocollect = false
           else
            OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9autocollect is `3on")
            autocollect = true
        end
           RunThread(function()
                   setcollect()
           end)
    return true
    end
end
AddCallback("start_stop_collect","OnPacket", start_stop_collect)

autocollect = false
function setcollect()
    while autocollect do
        var2 = {}
        var2[0] = "OnTextOverlay"
        var2[1] = "`" ..math.random(1,9) .."Collecting"
        var2.netid = -1
        SendVarlist(var2)
        function collectItems(range, delay, ispos)
            if not ispos then
                range = (range or 10)*32
            end
        
            pkt = {}
            pkt.type = 11
            for _, obj in pairs(GetObjects()) do
                posx = math.abs(GetLocal().pos_x-obj.pos_x)
                posy = math.abs(GetLocal().pos_y-obj.pos_y)
        
                if posx<range and posy<range then
                    pkt.int_data = obj.oid
                    pkt.pos_x = obj.pos_x
                    pkt.pos_y = obj.pos_y
                    SendPacketRaw(pkt)
                end
            end
        end
        collectItems()
        Sleep(100)
	end
end

function wp(type, packet)
    if packet == ("action|input\n|text|/wp") then
        mode_wm = "pull"
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9wrench mode set to `3pull")
        function Wrench(varlist)
            if varlist[0] == "OnDialogRequest" and varlist[1]:find("add_button|report_player|") then
                x = varlist[1]:removeColors()
                x2 = x:match("add_label_with_icon|big|(%w+)")
                SendPacket(2, "action|input\n|text|/pull "..x2)
            return true
            end
        end
        AddCallback("Wrench", "OnVarlist", Wrench)
        return true
    end
end

AddCallback("wp","OnPacket", wp)

function wk(type, packet)
    if packet == ("action|input\n|text|/wk") then
        mode_wm = "kick"
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9wrench mode set to `3kick")
        function Wrench(varlist)
            if varlist[0] == "OnDialogRequest" and varlist[1]:find("add_button|report_player|") then
                x = varlist[1]:removeColors()
                x2 = x:match("add_label_with_icon|big|(%w+)")
                SendPacket(2, "action|input\n|text|/kick "..x2)
            return true
            end
        end
        AddCallback("Wrench", "OnVarlist", Wrench)     
        return true
    end
end

AddCallback("wk","OnPacket", wk)

function wb(type, packet)
    if packet == ("action|input\n|text|/wb") then
        mode_wm = "ban"
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9wrench mode set to `3ban")
        function Wrench(varlist)
            if varlist[0] == "OnDialogRequest" and varlist[1]:find("add_button|report_player|") then
                x = varlist[1]:removeColors()
                x2 = x:match("add_label_with_icon|big|(%w+)")
                SendPacket(2, "action|input\n|text|/ban "..x2)
            return true
            end
        end
        AddCallback("Wrench", "OnVarlist", Wrench)
        return true
    end
end

AddCallback("wb","OnPacket", wb)

function woff(type, packet)
    if packet == ("action|input\n|text|/woff") then
        mode_wm = "off"
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9wrench mode is now `3off")
        RemoveCallback("Wrench") 
        return true
    end
end

AddCallback("woff","OnPacket", woff)

ut_adder_mode = false

function UT_adder(varlist)
    if ut_adder_mode then
        function UT_mode1(varlist)
            if varlist[0] == "OnDialogRequest" and varlist[1]:find("end_dialog|itemsucker_block|Close|Update|") then
                SendPacket(2, "action|dialog_return\ndialog_name|itemsucker_block\ntilex|"..varlist[1]:match("embed_data|tilex|(%d+)").."|\ntiley|"..varlist[1]:match("embed_data|tiley|(%d+)").."|\nbuttonClicked|additem\nchk_enablesucking|1")
                return true
            end
        end
        AddCallback("UT_mode1", "OnVarlist", UT_mode1)
        
        function UT_mode2(varlist)
            if varlist[0] == "OnDialogRequest" and varlist[1]:find("end_dialog|itemaddedtosucker|Close|Add|") then
                SendPacket(2, "action|dialog_return\ndialog_name|itemaddedtosucker\ntilex|"..varlist[1]:match("embed_data|tilex|(%d+)").."|\ntiley|"..varlist[1]:match("embed_data|tiley|(%d+)").."|\nitemtoadd|"..varlist[1]:match("have (%d+)").."")
                return true
            end
        end
        AddCallback("UT_mode2", "OnVarlist", UT_mode2)
    end
end
AddCallback("UT_adder", "OnVarlist", UT_adder)

ut_emptier_mode = false

function UT_emptier(varlist)
    if ut_emptier_mode then
        function UT_mode3(varlist)
            if varlist[0] == "OnDialogRequest" and varlist[1]:find("end_dialog|itemsucker_block|Close|Update|") then
                SendPacket(2, "action|dialog_return\ndialog_name|itemsucker_block\ntilex|"..varlist[1]:match("embed_data|tilex|(%d+)").."|\ntiley|"..varlist[1]:match("embed_data|tiley|(%d+)").."|\nbuttonClicked|retrieveitem\nchk_enablesucking|1")
                return true
            end
        end
        AddCallback("UT_mode3", "OnVarlist", UT_mode3)
        
        function UT_mode4(varlist)
            if varlist[0] == "OnDialogRequest" and varlist[1]:find("end_dialog|itemremovedfromsucker|Close|Retrieve|") then
                SendPacket(2, "action|dialog_return\ndialog_name|itemremovedfromsucker\ntilex|"..varlist[1]:match("embed_data|tilex|(%d+)").."|\ntiley|"..varlist[1]:match("embed_data|tiley|(%d+)").."|\nitemtoremove|"..varlist[1]:match("Amount:|(%d+)").."")
                return true
            end
        end
        AddCallback("UT_mode4", "OnVarlist", UT_mode4)
    end
end
AddCallback("UT_emptier", "OnVarlist", UT_emptier)

function ut_adder_hook(type, packet)
    if packet == ("action|input\n|text|/ut add") or packet == ("action|input\n|text|/ua") then
            ut_adder_mode = true
            ut_emptier_mode = false
            OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9fast UT adder `3enabled")
            AddCallback("UT_mode1", "OnVarlist", UT_mode1)
            AddCallback("UT_mode2", "OnVarlist", UT_mode2)
        return true
    end
end

AddCallback("ut_adder_hook","OnPacket", ut_adder_hook)

function ut_emptier_hook(type, packet)
    if packet == ("action|input\n|text|/ut empty") or packet == ("action|input\n|text|/ue") then
            ut_adder_mode = false
            ut_emptier_mode = true
            OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9fast UT emptier `3enabled")
            AddCallback("UT_mode3", "OnVarlist", UT_mode3)
            AddCallback("UT_mode4", "OnVarlist", UT_mode4)
            return true
        end
end

AddCallback("ut_emptier_hook","OnPacket", ut_emptier_hook)

function ut_on_off(type, packet)
    if packet == ("action|input\n|text|/ut off") or packet == ("action|input\n|text|/uoff") then
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9UT mode is now `3off")
        ut_emptier_mode = false
        ut_adder_mode = false
        return true
    end
end

AddCallback("ut_on_off","OnPacket", ut_on_off)

gaia_adder_mode = false

function GAIA_adder(varlist)
    if gaia_adder_mode then
        function GAIA_mode1(varlist)
            if varlist[0] == "OnDialogRequest" and varlist[1]:find("end_dialog|itemsucker_seed|Close|Update|") then
                SendPacket(2, "action|dialog_return\ndialog_name|itemsucker_seed\ntilex|"..varlist[1]:match("embed_data|tilex|(%d+)").."|\ntiley|"..varlist[1]:match("embed_data|tiley|(%d+)").."|\nbuttonClicked|additem\nchk_enablesucking|1")
                return true
            end
        end
        AddCallback("GAIA_mode1", "OnVarlist", GAIA_mode1)
        
        function GAIA_mode2(varlist)
            if varlist[0] == "OnDialogRequest" and varlist[1]:find("end_dialog|itemaddedtosucker|Close|Add|") then
                SendPacket(2, "action|dialog_return\ndialog_name|itemaddedtosucker\ntilex|"..varlist[1]:match("embed_data|tilex|(%d+)").."|\ntiley|"..varlist[1]:match("embed_data|tiley|(%d+)").."|\nitemtoadd|"..varlist[1]:match("have (%d+)").."")
                return true
            end
        end
        AddCallback("GAIA_mode2", "OnVarlist", GAIA_mode2)
    end
end
AddCallback("GAIA_adder", "OnVarlist", GAIA_adder)

gaia_emptier_mode = false

function GAIA_emptier(varlist)
    if gaia_emptier_mode then
        function GAIA_mode3(varlist)
            if varlist[0] == "OnDialogRequest" and varlist[1]:find("end_dialog|itemsucker_seed|Close|Update|") then
                SendPacket(2, "action|dialog_return\ndialog_name|itemsucker_seed\ntilex|"..varlist[1]:match("embed_data|tilex|(%d+)").."|\ntiley|"..varlist[1]:match("embed_data|tiley|(%d+)").."|\nbuttonClicked|retrieveitem\nchk_enablesucking|1")
                return true
            end
        end
        AddCallback("GAIA_mode3", "OnVarlist", GAIA_mode3)
        
        function GAIA_mode4(varlist)
            if varlist[0] == "OnDialogRequest" and varlist[1]:find("end_dialog|itemremovedfromsucker|Close|Retrieve|") then
                SendPacket(2, "action|dialog_return\ndialog_name|itemremovedfromsucker\ntilex|"..varlist[1]:match("embed_data|tilex|(%d+)").."|\ntiley|"..varlist[1]:match("embed_data|tiley|(%d+)").."|\nitemtoremove|"..varlist[1]:match("Amount:|(%d+)").."")
                return true
            end
        end
        AddCallback("GAIA_mode4", "OnVarlist", GAIA_mode4)
    end
end
AddCallback("GAIA_emptier", "OnVarlist", GAIA_emptier)

function gaia_adder_hook(type, packet)
    if packet == ("action|input\n|text|/gaia add") or packet == ("action|input\n|text|/ga") then
            gaia_adder_mode = true
            gaia_emptier_mode = false
            OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9fast GAIA adder `3enabled")
            AddCallback("GAIA_mode1", "OnVarlist", GAIA_mode1)
            AddCallback("GAIA_mode2", "OnVarlist", GAIA_mode2)
            return true
        end
end

AddCallback("gaia_adder_hook","OnPacket", gaia_adder_hook)

function gaia_emptier_hook(type, packet)
    if packet == ("action|input\n|text|/gaia empty") or packet == ("action|input\n|text|/ge") then
            gaia_emptier_mode = true
            gaia_adder_mode = false
            OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9fast GAIA emptier `3enabled")
            AddCallback("GAIA_mode3", "OnVarlist", GAIA_mode3)
            AddCallback("GAIA_mode4", "OnVarlist", GAIA_mode4)
            return true
        end
end

AddCallback("gaia_emptier_hook","OnPacket", gaia_emptier_hook)

function gaia_on_off(type, packet)
    if packet == ("action|input\n|text|/gaia off") or packet == ("action|input\n|text|/goff") then
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9GAIA mode is now `3off")
        gaia_emptier_mode = false
        gaia_adder_mode = false
        return true
    end
end

AddCallback("gaia_on_off","OnPacket", gaia_on_off)

auto_put_donationbox_mode = false

function auto_put_donationbox(varlist)
    if auto_put_donationbox_mode then
        if varlist[0] == "OnDialogRequest" and varlist[1]:find("end_dialog|give_item|||") then
            SendPacket(2, "action|dialog_return\ndialog_name|give_item\nitemID|"..varlist[1]:match("embed_data|itemID|(%d+)").."|\ntilex|"..varlist[1]:match("embed_data|tilex|(%d+)").."|\ntiley|"..varlist[1]:match("embed_data|tiley|(%d+)").."|\nbuttonClicked|give\ncount|"..varlist[1]:match("add_text_input|count|Count:|(%d+)").."\nsign_text|")
            return true
        end
    end
end
AddCallback("auto_put_donationbox", "OnVarlist", auto_put_donationbox)

function auto_put_donationbox_hook_xd(type, packet)
    if packet == ("action|input\n|text|/donation add") or packet == ("action|input\n|text|/da")then
        if auto_put_donationbox_mode == true then
            auto_put_donationbox_mode = false
            OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9fast empty donation `3disabled")
        elseif auto_put_donationbox_mode == false then
            auto_put_donationbox_mode = true
            OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9fast empty donation `3enabled")
        end
    return true
end
end

AddCallback("auto_put_donationbox_hook_xd","OnPacket", auto_put_donationbox_hook_xd)

auto_empty_donationbox_mode = false

function auto_empty_donationbox(varlist)
    if auto_empty_donationbox_mode then
    if varlist[0] == "OnDialogRequest" and varlist[1]:find("end_dialog|donation_box_edit|Cancel||") then
        SendPacket(2, "action|dialog_return\ndialog_name|donation_box_edit\ntilex|"..varlist[1]:match("embed_data|tilex|(%d+)").."|\ntiley|"..varlist[1]:match("embed_data|tiley|(%d+)").."|\nbuttonClicked|clear")
        return true
    end
    end
end
AddCallback("auto_empty_donationbox", "OnVarlist", auto_empty_donationbox)

function auto_empty_donationbox_hook_xd(type, packet)
    if packet == ("action|input\n|text|/donation empty") or packet == ("action|input\n|text|/de")then
        if auto_empty_donationbox_mode == true then
            auto_empty_donationbox_mode = false
            OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9fast empty donation `3disabled")
        elseif auto_empty_donationbox_mode == false then
            auto_empty_donationbox_mode = true
            OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9fast empty donation `3enabled")
        end
    return true
end
end

AddCallback("auto_empty_donationbox_hook_xd","OnPacket", auto_empty_donationbox_hook_xd)

auto_ban_fire_maker_mode = false

function auto_ban_fire_maker(varlist)
    if auto_ban_fire_maker_mode then
        function fireban(v)
            if v[0] == "OnTalkBubble" and v[2]:find("`4MWAHAHAHA!!") then
                netid = v[1]
                OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Player with a netid of `3"..netid.." `9placed a pocket lighter !")
                pkt = [[action|wrench
                |netid|]]..netid
                pkt2 = [[action|dialog_return
                dialog_name|popup
                netID|]]..netid..[[|
                netID|]]..netid..[[|
                buttonClicked|worldban]]
                SendPacket(2, pkt)
                SendPacket(2, pkt2)
                return true
            end
        end
        AddCallback("fire", "OnVarlist", fireban)
    end
end
AddCallback("auto_ban_fire_maker", "OnVarlist", auto_ban_fire_maker)

function auto_ban_fire_maker_hook_xd(type, packet)
    if packet == ("action|input\n|text|/fire ban") then
        if auto_ban_fire_maker_mode == true then
            auto_ban_fire_maker_mode = false
            OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9auto ban fire maker `3disabled")
        RemoveCallback("auto_ban_fire_maker")
        elseif auto_ban_fire_maker_mode == false then
            auto_ban_fire_maker_mode = true
            OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9auto ban fire maker `3enabled")
        AddCallback("auto_ban_fire_maker","OnVarlist", auto_ban_fire_maker)
        end
    return true
end
end

AddCallback("auto_ban_fire_maker_hook_xd","OnPacket", auto_ban_fire_maker_hook_xd)

fd_mode = false

function fd(varlist)
    if fd_mode then
    if varlist[0] == "OnDialogRequest" and varlist[1]:find("end_dialog|drop_item|Cancel|OK|") then
        SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|"..varlist[1]:match("itemID|(%d+)").."|\ncount|"..varlist[1]:match("count||(%d+)").."")
        return true
    end
    end
end
AddCallback("fd", "OnVarlist", fd)

function fd_hook_xd(type, packet)
    if packet == ("action|input\n|text|/fd") then
        if fd_mode == true then
            fd_mode = false
            OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9fast drop `3disabled")
        RemoveCallback("fd")
        elseif fd_mode == false then
            fd_mode = true
            OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9fast drop `3enabled")
        AddCallback("fd","OnVarlist", fd)
        end
    return true
end
end

AddCallback("fd_hook_xd","OnPacket", fd_hook_xd)


ft_mode = false

function ft(varlist)
    if ft_mode then
    if varlist[0] == "OnDialogRequest" and varlist[1]:find("end_dialog|trash_item|Cancel|OK|") then
        SendPacket(2, "action|dialog_return\ndialog_name|trash_item\nitemID|"..varlist[1]:match("embed_data|itemID|(%d+)").."|\ncount|"..varlist[1]:match("you have (%d+)"))
        return true
    end
    end
end
AddCallback("ft", "OnVarlist", ft)

function ft_hook_xd(type, packet)
    if packet == ("action|input\n|text|/ft") then
        if ft_mode == true then
            ft_mode = false
            OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9fast trash `3disabled")
        RemoveCallback("ft")
        elseif ft_mode == false then
            ft_mode = true
            OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9fast trash `3enabled")
        AddCallback("ft","OnVarlist", ft)
        end
    return true
end
end

AddCallback("ft_hook_xd","OnPacket", ft_hook_xd)

function set_mod_join(type, packet)
    if packet:find("action|input") then
      text = packet:gsub("action|input\n|text|", "")
      if text:find("/") then
        cmd = text:gsub("/", "")
        if cmd:find("join") then
            -- OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9This command is `4currently locked `9due to some bugs.")
            set_mod_joinx = cmd:gsub("join ", "")
            if set_mod_joinx == "ban" then
                    set_mod_join = "ban"
                OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9join command set to : `3"..set_mod_join)
                function when_join(vlist)
                    if vlist[0]=="OnSpawn" then
                        a = vlist[1]:match("name|(`.[^`]+)")
                        name = a:sub(3)
                        SendPacket(2,"action|input\n|text|/"..set_mod_join.." " .. name:lower())
                    end
                end
                AddCallback("when_join","OnVarlist", when_join)
            end
            if set_mod_joinx == "kick" then
                    set_mod_join = "kick"
                OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9join command set to : `3"..set_mod_join)
                function when_join(vlist)
                    if vlist[0]=="OnSpawn" then
                        a = vlist[1]:match("name|(`.[^`]+)")
                        name = a:sub(3)
                        SendPacket(2,"action|input\n|text|/"..set_mod_join.." " .. name:lower())
                    end
                end
                AddCallback("when_join","OnVarlist", when_join)
            end
            if set_mod_joinx == "pull" then
                    set_mod_join = "pull"
                OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9join command set to : `3"..set_mod_join)
                function when_join(vlist)
                    if vlist[0]=="OnSpawn" then
                        a = vlist[1]:match("name|(`.[^`]+)")
                        name = a:sub(3)
                        SendPacket(2,"action|input\n|text|/"..set_mod_join.." " .. name:lower())
                    end
                end
                AddCallback("when_join","OnVarlist", when_join)
            end
                if set_mod_joinx == "off" then
                    OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9turning off join mode")
                    RemoveCallback("when_join")
                end
          return true
        end
    end
end
end
AddCallback("set_mod_join","OnPacket", set_mod_join)

function set_mod_join2(type, packet)
    if packet:find("action|input") then
      text = packet:gsub("action|input\n|text|", "")
      if text:find("/") then
        cmd = text:gsub("/", "")
        if cmd:find("j") and not cmd:find("join") and not cmd:find("bj") then
            -- OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9This command is `4currently locked `9due to some bugs.")
            set_mod_joinx2 = cmd:gsub("j ", "")
            if set_mod_joinx2 == "ban" then
                set_mod_join2 = "ban"
                OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9join command set to : `3"..set_mod_join2)
                function when_join(vlist)
                    if vlist[0]=="OnSpawn" then
                        a = vlist[1]:match("name|(`.[^`]+)")
                        name = a:sub(3)
                        SendPacket(2,"action|input\n|text|/"..set_mod_join2.." " .. name:lower())
                    end
                end
                AddCallback("when_join","OnVarlist", when_join)
            end
            if set_mod_joinx2 == "kick" then
                set_mod_join2 = "kick"
                OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9join command set to : `3"..set_mod_join2)
                function when_join(vlist)
                    if vlist[0]=="OnSpawn" then
                        a = vlist[1]:match("name|(`.[^`]+)")
                        name = a:sub(3)
                        SendPacket(2,"action|input\n|text|/"..set_mod_join2.." " .. name:lower())
                    end
                end
                AddCallback("when_join","OnVarlist", when_join)
            end
            if set_mod_joinx2 == "pull" then
                    set_mod_join2 = "pull"
                OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9join command set to : `3"..set_mod_join2)
                function when_join(vlist)
                    if vlist[0]=="OnSpawn" then
                        a = vlist[1]:match("name|(`.[^`]+)")
                        name = a:sub(3)
                        SendPacket(2,"action|input\n|text|/"..set_mod_join2.." " .. name:lower())
                    end
                end
                AddCallback("when_join","OnVarlist", when_join)
            end
                if set_mod_joinx2 == "off" then
                    OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9turning off join mode")
                    RemoveCallback("when_join")
                end
          return true
        end
    end
end
end
AddCallback("set_mod_join2","OnPacket", set_mod_join2)

buying_wls = false

function setbuywl()
    gems_inv = GetLocal().gems
    gems_wl = gems_inv / 2000
    amount_gems_round = math.floor(gems_wl)
    amount = amount_gems_round
        while buying_wls do            
            OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Buying `3" ..amount.. " `9wls")
            while amount~=0 do
            
            SendPacket(2, "action|buy\nitem|world_lock")
            Sleep(10)
            
            amount=amount-1
            
            end
            
            OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Done")
            buying_wls = false
		end
end

function start_stop_buywls(type, packet)
    if packet == ("action|input\n|text|/buywl") then
        if buying_wls then
            OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Done !")
            buying_wls = false
           else
            OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Buying wls is `3on")
            buying_wls = true
        end
           RunThread(function()
                   setbuywl()
           end)
    return true
    end
end
AddCallback("start_stop_buywls","OnPacket", start_stop_buywls)

function fake_ban(type, packet)
    if packet == ("action|input\n|text|/fakeban") then
        ban_name = GetLocal().name
        var2 = {}
        var2[0] = "OnConsoleMessage"
        var2[1] = "Reality flickers as you begin to wake up. (`$Ban`` mod added, `$720 days`` left)"
        var2.netid = -1
        SendVarlist(var2)

        var2 = {}
        var2[0] = "OnAddNotification"
        var2[1] = "interface/atomic_button.rttex"
        var2[2] = "Warning from `4System``: You've been `4BANNED`` from `wGrowtopia`` for 720 days"
        var2[3] = "audio/hub_open.wav"
        var2[4] = 0
        var2.netid = -1
        SendVarlist(var2)

        var2 = {}
        var2[0] = "OnConsoleMessage"
        var2[1] = "Warning from `4System``: You've been `4BANNED`` from `wGrowtopia`` for 720 days"
        var2.netid = -1
        SendVarlist(var2)

        var2 = {}
        var2[0] = "OnConsoleMessage"
        var2[1] = "`#** ```$The Ancients`` have used `#Ban`` on `w"..ban_name.."``! `#**``"
        var2.netid = -1
        SendVarlist(var2)

        var2 = {}
        var2[0] = "OnConsoleMessage"
        var2[1] = "`4** `$"..ban_name.."`` AUTO-BANNED BY SYSTEM **`` (`$/rules`` to view rules)"
        var2.netid = -1
        SendVarlist(var2)
    return true
    end
end
    
AddCallback("fake_ban","OnPacket", fake_ban)

local spinall_active = false

function spinall(type, packet)
    if packet == ("action|input\n|text|/spinall") then
        
        spinall_active = not spinall_active
        
        if spinall_active then
            OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Spinning all wheels `2(ON)")

            local function Hit(x, y)
                local p = {}
                p.type = 3
                p.int_data = 3704
                p.int_x = x
                p.int_y = y
                p.pos_x = GetLocal().pos_x
                p.pos_y = GetLocal().pos_y
                SendPacketRaw(p)
            end

            RunThread(function()
                while spinall_active do
                    local nocrash = {}

                    -- ambil semua magic wheel (758)
                    for i, v in pairs(GetTiles()) do
                        if v.fg == 758 then
                            table.insert(nocrash, {x = v.pos_x, y = v.pos_y})
                        end
                    end

                    -- hit semua wheel
                    for _, pos in pairs(nocrash) do
                        if not spinall_active then break end
                        
                        Hit(pos.x, pos.y)
                        Sleep(200)

                        -- anti crash / keluar world
                        if GetLocal().name == "NULL" then
                            spinall_active = false
                            break
                        end
                    end

                    Sleep(100)
                end
            end)

        else
            OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Spinning all wheels `4(OFF)")
        end

        return true
    end
end

AddCallback("spinall","OnPacket", spinall)

autocrime = false

function auto_crime(type, packet)
    if packet == ("action|input\n|text|/autocrime") then
        if autocrime then
            autocrime = false
            OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Auto-crime `3Stopped")
            RemoveCallback("crime")
        return true
        else
            OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Auto-crime `3Started")
            autocrime = true
            function crime(var)
                if var[0]:find("OnDialogRequest") then
                    if var[1]:find("Devil Ham``%'s `2Crush`` card `4melted") then
                        liq = "yes"
                    end
                    if var[1]:find("Ms%. Terry") and var[1]:find("Ban Hammer") then
                        ban = "yes"
                    end
            
                    if var[1]:find("|Battle%!|")  then
                        x = var[1]:match("tilex|(%d+)")
                        y = var[1]:match("tiley|(%d+)")
                        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Villian :`3" .. var[1]:match("add_textbox|(.*)`` is"))
            
                        if var[1]:find("Crime in Progress") then
                            c1 = 2298
                            c2 = 2308
                            c3 = 2320
                            c4 = 2324
                            c5 = 2332
                        end
                        if var[1]:find("Jimmy Snow") then
                            use1 = c5
                            use2 = c4
                            use3 = c3
                        elseif var[1]:find("Big Bertha") then
                            use1 = c1
                            use2 = c4
                            use3 = c3
                        elseif var[1]:find("Shockinator") then
                            use1 = c4
                            use2 = c3
                            use3 = c1
                        elseif var[1]:find("The Firebug") then
                            use1 = c2
                            use2 = c1
                            use3 = c5
                        elseif var[1]:find("Generic Thug") or var[1]:find("Kat 5") then
                            use1 = c4
                            use2 = c3
                            use3 = c2
                        elseif var[1]:find("Professor Pummel") then
                            c1 = 2296
                            c2 = 2298
                            c3 = 2300
                            c4 = 2320
                            c5 = 2324
                            use1 = c3
                            use2 = c2
                            use3 = c1
                        elseif var[1]:find("Z%. Everett Koop") then
                            c1 = 2296
                            c2 = 2298
                            c3 = 2300
                            c4 = 2320
                            c5 = 2324
                            use1 = c3
                            use2 = c1
                            use3 = c2
                        elseif var[1]:find("Dr%. Destructo") then
                            c1 = 2298
                            c2 = 2308
                            c3 = 2310
                            c4 = 2314
                            c5 = 2316
                            step = "0"
                            use1 = c1
                            use2 = c3
                            use3 = c5
                        elseif var[1]:find("Dragon Hand") or var[1]:find("Almighty Seth") then
                            c1 = 2308
                            c2 = 2312
                            c3 = 2314
                            c4 = 2326
                            c5 = 2328
                            use1 = c5
                            use2 = c4
                            use3 = 6969
                        elseif var[1]:find("Devil Ham") then
                            c1 = 2298
                            c2 = 2332
                            c3 = 2334
                            c4 = 2336
                            c5 = 2338
                            use1 = c1
                            use2 = c4
                            use3 = c5
                            use4 = c3
                            use5 = c2
            
                            liq = "no"
                            step = "1"
                        elseif var[1]:find("Ms%. Terry") then
                            c1 = 2294
                            c2 = 2316
                            c3 = 2322
                            c4 = 2328
                            c5 = 2338
                            use1 = c1
                            use2 = c2
                            use3 = c3
                            use4 = c4
                            use5 = c5
                            ban = "no"
                        end
            
                        SendPacket(2,"action|dialog_return\ndialog_name|crime_edit\ntilex|" ..x .."|\ntiley|" ..y .."|\nstate|0||\nbuttonClicked|button_ok\n\nc" ..c1 .. "|1\nc" .. c2 .. "|1\nc" .. c3 .. "|1\nc" .. c4 .. "|1\nc" .. c5 .. "|1\n")
                    elseif var[1]:find("Fighting Crime") and var[1]:find("Devil Ham") then
                        if liq == "no" then
                            if var[1]:find("c" .. use1) then
                                use = use1
                            else
                                use = "passturn"
                            end
                        elseif var[1]:find("c" .. use2) and step == "0" then
                            step = "1"
                            use = use2
                        elseif var[1]:find("c" .. use3) then
                            use = use3
                        elseif var[1]:find("c" .. use4) then
                            use = use4
                        elseif var[1]:find("c" .. use5) then
                            use = use5
                        else
                            use = "passturn"
                        end
            
                        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Please wait..")
                        SendPacket(2,"action|dialog_return\ndialog_name|crime_edit\ntilex|" ..x .. "|\ntiley|" .. y .. "|\nstate|1||\nbuttonClicked|c" .. use)
                    elseif var[1]:find("Fighting Crime") and var[1]:find("Ms%. Terry") then
                        if var[1]:find("is going to play `%d") then
                            if var[1]:match("is going to play `(%d)") == "2" then
                                use = use1
                            elseif var[1]:match("is going to play `(%d)") == "4" then
                                use = use2
                            elseif var[1]:match("is going to play `(%d)") == "9" then
                                use = use4
                            elseif var[1]:match("is going to play `(%d)") == "1" then
                                use = use5
                            end
                        elseif var[1]:find("c" .. use3) then
                            use = use3
                        elseif var[1]:find("c" .. use5) and ban=="yes" then
                            use = use5
                        elseif var[1]:find("c" .. use1) then
                            use = use1
                        elseif var[1]:find("c" .. use4) then
                            use = use4
                        elseif var[1]:find("c" .. use5) then
                            use = use5
                        elseif var[1]:find("c" .. use2) then
                            use = use2
                        else
                            use = "passturn"
                        end
            
                        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Please wait..")
                        SendPacket(2,"action|dialog_return\ndialog_name|crime_edit\ntilex|" ..x .. "|\ntiley|" .. y .. "|\nstate|1||\nbuttonClicked|c" .. use)
                    elseif var[1]:find("Fighting Crime") and var[1]:find("Dr%. Destructo") then
                        if var[1]:find("c" .. use1) and step == "0" then
                            use = use1
                            step = "1"
                        elseif var[1]:find("c" .. use2) then
                            use = use2
                        elseif var[1]:find("c" .. use3) then
                            use = use3
                        else
                            use = "passturn"
                        end
                        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Please wait..")
                        SendPacket(2,"action|dialog_return\ndialog_name|crime_edit\ntilex|" ..x .. "|\ntiley|" .. y .. "|\nstate|1||\nbuttonClicked|c" .. use)
                    elseif var[1]:find("Fighting Crime") then
                        if var[1]:find("c" .. use1) then
                            use = use1
                        elseif var[1]:find("c" .. use2) then
                            use = use2
                        elseif var[1]:find("c" .. use3) then
                            use = use3
                        else
                            use = "passturn"
                        end
            
                        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Please wait..")
                        SendPacket(2, "action|dialog_return\ndialog_name|crime_edit\ntilex|" ..x .. "|\ntiley|" .. y .. "|\nstate|1||\nbuttonClicked|c" .. use)
                    end
                    return true
                end
                return false
            end
            
            AddCallback("crime", "OnVarlist", crime)

            return true
        end
    end
    end
AddCallback("auto_crime","OnPacket", auto_crime)

autosurg = autosurg or false
autosurg_legit_mode = autosurg_legit_mode or false
if autosurg_auto_tea == nil then autosurg_auto_tea = true end
if autosurg_low_tools_warning == nil then autosurg_low_tools_warning = true end

-- Tea in surgery usually uses buttonClicked|tea (not fixed tool id in surgery dialog)
AUTO_TEA_ID = tonumber(AUTO_TEA_ID) or 0
LOW_TOOL_THRESHOLD = tonumber(LOW_TOOL_THRESHOLD) or 15

tool = ""
itool = 0

function set_autosurg_state(state)
    if state and not autosurg then
        autosurg = true
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Auto-surg `3Started")
        AddCallback("surg","OnVarlist", surg)
    elseif (not state) and autosurg then
        autosurg = false
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Auto-surg `3Stopped")
        RemoveCallback("surg")
    end
end

function autosurg_page()
    local cb_surg = autosurg and "1" or "0"
    local cb_legit = autosurg_legit_mode and "1" or "0"
    local cb_tea = autosurg_auto_tea and "1" or "0"
    local cb_warn = autosurg_low_tools_warning and "1" or "0"

    local v = {}
    v[0] = "OnDialogRequest"
    v[1] = [[set_default_color|`o
add_label_with_icon|big|`dAutoSurgery Page``|left|1260|
add_spacer|small|
add_checkbox|asurg_enabled|`2Enable AutoSurgery|]]..cb_surg..[[|
add_checkbox|asurg_legit|`2Enable Legit Mode|]]..cb_legit..[[|
add_checkbox|asurg_tea|`2Enable Auto Consume Tea|]]..cb_tea..[[|
add_checkbox|asurg_warn|`2Enable Low Tools Warning|]]..cb_warn..[[|
add_spacer|small|
add_textbox|`8Legit mode only shows best tool (manual click).|left|
add_textbox|`8Auto tea uses surgery tea button. Tea tool id: `3]]..AUTO_TEA_ID..[[|left|
add_textbox|`9Type /surg for quick ON/OFF.|left|
end_dialog|asurg_menu|Cancel|Okay|
]]
    v.netid = -1
    SendVarlist(v)
end

function auto_apply_settings(packet)
    local new_autosurg = packet:find("asurg_enabled|1") ~= nil
    autosurg_legit_mode = packet:find("asurg_legit|1") ~= nil
    autosurg_auto_tea = packet:find("asurg_tea|1") ~= nil
    autosurg_low_tools_warning = packet:find("asurg_warn|1") ~= nil

    set_autosurg_state(new_autosurg)

    OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Legit Mode: "..(autosurg_legit_mode and "`2ON" or "`4OFF"))
    OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Auto Tea: "..(autosurg_auto_tea and "`2ON" or "`4OFF"))
    OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Low Tools Warning: "..(autosurg_low_tools_warning and "`2ON" or "`4OFF"))
end

function autosurg_menu(type, packet)
    if packet == ("action|input\n|text|/asurg") then
        autosurg_page()
        return true
    elseif packet:find("action|dialog_return") and packet:find("dialog_name|asurg_menu") then
        auto_apply_settings(packet)
        return true
    end
end
AddCallback("autosurg_menu","OnPacket", autosurg_menu)

function auto(tool_name)
    tool = tool_name
    itool = 0

    if tool == "Sponge" then
        itool = 1258
    elseif tool == "Splint" then
        itool = 1268
    elseif tool == "Antibiotic" then
        itool = 1266
    elseif tool == "Anesthetic" then
        itool = 1262
    elseif tool == "Scalpel" then
        itool = 1260
    elseif tool == "Stitches" then
        itool = 1270
    elseif tool == "Lab kit" then
        itool = 4318
    elseif tool == "Pins" then
        itool = 4308
    elseif tool == "Clamp" then
        itool = 4314
    elseif tool == "Transfusion" then
        itool = 4310
    elseif tool == "Ultrasound" then
        itool = 4316
    elseif tool == "Defibrillator" then
        itool = 4312
    elseif tool == "Fix it" then
        itool = 1296
    end

    if itool == 0 then return false end

    if autosurg_legit_mode then
        local v = {}
        v[0] = "OnConsoleMessage"
        v[1] = "`0[ `2AutoSurg `0] `9Best Tool: `2"..tool
        v.netid = -1
        SendVarlist(v)
        return true
    end

    SendPacket(2, "action|dialog_return\ndialog_name|surgery\nbuttonClicked|tool"..itool)
    local v = {}
    v[0] = "OnTextOverlay"
    v[1] = "`9"..tool
    v.netid = -1
    SendVarlist(v)
    return true
end

function surg(var)
   if not (var and var[0] and var[1]) then return false end
   if not tostring(var[0]):find("OnDialogRequest") then return false end

   local text = tostring(var[1])

   if AUTO_TEA_ID == 0 then
      local tid = text:match("tool(%d+)")
      if tid and text:lower():find("tea") then AUTO_TEA_ID = tonumber(tid) or 0 end
   end

   if autosurg_auto_tea and (text:find("buttonClicked|tea") or text:find("button|tea") or text:find("Tea")) then
      if autosurg_legit_mode then
         OnConsoleMessage("`0[ `2AutoSurg `0] `9Best Tool: `2Tea")
      else
         SendPacket(2, "action|dialog_return\ndialog_name|surgery\nbuttonClicked|tea")
         OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Auto Tea `2Used")
      end
      return true
   end

   if autosurg_low_tools_warning and text:find("dialog_name|surgery") then
      local inv = {}
      for _, item in pairs(GetInventory()) do
         inv[item.id] = item.amount
      end

      local low = {}
      local req = {
         {1258, "Sponge"},
         {1260, "Scalpel"},
         {1262, "Anesthetic"},
         {1266, "Antibiotic"},
         {1268, "Splint"},
         {1270, "Stitches"},
         {1296, "Fix it"},
         {4308, "Pins"},
         {4310, "Transfusion"},
         {4312, "Defibrillator"},
         {4314, "Clamp"},
         {4316, "Ultrasound"},
         {4318, "Lab kit"}
      }

      for _, t in pairs(req) do
         local cnt = inv[t[1]] or 0
         if cnt <= LOW_TOOL_THRESHOLD then
            table.insert(low, t[2].."("..cnt..")")
         end
      end

      if #low > 0 then
         OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Low tools warning (`3<= "..LOW_TOOL_THRESHOLD.."`9): `4"..table.concat(low, ", "))
      end
   end

   if text:find("`4The patient wakes up!") and text:find("tool1262") then
      return auto("Anesthetic")
   elseif text:find("`4The patient screams and flails!") and text:find("tool1262") then
      return auto("Anesthetic")
   elseif text:find("Status: `4Heart stopped!") and text:find("tool4312") then
      return auto("Defibrillator")
   elseif text:find("Status: `6Coming to") and text:find("tool1262") then
      return auto("Anesthetic")
   elseif text:find("Pulse: `4") and text:find("tool4310") then
      return auto("Transfusion")
   elseif text:find("Temp: `4") and text:find("tool1266") then
      return auto("Antibiotic")
   elseif text:find("Temp: `4") and text:find("tool4318") then
      return auto("Lab kit")
   elseif text:find("Temp: `6") and text:find("tool1266") then
      return auto("Antibiotic")
   elseif text:find("Temp: `6") and text:find("tool4318") then
      return auto("Lab kit")
   elseif text:find("Temp: `3") and text:find("tool1266") then
      return auto("Antibiotic")
   elseif text:find("Temp: `3") and text:find("tool4318") then
      return auto("Lab kit")
   elseif text:find("Patient is losing blood `4very quickly!") and text:find("tool4314") then
      return auto("Clamp")
   elseif text:find("Patient is losing blood `4very quickly!") and text:find("tool1270") then
      return auto("Stitches")
   elseif text:find("Patient is `6losing blood!") and text:find("tool4314") then
      return auto("Clamp")
   elseif text:find("Patient is `6losing blood!") and text:find("tool1270") then
      return auto("Stitches")
   elseif text:find("Incisions: `20") and text:find("tool1296") then
      return auto("Fix it")
   elseif text:find("Incisions: `30") and text:find("tool1296") then
      return auto("Fix it")
   elseif text:find("The patient has not been diagnosed.") and text:find("tool4316") then
      return auto("Ultrasound")
   elseif text:find("Status: `4Awake") and text:find("tool1262") then
      return auto("Anesthetic")
   elseif text:find("Bones: `6") and text:find(" broken``") and text:find("tool1268") then
      return auto("Splint")
   elseif text:find("Bones: `4") and text:find(" broken``") and text:find("tool1268") then
      return auto("Splint")
   elseif text:find("Patient broke his arm.") and text:find("tool1270") then
      return auto("Stitches")
   elseif text:find("Status: `3Awake") and text:find("tool1262") then
      return auto("Anesthetic")
   elseif text:find("Pulse: `6") and text:find("tool4310") then
      return auto("Transfusion")
   elseif text:find("`4You can't see what you are doing!") and text:find("tool1258") then
      return auto("Sponge")
   elseif text:find("tool1296") and text:find("tool1270") then
      return auto("Stitches")
   elseif text:find("shattered") and text:find("tool4308") then
      return auto("Pins")
   elseif text:find("shattered") and text:find("tool1260") then
      return auto("Scalpel")
   elseif text:find("Patient broke his leg.") and text:find("tool1270") then
      return auto("Stitches")
   elseif text:find("Patient is losing blood `3slowly.") and text:find("tool4314") then
      return auto("Clamp")
   elseif text:find("tool1260") then
      return auto("Scalpel")
   end

   return false
end

function auto_surg(type, packet)
    if packet == ("action|input\n|text|/surg") then
        if autosurg then
            autosurg = false
            OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Auto-surg `3Stopped")
            RemoveCallback("surg")
            return true
        else
            autosurg = true
            OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Auto-surg `3Started")
            AddCallback("surg","OnVarlist", surg)
            return true
        end
    end
end
AddCallback("auto_surg","OnPacket", auto_surg)

me_mode = me_mode or false

function auto_me(type, packet)
    if not packet:find("action|input") then
        return false
    end

    local text = packet:gsub("action|input\n|text|", "")

    if text == "/me" then
        me_mode = not me_mode
        if me_mode then
            OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Auto /me `2ON")
        else
            OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Auto /me `4OFF")
        end
        return true
    end

    if me_mode and text ~= "" and text:sub(1,1) ~= "/" then
        SendPacket(2, "action|input\n|text|/me "..text)
        return true
    end

    return false
end
AddCallback("auto_me","OnPacket", auto_me)

function gemsx(type, packet)
    if packet == ("action|input\n|text|/gems") then
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9counting gems..")
        count = 0
        for _, obj in pairs(GetObjects()) do
        if obj.id == 112  then
        count = count + obj.count
        end
        end

        count = math.floor(count)

        var2 = {}
        var2[0] = "OnTextOverlay"
        var2[1] = "`9 gems in world is : "..count
        var2.netid = -1
        SendVarlist(var2)
    return true
    end
end
    
AddCallback("gemsx","OnPacket", gemsx)

function settax(type, packet)
    if packet:find("action|input") then
      text = packet:gsub("action|input\n|text|", "")
      if text:find("/") then
        cmd = text:gsub("/", "")
        if cmd:find("settax") then
            settax_main = cmd:gsub("settax", "")
            settax_1 = tonumber(settax_main)
                OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9tax set to : `3"..settax_1.."%")
          return true
        end
    end
end
end

AddCallback("settax","OnPacket", settax)

function tax(type, packet)
    if packet:find("action|input") then
      text = packet:gsub("action|input\n|text|", "")
      if text:find("/") then
        cmd = text:gsub("/", "")
        if cmd:find("tax") then
            tax_1_1 = cmd:gsub("tax", "")
            tax_1 = tonumber(tax_1_1)
            real_tax = settax_1 * ( tax_1 / 100 )
            real_tax = math.floor(real_tax)
            tax_1_1 = math.floor(tax_1_1)
            drop_tax = tax_1_1 - real_tax
            OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9amount to drop : `3"..tax_1_1 - real_tax)
            OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9amount to keep : `3"..real_tax)
            var2 = {}
            var2[0] = "OnTextOverlay"
            var2[1] = "     `3Tax calculator`0\n`9Amount taken : `3"..tax_1.."\n`9amount to drop : `3"..drop_tax.."\n`9amount to keep : `3"..real_tax
            var2.netid = -1
            SendVarlist(var2)
          return true
        end
    end
end
end

AddCallback("tax","OnPacket", tax)

set_spam_text = "Set a spam text and delay !"
set_spam_delay = 5
spamming = false
function setspam()
    if set_spam_delay > 2 then
        while spamming do
            SendPacket(2, "action|input\n|text|`"..math.random(1,9)..set_spam_text)
            Sleep(set_spam_delay * 1000)
		end
	elseif set_spam_delay < 2 then
    OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9delay cant be less than 2 !")
	end
end

function set_spam_text(type, packet)
    if packet:find("action|input") then
      text = packet:gsub("action|input\n|text|", "")
      if text:find("/") then
        cmd = text:gsub("/", "")
        if cmd:find("spamtext") then
            set_spam_text = cmd:gsub("spamtext ", "")
                OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9spam text set to : `3"..set_spam_text)
          return true
        end
    end
end
end

AddCallback("set_spam_text","OnPacket", set_spam_text)

function set_spam_text2(type, packet)
    if packet:find("action|input") then
      text = packet:gsub("action|input\n|text|", "")
      if text:find("/") then
        cmd = text:gsub("/", "")
        if cmd:find("spamt") then
            set_spam_text = cmd:gsub("spamt ", "")
                OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9spam text set to : `3"..set_spam_text)
          return true
        end
    end
end
end

AddCallback("set_spam_text2","OnPacket", set_spam_text2)

function set_spam_delay(type, packet)
    if packet:find("action|input") then
      text = packet:gsub("action|input\n|text|", "")
      if text:find("/") then
        cmd = text:gsub("/", "")
        if cmd:find("spamdelay") then
            set_spam_delay = cmd:gsub("spamdelay", "")
            set_spam_delay = tonumber(set_spam_delay)
                OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9spam delay set to : `3"..set_spam_delay.." `9Seconds ")
          return true
        end
    end
end
end

AddCallback("set_spam_delay","OnPacket", set_spam_delay)

function set_spam_delay1(type, packet)
    if packet:find("action|input") then
      text = packet:gsub("action|input\n|text|", "")
      if text:find("/") then
        cmd = text:gsub("/", "")
        if cmd:find("sd") then
            set_spam_delay = cmd:gsub("sd", "")
            set_spam_delay = tonumber(set_spam_delay)
                OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9spam delay set to : `3"..set_spam_delay.." `9Seconds ")
          return true
        end
    end
end
end

AddCallback("set_spam_delay1","OnPacket", set_spam_delay1)

function start_stop_spam(type, packet)
        if packet == ("action|input\n|text|//") then
            if spamming then
                OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9spam is `3off")
                spamming = false
               else
                OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9spam is `3on")
                spamming = true
            end
               RunThread(function()
                       setspam()
               end)
        return true
        end
    end
AddCallback("start_stop_spam","OnPacket", start_stop_spam)

function dropall(type, packet)
    if packet == ("action|input\n|text|/dropall") then
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9dropping all items..")
        for k,v in ipairs(GetInventory()) do
            SendPacket(2 ,"action|drop\n|itemID|"..v.id)
            SendPacket(2 ,"action|dialog_return\ndialog_name|drop_item\nitemID|"..v.id.."|\ncount|"..v.count)
            Sleep(50)
        end
            
        OnConsoleMessage("`9dropped all items")
    return true
    end
end
    
AddCallback("dropall","OnPacket", dropall)

set_harvest_id = "1"
set_harvest_delay = "100000"
harvesting = false
function setharvest()   
    while harvesting do
        for _, tile in pairs(GetTiles()) do
            if tile.fg == set_harvest_id then
                    FindPath(tile.pos_x, tile.pos_y)
                    Sleep(set_harvest_delay)
                    pkt = {}
                    pkt.type = 3
                    pkt.int_data = 18
                    pkt.pos_x = GetLocal().pos_x
                    pkt.pos_y = GetLocal().pos_y
                    pkt.int_x = tile.pos_x
                    pkt.int_y = tile.pos_y
                    SendPacketRaw(pkt)
            end
        end
    end
end

function set_harvest_id(type, packet)
    if packet:find("action|input") then
      text = packet:gsub("action|input\n|text|", "")
      if text:find("/") then
        cmd = text:gsub("/", "")
        if cmd:find("harvestid") then
            set_harvest_id123 = cmd:gsub("harvestid", "")
            set_harvest_id123 = tonumber(set_harvest_id123)
            if (set_harvest_id123 % 2 ~= 0) then
                set_harvest_id = tonumber(set_harvest_id123)
                OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9harvest id set to : `3"..set_harvest_id)
                return true
            else
                OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9seed id must be a odd number !")
            return true
        end
    end
end
end
end
AddCallback("set_harvest_id","OnPacket", set_harvest_id)

function set_harvest_delay(type, packet)
    if packet:find("action|input") then
      text = packet:gsub("action|input\n|text|", "")
      if text:find("/") then
        cmd = text:gsub("/", "")
        if cmd:find("harvestdelay") then
            set_harvest_delay123 = cmd:gsub("harvestdelay", "")
            set_harvest_delay123 = tonumber(set_harvest_delay123)
            if set_harvest_delay123 >= 150 then
            set_harvest_delay = tonumber(set_harvest_delay123)
                OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9harvest delay set to : `3"..set_harvest_delay.." `9Mili-Seconds ")
                return true
            else
                OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9delay cant be less than 150 !")
            return true
        end
    end
end
end
end
AddCallback("set_harvest_delay","OnPacket", set_harvest_delay)

function start_stop_harvest(type, packet)
        if packet == ("action|input\n|text|/ht") then
            if harvesting then
                OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9harvest is `3off")
                harvesting = false
               else
                OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9harvest is `3on")
                harvesting = true
            end
               RunThread(function()
                       setharvest()
               end)
        return true
        end
    end
AddCallback("start_stop_harvest","OnPacket", start_stop_harvest)

function inv(type, packet)
    if packet == ("action|input\n|text|/inv") then
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9redcuing lag..")
        for _,player in pairs(GetPlayers()) do
            var2 = {}
            var2[0] = "OnSetClothing"
            var2[1] =  {0,0,0}
            var2[2] =  {0,0,0}
            var2[3] = {0,0,0}
            var2[4] = 2
            var2[5] =  {0, 0, 0}
            var2.netid = player.netid
            SendVarlist(var2)
        end
    return true
    end
end

AddCallback("inv","OnPacket", inv)

function weatherlol(type, packet)
    if packet == ("action|input\n|text|/weather") then
        x =  math.random(1,66)
        var = {}
        var[0] = "OnSetCurrentWeather"
        var[1] = x
        var.netid = -1
        SendVarlist(var)
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9changing weather value to : `3"..x)
    return true
    end
end

AddCallback("change_weather","OnPacket", weatherlol)

function dad(type, packet)
    if packet == ("action|input\n|text|/dad") then
    for _,item in pairs(GetInventory()) do
        if item.id == 1796 then
        dad_count1 = item.count
        dad_count = math.floor(dad_count1)
    end
    end
    OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Dropping `3" ..dad_count.. " `9dls")
    OnTextOverlay("`9Dropping `3" ..dad_count.. " `9dls")
    SendPacket(2, "action|drop\n|itemID|1796")
    SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|1796|\ncount|"..dad_count1)
    return true
    end
end

AddCallback("drop_all_dls","OnPacket", dad)

function guildxx(type, packet)
    if packet:find("action|input") then
      text = packet:gsub("action|input\n|text|", "")
      if text:find("/") then
        cmd = text:gsub("/", "")
        if cmd:find("guild") then
            guildxxid = cmd:gsub("guild", "")
            OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9changing guild to `3" ..guildxxid)
            guildxxid = tonumber(guildxxid)
            var = {}
            var[0] = "OnGuildDataChanged"
            var[1] = 1
            var[2] = 1 
            var[3] = guildxxid
            var[4] = 0 -- 1 to 3 ( ge gc gl )
            var.netid = GetLocal().netid
            SendVarlist(var)
          return true
        end
      end
    end
  end
  
AddCallback("chnage_guild","OnPacket", guildxx)

function cahngenamexx(type, packet)
    if packet:find("action|input") then
      text = packet:gsub("action|input\n|text|", "")
      if text:find("/") then
        cmd = text:gsub("/", "")
        if cmd:find("name") then
          cahngenamexx1 = cmd:gsub("name", "")
          cahnge_name = 0
          cahnge_name = cahngenamexx1

          OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9name changed to `9"..cahnge_name.."")
          var = {}
          var[0] = "OnNameChanged"
          var[1] = cahnge_name
          var.netid = GetLocal().netid
          SendVarlist(var)
          return true
        end
      end
    end
  end
  
AddCallback("chnage_name","OnPacket", cahngenamexx)

function ban_unacces_leave()
    Moderatorvar = {}
    Moderatorvar[0] = "OnAddNotification"
    Moderatorvar[1] = "interface/atomic_button.rttex"
    Moderatorvar[2] = "`#@Moderator `4Just joined the world."
    Moderatorvar[3] = "audio/hub_open.wav"
    Moderatorvar[4] = 0
    Moderatorvar.netid = -1
    OnConsoleMessage("`0[ `2Growtopia Proxy `0] `#@Moderator `4Just joined the world.")
    SendVarlist(Moderatorvar)
    var2 = {}
    var2[0] = "OnTextOverlay"
    var2[1] = "`9Collecting"
    var2.netid = -1
    SendVarlist(var2)
    function collectItems(range, ispos)
        if not ispos then
            range = (range or 10)*32
        end
    
        pkt = {}
        pkt.type = 11
        for _, obj in pairs(GetObjects()) do
            posx = math.abs(GetLocal().pos_x-obj.pos_x)
            posy = math.abs(GetLocal().pos_y-obj.pos_y)
    
            if posx<range and posy<range then
                pkt.int_data = obj.oid
                pkt.pos_x = obj.pos_x
                pkt.pos_y = obj.pos_y
                SendPacketRaw(pkt)
            end
        end
    end
    collectItems()
    -- ban unacces leave
    OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9baning all players")
    for _,player in pairs(GetPlayers()) do
        SendPacket(2,  "action|input\n|text|/ban " .. player.name:sub(3, -3))
    end
    OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9unaccessing")
    SendPacket(2, "action|input\n|text|/unaccess")
    SendPacket(2, "action|dialog_return\ndialog_name|unaccess")
    SendPacket(3, "action|quit_to_exit")
    SendPacket(3, "action|join_request\nname|"..setsave_world1.."\ninvitedWorld|0")
end

function unacces_leave()
    Moderatorvar = {}
    Moderatorvar[0] = "OnAddNotification"
    Moderatorvar[1] = "interface/atomic_button.rttex"
    Moderatorvar[2] = "`#@Moderator `4Just joined the world."
    Moderatorvar[3] = "audio/hub_open.wav"
    Moderatorvar[4] = 0
    Moderatorvar.netid = -1
    OnConsoleMessage("`0[ `2Growtopia Proxy `0] `#@Moderator `4Just joined the world.")
    SendVarlist(Moderatorvar)
    var2 = {}
    var2[0] = "OnTextOverlay"
    var2[1] = "`9Collecting"
    var2.netid = -1
    SendVarlist(var2)
    function collectItems(range, ispos)
        if not ispos then
            range = (range or 10)*32
        end
    
        pkt = {}
        pkt.type = 11
        for _, obj in pairs(GetObjects()) do
            posx = math.abs(GetLocal().pos_x-obj.pos_x)
            posy = math.abs(GetLocal().pos_y-obj.pos_y)
    
            if posx<range and posy<range then
                pkt.int_data = obj.oid
                pkt.pos_x = obj.pos_x
                pkt.pos_y = obj.pos_y
                SendPacketRaw(pkt)
            end
        end
    end
    collectItems()
    -- unacces leave
    OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9unaccessing")
    SendPacket(2, "action|input\n|text|/unaccess")
    SendPacket(2, "action|dialog_return\ndialog_name|unaccess")
    SendPacket(3, "action|quit_to_exit")
    SendPacket(3, "action|join_request\nname|"..setsave_world1.."\ninvitedWorld|0")
end

function leave()
    Moderatorvar = {}
    Moderatorvar[0] = "OnAddNotification"
    Moderatorvar[1] = "interface/atomic_button.rttex"
    Moderatorvar[2] = "`#@Moderator `4Just joined the world."
    Moderatorvar[3] = "audio/hub_open.wav"
    Moderatorvar[4] = 0
    Moderatorvar.netid = -1
    OnConsoleMessage("`0[ `2Growtopia Proxy `0] `#@Moderator `4Just joined the world.")
    SendVarlist(Moderatorvar)
    var2 = {}
    var2[0] = "OnTextOverlay"
    var2[1] = "`9Collecting"
    var2.netid = -1
    SendVarlist(var2)
    function collectItems(range, ispos)
        if not ispos then
            range = (range or 10)*32
        end
    
        pkt = {}
        pkt.type = 11
        for _, obj in pairs(GetObjects()) do
            posx = math.abs(GetLocal().pos_x-obj.pos_x)
            posy = math.abs(GetLocal().pos_y-obj.pos_y)
    
            if posx<range and posy<range then
                pkt.int_data = obj.oid
                pkt.pos_x = obj.pos_x
                pkt.pos_y = obj.pos_y
                SendPacketRaw(pkt)
            end
        end
    end
    collectItems()
    -- leave
    SendPacket(3, "action|quit_to_exit")
end

function testmod2(type, packet)
if packet == ("action|input\n|text|/testmod") then
if casino_help_when_join == "1" then
ban_unacces_leave()
elseif casino_help_when_join == "2" then
unacces_leave()
elseif casino_help_when_join == "3" then
leave()
else 
OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9this command is turned off")
end
return true
end
end
AddCallback("testmod2","OnPacket", testmod2)

function casino_help_when_join(type, packet)
if packet:find("action|input") then
text = packet:gsub("action|input\n|text|", "")
if text:find("/") then
cmd = text:gsub("/", "")
if cmd:find("safe") then
casino_help_when_join = cmd:gsub("safe ", "")
if casino_help_when_join == "1" then
        casino_help_when_joinx = "`3ban unacces leave"
    OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Updated : `3"..casino_help_when_joinx)
        function Moderator(v)
            if v[0] == "OnGuildDataChanged" then
                if v[3] == 5956 then
                    Moderatorvar = {}
                    Moderatorvar[0] = "OnAddNotification"
                    Moderatorvar[1] = "interface/atomic_button.rttex"
                    Moderatorvar[2] = "`#@Moderator `4Just joined the world."
                    Moderatorvar[3] = "audio/hub_open.wav"
                    Moderatorvar[4] = 0
                    Moderatorvar.netid = -1
                    OnConsoleMessage("`0[ `2Growtopia Proxy `0] `#@Moderator `4Just joined the world.")
                    SendVarlist(Moderatorvar)
                    var2 = {}
                    var2[0] = "OnTextOverlay"
                    var2[1] = "`9Collecting"
                    var2.netid = -1
                    SendVarlist(var2)
                    function collectItems(range, ispos)
                        if not ispos then
                            range = (range or 10)*32
                        end
                    
                        pkt = {}
                        pkt.type = 11
                        for _, obj in pairs(GetObjects()) do
                            posx = math.abs(GetLocal().pos_x-obj.pos_x)
                            posy = math.abs(GetLocal().pos_y-obj.pos_y)
                    
                            if posx<range and posy<range then
                                pkt.int_data = obj.oid
                                pkt.pos_x = obj.pos_x
                                pkt.pos_y = obj.pos_y
                                SendPacketRaw(pkt)
                            end
                        end
                    end
                    collectItems()
                    -- ban unacces leave
                    OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9baning all players")
                    for _,player in pairs(GetPlayers()) do
                        SendPacket(2,  "action|input\n|text|/ban " .. player.name:sub(3, -3))
                    end
                    OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9unaccessing")
                    SendPacket(2, "action|input\n|text|/unaccess")
                    SendPacket(2, "action|dialog_return\ndialog_name|unaccess")
                    SendPacket(3, "action|quit_to_exit")
                    SendPacket(3, "action|join_request\nname|"..setsave_world1.."\ninvitedWorld|0")
                end
            end
        end
        AddCallback("Moderator","OnVarlist", Moderator)
    
        function Guardian(v)
            if v[0] == "OnGuildDataChanged" then
                if v[3] == 276 then
                    Guardianvar = {}
                    Guardianvar[0] = "OnAddNotification"
                    Guardianvar[1] = "interface/atomic_button.rttex"
                    Guardianvar[2] = "`#@Guardian `4Just joined the world."
                    Guardianvar[3] = "audio/hub_open.wav"
                    Guardianvar[4] = 0
                    Guardianvar.netid = -1
                    OnConsoleMessage("`0[ `2Growtopia Proxy `0] `#@Guardian `4Just joined the world.")
                    SendVarlist(Guardianvar)
                    var2 = {}
                    var2[0] = "OnTextOverlay"
                    var2[1] = "`9Collecting"
                    var2.netid = -1
                    SendVarlist(var2)
                    function collectItems(range, ispos)
                        if not ispos then
                            range = (range or 10)*32
                        end
                    
                        pkt = {}
                        pkt.type = 11
                        for _, obj in pairs(GetObjects()) do
                            posx = math.abs(GetLocal().pos_x-obj.pos_x)
                            posy = math.abs(GetLocal().pos_y-obj.pos_y)
                    
                            if posx<range and posy<range then
                                pkt.int_data = obj.oid
                                pkt.pos_x = obj.pos_x
                                pkt.pos_y = obj.pos_y
                                SendPacketRaw(pkt)
                            end
                        end
                    end
                    collectItems()
                    -- ban unacces leave
                    OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9baning all players")
                    for _,player in pairs(GetPlayers()) do
                        SendPacket(2,  "action|input\n|text|/ban " .. player.name:sub(3, -3))
                    end
                    OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9unaccessing")
                    SendPacket(2, "action|input\n|text|/unaccess")
                    SendPacket(2, "action|dialog_return\ndialog_name|unaccess")
                    SendPacket(3, "action|quit_to_exit")
                    SendPacket(3, "action|join_request\nname|"..setsave_world1.."\ninvitedWorld|0")
                end
            end
        end
        AddCallback("Guardian","OnVarlist", Guardian)
end
if casino_help_when_join == "2" then
    casino_help_when_joinx = "`3unacces leave"
    OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Updated : `3"..casino_help_when_joinx)

        function Moderator(v)
            if v[0] == "OnGuildDataChanged" then
                if v[3] == 5956 then
                    Moderatorvar = {}
                    Moderatorvar[0] = "OnAddNotification"
                    Moderatorvar[1] = "interface/atomic_button.rttex"
                    Moderatorvar[2] = "`#@Moderator `4Just joined the world."
                    Moderatorvar[3] = "audio/hub_open.wav"
                    Moderatorvar[4] = 0
                    Moderatorvar.netid = -1
                    OnConsoleMessage("`0[ `2Growtopia Proxy `0] `#@Moderator `4Just joined the world.")
                    SendVarlist(Moderatorvar)
                    var2 = {}
                    var2[0] = "OnTextOverlay"
                    var2[1] = "`9Collecting"
                    var2.netid = -1
                    SendVarlist(var2)
                    function collectItems(range, ispos)
                        if not ispos then
                            range = (range or 10)*32
                        end
                    
                        pkt = {}
                        pkt.type = 11
                        for _, obj in pairs(GetObjects()) do
                            posx = math.abs(GetLocal().pos_x-obj.pos_x)
                            posy = math.abs(GetLocal().pos_y-obj.pos_y)
                    
                            if posx<range and posy<range then
                                pkt.int_data = obj.oid
                                pkt.pos_x = obj.pos_x
                                pkt.pos_y = obj.pos_y
                                SendPacketRaw(pkt)
                            end
                        end
                    end
                    collectItems()
                    -- unacces leave
                    OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9unaccessing")
                    SendPacket(2, "action|input\n|text|/unaccess")
                    SendPacket(2, "action|dialog_return\ndialog_name|unaccess")
                    SendPacket(3, "action|quit_to_exit")
                    SendPacket(3, "action|join_request\nname|"..setsave_world1.."\ninvitedWorld|0")
                end
            end
        end
        AddCallback("Moderator","OnVarlist", Moderator)
    
        function Guardian(v)
            if v[0] == "OnGuildDataChanged" then
                if v[3] == 276 then
                    Guardianvar = {}
                    Guardianvar[0] = "OnAddNotification"
                    Guardianvar[1] = "interface/atomic_button.rttex"
                    Guardianvar[2] = "`#@Guardian `4Just joined the world."
                    Guardianvar[3] = "audio/hub_open.wav"
                    Guardianvar[4] = 0
                    Guardianvar.netid = -1
                    OnConsoleMessage("`0[ `2Growtopia Proxy `0] `#@Guardian `4Just joined the world.")
                    SendVarlist(Guardianvar)
                    var2 = {}
                    var2[0] = "OnTextOverlay"
                    var2[1] = "`9Collecting"
                    var2.netid = -1
                    SendVarlist(var2)
                    function collectItems(range, ispos)
                        if not ispos then
                            range = (range or 10)*32
                        end
                    
                        pkt = {}
                        pkt.type = 11
                        for _, obj in pairs(GetObjects()) do
                            posx = math.abs(GetLocal().pos_x-obj.pos_x)
                            posy = math.abs(GetLocal().pos_y-obj.pos_y)
                    
                            if posx<range and posy<range then
                                pkt.int_data = obj.oid
                                pkt.pos_x = obj.pos_x
                                pkt.pos_y = obj.pos_y
                                SendPacketRaw(pkt)
                            end
                        end
                    end
                    collectItems()
                    -- unacces leave
                    OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9unaccessing")
                    SendPacket(2, "action|input\n|text|/unaccess")
                    SendPacket(2, "action|dialog_return\ndialog_name|unaccess")
                    SendPacket(3, "action|quit_to_exit")
                    SendPacket(3, "action|join_request\nname|"..setsave_world1.."\ninvitedWorld|0")
                end
            end
        end
        AddCallback("Guardian","OnVarlist", Guardian)
                    
end
if casino_help_when_join == "3" then
        casino_help_when_joinx = "`3leave"
    OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Updated : `3"..casino_help_when_joinx)

        function Guardian(v)
            if v[0] == "OnGuildDataChanged" then
                if v[3] == 276 then
                    Guardianvar = {}
                    Guardianvar[0] = "OnAddNotification"
                    Guardianvar[1] = "interface/atomic_button.rttex"
                    Guardianvar[2] = "`#@Guardian `4Just joined the world."
                    Guardianvar[3] = "audio/hub_open.wav"
                    Guardianvar[4] = 0
                    Guardianvar.netid = -1
                    OnConsoleMessage("`0[ `2Growtopia Proxy `0] `#@Guardian `4Just joined the world.")
                    SendVarlist(Guardianvar)
                    var2 = {}
                    var2[0] = "OnTextOverlay"
                    var2[1] = "`9Collecting"
                    var2.netid = -1
                    SendVarlist(var2)
                    function collectItems(range, ispos)
                        if not ispos then
                            range = (range or 10)*32
                        end
                    
                        pkt = {}
                        pkt.type = 11
                        for _, obj in pairs(GetObjects()) do
                            posx = math.abs(GetLocal().pos_x-obj.pos_x)
                            posy = math.abs(GetLocal().pos_y-obj.pos_y)
                    
                            if posx<range and posy<range then
                                pkt.int_data = obj.oid
                                pkt.pos_x = obj.pos_x
                                pkt.pos_y = obj.pos_y
                                SendPacketRaw(pkt)
                            end
                        end
                    end
                    collectItems()
                    -- leave
                    SendPacket(3, "action|quit_to_exit")
                end
            end
        end
        AddCallback("Guardian","OnVarlist", Guardian)
    
        function Moderator(v)
            if v[0] == "OnGuildDataChanged" then
                if v[3] == 5956 then
                    Moderatorvar = {}
                    Moderatorvar[0] = "OnAddNotification"
                    Moderatorvar[1] = "interface/atomic_button.rttex"
                    Moderatorvar[2] = "`#@Moderator `4Just joined the world."
                    Moderatorvar[3] = "audio/hub_open.wav"
                    Moderatorvar[4] = 0
                    Moderatorvar.netid = -1
                    OnConsoleMessage("`0[ `2Growtopia Proxy `0] `#@Moderator `4Just joined the world.")
                    SendVarlist(Moderatorvar)
                    var2 = {}
                    var2[0] = "OnTextOverlay"
                    var2[1] = "`9Collecting"
                    var2.netid = -1
                    SendVarlist(var2)
                    function collectItems(range, ispos)
                        if not ispos then
                            range = (range or 10)*32
                        end
                    
                        pkt = {}
                        pkt.type = 11
                        for _, obj in pairs(GetObjects()) do
                            posx = math.abs(GetLocal().pos_x-obj.pos_x)
                            posy = math.abs(GetLocal().pos_y-obj.pos_y)
                    
                            if posx<range and posy<range then
                                pkt.int_data = obj.oid
                                pkt.pos_x = obj.pos_x
                                pkt.pos_y = obj.pos_y
                                SendPacketRaw(pkt)
                            end
                        end
                    end
                    collectItems()
                    -- leave
                    SendPacket(3, "action|quit_to_exit")
                end
            end
        end
        AddCallback("Moderator","OnVarlist", Moderator)
end
    if casino_help_when_join == "off" then
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Safe mode is turned off ")
        RemoveCallback("Moderator")
        RemoveCallback("Guardian")
    end
return true
end
end
end
end
AddCallback("casino_help_when_join","OnPacket", casino_help_when_join)

function save(type, packet)
    if packet == ("action|input\n|text|/save") then
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Warping to `9Save World")
    SendPacket(3, "action|join_request\nname|"..setsave_world1.."\ninvitedWorld|0")
    return true
    end
end
    
AddCallback("warp_save","OnPacket", save)



blinking = false
function setblink()
    while blinking do
        SendPacket(2, "action|setSkin\ncolor|3370516479")
        Sleep(150)
        SendPacket(2, "action|setSkin\ncolor|3033464831")
        Sleep(150)
        SendPacket(2, "action|setSkin\ncolor|2864971775")
        Sleep(150)
        SendPacket(2, "action|setSkin\ncolor|2527912447")
        Sleep(150)
        SendPacket(2, "action|setSkin\ncolor|2190853119")
        Sleep(150)
        SendPacket(2, "action|setSkin\ncolor|2022356223")
        Sleep(150)
        SendPacket(2, "action|setSkin\ncolor|1685231359")
        Sleep(150)
        SendPacket(2, "action|setSkin\ncolor|1348237567")
        Sleep(150)
        --
        SendPacket(2, "action|setSkin\ncolor|1348237567")
        Sleep(150)
        SendPacket(2, "action|setSkin\ncolor|1685231359")
        Sleep(150)
        SendPacket(2, "action|setSkin\ncolor|2022356223")
        Sleep(150)
        SendPacket(2, "action|setSkin\ncolor|2190853119")
        Sleep(150)
        SendPacket(2, "action|setSkin\ncolor|2527912447")
        Sleep(150)
        SendPacket(2, "action|setSkin\ncolor|2864971775")
        Sleep(150)
        SendPacket(2, "action|setSkin\ncolor|3033464831")
        Sleep(150)
        SendPacket(2, "action|setSkin\ncolor|3370516479")
        Sleep(150)
    end
end

function blink_main(type, packet)
        if packet == ("action|input\n|text|/blink") then
            if blinking then
                OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9blink mode is `3off")
                blinking = false
               else 
                OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9blink mode is `3on")
                blinking = true
               end

               RunThread(function()
                       setblink()
               end)
        return true
        end
    end
        
AddCallback("blink_main","OnPacket", blink_main)

function collectrangex(type, packet)
    if packet:find("action|input") then
      text = packet:gsub("action|input\n|text|", "")
      if text:find("/") then
        cmd = text:gsub("/", "")
        if cmd:find("ccollect") then
          collect_range = cmd:gsub("ccollect", "")
          OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Collenting items in `3" ..collect_range.. " `9range")
          function collectItems(range, delay, ispos)
            if not ispos then
                range = (range or collect_range)*32
            end
        
            pkt = {}
            pkt.type = 11
            for _, obj in pairs(GetObjects()) do
                posx = math.abs(GetLocal().pos_x-obj.pos_x)
                posy = math.abs(GetLocal().pos_y-obj.pos_y)
        
                if posx<range and posy<range then
                    pkt.int_data = obj.oid
                    pkt.pos_x = obj.pos_x
                    pkt.pos_y = obj.pos_y
                    SendPacketRaw(pkt)
                end
            end
        end
        collectItems()
          return true
        end
      end
    end
  end
  
AddCallback("collect_range","OnPacket", collectrangex)

function collectrangexd(type, packet)
    if packet:find("action|input") then
      text = packet:gsub("action|input\n|text|", "")
      if text:find("/") then
        cmd = text:gsub("/", "")
        if cmd:find("cc") then
          collect_range = cmd:gsub("cc", "")
          OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Collenting items in `3" ..collect_range.. " `9range")
          function collectItems(range, delay, ispos)
            if not ispos then
                range = (range or collect_range)*32
            end
        
            pkt = {}
            pkt.type = 11
            for _, obj in pairs(GetObjects()) do
                posx = math.abs(GetLocal().pos_x-obj.pos_x)
                posy = math.abs(GetLocal().pos_y-obj.pos_y)
        
                if posx<range and posy<range then
                    pkt.int_data = obj.oid
                    pkt.pos_x = obj.pos_x
                    pkt.pos_y = obj.pos_y
                    SendPacketRaw(pkt)
                end
            end
        end
        collectItems()
          return true
        end
      end
    end
  end
  
AddCallback("collect_range2","OnPacket", collectrangexd)

NO_PICKUP = false

function extactoreh1(type, packet)
    if packet:find("action|input") then
      text = packet:gsub("action|input\n|text|", "")
        if text:find("/") then
        cmd = text:gsub("/", "")
            if cmd:find("pickup") then
                pick_up_id = cmd:gsub("pickup", "")
                pick_up_id = tonumber(pick_up_id)
                OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9only picking `3"..pick_up_id)
                ID_TBL={
                    [pick_up_id]=1,
                    }
                    
                NO_PICKUP = true
                
                function pickup12(varlist)
                    if varlist.type==11 then
                    for _,v in pairs(GetObjects()) do
                    if NO_PICKUP then
                    if v.oid==varlist.int_data and not ID_TBL[math.floor(v.id)] then
                    return true
                    end
                    else
                    if v.oid==varlist.int_data and ID_TBL[math.floor(v.id)] then
                    return true
                    end
                    end
                    end
                    end
                    end
                AddCallback("pickup12", "OnRawPacket", pickup12)
          return true
            end
        end
    end
end

AddCallback("extactoreh1","OnPacket", extactoreh1)

nopickup = false

function no_pickup(type, packet)
    if packet == ("action|input\n|text|/nopickup") then
        if nopickup then
            nopickup = false
            OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9No pick-up turned `3off")
            RemoveCallback("pickup12")
        return true
        else
            OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9No pick-up turned `3on")

ID_TBL={
    [0]=1,
    }
    
    nopickup = true

function pickup12(varlist)
    if varlist.type==11 then
    for _,v in pairs(GetObjects()) do
    if nopickup then
    if v.oid==varlist.int_data and not ID_TBL[math.floor(v.id)] then
    return true
    end
    else
    if v.oid==varlist.int_data and ID_TBL[math.floor(v.id)] then
    return true
    end
    end
    end
    end
    end
AddCallback("pickup12", "OnRawPacket", pickup12)

        return true
    end
end
end
AddCallback("no_pickup","OnPacket", no_pickup)

function host(type, packet)
    if packet == ("action|input\n|text|/host") then
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Warping to `9Host World")
    SendPacket(3, "action|join_request\nname|"..sethost_world1.."\ninvitedWorld|0")
    return true
    end
end
    
AddCallback("warp_host","OnPacket", host)

collect_pos = {{x_pos1, y_pos1}, {x_pos2, y_pos2}, {x_pos3, y_pos3}, {x_pos4, y_pos4}}

function collect_wls(type, packet)
    if packet == ("action|input\n|text|/collect") then
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Collecting")
        Possessions = {{x_pos1, y_pos1}, {x_pos2, y_pos2}, {x_pos3, y_pos3}, {x_pos4, y_pos4}}
        function collect(obj)   
            pkt = {}
            pkt.type = 11
            pkt.int_data = obj.oid
            pkt.pos_x = obj.pos_x
            pkt.pos_y = obj.pos_y
            SendPacketRaw(pkt)
        end
        
        for _, v in pairs(GetObjects()) do
        for __, customtile in pairs(Possessions) do
        if (v.pos_x)//32 == customtile[1] and (v.pos_y )//32 == customtile[2] then
        collect(v)
        break 
        end
        end
        end 
    return true
    end
end

AddCallback("collect_pos","OnPacket", collect_wls)

function pullall(type, packet)
    if packet == ("action|input\n|text|/pullall") then
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9pulling all players")
        for _,player in pairs(GetPlayers()) do
            SendPacket(2,  "action|input\n|text|/pull " .. player.name:sub(3, -3))
        end
    return true
    end
end
    
AddCallback("pullall","OnPacket", pullall)

function showxy(type, packet)
    if packet == ("action|input\n|text|/xy") then
        x_pos_lols = math.floor(GetLocal().pos_x / 32)
        y_pos_lols = math.floor(GetLocal().pos_y / 32)
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9X : `3" ..x_pos_lols.. " `9Y `3:" ..y_pos_lols.."")
    return true
    end
end
    
AddCallback("show_xy","OnPacket", showxy)

function banall(type, packet)
    if packet == ("action|input\n|text|/banall") then
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9baning all players")
        for _,player in pairs(GetPlayers()) do
            SendPacket(2,  "action|input\n|text|/ban " .. player.name:sub(3, -3))
        end
    return true
    end
end
    
AddCallback("banall","OnPacket", banall)

function kickall(type, packet)
    if packet == ("action|input\n|text|/kickall") then
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9kicking all players")
        for _,player in pairs(GetPlayers()) do
            SendPacket(2,  "action|input\n|text|/kick " .. player.name:sub(3, -3))
        end
    return true
    end
end
    
AddCallback("kickall","OnPacket", kickall)

function tradeall(type, packet)
    if packet == ("action|input\n|text|/tradeall") then
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9trading all players")
        for _,player in pairs(GetPlayers()) do
            SendPacket(2,  "action|input\n|text|/trade " .. player.name:sub(3, -3))
        end
    return true
    end
end
    
AddCallback("tradeall","OnPacket", tradeall)

ping_tag_mode = ping_tag_mode or false
ping_base_name = ping_base_name or ""

function get_ping_color(ms)
    if ms > 300 then
        return "`4"
    elseif ms > 150 then
        return "`9"
    end
    return "`2"
end

function get_clean_local_name()
    if GetLocal() == nil then
        return "`2Player"
    end

    local my_netid = GetLocal().netid
    local nm = ""

    -- resolve own current display name by own netid (only local player)
    for _, pl in pairs(GetPlayers()) do
        if pl.netid == my_netid and pl.name ~= nil then
            nm = tostring(pl.name)
            break
        end
    end

    -- fallback to local object name
    if nm == "" and GetLocal().name ~= nil then
        nm = tostring(GetLocal().name)
    end

    -- strip ONLY ping tag if already exists, keep original color/style name
    nm = nm:gsub("^`0%[`[%d]+ms`0%]%s*", "")
    nm = nm:gsub("^%[%d+ms%]%s*", "")
    nm = nm:gsub("%s*`0%[`[%d]+ms`0%]$", "")
    nm = nm:gsub("%s*%[%d+ms%]$", "")

    if nm == "" then
        nm = "`2Player"
    end
    return nm
end

function apply_ping_tag_once()
    local ms = math.floor(GetPing())
    local color = get_ping_color(ms)
    local base = ping_base_name
    if base == "" then
        base = get_clean_local_name()
    end
    local var = {}
    var[0] = "OnNameChanged"
    var[1] = "`0["..color..ms.."ms`0] "..base
    var.netid = GetLocal().netid
    SendVarlist(var)
end

function clear_ping_tag_once()
    local base = ping_base_name
    if base == "" then
        base = get_clean_local_name()
    end
    local var = {}
    var[0] = "OnNameChanged"
    var[1] = base
    var.netid = GetLocal().netid
    SendVarlist(var)
end

function ping_tag_loop()
    while ping_tag_mode do
        apply_ping_tag_once()
        Sleep(1000)
    end
end

function ping(type, packet)
    if packet == ("action|input\n|text|/ping") then
        ping_tag_mode = not ping_tag_mode

        if ping_tag_mode then
            ping_base_name = get_clean_local_name()
            OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Ping tag `2ON `0(near name)")
            RunThread(function()
                ping_tag_loop()
            end)
        else
            clear_ping_tag_once()
            ping_base_name = ""
            OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Ping tag `4OFF")
        end

        local now_ping = math.floor(GetPing())
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Your ping is : "..get_ping_color(now_ping)..now_ping)
        return true
    end
end

AddCallback("ping","OnPacket", ping)


hide_name_mode = false
hide_name_keep_running = false
hide_name_label = "`9[ `9HIDDEN `9]"

function set_all_player_names_hidden()
    for _, player in pairs(GetPlayers()) do
        local var = {}
        var[0] = "OnNameChanged"
        var[1] = hide_name_label
        var.netid = player.netid
        SendVarlist(var)
    end
end

function restore_all_player_names()
    for _, player in pairs(GetPlayers()) do
        local var = {}
        var[0] = "OnNameChanged"
        var[1] = player.name
        var.netid = player.netid
        SendVarlist(var)
    end
end

function hide_name_maintainer()
    while hide_name_keep_running do
        if hide_name_mode then
            set_all_player_names_hidden()
        end
        Sleep(1000)
    end
end

function anonymize_player_names(text)
    local result = text or ""

    for _, player in pairs(GetPlayers()) do
        local plain_name = player.name:removeColors()
        plain_name = plain_name:gsub(" of Legend", "")
        plain_name = plain_name:gsub("Dr.", "")

        if plain_name ~= "" then
            result = result:gsub(plain_name, "")
        end
    end

    return result
end

function hide_name_enforcer(varlist)
    if not hide_name_mode then return end

    if varlist[0] == "OnNameChanged" and varlist.netid ~= GetLocal().netid then
        local var = {}
        var[0] = "OnNameChanged"
        var[1] = hide_name_label
        var.netid = varlist.netid
        SendVarlist(var)
        return true
    end
end

function hide_log_anonymizer(varlist)
    if not hide_name_mode then return end

    if varlist[0] == "OnConsoleMessage" then
        local var = {}
        var[0] = "OnConsoleMessage"
        var[1] = anonymize_player_names(varlist[1])
        var.netid = -1
        SendVarlist(var)
        return true
    end

    if varlist[0] == "OnTalkBubble" then
        local var = {}
        var[0] = "OnTalkBubble"
        var[1] = varlist[1]
        var[2] = anonymize_player_names(varlist[2])
        var[3] = varlist[3]
        var[4] = varlist[4]
        var.netid = -1
        SendVarlist(var)
        return true
    end
end

hide_name_mode = false
hide_name_keep_running = false
hide_name_session = 0
hide_name_label = "`9[ `9HIDDEN `9]"
hide_original_names = {}

function set_all_player_names_hidden()
    for _, player in pairs(GetPlayers()) do
        local var = {}
        var[0] = "OnNameChanged"
        var[1] = hide_name_label
        var.netid = player.netid
        SendVarlist(var)
    end
end
function cache_all_player_names()
    hide_original_names = {}
    for _, player in pairs(GetPlayers()) do
        hide_original_names[player.netid] = player.name
    end
end

function restore_all_player_names()
    for _, player in pairs(GetPlayers()) do
        local var = {}
        var[0] = "OnNameChanged"
        var[1] = hide_original_names[player.netid] or player.name
        var.netid = player.netid
        SendVarlist(var)
    end
end

function hide_name_maintainer(session_id)
    while hide_name_keep_running and hide_name_session == session_id do
        if hide_name_mode then
            set_all_player_names_hidden()
        end
        Sleep(750)
    end
end

function escape_lua_pattern(text)
    return (text:gsub("([%(%)%.%%%+%-%*%?%[%]%^%$])", "%%%1"))
end

function anonymize_player_names(text)
    local result = text or ""

    for _, saved_name in pairs(hide_original_names) do
        if saved_name ~= nil and saved_name ~= "" then
            local plain_saved = saved_name:removeColors()
            plain_saved = plain_saved:gsub(" of Legend", "")
            plain_saved = plain_saved:gsub("Dr.", "")

            result = result:gsub(escape_lua_pattern(saved_name), hide_name_label)
            if plain_saved ~= "" then
                result = result:gsub(escape_lua_pattern(plain_saved), hide_name_label)
            end
        end
    end

    for _, player in pairs(GetPlayers()) do
        local raw_name = player.name or ""
        local plain_name = raw_name:removeColors()
        plain_name = plain_name:gsub(" of Legend", "")
        plain_name = plain_name:gsub("Dr.", "")

        local names = {raw_name, plain_name}
        for __, n in pairs(names) do
            if n ~= nil and n ~= "" then
                result = result:gsub(escape_lua_pattern(n), hide_name_label)
            end
        end
    end

    return result
end

function hide_name_enforcer(varlist)
    if not hide_name_mode then
        return
    end

    if varlist[0] == "OnNameChanged" and varlist.netid ~= GetLocal().netid then
        local incoming_name = varlist[1] or ""
        if incoming_name ~= "" and incoming_name ~= hide_name_label then
            hide_original_names[varlist.netid] = incoming_name
        end

        local var = {}
        var[0] = "OnNameChanged"
        var[1] = hide_name_label
        var.netid = varlist.netid
        SendVarlist(var)
        return true
    end
end

function hide_log_anonymizer(varlist)
    if not hide_name_mode then
        return
    end

    if varlist[0] == "OnConsoleMessage" then
        local original = varlist[1] or ""
        local changed = anonymize_player_names(original)

        local var = {}
        var[0] = "OnConsoleMessage"
        var[1] = changed
        var.netid = varlist.netid or -1
        SendVarlist(var)
        return true
    end

    if varlist[0] == "OnTalkBubble" then
        local original = varlist[2] or ""
        local changed = anonymize_player_names(original)

        local var = {}
        var[0] = "OnTalkBubble"
        var[1] = varlist[1]
        var[2] = changed
        var[3] = varlist[3]
        var[4] = varlist[4]
        var.netid = varlist.netid or -1
        SendVarlist(var)
        return true
    end
end

function hidenname(type, packet)
    if packet == ("action|input\n|text|/hide") then
        if hide_name_mode then
            hide_name_mode = false
            hide_name_keep_running = false
            hide_name_session = hide_name_session + 1
            RemoveCallback("hide_name_enforcer")
            RemoveCallback("hide_log_anonymizer")
            restore_all_player_names()
            hide_original_names = {}
            OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9hide mode `4OFF `9(names restored)")
        else
            hide_name_mode = true
            hide_name_keep_running = true
            hide_name_session = hide_name_session + 1
            local session_id = hide_name_session
            AddCallback("hide_name_enforcer", "OnVarlist", hide_name_enforcer)
            AddCallback("hide_log_anonymizer", "OnVarlist", hide_log_anonymizer)
            cache_all_player_names()
            set_all_player_names_hidden()
            RunThread(function()
                hide_name_maintainer(session_id)
            end)
            OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9hide mode `2ON `9(names hidden in all worlds)")
        end
        return true
    end
end

AddCallback("hide_name","OnPacket", hidenname)



pending_drop_dialog = {}

function queue_drop_dialog(item_id)
    table.insert(pending_drop_dialog, tostring(item_id))
end

function suppress_queued_drop_dialog(varlist)
    if varlist[0] ~= "OnDialogRequest" then
        return
    end

    if not varlist[1]:find("end_dialog|drop_item|Cancel|OK|") then
        return
    end

    local item_id = varlist[1]:match("itemID|(%d+)")
    if item_id == nil then
        return
    end

    for i, queued_id in ipairs(pending_drop_dialog) do
        if queued_id == item_id then
            table.remove(pending_drop_dialog, i)
            return true
        end
    end
end

AddCallback("suppress_queued_drop_dialog", "OnVarlist", suppress_queued_drop_dialog)

function cdrop_drop2(type, packet)
    if packet:find("action|input") then
    text = packet:gsub("action|input\n|text|", "")
    local amount = text:match("^/cd%s+(%d+)$")
    if amount == nil then
        return
    end

    amount = tonumber(amount)
    if amount <= 0 then
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Usage: /cd [amount]")
        return true
    end

    local bgl = amount // 10000
    local dl = (amount % 10000) // 100
    local wl = amount % 100

    OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Dropping `3" ..wl.. " `9wls, `3"..dl.. " `9dls and `3"..bgl.. " `9bgls")
    OnTextOverlay("`9Dropping `3" ..wl.. " `9wls, `3"..dl.. " `9dls and `3"..bgl.. " `9bgls")

    if wl > 0 then
        queue_drop_dialog(242)
        SendPacket(2, "action|drop\n|itemID|242")
        SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|242|\ncount|"..wl)
    end

    if dl > 0 then
        queue_drop_dialog(1796)
        SendPacket(2, "action|drop\n|itemID|1796")
        SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|1796|\ncount|"..dl)
    end

    if bgl > 0 then
        queue_drop_dialog(7188)
        SendPacket(2, "action|drop\n|itemID|7188")
        SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|7188|\ncount|"..bgl)
    end

    return true
    end
end

AddCallback("cdrop_drop2", "OnPacket", cdrop_drop2)

function quick_drop_lock(type, packet)
    if not packet:find("action|input") then
        return
    end

    local text = packet:gsub("action|input\n|text|", "")
    local command, amount_str = text:match("^/(%S+)%s*(%d*)$")
    if command == nil then
        return
    end

    local lock_map = {
        wl = {id = 242, name = "wls"},
        dd = {id = 1796, name = "dls"},
        bb = {id = 7188, name = "bgls"},
        dl = {id = 1796, name = "dls"},
        bgl = {id = 7188, name = "bgls"}
    }

    local lock = lock_map[command]
    if lock == nil then
        return
    end

    local amount = tonumber(amount_str)
    if amount == nil or amount <= 0 then
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Usage: /"..command.." [amount]")
        return true
    end

    for _, item in pairs(GetInventory()) do
        if item.id == lock.id then
            if item.count < amount then
                OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9No enough "..lock.name..".")
                OnTextOverlay("`9No enough "..lock.name..".")
                return true
            end

            OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Dropping `3"..amount.." `9"..lock.name)
            OnTextOverlay("`9Dropping `3"..amount.." `9"..lock.name)
            queue_drop_dialog(lock.id)
            SendPacket(2, "action|drop\n|itemID|"..lock.id)
            SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|"..lock.id.."|\ncount|"..amount)
            return true
        end
    end

    OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9No enough "..lock.name..".")
    OnTextOverlay("`9No enough "..lock.name..".")
    return true
end

AddCallback("quick_drop_lock","OnPacket", quick_drop_lock)

function daw(type, packet)
    if packet == ("action|input\n|text|/daw") then
        local wl_count, dl_count, bgl_count = 0, 0, 0

        for _, item in pairs(GetInventory()) do
            if item.id == 242 then
                wl_count = item.count
            elseif item.id == 1796 then
                dl_count = item.count
            elseif item.id == 7188 then
                bgl_count = item.count
            end
        end

        if wl_count == 0 and dl_count == 0 and bgl_count == 0 then
            OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9No locks to drop")
            OnTextOverlay("`9No locks to drop")
            return true
        end

        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Dropping all locks: `3"..wl_count.." `9wls, `3"..dl_count.." `9dls and `3"..bgl_count.." `9bgls")
        OnTextOverlay("`9Dropping all locks: `3"..wl_count.." `9wls, `3"..dl_count.." `9dls and `3"..bgl_count.." `9bgls")

        if wl_count > 0 then
            queue_drop_dialog(242)
            SendPacket(2, "action|drop\n|itemID|242")
            SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|242|\ncount|"..wl_count)
        end

        if dl_count > 0 then
            queue_drop_dialog(1796)
            SendPacket(2, "action|drop\n|itemID|1796")
            SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|1796|\ncount|"..dl_count)
        end

        if bgl_count > 0 then
            queue_drop_dialog(7188)
            SendPacket(2, "action|drop\n|itemID|7188")
            SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|7188|\ncount|"..bgl_count)
        end

        return true
    end
end

AddCallback("drop_all_wls","OnPacket", daw)

function open_title_page(type, packet)
    if packet == ("action|input\n|text|/title") then
        local var = {}
        var[0] = "OnDialogRequest"
        var[1] = [[
set_default_color|`o
add_label_with_icon|big|`3Title Page Remake``|left|6276|
add_spacer|small|
add_textbox|`9Select title from buttons below:|left|
add_spacer|small|
add_friend_image_label_button|tp_master|`9Master|interface/flags/master_icon.rttex|1.6|28|23|32|false|false|
add_friend_image_label_button|tp_g4g|`9Grow4Good|interface/flags/g4g.rttex|1.6|28|23|32|false|false|
add_button|tp_doctor|`9Doctor|noflags|0|0|
add_button|tp_maxlevel|`9Max Level|noflags|0|0|
add_button|tp_legend|`9Of Legend|noflags|0|0|
add_button|tp_reset|`4Reset Title|noflags|0|0|
add_quick_exit|
end_dialog|title_page_remake|`4Close|`2Select|
]]
        var.netid = -1
        SendVarlist(var)
        return true
    end
end

AddCallback("open_title_page","OnPacket", open_title_page)

function title_page_select(type, packet)
    if not packet:find("action|dialog_return") then
        return
    end

    if not packet:find("dialog_name|title_page_remake") then
        return
    end

    local clicked = packet:match("buttonClicked|([^\n]+)")
    if clicked == nil then
        return true
    end

    if clicked == "tp_master" then
        apply_title_mode("master")
    elseif clicked == "tp_g4g" then
        apply_title_mode("g4g")
    elseif clicked == "tp_doctor" then
        apply_title_mode("doctor")
    elseif clicked == "tp_maxlevel" then
        apply_title_mode("maxlevel")
    elseif clicked == "tp_legend" then
        apply_title_mode("legend")
    elseif clicked == "tp_reset" then
        apply_title_mode("reset")
    end

    return true
end

AddCallback("title_page_select","OnPacket", title_page_select)

function normalize_title_name()
    GetLocal().name = GetLocal().name:removeColors()
    GetLocal().name = GetLocal().name:gsub(" of Legend", "")
    GetLocal().name = GetLocal().name:gsub("Dr.", "")
end

function apply_title_state(state)
    local var = {}
    var[0] = "OnCountryState"
    var[1] = state
    var.netid = GetLocal().netid
    SendVarlist(var)
end

function apply_title_mode(mode)
    if mode == "g4g" then
        titlexd = "g4g"
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9title effect `3DONOR `9enabled !")
        normalize_title_name()
        apply_title_state("jo|donor")
        return true
    elseif mode == "master" then
        titlexd = "master"
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9title effect `3MASTER `9enabled !")
        normalize_title_name()
        apply_title_state("jo|master")
        return true
    elseif mode == "doctor" then
        titlexd = "doctor"
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9title effect `3DOCTOR `9enabled !")
        normalize_title_name()
        GetLocal().name = "Dr."..GetLocal().name
        apply_title_state("jo|doctor")
        return true
    elseif mode == "maxlevel" then
        titlexd = "maxlevel"
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9title effect `3MAX LEVEL `9enabled !")
        normalize_title_name()
        apply_title_state("jo|maxLevel")
        return true
    elseif mode == "legend" then
        titlexd = "legend"
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9title effect `3OF LEGEND `9enabled !")
        normalize_title_name()
        apply_title_state("jo|legend")
        GetLocal().name = GetLocal().name.." of Legend``"
        return true
    elseif mode == "reset" then
        titlexd = "none"
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9removing all titles")
        normalize_title_name()
        apply_title_state("jo|")
        return true
    end

    return false
end

function title_commands(type, packet)
    if not packet:find("action|input") then
        return
    end

    local text = packet:gsub("action|input\n|text|", "")
    local cmd = text:lower():gsub("^%s+", ""):gsub("%s+$", "")

    if cmd == "/g4g" then
        return apply_title_mode("g4g")
    elseif cmd == "/master" then
        return apply_title_mode("master")
    elseif cmd == "/doctor" then
        return apply_title_mode("doctor")
    elseif cmd == "/maxlevel" then
        return apply_title_mode("maxlevel")
    elseif cmd == "/legend" or cmd == "/oflegend" then
        return apply_title_mode("legend")
    elseif cmd == "/title reset" then
        return apply_title_mode("reset")
    end
end

AddCallback("title_commands","OnPacket", title_commands)

spam_text_value = "HELLO"
spam_delay_ms = 4000
spamming = false
spam_use_colored_text = true
spam_auto_disable_when_pull = true

spam_color_codes = {"`1", "`2", "`3", "`4", "`5", "`6", "`8", "`9", "`b", "`c"}

function get_spam_output_text()
    if spam_use_colored_text then
        local color = spam_color_codes[math.random(1, #spam_color_codes)]
        return color..spam_text_value
    end

    return spam_text_value
end

function setspam()
    if spam_delay_ms < 1000 then
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9delay cant be less than 1000ms !")
        spamming = false
        return
    end

    while spamming do
        SendPacket(2, "action|input\n|text|"..get_spam_output_text())
        Sleep(spam_delay_ms)
    end
end

function toggle_spam()
    if spamming then
        spamming = false
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9spam is `3off")
    else
        spamming = true
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9spam is `3on")
        RunThread(function()
            setspam()
        end)
    end
end

function spam_page(type, packet)
    if packet == ("action|input\n|text|/spam") then
        local auto_pull = spam_auto_disable_when_pull and "1" or "0"
        local colored = spam_use_colored_text and "1" or "0"

        local var = {}
        var[0] = "OnDialogRequest"
        var[1] = [[
set_default_color|`o
add_label_with_icon|big|`bAuto Spam Page``|left|11850|
add_spacer|small|
add_checkbox|auto_disable_pull|Auto Disable When Pulled|]]..auto_pull..[[
add_textbox|Automatically disables spam when you pull someone.|left|
add_spacer|small|
add_checkbox|enable_colored_text|Enable Colored Text|]]..colored..[[
add_textbox|If Colored Text is enabled, leave spam text without ` colors.|left|
add_spacer|small|
add_text_input|spam_text|Spam Text:|]]..spam_text_value..[[|64|
add_text_input|delay_ms|Delay (ms):|]]..spam_delay_ms..[[|8|
add_textbox|1000ms = 1 Second|left|
add_textbox|Write // to Enable/Disable Spam.|left|
end_dialog|spam_page_remake|Cancel|Set|
]]
        var.netid = -1
        SendVarlist(var)
        return true
    end
end

AddCallback("spam_page", "OnPacket", spam_page)

function spam_page_apply(type, packet)
    if not packet:find("action|dialog_return") then
        return
    end

    if not packet:find("dialog_name|spam_page_remake") then
        return
    end

    spam_auto_disable_when_pull = packet:find("auto_disable_pull|1") ~= nil
    spam_use_colored_text = packet:find("enable_colored_text|1") ~= nil

    local new_text = packet:match("spam_text|([^\n]*)")
    if new_text ~= nil and new_text ~= "" then
        spam_text_value = new_text
    end

    local new_delay = packet:match("delay_ms|(%d+)")
    if new_delay ~= nil then
        new_delay = tonumber(new_delay)
        if new_delay >= 1000 then
            spam_delay_ms = new_delay
        else
            OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9delay cant be less than 1000ms !")
        end
    end

    OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9spam text set to : `3"..spam_text_value)
    OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9spam delay set to : `3"..spam_delay_ms.." `9ms")
    return true
end

AddCallback("spam_page_apply", "OnPacket", spam_page_apply)

function spam_stop_when_pull(type, packet)
    if not spamming then return end
    if not spam_auto_disable_when_pull then return end

    if packet:find("action|input\n|text|/pull ") then
        spamming = false
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9spam stopped: `3auto disabled when pull")
        OnTextOverlay("`9Spam stopped: `3auto disabled when pull")
    end
end

AddCallback("spam_stop_when_pull", "OnPacket", spam_stop_when_pull)

function start_stop_spam(type, packet)
    if packet == ("action|input\n|text|//") then
        toggle_spam()
        return true
    end
end

AddCallback("start_stop_spam","OnPacket", start_stop_spam)

function gs_xd(type, packet)
    if packet == ("action|input\n|text|/gs") or packet == ("action|input\n|text|/growscan") then
var = {}
var[0] = "OnDialogRequest"
var[1] = [[
add_label_with_icon|big|`wWorld Stats``|left|6016|
add_spacer|small|
add_textbox|`wThis amazing block can show the stats for the whole world!|left
add_spacer|small|
add_textbox|`wWhich stats would you like to view?|left
add_button|placed_gs|World Blocks|noflags|0|0|
add_button|float_gs|Floating Items|noflags|0|0|
add_quick_exit|
end_dialog|grow_scaxn|`4Cancel|`2Okay|
]]
var.netid = -1
SendVarlist(var)
return true
end
end

AddCallback("gs_xd","OnPacket", gs_xd)

function growscan_mode(type, packet)
    if packet:find("buttonClicked|placed_gs") then
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Scaning placed blocks")
        function round(n)
            return n % 1 >= 0.5 and math.ceil(n) or math.floor(n)
        end
        
        store1 = {}
        
        for k,v in pairs(GetTiles()) do
            id = v.fg
            if store1[v.fg] == nil then
                store1[v.fg] = {id = v.fg, qty = 1}
            else
                store1[v.fg].qty = store1[v.fg].qty + 1
            end
            if store1[v.bg] == nil then
                store1[v.bg] = {id = v.bg, qty = 1}
            else
                store1[v.bg].qty = store1[v.bg].qty + 1
            end
        end
        
        placedshit = "add_spacer|small|"
        for _,tile in pairs(store1) do
            count = round(tile.qty)
            idplaced = math.floor(tile.id)
            placedshit =
                placedshit ..
                "\nadd_label_with_icon|small|`o" ..
                     "`9id :`3 "..idplaced.." `0I `9count  :`3 "..count.."``|left|" .. tostring(tile.id)
        end
        
varlist = {}
varlist[0] = "OnDialogRequest"
varlist[1] = [[
set_default_color|`o
add_label_with_icon|big|`9Growscan `0``|left|6016
]]..placedshit..[[
add_quick_exit|
end_dialog|grow_scan|`2Okay|`4Back|
]]
varlist.netid = -1
SendVarlist(varlist)
        return true
    elseif packet:find("buttonClicked|float_gs") then
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Scaning dropped items")
        function round(n)
            return n % 1 >= 0.5 and math.ceil(n) or math.floor(n)
        end
        
        store1 = {}
        
        for k, v in pairs(GetObjects()) do
            id = v.id
            if store1[v.id] == nil then
                store1[v.id] = {id = v.id, qty = v.count}
            else
                store1[v.id].qty = store1[v.id].qty + v.count
            end
        end
        
        droppedshit = "add_spacer|small|"
        for _, object in pairs(store1) do
            count = round(object.qty)
            xx = math.floor(object.id)
                droppedshit =
                    droppedshit ..
                "\nadd_label_with_icon|small|`o" ..
                     "`9id :`3 "..xx.." `0I `9count  :`3 "..count.."``|left|" .. tostring(object.id)
        end
        
varlist = {}
varlist[0] = "OnDialogRequest"
varlist[1] = [[
set_default_color|`o
add_label_with_icon|big|`9Growscan `0``|left|6016
]]..droppedshit..[[
add_quick_exit|
end_dialog|grow_scan|`2Okay|`4Back|
]]
varlist.netid = -1
SendVarlist(varlist)
        return true
    end
end

AddCallback("growscan_mode", "OnPacket", growscan_mode)

function gs_back(type, packet)
	if packet:find("dialog_name|grow_scan") then
        var = {}
var[0] = "OnDialogRequest"
var[1] = [[
add_label_with_icon|big|`wWorld Stats``|left|6016|
add_spacer|small|
add_textbox|`wThis amazing block can show the stats for the whole world!|left
add_spacer|small|
add_textbox|`wWhich stats would you like to view?|left
add_button|placed_gs|World Blocks|noflags|0|0|
add_button|float_gs|Floating Items|noflags|0|0|
add_quick_exit|
end_dialog|grow_scaxn|`4Cancel|`2Okay|
]]
var.netid = -1
SendVarlist(var)
		return true
	end
end

AddCallback("gs_back", "OnPacket", gs_back)

function gs1(type, packet)
    if packet == ("action|input\n|text|/gs 1") or packet == ("action|input\n|text|/growscan 1")then
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Scaning placed blocks")
        function round(n)
            return n % 1 >= 0.5 and math.ceil(n) or math.floor(n)
        end
        
        store1 = {}
        
        for k,v in pairs(GetTiles()) do
            id = v.fg
            if store1[v.fg] == nil then
                store1[v.fg] = {id = v.fg, qty = 1}
            else
                store1[v.fg].qty = store1[v.fg].qty + 1
            end
            if store1[v.bg] == nil then
                store1[v.bg] = {id = v.bg, qty = 1}
            else
                store1[v.bg].qty = store1[v.bg].qty + 1
            end
        end
        
        placedshit = "add_spacer|small|"
        for _,tile in pairs(store1) do
            count = round(tile.qty)
            idplaced = math.floor(tile.id)
            placedshit =
                placedshit ..
                "\nadd_label_with_icon|small|`o" ..
                     "`9id :`3 "..idplaced.." `0I `9count  :`3 "..count.."``|left|" .. tostring(tile.id)
        end
        
        varlist = {}
        varlist[0] = "OnDialogRequest"
        varlist[1] = "set_default_color|`o\nadd_label_with_icon|big|`9Growscan `0``|left|6016\n"..placedshit.."\nadd_quick_exit"
        varlist.netid = -1
        SendVarlist(varlist)
        return true
    end
end
    
AddCallback("gs_1","OnPacket", gs1)

function gs2(type, packet)
    if packet == ("action|input\n|text|/gs 2") or packet == ("action|input\n|text|/growscan 2")then
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Scaning dropped items")
        function round(n)
            return n % 1 >= 0.5 and math.ceil(n) or math.floor(n)
        end
        
        store1 = {}
        
        for k, v in pairs(GetObjects()) do
            id = v.id
            if store1[v.id] == nil then
                store1[v.id] = {id = v.id, qty = v.count}
            else
                store1[v.id].qty = store1[v.id].qty + v.count
            end
        end
        
        droppedshit = "add_spacer|small|"
        for _, object in pairs(store1) do
            count = round(object.qty)
            xx = math.floor(object.id)
                droppedshit =
                    droppedshit ..
                "\nadd_label_with_icon|small|`o" ..
                     "`9id :`3 "..xx.." `0I `9count  :`3 "..count.."``|left|" .. tostring(object.id)
        end
        
        varlist = {}
        varlist[0] = "OnDialogRequest"
        varlist[1] = "set_default_color|`o\nadd_label_with_icon|big|`9Growscan `0``|left|6016\n"..droppedshit.."\nadd_quick_exit"
        varlist.netid = -1
        SendVarlist(varlist)
        return true
    end
end
    
AddCallback("gs_2","OnPacket", gs2)

function fc(type, packet)
    if packet == ("action|input\n|text|/fc") then
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Closing proxy.")
        RemoveCallbacks()
    return true
    end
end
    
AddCallback("fc","OnPacket", fc)

-- defult settibgs

function string.removeColors(varlist)
    return varlist:gsub("`.", "")
end

function qq_function(num)
    return num % 10
end

function reme_function(num)
    local sum = 0
    while num > 0 do
      sum = sum + (num % 10)
      num = math.floor(num / 10)
    end
    return sum
end

function all_spin(type, packet)
    if packet == ("action|input\n|text|/spinall") then
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Spin mode set to `3QQ & REME")
function Spin_checker(varlist)
    if varlist[0] == "OnTalkBubble" and varlist[3] ~= -1 and varlist[2]:find("spun the wheel and got") then
      text = ""
      if varlist[2]:find("CP:") then
        start, final = string.find(varlist[2], "=")
        text = "`0[ `4FAKE `0] " .. string.sub(varlist[2], final + 1)
      else
        x = varlist[2]:removeColors()
        x2 = x:match("spun the wheel and got (%d+)")
        x2 = tonumber(x2)
        qq_mode = qq_function(x2)
        reme_mode2 = reme_function(x2)
        reme_mode = qq_function(reme_mode2)
        var = {}
        var[0] = "OnTalkBubble"
        var[1] = varlist[1]
        var[2] = "`0[ `2Growtopia Proxy `0] `9CSN : `3"..x2.." `0x `9QEME : `3"..qq_mode.." `0x `9REME : `3"..reme_mode
        var[3] = -1
        var.netid = -1
        SendVarlist(var)
        OnConsoleMessage("`9CSN : `3"..x2.." `0x `9QEME : `3"..qq_mode.." `0x `9REME : `3"..reme_mode)
        return true
      end
      SendVarlist({
        [0] = "OnTalkBubble",
        [1] = varlist[1],
        [2] = text,
        [3] = -1,
        netid = -1,
      })
      return true
    end
  end
AddCallback("Spin_checker", "OnVarlist", Spin_checker)
return true
end
end

AddCallback("all_spin","OnPacket", all_spin)

function qq_spin(type, packet)
    if packet == ("action|input\n|text|/qq") then
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Spin mode set to `3QQ")
function Spin_checker(varlist)
    if varlist[0] == "OnTalkBubble" and varlist[3] ~= -1 and varlist[2]:find("spun the wheel and got") then
      text = ""
      if varlist[2]:find("CP:") then
        start, final = string.find(varlist[2], "=")
        text = "`0[ `4FAKE `0] " .. string.sub(varlist[2], final + 1)
      else
        x = varlist[2]:removeColors()
        x2 = x:match("spun the wheel and got (%d+)")
        x2 = tonumber(x2)
        qq_mode = qq_function(x2)
        reme_mode2 = reme_function(x2)
        reme_mode = qq_function(reme_mode2)
        var = {}
        var[0] = "OnTalkBubble"
        var[1] = varlist[1]
        var[2] = varlist[2].." `9QQ : `3"..qq_mode
        var[3] = -1
        var.netid = -1
        SendVarlist(var)
        return true
      end
      SendVarlist({
        [0] = "OnTalkBubble",
        [1] = varlist[1],
        [2] = text,
        [3] = -1,
        netid = -1,
      })
      return true
    end
  end
AddCallback("Spin_checker", "OnVarlist", Spin_checker)
return true
end
end

AddCallback("qq_spin","OnPacket", qq_spin)

function reme_spin(type, packet)
    if packet == ("action|input\n|text|/reme") then
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Spin mode set to `3REME")
function Spin_checker(varlist)
    if varlist[0] == "OnTalkBubble" and varlist[3] ~= -1 and varlist[2]:find("spun the wheel and got") then
      text = ""
      if varlist[2]:find("CP:") then
        start, final = string.find(varlist[2], "=")
        text = "`0[ `4FAKE `0] " .. string.sub(varlist[2], final + 1)
      else
        x = varlist[2]:removeColors()
        x2 = x:match("spun the wheel and got (%d+)")
        x2 = tonumber(x2)
        qq_mode = qq_function(x2)
        reme_mode2 = reme_function(x2)
        reme_mode = qq_function(reme_mode2)
        var = {}
        var[0] = "OnTalkBubble"
        var[1] = varlist[1]
        var[2] = varlist[2].." `9REME : `3"..reme_mode
        var[3] = -1
        var.netid = -1
        SendVarlist(var)
        return true
      end
      SendVarlist({
        [0] = "OnTalkBubble",
        [1] = varlist[1],
        [2] = text,
        [3] = -1,
        netid = -1,
      })
      return true
    end
  end
AddCallback("Spin_checker", "OnVarlist", Spin_checker)
return true
end
end

AddCallback("reme_spin","OnPacket", reme_spin)

function check_spin(type, packet)
    if packet == ("action|input\n|text|/check") then
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Spin mode set to `3Checker")
function Spin_checker(varlist)
    if varlist[0] == "OnTalkBubble" and varlist[3] ~= -1 and varlist[2]:find("spun the wheel and got") then
      text = ""
      if varlist[2]:find("CP:") then
        start, final = string.find(varlist[2], "=")
        text = "`0[ `4FAKE `0] " .. string.sub(varlist[2], final + 1)
      else
        x = varlist[2]:removeColors()
        x2 = x:match("spun the wheel and got (%d+)")
        x2 = tonumber(x2)
        qq_mode = qq_function(x2)
        reme_mode2 = reme_function(x2)
        reme_mode = qq_function(reme_mode2)
        var = {}
        var[0] = "OnTalkBubble"
        var[1] = varlist[1]
        var[2] = "`0[ `2REAL `0] "..varlist[2]
        var[3] = -1
        var.netid = -1
        SendVarlist(var)
        return true
      end
      SendVarlist({
        [0] = "OnTalkBubble",
        [1] = varlist[1],
        [2] = text,
        [3] = -1,
        netid = -1,
      })
      return true
    end
  end
AddCallback("Spin_checker", "OnVarlist", Spin_checker)
return true
end
end

AddCallback("check_spin","OnPacket", check_spin)

function visual_spin_2(type, packet)
    if packet:find("action|input") then
      text = packet:gsub("action|input\n|text|", "")
      if text:find("/") then
        cmd = text:gsub("/", "")
        if cmd:find("visualspin") then

          spin_nmber = cmd:gsub("visualspin ", "")
          spin_nmber = tonumber(spin_nmber)

          -- TAMBAHAN HELP
          if spin_nmber == nil then
            OnConsoleMessage("`0[ `2Growtopia Proxy `0] `4TARO ANGKANYA KONTOL")
            OnConsoleMessage("`0[ `2Growtopia Proxy `0] `2CONTOH /VISUALSPIN 0")
            return true
          end

          OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Visual spin set to `3"..spin_nmber)

          if spin_nmber == 0 then
            color_visual_spin = 2
          elseif spin_nmber == 1 then
            color_visual_spin = 4
          elseif spin_nmber == 2 then
            color_visual_spin = "b"
          elseif spin_nmber == 3 then
            color_visual_spin = 4
          elseif spin_nmber == 4 then
            color_visual_spin = "b"
          elseif spin_nmber == 5 then
            color_visual_spin = 4
          elseif spin_nmber == 6 then
            color_visual_spin = "b"
          elseif spin_nmber == 7 then
            color_visual_spin = 4
          elseif spin_nmber == 8 then
            color_visual_spin = "b"
          elseif spin_nmber == 9 then
            color_visual_spin = 4
          elseif spin_nmber == 10 then
            color_visual_spin = "b"
          elseif spin_nmber == 11 then
            color_visual_spin = "b"
          elseif spin_nmber == 12 then
            color_visual_spin = 4
          elseif spin_nmber == 13 then
            color_visual_spin = "b"
          elseif spin_nmber == 14 then
            color_visual_spin = 4
          elseif spin_nmber == 15 then
            color_visual_spin = "b"
          elseif spin_nmber == 16 then
            color_visual_spin = 4
          elseif spin_nmber == 17 then
            color_visual_spin = "b"
          elseif spin_nmber == 18 then
            color_visual_spin = 4
          elseif spin_nmber == 19 then
            color_visual_spin = 4
          elseif spin_nmber == 20 then
            color_visual_spin = "b"
          elseif spin_nmber == 21 then
            color_visual_spin = 4
          elseif spin_nmber == 22 then
            color_visual_spin = "b"
          elseif spin_nmber == 23 then
            color_visual_spin = 4
          elseif spin_nmber == 24 then
            color_visual_spin = "b"
          elseif spin_nmber == 25 then
            color_visual_spin = 4
          elseif spin_nmber == 26 then
            color_visual_spin = "b"
          elseif spin_nmber == 27 then
            color_visual_spin = 4
          elseif spin_nmber == 28 then
            color_visual_spin = "b"
          elseif spin_nmber == 29 then
            color_visual_spin = "b"
          elseif spin_nmber == 30 then
            color_visual_spin = 4
          elseif spin_nmber == 31 then
            color_visual_spin = "b"
          elseif spin_nmber == 32 then
            color_visual_spin = 4
          elseif spin_nmber == 33 then
            color_visual_spin = "b"
          elseif spin_nmber == 34 then
            color_visual_spin = 4
          elseif spin_nmber == 35 then
            color_visual_spin = "b"
          elseif spin_nmber == 36 then
            color_visual_spin = 4
          end

  function Spin_checker(varlist)
      if varlist[0] == "OnTalkBubble" and varlist[3] ~= -1 and varlist[2]:find("spun the wheel and got") then
        text = ""
        if varlist[2]:find("CP:") then
          start, final = string.find(varlist[2], "=")
          text = "`0[ `4FAKE `0] " .. string.sub(varlist[2], final + 1)
        else
          var = {}
          var[0] = "OnTalkBubble"
          var[1] = varlist[1]
          var[2] = "`7[``"..GetLocal().name.."`` spun the wheel and got `"..color_visual_spin..""..spin_nmber.."``!`7]``"
          var[3] = -1
          var.netid = -1
          SendVarlist(var)
          return true
        end
        SendVarlist({
          [0] = "OnTalkBubble",
          [1] = varlist[1],
          [2] = text,
          [3] = -1,
          netid = -1,
        })
        return true
    end
  end

  AddCallback("Spin_checker", "OnVarlist", Spin_checker)
  return true
        end
      end
    end
  end

AddCallback("spinx_changer","OnPacket", visual_spin_2)

function check_drops(varlist)
    if varlist[0] == "OnConsoleMessage" and varlist[1]:find("Collected `w") then
        collectingxd = varlist[1]:removeColors()
    OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9"..collectingxd)
        return true
    end
end
AddCallback("check_drops","OnVarlist", check_drops)

function check_login(varlist)
    if varlist[0] == "OnConsoleMessage" and varlist[1]:find("Welcome back,") then
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Player Authentication `2Successful.")
        return true
    end
end
AddCallback("check_login","OnVarlist", check_login)

function today_date(varlist)
    if varlist[0] == "OnTodaysDate" then
        OnConsoleMessage("`0[ `2Growtopia Proxy `0] `9Todays date : `3"..varlist[2].." `9/ `3"..varlist[4])
        return true
    end
end
AddCallback("today_date","OnVarlist", today_date)

function auto_acces_main(varlist)
    if varlist[0] == "OnConsoleMessage" and  varlist[1]:find("wants to add you to a") then
      function hide_acces1(varlist)
        if varlist[0] == "OnDialogRequest" and  varlist[1]:find("end_dialog|acceptaccess|No|Yes|") then
        return true
        end
    end
    AddCallback("hide_acces1","OnVarlist", hide_acces1)
      
  function hide_acces2(varlist)
      if varlist[0] == "OnDialogRequest" and varlist[1]:find("add_button|acceptlock|") then
      return true
      end
  end
  AddCallback("hide_acces2","OnVarlist", hide_acces2)
      
  netid = GetLocal().netid
  pkt = "action|wrench\n|netid|"..netid
  pkt2 = "action|dialog_return\ndialog_name|popup\nnetID|"..netid.."|\nbuttonClicked|acceptlock"
  pkt3 = "action|dialog_return\ndialog_name|acceptaccess"
  SendPacket(2,pkt)
  SendPacket(2,pkt2)
  SendPacket(2,pkt3)
  return true
  end
  end
  AddCallback("auto_acces_main","OnVarlist", auto_acces_main)

-- credit

var = {}
var[0] = "OnTalkBubble"
var[1] = GetLocal().netid
var[2] = "`9TROLLER PROXY BY BAHLIL"
var[3] = 0
var[4] = 0
var.netid = -1
SendVarlist(var)

for i = 1,30 do
    print("")
end

print("Thanks for using this proxy")
print("Creator : Zakie Hauzan")
print("https://discord.gg/Rq25SJegCJ")

print("")
