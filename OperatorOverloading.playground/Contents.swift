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
    var resultColor: Color
    
    init(firstColor:Color, secondColor:Color, resultColor:Color){
        self.firstColor = firstColor
        self.secondColor = secondColor
        self.resultColor = resultColor
    }
}

//mark: the bellow methods still need implementation
func == (colorCombo1:ColorCombination , colorCombo2:ColorCombination) -> Bool {
    return false
}

func + (firstColor:Color , secondColor:Color) -> Color {
    
    if firstColor == secondColor {
        return firstColor
    }
    return .red
}
