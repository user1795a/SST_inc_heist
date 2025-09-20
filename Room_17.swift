//
//  Room_16.swift
//  SST_inc_heist
//
//  Created by Wang Yuzhi Ryan on 18/9/25.
//this room is another bedroom

import SwiftUI

struct Room_17: View {
    @Binding var appstate : Appstate
    var body: some View {
        Text("You enter a bedroom")
        NavigationStack{
            VStack{
                NavigationLink{
                    Room_4(appstate: $appstate)
                }label: {
                    Text("Go to bookshelf")
                }
            }
        }
    }
}

//#Preview {
//    Room_16()
//}
