//
//  SST_inc_heistApp.swift
//  SST_inc_heist
//
//  Created by Wang Yuzhi Ryan on 1/9/25.
//

import SwiftUI

@main
struct SST_inc_heistApp: App {
    var body: some Scene {
        WindowGroup {
            @State var appstate = Appstate(inventoryItems: [])
            ContentView(appstate: $appstate)
        }
    }
}
