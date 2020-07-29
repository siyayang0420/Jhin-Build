//
//  BuidRow.swift
//  Jhin-Build
//
//  Created by Siya Yang on 2020-07-28.
//  Copyright © 2020 Siya Yang. All rights reserved.
//

import SwiftUI

struct BuildRow: View {
    @Binding var selected : String
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
                ForEach(buildOption.items, id: \.self){buildItem in
                    Button(action: {
                        self.selected = buildItem
                    }){
                        VStack{
                            HStack{
                                //Dish item
                                Text(buildItem)
                                    .font(.subheadline)
                                    .foregroundColor(.black)
                                
                                Spacer()
                                
                                //Radio buttons
                                ZStack{
                                    Circle().fill(self.selected == buildItem ? Color.black : Color.black.opacity(0.2))
                                        .frame(width: 15, height: 15)
                                    
                                    if self.selected == buildItem {
                                        Circle().stroke(Color.black, lineWidth:2).frame(width: 20, height: 20)
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
            .padding(.vertical)
            .padding(.horizontal,25)
        }
    }
}



//struct BuildRow_Previews: PreviewProvider {
//    static var previews: some View {
//        BuildRow(selected: Binding.constant("fss"), buildOption: BuildOption.init(steps: "step1", title: "dsda", items: ["fss","dfs"]))
//    }
//}

