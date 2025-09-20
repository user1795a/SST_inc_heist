
import SwiftUI

struct Puzzle_4: View {
    @Binding var appstate : Appstate
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        //update room 16 on create
        //update roomm 17 on create
    }
}

#Preview {
    @Previewable @State var appstate = Appstate(inventoryItems: [], solvedPuzzles: [], notebooktext: "")
    Puzzle_4(appstate: $appstate)
}
