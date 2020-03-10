local function delete_chunk(surface, chunk, destroy_all)
    if not surface.valid then
        return
    end

    local area = {top_left = {chunk.x * 32, chunk.x * 32}, bottom_right = {(chunk.x * 32) + 32, (chunk.x * 32) + 32}}

    local entities_in_chunk = surface.find_entities_filtered {area = area, force = "player"}
    local players_in_chunk = surface.find_entities_filtered {area = area, force = "player", type = "character"}

    if destroy_all then
        if players_in_chunk and #players_in_chunk > 0 then
            game.print(string.format("player(s) in chunk (%d, %d) can not delete", chunk.x, chunk.y))
        else
            surface.delete_chunk(chunk)
        end
    else
        if entities_in_chunk and #entities_in_chunk > 0 then
            game.print("player entities in chunk can not delete")
        else
            surface.delete_chunk(chunk)
        end
    end
end

local function on_player_selected_area(event, destroy_all)
    local player = game.players[event.player_index]

    if not player.admin then
        player.print("You are not an admin so this tool will do nothing for you")
        return
    end

    local surface = event.surface or player.surface
    local area = event.area
    local item = event.item

    if item == "chunk-eraser" then
        -- area = {left_top={x1, y1}, right_bottom={x2, y2}}

        for x = area.left_top.x, area.right_bottom.x, 32 do
            for y = area.left_top.y, area.right_bottom.y, 32 do
                local chunk = {}
                chunk.x = math.floor(x / 32)
                chunk.y = math.floor(y / 32)
                delete_chunk(surface, chunk, destroy_all)
            end
        end
    end
end

script.on_event(
    defines.events.on_player_selected_area,
    function(event)
        on_player_selected_area(event, false)
    end
)

script.on_event(
    defines.events.on_player_alt_selected_area,
    function(event)
        on_player_selected_area(event, true)
    end
)

script.on_event(
    defines.events.on_player_dropped_item,
    function(event)
        if event.entity ~= nil and event.entity.stack ~= nil and event.entity.stack.name == "chunk-eraser" then
            event.entity.stack.clear()
        end
    end
)
