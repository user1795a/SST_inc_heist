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
    var notebooktext: String;
    var notebookfound: Bool = false;
}
struct ContentView: View {
    @Binding var appstate : Appstate
    @State var bookimg : Int = 0
    @State var notebookimg : String = ""
    var body: some View {
        NavigationStack{
            TabView{
                if (appstate.notebookfound){
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
                }
                Tab("Inventory",systemImage: "house"){
                    InventoryView(appstate: $appstate)
                    var bookimg = 0
                }
                Tab("Home",systemImage: "house"){
                    Room_1(appstate: $appstate)
                    var bookimg = 0
                }
                
                //Ethan can you help me change the icon
                //and also figure out how the frame in Notebookview works
            }
        }
    }
}

#Preview {
    @Previewable @State var appstate = Appstate(inventoryItems: [], solvedPuzzles: [], notebooktext: "")
    ContentView(appstate: $appstate)
}

