//
//  main.swift
//  HomeWork2
//
//  Created by Yessenali Zhanaidar on 05.12.2021.
//



struct Clock {


static func singleHoursRow(_ hours: Int) ->  String {
    var res: String
    let firstHalf = hours % 5
    let firstValue = String(repeating: "R", count: firstHalf)
    let secondHalf = 4 - firstHalf
    let secondValue = String(repeating: "O", count: secondHalf)
    res = firstValue + secondValue

    return res
}

static func fiveHoursRow(_ hours: Int) -> String {
    var res: String
    let firstHalf = hours / 5
    let firstValue = String(repeating: "R", count: firstHalf)
    let secondHalf = 4 - firstHalf
    let secondValue = String(repeating: "O", count: secondHalf)
    res = firstValue + secondValue

    return res

}

static func fiveMinutesRow(_ minutes: Int) -> String {
    var res: [String] = ["O","O","O","O","O","O","O","O","O","O","O","O"]
    let firstHalf = minutes / 5
    if firstHalf == 0 {
        res[0] = "Y"
    }
    else {
    for i in 1...firstHalf {
        if i % 3 == 0 { res[i] = "R" }
        else { res[i] = "Y" }
        }
    }
    res.remove(at: 0)
    let result = res.joined(separator: "")
    return result
}

static func singleMinutesRow(_ minutes: Int) -> String {
    var str: [String] = ["O", "O", "O", "O"]
    let firstHalf = minutes % 5
    for i in 0..<firstHalf { str[i] = "Y" }
    let res = str.joined(separator: "")
    return res
}
    
    
    static func secondsRow(seconds: Int) -> String {
        var res: String
        if seconds % 2 == 0 { res = "Y" }
        else { res = "O" }
        return res
    }

    static func hoursRow(hours: Int) -> String {
        let firstValue: String = fiveHoursRow(hours)
        let secondValue: String = singleHoursRow(hours)
        let answer = firstValue + secondValue
        return answer
    }
    
    static func minutesRow(minutes: Int) -> String {
        let firstValue: String = fiveMinutesRow(minutes)
        let secondValue: String = singleMinutesRow(minutes)
        let answer = firstValue + secondValue
        return answer
    }
    
    

}


func result() -> Void {
    print("Enter a number of hours: ")
    let hours = readLine()
    print("Enter a number of minutes: ")
    let minutes = readLine()
    print("Enter a number of seconds: ")
    let seconds = readLine()
    
    let input = "\(hours!):\(minutes!):\(seconds!)"
    
    guard let checkH = hours, let checkM = minutes, let checkS = seconds else { return }
     
    guard let hoursInt = Int(checkH), let minutesInt = Int(checkM), let secondsInt = Int(checkS) else { return }
        
    
    
    
    let outputSec = Clock.secondsRow(seconds: secondsInt)
    let outputHours = Clock.hoursRow(hours: hoursInt)
    let outputMin = Clock.minutesRow(minutes: minutesInt)
    
    
    let result = outputSec + outputHours + outputMin
    
    print()
    print("input: " + input)
    print("output: " + result)
}

result()





