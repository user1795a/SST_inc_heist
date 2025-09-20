//
//  Puzzle_2.swift
//  SST_inc_heist
//
//  Created by Wang Yuzhi Ryan on 18/9/25.
//

import SwiftUI
import UIKit


struct Puzzle_3: View {
    @Binding var appstate : Appstate
    @State var lowern:String = ""
    @State var uppern:String = ""
    @State var guess:Int  = 50
    var body: some View {
        if appstate.solvedPuzzles.contains(3) {
            Text("complete- press back")
        }else{
            VStack{
                Text("The answer is between 1 and 100")
                HStack{
                    VStack{
                        Text("lower")
                        Text("0")
                        Text(lowern)
                    }
                    VStack{
                        Stepper("\(guess)",value: $guess)
                            .frame(width:150)
                        Button{
                            if (guess == 62){
                                appstate.solvedPuzzles.append(3)
                            }else if (guess<62){
                                lowern+="\(guess)\n"
                            }else if (guess>62){
                                uppern+="\(guess)\n"
                            }else{
                                //trigger error, probably
                            }
                        }label:{
                           Text("guess")
                        }
                    }
                    VStack{
                        Text("higher")
                        Text("101")
                        Text(uppern)
                    }
                }
            }
        }
        
        //Update room 8 on complete (for narrative)
    }
}
#Preview {
    @Previewable @State var appstate = Appstate(inventoryItems: [], solvedPuzzles: [], notebooktext: "")
    Puzzle_3(appstate: $appstate)
}
