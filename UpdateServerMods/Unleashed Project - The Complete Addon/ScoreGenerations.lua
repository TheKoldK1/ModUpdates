function calculateTimeBonus()
	-- Assign time bonus multiplier for specific stages
	-- Apotos (Act 1)
	if (stageID == "ghz100") then
	    tbMultiplier = 100
	elseif (stageID == "pla200") then
	    tbMultiplier = 100
	-- Apotos (Act 2)
	elseif (stageID == "ghz200") then
	    tbMultiplier = 100
	-- Mazuri
	elseif (stageID == "cpz200") then
	    tbMultiplier = 100
	-- Spagonia
	elseif (stageID == "ssz200") then
	    tbMultiplier = 100
	-- Chun-nan
	elseif (stageID == "sph200") then
	    tbMultiplier = 400
	-- Holoska
	elseif (stageID == "cte200") then
		tbMultiplier = 400
	-- Shamar
	elseif (stageID == "ssh200") then
		tbMultiplier = 450
	-- Empire City
	elseif (stageID == "csc200") then
		tbMultiplier = 100
	-- Adabat
	elseif (stageID == "euc200") then
		tbMultiplier = 300
	else
		tbMultiplier = 0
	end
	-- Print variable to console for debugging.
	print("tbMultiplier = " .. tbMultiplier)

	-- Calculate time bonus.
	if (elapsedTime < minSeconds) then
		elapsedTime = (minSeconds - elapsedTime) * tbMultiplier
	else
		elapsedTime = 0
	end
	
	return math.clamp(elapsedTime, 0, scoreLimit)
end

function calculateSpeedBonus()
	-- Assign speed bonus multiplier for specific stages
	-- Apotos (Act 1)
	if (stageID == "ghz100") then
	    sbMultiplier = 150
	elseif (stageID == "pla200") then
		sbMultiplier = 150
	-- Apotos (Act 2)
	elseif (stageID == "ghz200") then
	    sbMultiplier = 40
	-- Mazuri
	elseif (stageID == "cpz200") then
	    sbMultiplier = 35
	-- Spagonia
	elseif (stageID == "ssz200") then
	    sbMultiplier = 70
	-- Chun-nan
	elseif (stageID == "sph200") then
	    sbMultiplier = 35
	-- Holoska
	elseif (stageID == "cte200") then
		sbMultiplier = 50
	-- Shamar
	elseif (stageID == "ssh200") then
		sbMultiplier = 45
	-- Empire City
	elseif (stageID == "csc200") then
		sbMultiplier = 40
	-- Adabat
	elseif (stageID == "euc200") then
		sbMultiplier = 35
	else
		sbMultiplier = 0
	end
	-- Print variable to console for debugging.
	print("sbMultiplier = " .. sbMultiplier)

	-- Calculate speed bonus.
	totalVelocity = totalVelocity * sbMultiplier

	return math.clamp(math.round(totalVelocity), 0, scoreLimit)
end