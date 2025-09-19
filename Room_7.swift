//
//  Room_7.swift
//  SST_inc_heist
//
//  Created by Wang Yuzhi Ryan on 18/9/25.
//

import SwiftUI
import Foundation
import CryptoKit

func hash(_ input: String) -> String{ //hex because i can evaluate in terminal
    let inputData = Data(input.utf8)

    let digest = SHA256.hash(data: inputData)

    let hexString = digest.map { String(format: "%02x", $0) }.joined()
    
    return hexString
}

struct Room_7: View {
    @Binding var appstate : Appstate
    @State var unlocked: Bool = false;
    @State var attempt: String = "";
    @State var wrongAlert: Bool = false;
    var body: some View {
        NavigationStack{
            if(unlocked){
                NavigationLink{
                    Room_8(appstate: $appstate)
                }label: {
                    Text("Go to room 8")
                }
            } else {
                TextField("password", text: $attempt)
                    .frame(width: .infinity)
                Button{
                    if (hash(attempt) == "80cb57ab9f40442c1ff7a9c541d65741288860e86758789403f33bcee9a8716d"){
                        unlocked = true
                    } else {
                        wrongAlert = true;
                    }
                }label: {
                    Text("Attempt password")
                }
            }
            
        }
        .alert(Text("Wrong password!"), isPresented: $wrongAlert){
            Button{
                attempt = ""
                wrongAlert = false
            }label: {
                Text("OK")
            }
        }
    }
}

#Preview {
    @Previewable @State var appstate = Appstate(inventoryItems: [], solvedPuzzles: [], notebooktext: "")
    Room_7(appstate: $appstate)
}
