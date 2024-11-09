data:extend(
    {
        {
            type = "selection-tool",
            name = "chunk-eraser",
            icon = "__DeleteChunks__/graphics/chunk-eraser.png",
            icon_size = 64,
            flags = { "not-stackable", "spawnable" },
            hidden = true,
            subgroup = "tool",
            order = "c[automated-construction]-b[deconstruction-planner]",
            stack_size = 1,
            select =
            {
                border_color = { r = 0, g = 1, b = 0 },
                mode = { "nothing" },
                cursor_box_type = "pair"
            },
            alt_select =
            {
                border_color = { r = 0, g = 0, b = 1 },
                mode = { "nothing" },
                cursor_box_type = "pair"
            },
        },
        {
            type = "shortcut",
            name = "chunk-eraser",
            order = "o[chunk-eraser]",
            action = "spawn-item",
            item_to_spawn = "chunk-eraser",
            toggleable = true,
            icon = "__DeleteChunks__/graphics/chunk-eraser.png",
            icon_size = 64,
            small_icon = "__DeleteChunks__/graphics/chunk-eraser.png",
            small_icon_size = 64,
        }
    }
)
