
import SwiftUI

struct Room_1: View {
    @Binding var appstate : Appstate
    var body: some View {
        NavigationStack{
            VStack{
                if (appstate.onreturntrip){
                    Text("you won!")
                    Button{
                        appstate = .init(inventoryItems: [], solvedPuzzles: [], notebooktext: "YOU WON!")
                    }label: {
                        Text("Reset game")
                    }
                }else{
                    Text("As you enter the Bulding, you notice the lobby contains just 2 things: a door and a desk. There is also a small notebook on the floor")
                    NavigationLink{
                        Room_2(appstate: $appstate)
                    }label: {
                        Text("Investigate office desk")
                    }
                    NavigationLink{
                        Room_3(appstate: $appstate)
                    }label: {
                        Text("Walk through the door")
                    }
                    if (!appstate.notebookfound){
                        Button{
                            appstate.notebookfound = true
                        }label:{
                            Text("pick up notebook")
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    @Previewable @State var appstate = Appstate(inventoryItems: [], solvedPuzzles: [], notebooktext: "")
    Room_1(appstate: $appstate)
}

