
import SwiftUI

struct Room_10: View {
    @Binding var appstate : Appstate
    var body: some View {
        NavigationStack {
            if (appstate.inventoryItems.contains("key") && appstate.inventoryItems.contains("warrant")){
                NavigationLink{
                    Room_9(appstate: $appstate)
                }label: {
                    Text("enter the locked room (key and warrant required)")
                        .foregroundStyle(.green)
                }
            } else {
                Text("enter the locked room (key and warrant required)")
                    .foregroundStyle(.red)
            }
            NavigationLink{
                Room_5(appstate: $appstate)
            }label: {
                Text("Go to room 5 [update]")
            }
            NavigationLink{
                Room_6(appstate: $appstate)
            }label: {
                Text("Go to room 6 [update]")
            }
        }
    }
}

#Preview {
    @Previewable @State var appstate = Appstate(inventoryItems: [], solvedPuzzles: [], notebooktext: "")
    Room_10(appstate: $appstate)
}
