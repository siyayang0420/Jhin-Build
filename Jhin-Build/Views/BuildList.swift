//
//  BuildList.swift
//  Jhin-Build
//
//  Created by Siya Yang on 2020-07-28.
//  Copyright © 2020 Siya Yang. All rights reserved.
//

import SwiftUI
struct BuildList: View {
    @State var selectedString = ["" : ""]
    var buildCombo : BuildCombo
    var body: some View {
        VStack(alignment:.leading){
            //Select Build Combo
            ForEach(
                self.buildCombo.buildOptions
            ){ buildOp in
                BuildRow(selectedStrings: self.$selectedString, buildOption: buildOp)
            }
        }
    }
    

}

struct BuildList_Previews: PreviewProvider {
    static var previews: some View {
        BuildList(buildCombo: BuildCombo.init(buildOptions: [BuildOption.init(steps: "Step 1", title: "Hi", items: ["String","uuuu"]),BuildOption.init(steps: "Step 1", title: "33", items: ["Sgfhkdsfs","sfewe"])]))
    }
}
