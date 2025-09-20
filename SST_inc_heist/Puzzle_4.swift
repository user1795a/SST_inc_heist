
import SwiftUI

struct Puzzle_4: View {
    @Binding var appstate : Appstate
    @State var guess = ""
    @State var wrongAlert : Bool = false
    var body: some View {
        VStack{
            if (appstate.solvedPuzzles.contains(4)){
                Text("correct!\nclick back")
            }else{
                Image("hack")
                TextField("Guess", text: $guess)
                    .frame(width: .infinity)
                Button{
                    if (guess.lowercased() == "ch4n93m3"){
                        appstate.solvedPuzzles.append(4)
                    }else{
                        wrongAlert.toggle()
                    }
                }label: {
                    Text("Log in")
                }
            }
        }
        .alert(Text("Wrong password!"), isPresented: $wrongAlert){
            Button{
                guess = ""
                wrongAlert = false
            }label: {
                Text("OK")
            }
        }
    }
}

#Preview {
    @Previewable @State var appstate = Appstate(inventoryItems: [], solvedPuzzles: [], notebooktext: "")
    Puzzle_4(appstate: $appstate)
}
