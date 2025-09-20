//
//  Room_16.swift
//  SST_inc_heist
//
//  Created by Wang Yuzhi Ryan on 18/9/25.
//this room is another bedroom

import SwiftUI

struct Room_16: View {
    @Binding var appstate : Appstate
    var body: some View {
        NavigationStack{
            VStack{
                Text("go to room 17[update]")
                if(appstate.solvedPuzzles.contains(6)){
                    NavigationLink{
                        Puzzle_6(appstate: $appstate)
                    }label: {
                        Text("attempt puzzle")
                    }
                }else{
                    NavigationLink{
                        Room_4(appstate: $appstate)
                    }label: {
                        Text("goto 4")
                    }
                }
            }
        }
    }
}

//#Preview {
//    Room_16()
//}
