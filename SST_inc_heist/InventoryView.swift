
import SwiftUI

struct InventoryView: View {
    @Binding var appstate : Appstate
    var body: some View {
        VStack {
            List{
                ForEach(appstate.inventoryItems, id: \.self){ item in
                    Text(item)
                }
            }
           
        }
        
    }
}

#Preview {
    @Previewable @State var appstate = Appstate(inventoryItems: [],solvedPuzzles: [], notebooktext: "")
    InventoryView(appstate: $appstate)
}
