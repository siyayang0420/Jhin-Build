//
//  TestFile.swift
//  Jhin-Build
//
//  Created by Siya Yang on 2020-07-29.
//  Copyright © 2020 Siya Yang. All rights reserved.
//

import SwiftUI

struct TestFile: View {
    @State var isShow: [[Bool]] = [
        [false,true],
        [false,true],
        [false,true]
    ]
    
    var body: some View {
        ScrollView(.vertical){
            ForEach(0..<isShow.count, id: \.self){ index in
                ForEach(0..<self.isShow[index].count){ item in
                    Button(action: {
                        self.isShow[index][item].toggle()
                    }){
                        if self.isShow[index][item]{
                            Rectangle()
                                .foregroundColor(.blue)
                        } else {
                             Rectangle()
                                .foregroundColor(.green)
                        }
                    }
                    
                }
            }
        }
    }
}

struct TestFile_Previews: PreviewProvider {
    static var previews: some View {
        TestFile()
    }
}
