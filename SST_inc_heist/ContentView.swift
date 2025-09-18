//
//  ContentView.swift
//  SST_inc_heist
//
//  Created by Wang Yuzhi Ryan on 1/9/25.
//

import SwiftUI
struct Appstate{
    var inventoryItems: Array<String>;
    var notes: String = "If E=mc^2 does that mean mc^2 = E?\nthis text is a placeholder";
    var solvedPuzzles: Array<Int>;
}
struct ContentView: View {
    @Binding var appstate : Appstate
    var body: some View {
        NavigationStack{
            TabView{
                Tab("notebook",systemImage: "book.closed.fill"){
                    Notebookview(appstate: $appstate)
                }
            }
        }
    }
}

#Preview {
    @Previewable @State var appstate = Appstate(inventoryItems: [], solvedPuzzles: [])
    ContentView(appstate: $appstate)
}
