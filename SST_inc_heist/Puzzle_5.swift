
import SwiftUI

struct Puzzle_5: View {
    @Binding var appstate : Appstate
    @State var guess:String = ""
    @State var alertShown: Bool = false
    var body: some View {
        NavigationStack{
            if (appstate.solvedPuzzles.contains(5)){
                Text("solved")
            }else{
                Link("-", destination: URL(string: "https://sites.google.com/s2025.ssts.edu.sg/bv-f/home")!)
                TextField("guess", text: $guess)
                    .frame(width: .infinity)
                Button{
                    if (guess.lowercased() == "not here"){
                        appstate.solvedPuzzles.append(5)
                    }else{
                        alertShown.toggle()
                    }
                }label: {
                    Text("guess")
                }
            }
        }
            .alert("Incorrect", isPresented: $alertShown){
                Button{
                    guess=""
                    alertShown.toggle()
                }label: {
                    Text("OK")
                }
            }
    }
}

#Preview {
    @Previewable @State var appstate = Appstate(inventoryItems: [], solvedPuzzles: [], notebooktext: "")
    Puzzle_5(appstate: $appstate)
}
