import SwiftUI

struct Puzzle_2: View {
    @Binding var appstate: Appstate
    @State private var guess = ""
    @State private var wrongAlert = false
    let word = "red herring"
    var messyWord: some View {
        HStack(spacing: 0) {
            ForEach(Array(word), id: \.self) { letter in
                Text(String(letter))
                    .font(.system(size: 36, weight: .bold, design: .serif))
                    .rotationEffect(.degrees(Double.random(in: -20...20)))
                    .offset(x: CGFloat.random(in: -5...5), y: CGFloat.random(in: -5...5))
                    .blur(radius: Double.random(in: 0...2))
            }
        }
    }
    
    var body: some View {
        VStack(spacing: 30) {
            if appstate.solvedPuzzles.contains(5) {
                Text("Puzzle solved; click back")
            } else {
                Text("What is this word:")
                messyWord
                
                TextField("", text: $guess)
                    .background(.gray)
                
                Button("submit") {
                    if guess.lowercased() == word {
                        appstate.solvedPuzzles.append(5)
                    } else {
                        wrongAlert = true
                    }
                }
            }
        }
        .alert("Incorrect", isPresented: $wrongAlert) {
            Button("OK") {
                guess = ""
                wrongAlert = false
            }
        }
    }
}

#Preview {
    @Previewable @State var appstate = Appstate(inventoryItems: [], solvedPuzzles: [], notebooktext: "")
    Puzzle_2(appstate: $appstate)
}
