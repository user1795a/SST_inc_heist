//
//  Room_2.swift
//  SST_inc_heist
//
//  Created by Wang Yuzhi Ryan on 19/9/25.
//

import SwiftUI

struct Room_2: View {
    @Binding var appstate : Appstate
    var body: some View {
        Text("insert room here")
        //Update room 9 on complete (for narrative)
    }
}

#Preview {
    @Previewable @State var appstate = Appstate(inventoryItems: [], solvedPuzzles: [])
    Room_2(appstate: $appstate)
}
