//
//  ContentView.swift
//  SST_inc_heist
//
//  Created by Wang Yuzhi Ryan on 1/9/25.
//

import SwiftUI
struct Appstate{
}
struct ContentView: View {
    @Binding var appstate : Appstate
    var body: some View {
        NavigationStack{
            
        }
    }
}

#Preview {
    @Previewable @State var appstate = Appstate()
    ContentView(appstate: $appstate)
}
