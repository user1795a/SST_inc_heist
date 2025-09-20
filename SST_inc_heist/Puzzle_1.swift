//
//  Puzzle_2.swift
//  SST_inc_heist
//
//  Created by Wang Yuzhi Ryan on 18/9/25.
//

import SwiftUI

struct Puzzle_1: View {
    @Binding var appstate : Appstate
    @State var guess: String = ""
    @State var alert: Bool = false
    var body: some View {
        VStack{
            Text("input [p1][p2][p3][p4] to guess")
            Text("  p1 +  p2 +3(p3)+  p4 =35")
            Text("  p1 +3(p2)+3(p3)+2(p4)=40")
            Text("  p1 +3(p2)+3(p3)+ (p4)=37")
            Text("3(p1)+2(p2)+2(p3)+3(p4)=41")
            TextField("guess", text: $guess)
            Button{
                if (guess == "4193"){
                    appstate.solvedPuzzles.append(1)
                }else{
                    
                }
            }label: {
                Text("guess")
            }
        }
        .alert(Text("Wrong guess"),isPresented: $alert){
            Button{
                alert.toggle()
            }label:{
                Text("OK")
            }
        }
    }
}
//
//#Preview {
//    Puzzle_2()
//}
