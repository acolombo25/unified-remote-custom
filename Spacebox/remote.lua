local dev = require("device");
local kb = require("keyboard");
local win = libs.win;

-- Documentation
-- https://github.com/unifiedremote/Docs

actions.open_firefox = function()
	os.start("firefox");
end

actions.open_roja = function()
	os.start("firefox", "-url http://it.rojadirecta.eu/");
end

actions.open_youtube = function()
	os.start("firefox", "-url http://www.youtube.com/tv");
end

actions.open_netflix = function()
	os.start("firefox", "-url http://www.netflix.com");
end

actions.open_steam = function()
	os.start("steam");
end

--@help Switch Firefox as the active window, then press F11, which is the shortcut to full-screen
actions.firefox_fullscreen = function()
	win.switchtowait("firefox.exe");
	kb.press("f11");
end

--@help Change resolution of the host to 1440x900 at 60hz using an AHK script running on the host
actions.res_900p60 = function()
	kb.stroke("lwin", "f11");
end

--@help Change resolution of the host to 1920x1080 at 60hz using an AHK script running on the host
actions.res_1080p60 = function()
	kb.stroke("rwin", "f11");
end

--@help Put system in hibernate state
actions.hibernate = function ()
	os.execute("shutdown /h");
	--PowrProf.SetSuspendState(true, true, false);
end

--@help Force system shutdown
--@param sec:number Timeout in seconds (default 5)
actions.shutdown = function (sec)
	if not sec then sec = 5; end
	os.execute("shutdown /s /f /t " .. sec);
end
