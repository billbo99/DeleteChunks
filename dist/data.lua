data:extend(
    {
        {
            type = "selection-tool",
            name = "chunk-eraser",
            icon = "__DeleteChunks__/graphics/chunk-eraser.png",
            flags = {},
            subgroup = "tool",
            order = "c[automated-construction]-b[deconstruction-planner]",
            stack_size = 1,
            icon_size = 64,
            stackable = false,
            selection_color = {r = 0, g = 1, b = 0},
            alt_selection_color = {r = 0, g = 0, b = 1},
            selection_mode = {"nothing"},
            alt_selection_mode = {"nothing"},
            selection_cursor_box_type = "pair",
            alt_selection_cursor_box_type = "pair",
            show_in_library = true
        },
        {
            type = "shortcut",
            name = "chunk-eraser",
            order = "o[chunk-eraser]",
            action = "create-blueprint-item",
            item_to_create = "chunk-eraser",
            toggleable = true,
            icon = {
                filename = "__DeleteChunks__/graphics/chunk-eraser.png",
                -- priority = "extra-high-no-scale",
                size = 64,
                scale = 0.5,
                flags = {"gui-icon"}
            },
            small_icon = {
                filename = "__DeleteChunks__/graphics/chunk-eraser.png",
                -- priority = "extra-high-no-scale",
                size = 64,
                scale = 0.5,
                flags = {"gui-icon"}
            },
            disabled_small_icon = {
                filename = "__DeleteChunks__/graphics/chunk-eraser.png",
                -- priority = "extra-high-no-scale",
                size = 64,
                scale = 0.5,
                flags = {"gui-icon"}
            }
        }
    }
)
