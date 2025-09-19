//
//  Notebookview.swift
//  SST_inc_heist
//
//  Created by Wang Yuzhi Ryan on 18/9/25.
//

import SwiftUI

struct Notebookview: View {
    @Binding var appstate : Appstate
    var body: some View {
        TextEditor(text:$appstate.notebooktext)
            .frame(width: .infinity, height: .infinity)
    }
}

//#Preview {
//    Notebookview()
//}
