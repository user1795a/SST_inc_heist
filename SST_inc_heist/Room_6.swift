
import SwiftUI

struct Room_6: View {
    @Binding var appstate : Appstate
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        //when creating, update room 10
        //when creating, update room 12
        //when creating, update room 2
    }
}

#Preview {
    @Previewable @State var appstate = Appstate(inventoryItems: [], solvedPuzzles: [], notebooktext: "")
    Room_6(appstate: $appstate)
}
