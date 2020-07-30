//
//  ContentViewCo.swift
//  Jhin-Build
//
//  Created by Siya Yang on 2020-07-29.
//  Copyright © 2020 Siya Yang. All rights reserved.
//

import SwiftUI

struct ContentViewCo: View {
      let buildCombo = Bundle.main.decode([BuildCombo].self, from: "buildData.json")
      var body: some View {
          VStack{
              ScrollView(.vertical, showsIndicators: false) {
                  VStack(){
                      ForEach(self.buildCombo){ combo in
                          BuildDetailCo(buildCombo: combo)
                      }
                  }
                  Button(action: {
                      //convert to string and add to fav list page
                  }){
                      Text("Add to Favourite")
                          .frame(width: UIScreen.main.bounds.width-50 , height: 50)
                          .background(Color.black)
                          .foregroundColor(.white)
                          .cornerRadius(10)
                  }
                  
              }
          }
      }
}

struct ContentViewCo_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewCo()
    }
}
