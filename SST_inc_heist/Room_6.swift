//Bathroom
import SwiftUI

struct Room_6: View {
    @Binding var appstate : Appstate
    var body: some View {
        NavigationStack{
            VStack{
                if (appstate.solvedPuzzles.contains(1)){
                    NavigationLink{
                        Room_12(appstate: $appstate)
                    }label: {
                        Text("go to balcony")
                    }
                }else {
                    NavigationLink{
                        Puzzle_1(appstate: $appstate)
                    }label: {
                        Text("Door is locked. click here to lockpick")
                    }
                }
                Text("through a hole in the wall, you can see a box. ")
                NavigationLink{
                    Room_10(appstate: $appstate)
                }label: {
                    Text("investigate")
                }
            }
        }
        //when creating, update room 10
        //when creating, update room 12
        //when creating, update room 2
    }
}

#Preview {
    @Previewable @State var appstate = Appstate(inventoryItems: [], solvedPuzzles: [], notebooktext: "")
    Room_6(appstate: $appstate)
}
