//
//  Room_11.swift
//  SST_inc_heist
//
//  Created by Wang Yuzhi Ryan on 18/9/25.
//

import SwiftUI

struct Room_11: View {
    @Binding var appstate : Appstate
    var body: some View {
        NavigationStack{
            Text("As you enter the dining room, the door locks on you.\nSeems like you need to find another way out")
            if (!appstate.inventoryItems.contains("key")){
                Text("There is a key on the table")
                Button{
                    appstate.inventoryItems.append("key")
                }label: {
                    Text("add to inventory")
                }
            }
            if (appstate.solvedPuzzles.contains(3)){
                NavigationLink{
                    Room_5(appstate: $appstate)
                }label: {
                    Text("Walk back through the door")
                }
            }else{
                NavigationLink{
                    Puzzle_3(appstate:$appstate)
                }label: {
                    Text("Investigate")
                }
            }
            
        }
        .navigationBarBackButtonHidden(true)
            }
}

#Preview {
    @Previewable @State var appstate = Appstate(inventoryItems: [], solvedPuzzles: [])
    Room_11(appstate: $appstate)
}
