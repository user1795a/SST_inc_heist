//
//  Room_9.swift
//  SST_inc_heist
//
//  Created by Wang Yuzhi Ryan on 18/9/25.
//

import SwiftUI

struct Room_9: View {
    @Binding var appstate : Appstate
    @State var showconfirmation : Bool = false
    var body: some View {
        NavigationStack{
           Text("You find a piece of paper. It says: 3 from the top and 5 form the left")
            if (showconfirmation){
                
                
                Button{
                    showconfirmation.toggle()
                }label: {
                    HStack{
                        Text("Added to notepad")
                        Text("×")
                            .foregroundStyle(.gray)
                    }
                    .background(Color.green)
                }
            }else{
                Button{
                    appstate.notebooktext += "3 from the top and 5 from the left\n"
                    showconfirmation.toggle()
                }label: {
                    Text("Add to notepad")
                }
            }
            NavigationLink{
                Room_2(appstate: $appstate)
            }label: {
                Text("go back to living room desk")
            }
            
        }
            }
}

#Preview {
    @Previewable @State var appstate = Appstate(inventoryItems: [], solvedPuzzles: [], notebooktext: "")
    Room_9(appstate: $appstate)
}
