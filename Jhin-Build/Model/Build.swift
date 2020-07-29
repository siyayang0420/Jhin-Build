//
//  Build.swift
//  Jhin-Build
//
//  Created by Siya Yang on 2020-07-28.
//  Copyright © 2020 Siya Yang. All rights reserved.
//

import SwiftUI

struct BuildCombo: Codable, Identifiable {
    var id = UUID()
    var buildOptions : [BuildOption]
}

struct BuildOption: Codable, Equatable, Identifiable {
    var id = UUID()
    var steps : String
    var title: String
    var items : [String]
}



