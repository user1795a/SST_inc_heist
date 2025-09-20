//
//  Room_8.swift
//  SST_inc_heist
//
//  Created by Wang Yuzhi Ryan on 18/9/25.
//

import SwiftUI

struct Room_8: View {
    @Binding var appstate : Appstate
    var body: some View {
        NavigationStack{
            Text("Having finally managed to crack the safe, you heave a sigh of relief. ")
            if (appstate.solvedPuzzles.contains(2)){
                NavigationLink{
                    Room_16(appstate: $appstate)
                }label: {
                    Text("go to bedroom 2")
                }
            }else{
                Text("The safe contains something, but you can't quite make it out")
                NavigationLink{
                    Puzzle_2(appstate: $appstate)
                }label:{
                    Text("Investigate")
                }
            }
            Text("You see the area behind the bookshelf, but it it blocked by a piece of glass")
        }
    }
}
//
//#Preview {
//    Room_8()
//}
