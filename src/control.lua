script.on_event(defines.events.on_player_created, function(event)
	local player = game.players[event.player_index]
	local radius=1500
	
	player.insert{name = "construction-robot", count = 20}
	player.insert{name = "modular-armor", count = 1}
	player.insert{name = "personal-roboport-equipment", count = 1}
	player.insert{name = "solar-panel-equipment", count = 13}
	player.insert{name = "battery-equipment", count = 3}
	
	-- Move Player 50,000 tile east.
	player.teleport({x = 50000, y = 0})
	
	-- Exposes a radius around where the player will teleport
	player.force.chart(player.surface, {{player.position.x-radius, player.position.y-radius}, {player.position.x+radius, player.position.y+radius}})

end)