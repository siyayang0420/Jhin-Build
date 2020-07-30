//
//  BuildRowCo.swift
//  Jhin-Build
//
//  Created by Siya Yang on 2020-07-29.
//  Copyright © 2020 Siya Yang. All rights reserved.
//

import SwiftUI

struct BuildRowCo: View {
    @State var selected: [[Bool]] = [
        [false,true],
        [false,true],
        [false,true]
    ]
    var buildOption : BuildOption
    var body: some View {
        VStack(alignment: .center){
            //Headline
            HStack{
                VStack(alignment: .leading){
                    Text(buildOption.steps)
                        .font(.headline)
                    
                    Text(buildOption.title)
                        .font(.subheadline)
                        .foregroundColor(.black)
                }.padding(.leading)
                Spacer()
            }
            
            
            VStack(alignment: .leading, spacing: 20){
                //Item List
                ForEach(0..<self.selected.count, id: \.self){index in
                    ForEach(0..<self.selected[index].count){ item in
                        Button(action: {
                            self.selected[index][item].toggle()
                        }){
                            VStack{
                                HStack{
                                    Text("buildItem")
                                        .font(.subheadline)
                                        .foregroundColor(.black)
                                    Spacer()
                                    
                                    //Radio Buttons
                                    if self.selected[index][item]{
                                        ZStack{
                                            Circle()
                                                .fill(Color.black)
                                                .frame(width: 15, height: 15)
                                            Circle()
                                                .stroke(Color.black, lineWidth:2)
                                                .frame(width: 20, height: 20)
                                        }
                                        
                                    }
                                    else {
                                        ZStack{
                                            Circle()
                                                .fill(Color.black.opacity(0.2))
                                                .frame(width: 15, height: 15)
                                            Circle()
                                                .stroke(Color.black.opacity(0), lineWidth:2)
                                                .frame(width: 20, height: 20)
                                        }
                                    }
                                }.foregroundColor(.black)
                                    .frame(width: UIScreen.main.bounds.width-100)
                                
                                Rectangle()
                                    .frame(width: UIScreen.main.bounds.width-100, height: 1)
                                    .foregroundColor(.gray)
                                    .opacity(0.2)
                            }
                        }.padding(.top)
                        
                    }
                    
                }
            }
            .padding(.vertical)
            .padding(.horizontal,25)
        }
    }
}

struct BuildRowCo_Previews: PreviewProvider {
    static var previews: some View {
        BuildRowCo(buildOption: BuildOption.init(steps: "Step 1", title: "11", items: ["String","fdffd"]))
    }
}
