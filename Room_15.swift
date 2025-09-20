
import SwiftUI
//room is a ocmputer
struct Room_15: View {
    @Binding var appstate : Appstate
    var body: some View {
        NavigationStack{
            VStack{
                Text("You turn on the computer. The screen flickers to life and a message appears on the screen:")
                if (appstate.solvedPuzzles.contains(5)){
                    Text("go to the bedroom")
                    NavigationLink{
                        Room_7(appstate: $appstate)
                    }label: {
                        Text("go to referenced room")
                    }
                }else{
                    Text("Go to the #######")
                    NavigationLink{
                        Puzzle_5(appstate: $appstate)
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
    Room_15(appstate: $appstate)
}
