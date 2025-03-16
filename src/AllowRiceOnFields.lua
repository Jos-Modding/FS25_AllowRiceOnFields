AllowRiceOnFields = {}

function AllowRiceOnFields:loadMap(filename)
    for _, fruitType in ipairs(g_fruitTypeManager:getFruitTypes()) do
        if fruitType.seedRequiredFieldType == FieldType.RICE then
            fruitType.seedRequiredFieldType = nil
            g_fruitTypeManager:addFruitTypeToCategory(fruitType.index, g_fruitTypeManager.categories["SOWINGMACHINE"])

        end
    end
end

function AllowRiceOnFields:mouseEvent(posX, posY, isDown, isUp, button)
end

function AllowRiceOnFields:keyEvent(unicode, sym, modifier, isDown)
end

function AllowRiceOnFields:update(dt)
end

function AllowRiceOnFields:draw()
end

addModEventListener(AllowRiceOnFields)
