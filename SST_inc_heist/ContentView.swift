//
//  ContentView.swift
//  SST_inc_heist
//
//  Created by Wang Yuzhi Ryan on 1/9/25.
//

import SwiftUI
import SwiftPersistence
struct State: Encodable, Decodable{
}
struct ContentView: View {
    @Persistent("State") var appstate = State()
    var body: some View {
        NavigationStack{
            
        }
    }
}

#Preview {
    ContentView()
}
