var fridgeIsOpen = false
let fridgeContent = ["milk", "eggs", "leftovers"]

func fridgeContains( food: String) -> Bool {
    fridgeIsOpen = true
    defer {
        fridgeIsOpen = false
    }

    let result = fridgeContent.contains(food)
    return result
}

let result = fridgeContains( food: "eggs")
print("result is \(result) & firdgeIsOpen is \(fridgeIsOpen)")
