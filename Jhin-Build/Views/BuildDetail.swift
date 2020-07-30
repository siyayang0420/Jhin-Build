//
//  BuildDetail.swift
//  Jhin-Build
//
//  Created by Siya Yang on 2020-07-28.
//  Copyright © 2020 Siya Yang. All rights reserved.
//

import SwiftUI

struct BuildDetail: View {
    var buildCombo : BuildCombo
    var body: some View {
        BuildList(buildCombo: self.buildCombo)
    }
}

struct BuildDetail_Previews: PreviewProvider {
    static var previews: some View {
        BuildDetail(buildCombo: BuildCombo.init(buildOptions: [BuildOption.init(steps: "Step 1", title: "dfd", items: ["dsd","sds"])]))
    }
}
