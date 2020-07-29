//
//  BuildList.swift
//  Jhin-Build
//
//  Created by Siya Yang on 2020-07-28.
//  Copyright © 2020 Siya Yang. All rights reserved.
//

import SwiftUI

struct BuildList: View {
    @State var selected = ""
    var buildCombo : BuildCombo
    var body: some View {
        VStack(alignment:.leading){
            //Select Build Combo
            ForEach(
                buildCombo.buildOptions
            ){ buildOp in
                BuildRow(
                    selected: self.$selected,
                    buildOption: buildOp
                )
            }
            
        }
    }
}

//struct BuildList_Previews: PreviewProvider {
//    static var previews: some View {
//        BuildList( buildCombo: BuildCombo.init(buildOptions: [BuildOption.init(title: "ds", steps: "steps", items: ["sds","dsds"])]))
//    }
//}
