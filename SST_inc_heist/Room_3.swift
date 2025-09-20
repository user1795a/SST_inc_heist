//
//  Room_2.swift
//  SST_inc_heist
//
//  Created by Wang Yuzhi Ryan on 19/9/25.
//this room is another building

import SwiftUI

struct Room_3: View {
    @Binding var appstate : Appstate
    var body: some View {
        NavigationStack{
            VStack{
                Text("As you enter the building, you feel that something's wrong")
                Text("You brush it off as your imagination")
                //Update room 9 on complete (for narrative)
                NavigationLink{
                    Room_7(appstate: $appstate)
                }label: {
                    Text("Enter bedroom")
                }
                Button{
                    //SOMEONE ADD A SECRET HERE
                    //WHY IS NO ONE DOING THEIR WORK - ryan
                }label: {
                    Text("Investigate")
                }
            }
        }
    }
}

#Preview {
    @Previewable @State var appstate = Appstate(inventoryItems: [], solvedPuzzles: [], notebooktext: "")
    Room_3(appstate: $appstate)
}
