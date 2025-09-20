
import SwiftUI

struct Puzzle_4: View {
    @Binding var appstate : Appstate
    var body: some View {
        Button{
            appstate.solvedPuzzles.append(4)
        }label: {
            Text("Simulate solve")
        }
    }
}

#Preview {
    @Previewable @State var appstate = Appstate(inventoryItems: [], solvedPuzzles: [], notebooktext: "")
    Puzzle_4(appstate: $appstate)
}
