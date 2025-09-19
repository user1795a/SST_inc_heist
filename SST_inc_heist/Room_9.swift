//
//  Room_9.swift
//  SST_inc_heist
//
//  Created by Wang Yuzhi Ryan on 18/9/25.
//

import SwiftUI

struct Room_9: View {
    @Binding var appstate : Appstate
    var body: some View {
        NavigationStack{
            Text("in the locked room, you find a flashlight")
            if (!appstate.inventoryItems.contains("flashlight")){
                Button{
                    appstate.inventoryItems.append("flashlight")
                }label: {
                    Text("add to inventory")
                }
            }
            NavigationLink{
                Room_2(appstate: $appstate)
            }label: {
                Text("goto room 2 [update]")
            }
            
        }
            }
}

#Preview {
    @Previewable @State var appstate = Appstate(inventoryItems: [], solvedPuzzles: [])
    Room_9(appstate: $appstate)
}
