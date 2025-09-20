//this room is a secret room behind a bookshelf
import SwiftUI

struct Room_4: View {
    @Binding var appstate : Appstate
    var body: some View {
        NavigationStack{
            VStack{
                Text("Slightly dizzy from the door spinning, you notice there is a broken piece of glass on the floor. Suddenly, you hear a click sound. The door has locked itself.")
                if (!appstate.onreturntrip){
                    Button{
                        appstate.onreturntrip.toggle()
                    }label: {
                        Text("Investigate")
                    }
                }else{
                    Text("analysing...")
                    Text("Results:\n ")
                    Image("Image")
                }
                Text("Right now, your only choice is to go to the linked other building")
                NavigationLink{
                    Room_3(appstate: $appstate)
                }label: {
                    Text("go")
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    @Previewable @State var appstate = Appstate(inventoryItems: [], solvedPuzzles: [], notebooktext: "")
    Room_4(appstate: $appstate)
}
