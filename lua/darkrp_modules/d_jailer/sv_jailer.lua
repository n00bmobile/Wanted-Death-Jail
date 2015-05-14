hook.Add("PlayerDeath", "checkForDeath", function(victim)
    if victim:getDarkRPVar("wanted", true) then
	    DarkRP.notify(victim, 1, 5, "You have been jailed since you were wanted and died!")
	    victim:setDarkRPVar("wanted", false)
		
		RunConsoleCommand("rp_arrest", victim:Nick())
	end
end)
