//
//  Puzzle_2.swift
//  SST_inc_heist
//
//  Created by Wang Yuzhi Ryan on 18/9/25.
//

import SwiftUI
func countMatchingCharacters(string1: String, string2: String) -> Int {
    var matchingCount = 0
    let characters1 = Array(string1)
    let characters2 = Array(string2)
    let minLength = min(characters1.count, characters2.count)

    for i in 0..<minLength {
        if characters1[i] == characters2[i] {
            matchingCount += 1
        }
    }
    return matchingCount
}
struct Puzzle_6: View {
    @Binding var appstate : Appstate
    @State var output : [String] = []
    @State var guess : String = ""
    var body: some View {
        
        if(appstate.solvedPuzzles.contains(6)){
            Text("correct. Press back")
        }else{
            VStack{
                Text("Guess the word (6 letters)")
                ScrollView{
                    VStack{
                        ForEach(output,id: \.self) { str in
                            Text(str)
                        }
                    }
                }
                TextField("guess...",text: $guess)
                    .frame(width: .infinity)
                Button{
                    if (guess.lowercased() == "escape"){
                        appstate.solvedPuzzles.append(6)
                    }else{
                        output.append("\(guess.lowercased()): \(countMatchingCharacters(string1: guess.lowercased(), string2: "escape"))")
                    }
                }label: {
                    Text("guess")
                }
            }
        }
    }
}
//
//#Preview {
//    Puzzle_2()
//}
