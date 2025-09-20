//
//  Room_2.swift
//  SST_inc_heist
//
//  Created by Wang Yuzhi Ryan on 19/9/25.
//this room is another building

import SwiftUI

struct Room_3: View {
    @Binding var appstate : Appstate
    @State var n:Int = 0
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
                if (appstate.hiddenfound){
                    NavigationLink{
                        Room_4(appstate: $appstate)
                    }label:{
                        Text("Go back to bookshelf")
                    }
                }
                Button{
                    n+=1
                    if (n==3){
                        appstate.hiddenfound = true
                    }
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
