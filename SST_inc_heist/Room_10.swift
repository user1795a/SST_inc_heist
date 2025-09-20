
import SwiftUI
//is a box
struct Room_10: View {
    @Binding var appstate : Appstate
    var body: some View {
        NavigationStack {
            VStack{
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
                    Text("zoom out to bedroom a")
                }
                NavigationLink{
                    Room_6(appstate: $appstate)
                }label: {
                    Text("Go to bathroom")
                }
            }
        }
    }
}

#Preview {
    @Previewable @State var appstate = Appstate(inventoryItems: [], solvedPuzzles: [], notebooktext: "")
    Room_10(appstate: $appstate)
}
