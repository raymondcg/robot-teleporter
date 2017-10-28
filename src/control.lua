script.on_event(defines.events.on_player_created, function(event)
	local player = game.players[event.player_index]
	local radius=2500
	
	--player.insert(name = "", count = 0)
	player.insert{name = "roboport", count = 1}
	player.insert{name = "blueprint", count = 1}
	player.insert{name = "deconstruction-planner", count = 1}
	player.insert{name = "construction-robot", count = 20}
	player.insert{name = "logistic-robot", count = 50}
	player.insert{name = "modular-armor", count = 1}
	player.insert{name = "personal-roboport-equipment", count = 1}
	player.insert{name = "solar-panel-equipment", count = 5}
	player.insert{name = "battery-equipment", count = 3}
	player.insert{name = "logistic-chest-active-provider", count = 5}
	player.insert{name = "logistic-chest-passive-provider", count = 10}
	player.insert{name = "logistic-chest-requester", count = 10}
	player.insert{name = "logistic-chest-storage", count = 5}
	
	-- Move Player 50,000 tile east.
	player.teleport({x = 50000, y = 0})
	
	-- Exposes a radius around where the player will teleport
	player.force.chart(player.surface, {{player.position.x-radius, player.position.y-radius}, {player.position.x+radius, player.position.y+radius}})

end)