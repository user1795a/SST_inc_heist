
import SwiftUI

struct Room_5: View {
    @Binding var appstate : Appstate
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        //when creating, update room 10
    }
}

#Preview {
    @Previewable @State var appstate = Appstate(inventoryItems: [], solvedPuzzles: [], notebooktext: "")
    Room_5(appstate: $appstate)
}
