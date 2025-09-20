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
                if(appstate.solvedPuzzles.contains(6)){
                   Text("The door to the other bedroom is locked")
                    NavigationLink{
                        Puzzle_6(appstate: $appstate)
                    }label: {
                        Text("attempt puzzle")
                    }
                }else{
                    Text("The door to the other bedroom is no longer locked")
                    NavigationLink{
                        Room_4(appstate: $appstate)
                    }label: {
                        Text("goto 17")
                    }
                }
            }
        }
    }
}

//#Preview {
//    Room_16()
//}
