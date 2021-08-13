to_delete = {}

script.on_load(function()
    to_delete = {}
end)

local function destroy_tile(entity)
    if entity ~= nil and entity.valid then
        if settings.global["odb-effects"].value then
            entity.surface.create_entity {
                name = "explosion",
                position = entity.position
            }
        end
        entity.destroy()
    end
end

script.on_event(defines.events.on_player_used_capsule, function(event)
    if event.item.name == "odb-explosives" then
        local surface = game.players[event.player_index].surface
        local entities = surface.find_entities_filtered{
            position = event.position,
            radius = 25,
            type = "resource"
        }
        table.insert(to_delete, {
            position = event.position,
            surface = surface,
            entities = entities,
            do_next = game.tick + 60
        })
    end
end)

script.on_event(defines.events.on_tick, function(event)
    if # to_delete > 0 then
        for key, deletion in pairs(to_delete) do
            if deletion.do_next <= game.tick then
                local entities = deletion.entities
                if settings.global["odb-instant"].value then
                    for _, entity in pairs(entities) do
                        destroy_tile(entity)
                    end
                    to_delete[key] = nil
                    goto continue
                end
                for _, entity in pairs(entities) do
                    if not entity.valid then
                        for entity_key, entity_from_table in pairs(entities) do
                            if entity == entity_from_table then
                                entities[entity_key] = nil
                                break
                            end
                        end
                    end
                end
                for i = 1, settings.global["odb-tiles-at-same-time"].value do
                    local entity = deletion.surface.get_closest(deletion.position, entities)
                    for entity_key, entity_from_table in pairs(entities) do
                        if entity == entity_from_table then
                            entities[entity_key] = nil
                            break
                        end
                    end
                    destroy_tile(entity)
                end
                to_delete[key] = nil
                if #entities ~= 0 then
                    table.insert(to_delete, {
                        position = deletion.position,
                        surface = deletion.surface,
                        entities = entities,
                        do_next = game.tick + settings.global["odb-wait-ticks"].value
                    })
                end
            end
            ::continue::
        end
    end
end)
