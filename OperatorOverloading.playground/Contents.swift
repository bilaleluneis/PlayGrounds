/*:
Author: Bilal El Uneis (bilaleluneis@icloud.com)
Since: 02/29/2016
...
Playground code snippets to learn about Operator Overloading
*/

enum Color {
    case red
    case yellow
    case orange
    case green
    case blue
    case violet
}

struct ColorCombination {
    var firstColor: Color
    var secondColor: Color
    var resultColor: Color?
    
    init(_ firstColor:Color, _ secondColor:Color, _ resultColor:Color) {
        self.firstColor = firstColor
        self.secondColor = secondColor
        self.resultColor = resultColor
    }
    
    init(_ firstColor:Color, _ secondColor:Color) {
        self.firstColor = firstColor
        self.secondColor = secondColor
        self.resultColor = nil
    }
}

//list of color combination and resulting color
let colorChart:[ColorCombination] = [ColorCombination(.red, .blue, .violet),
                                     ColorCombination(.red, .yellow, .orange),
                                     ColorCombination(.blue, .yellow, .green)]

// overloads the == operator for ColorCombination struct type
func == (colorCombo1:ColorCombination , colorCombo2:ColorCombination) -> Bool {
    
    if  colorCombo1.firstColor  == colorCombo2.firstColor &&
        colorCombo1.secondColor == colorCombo2.secondColor {
            return true
    }
    
    if  colorCombo1.firstColor  == colorCombo2.secondColor &&
        colorCombo1.secondColor == colorCombo2.firstColor {
            return true
    }
    return false
}

//overloads + for Color enum type
func + (firstColor:Color , secondColor:Color) -> Color? {
    
    if firstColor == secondColor {
        return firstColor
    }
    
    let currentColorCombination = ColorCombination(firstColor, secondColor)
    
    for colorComboItemInList in colorChart {
        //here we are using the == overloaded operator
        if colorComboItemInList == currentColorCombination {
            return colorComboItemInList.resultColor
        }
    }

    return nil
}

//snippets to try out all that data structure above :)

let resultColor1: Color? = .red + .blue
let resultColor2 = .blue + .red //here im using type infrence
let resultColor3 = .yellow + .blue
let nilResultColor = .red + .orange
