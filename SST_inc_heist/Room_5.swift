//this room is a bedroom a
import SwiftUI

struct Room_5: View {
    @Binding var appstate : Appstate
    var body: some View {
        NavigationStack{
            VStack{
                NavigationLink{
                    Room_11(appstate: $appstate)
                }label: {
                    Text("enter door")
                }
                NavigationLink{
                    Room_10(appstate: $appstate)
                }label: {
                    Text("Investigate box")
                }
            }
        }
    }
}

#Preview {
    @Previewable @State var appstate = Appstate(inventoryItems: [], solvedPuzzles: [], notebooktext: "")
    Room_5(appstate: $appstate)
}
