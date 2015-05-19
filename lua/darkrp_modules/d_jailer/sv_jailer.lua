hook.Add("PlayerSpawn", "deathJailWanted", function(ply)
    if ply:getDarkRPVar("wanted", true) then
	    ply:setDarkRPVar("wanted", false)
		ply:arrest()
		
		DarkRP.notify(ply, 1, 5, "You have been jailed since you were wanted and died!")
	end
end)
