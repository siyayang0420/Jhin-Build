//
//  BuildListCo.swift
//  Jhin-Build
//
//  Created by Siya Yang on 2020-07-29.
//  Copyright © 2020 Siya Yang. All rights reserved.
//

import SwiftUI

struct BuildListCo: View {
    @State var selected : [[Bool]] = [
        [false,true],
        [false,true],
        [false,true]
    ]
    var buildCombo : BuildCombo
    var body: some View {
        VStack(alignment:.leading){
            //Select Build Combo
            ForEach(
                buildCombo.buildOptions
            ){ buildOp in
                BuildRowCo(selected: self.selected, buildOption: buildOp)
            }
        }

    }
}

struct BuildListCo_Previews: PreviewProvider {
    static var previews: some View {
        BuildListCo(buildCombo: BuildCombo.init(buildOptions: [BuildOption.init(steps: "Step 1", title: "dsfs", items: ["String","fffe"])]))
    }
}
