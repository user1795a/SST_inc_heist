
import SwiftUI

struct Puzzle_5: View {
    @Binding var appstate : Appstate
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        Button{
            appstate.solvedPuzzles.append(5)
        }label: {
            Text("Simulate solve")
        }
    }
}

#Preview {
    @Previewable @State var appstate = Appstate(inventoryItems: [], solvedPuzzles: [], notebooktext: "")
    Puzzle_5(appstate: $appstate)
}
