//
//  Room_7.swift
//  SST_inc_heist
//
//  Created by Wang Yuzhi Ryan on 18/9/25.
//

import SwiftUI

struct Room_7: View {
    @Binding var appstate : Appstate
    var body: some View {
        NavigationStack{
            if(appstate.inventoryItems.contains("e")){
                NavigationLink{
//                    Room_8(appstate: $appstate)
                    ContentView(appstate: $appstate)
                }label: {
                    Text("Room 8 (with key e)")
                }
            }
        }
    }
}

//#Preview {
//    Room_7()
//}
