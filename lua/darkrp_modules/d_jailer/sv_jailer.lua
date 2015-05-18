hook.Add("PlayerSpawn", "checkForDeath", function(ply)
    if ply:getDarkRPVar("wanted", true) then
	    DarkRP.notify(ply, 1, 5, "You have been jailed since you were wanted and died!")
	    ply:setDarkRPVar("wanted", false)
		
		RunConsoleCommand("rp_arrest", ply:Nick())
	end
end)
