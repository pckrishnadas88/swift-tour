import Foundation
let vegetable = "red pepper"
switch vegetable {
	case "celery":
		print("Add some raisins and make ants on a log.")
	case "cucumber, watercress":
		print("That would make a good tea sandwich.")
	case let x where x.hasSuffix("pepper"):
		print("Is it spicy \(x)?")
	default:
		print("Everything tastes good in soup.")
}