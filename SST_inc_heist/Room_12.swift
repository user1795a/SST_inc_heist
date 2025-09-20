//room is the balcony
import SwiftUI

struct Room_12: View {
    @Binding var appstate : Appstate
    @State var paperread: Bool = false
    @State var added:Bool = false
    var body: some View {
        NavigationStack{
            Text("There is a piece of paper in the box.")
            if (paperread){
                if (!added){
                    Text("The paper reads: warrant to enter room") //change?
                    Button{
                        added.toggle()
                        appstate.inventoryItems.append("warrant")
                    }label: {
                        Text("add to inventory")
                    }
                }
            }else{
                Button{
                    paperread.toggle()
                }label: {
                    Text("read paper")
                }
            }
            
            NavigationLink{
                Room_6(appstate: $appstate)
            }label: {
                Text("Go to bathroom")
            }
        }
    }
}

#Preview {
    @Previewable @State var appstate = Appstate(inventoryItems: [], solvedPuzzles: [], notebooktext: "")
    Room_12(appstate: $appstate)
}
