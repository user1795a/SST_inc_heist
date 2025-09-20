//
//  Puzzle_2.swift
//  SST_inc_heist
//
//  Created by Wang Yuzhi Ryan on 18/9/25.
//

import SwiftUI

struct Puzzle_1: View {
    @Binding var appstate : Appstate
    var body: some View {
        if (appstate.onreturntrip){
            Text("you won!")
            Button{
                appstate = .init(inventoryItems: [], solvedPuzzles: [], notebooktext: "YOU WON!")
            }label: {
                Text("Reset game")
            }
        }else{
            Text("insert puzzle here")
            //Update room 8 on complete (for narrative)
            Button{
                appstate.solvedPuzzles.append(1)
            }label: {
                Text("Simulate solve")
            }
        }
    }
}
//
//#Preview {
//    Puzzle_2()
//}
