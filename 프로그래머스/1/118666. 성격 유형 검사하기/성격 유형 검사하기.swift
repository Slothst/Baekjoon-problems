import Foundation

func solution(_ survey:[String], _ choices:[Int]) -> String {
    func getResult(_ character: [String: Int]) -> String {
        var result = [String]()
        result.append(insertResult(character, "R", "T"))
        result.append(insertResult(character, "C", "F"))
        result.append(insertResult(character, "J", "M"))
        result.append(insertResult(character, "A", "N"))
        return result.joined()
    }

    func insertResult(_ character: [String: Int], _ first: String, _ second: String) -> String {
        var str = ""
        if character[first]! >= character[second]! {
            str += first
        } else {
            str += second
        }
        return str
    }

    func addScore(_ character: [String: Int], _ surveySplit: [String], _ choice: Int) -> [String: Int] {
        switch choice {
        case 1: return characterPut(character, surveySplit[0], 3)
        case 2: return characterPut(character, surveySplit[0], 2)
        case 3: return characterPut(character, surveySplit[0], 1)
        case 5: return characterPut(character, surveySplit[1], 1)
        case 6: return characterPut(character, surveySplit[1], 2)
        default: return characterPut(character, surveySplit[1], 3)
        }
    }

    func characterPut(_ character: [String: Int], _ str: String, _ i: Int) -> [String: Int] {
        var character = character
        character[str]! += i
        return character
    }

    func initCharacter() -> [String: Int] {
        return ["R": 0, "T": 0, "C": 0, "F": 0, "J": 0, "M": 0, "A": 0, "N": 0]
    }

    var character = initCharacter()

    for i in 0..<survey.count {
        var choice = choices[i]
        if choice == 4 { continue }
        var surveySplit = survey[i].map { String($0) }

        character = addScore(character, surveySplit, choice)
        print(character)
    }

    return getResult(character)
}