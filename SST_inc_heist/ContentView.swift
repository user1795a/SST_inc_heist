//
//  ContentView.swift
//  SST_inc_heist
//
//  Created by Wang Yuzhi Ryan on 1/9/25.
//

import SwiftUI
struct Appstate{
    var inventoryItems: Array<String>;
    var solvedPuzzles: Array<Int>;
}
struct ContentView: View {
    @Binding var appstate : Appstate
    @State var bookimg : Int = 0
    @State var notebookimg : String = ""
    var body: some View {
        NavigationStack{
            TabView{
                if (bookimg) == 0{
                    Tab("notebook",systemImage: "book.closed.fill"){
                        Notebookview(appstate: $appstate)
                        var bookimg = 1
                    }
                } else if (bookimg) == 1{
                    Tab("notebook",systemImage: "book.fill"){
                        Notebookview(appstate: $appstate)
                    }
                }
                Tab("Home",systemImage: "house"){
                    ContentView(appstate: $appstate)
                    var bookimg = 0
                }
            }
        }
    }
}

#Preview {
    @Previewable @State var appstate = Appstate(inventoryItems: [], solvedPuzzles: [])
    ContentView(appstate: $appstate)
}

