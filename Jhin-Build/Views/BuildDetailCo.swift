//
//  BuildDetailCo.swift
//  Jhin-Build
//
//  Created by Siya Yang on 2020-07-29.
//  Copyright © 2020 Siya Yang. All rights reserved.
//

import SwiftUI

struct BuildDetailCo: View {
    @State var selected : [[Bool]] = [
        [false,true],
        [false,true],
        [false,true]
    ]
    var buildCombo : BuildCombo
    var body: some View {
        BuildListCo(selected:selected, buildCombo: self.buildCombo)
    }
}

struct BuildDetailCo_Previews: PreviewProvider {
    static var previews: some View {
        BuildDetailCo(buildCombo: BuildCombo.init(buildOptions: [BuildOption.init(steps: "Step 1", title: "dfd", items: ["dsd","sds"])]))
    }
}
