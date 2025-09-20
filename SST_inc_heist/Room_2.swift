//
//  Room_2.swift
//  SST_inc_heist
//
//  Created by Wang Yuzhi Ryan on 19/9/25.
// cupboard of a desk

import SwiftUI

struct Room_2: View {
    @Binding var appstate : Appstate
    @State var fromtop: Int = 0
    @State var fromleft: Int = 0
    @State var alertc:Bool = false
    @State var alert: Bool = false
    var body: some View {
        NavigationStack{
            VStack{
                Text("You open the drawer. Inside you find a box. Furthemore, there is an arrow etched into the desk pointing at the bookshelf at the corner of the room")
                NavigationLink{
                    Room_5(appstate: $appstate)
                }label: {
                    Text("goto 5[update]")
                }
                NavigationLink{
                    Room_6(appstate: $appstate)
                }label: {
                    Text("goto 6[update]")
                }
                Stepper("top: \(fromtop)",value: $fromtop)
                Stepper("left: \(fromleft)", value: $fromleft)
                Button{
                    alertc = fromtop == 3 && fromleft == 5
                    alert = true
                }label: {
                    Text("pull")
                }
                
                
            }
            .alert(Text(alertc ? "The bookshelf flips around, bringing you to room 4":"Nothing happens"), isPresented: $alert){
                
                    
                if(alertc){
                    NavigationLink{
                        Room_4(appstate: $appstate)
                    }label: {
                        Text("ok")
                    }
                }else{
                    Button{
                        alert.toggle()
                    }label: {
                        Text("ok")
                    }
                }
                
            }
        }
    }
}

#Preview {
    @Previewable @State var appstate = Appstate(inventoryItems: [], solvedPuzzles: [], notebooktext: "")
    Room_2(appstate: $appstate)
}
