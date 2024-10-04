var shoppingList: [String] = []

func showMenu() {
    print("""
    Shopping List Manager:
    1. Add item
    2. Remove item
    3. Show list
    4. Exit
    """)
}

func addItem() {
    print("Enter the item to add: ", terminator: "")
    if let item = readLine(), !item.isEmpty {
        shoppingList.append(item)
        print("\(item) added to the list.")
    } else {
        print("Invalid input.")
    }
}

func removeItem() {
    print("Enter the item to remove: ", terminator: "")
    if let item = readLine(), let index = shoppingList.firstIndex(of: item) {
        shoppingList.remove(at: index)
        print("\(item) removed from the list.")
    } else {
        print("Item not found.")
    }
}

func showList() {
    if shoppingList.isEmpty {
        print("The shopping list is empty.")
    } else {
        print("Current shopping list:")
        for (index, item) in shoppingList.enumerated() {
            print("\(index + 1). \(item)")
        }
    }
}

while true {
    showMenu()
    print("Choose an option: ", terminator: "")
    
    if let choice = readLine(), let option = Int(choice) {
        switch option {
        case 1:
            addItem()
        case 2:
            removeItem()
        case 3:
            showList()
        case 4:
            print("Exiting the application.")
            break
        default:
            print("Invalid option.")
        }
    } else {
        print("Invalid input.")
    }
    
    if let choice = readLine(), choice == "4" {
        break
    }
}
