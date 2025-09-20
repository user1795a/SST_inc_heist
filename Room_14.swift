
import SwiftUI

struct Room_14: View {
    @Binding var appstate : Appstate
    @State var added: Bool = false
    var body: some View {
        NavigationStack{
            VStack{
                Text("As you enter the room, you notice a large wooden table in the center. On the table, you see a single, yellowed piece of paper.")
                if(added){
                    Text("Added to notebook")
                }else{
                    Text("129656")
                    Button{
                        appstate.notebooktext.append("129656\n")
                        added.toggle()
                    }label: {
                        Text("add to notebook")
                    }
                }
                Text("There is a computer on the table too.")
                if(appstate.solvedPuzzles.contains(4)){
                    NavigationLink{
                        Room_15(appstate: $appstate)
                    }label: {
                        Text("Turn on computer")
                    }
                }else{
                    NavigationLink{
                        Puzzle_4(appstate: $appstate)
                    }label: {
                        Text("Investigate")
                    }
                }
            }
        }
    }
}

#Preview {
    @Previewable @State var appstate = Appstate(inventoryItems: [], solvedPuzzles: [], notebooktext: "")
    Room_14(appstate: $appstate)
}
