import UIKit

var str = "Hello, playground"
var monsterHealth = 12

func bmi(mass: Float, height: Float) -> Float {
    return mass/(height*height)
}

func status(bmi: Float) -> String {
    var status = "You are overweight."
    if (bmi > 18.5 && bmi < 25) {
        status = "You are ok."
    }
    else if (bmi < 18.5) {
        status = "You are underweight."
    }
    
    return status
}

status(bmi: bmi(mass: 63.5, height: 1.63))



