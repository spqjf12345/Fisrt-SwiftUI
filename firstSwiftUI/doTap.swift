//
//  doTap.swift
//  firstSwiftUI
//
//  Created by JoSoJeong on 2021/03/19.
//

import SwiftUI

struct doTap: View {
    @State var isHearted = true
    var body: some View {
      
        VStack{
            Button(action: {
                self.isHearted.toggle()
            }){
                if self.isHearted {
                    Text("❤️")
                    //Image("heart.fill")
                }else{
                    Text("💔")
                    //Image("heart")
                }
            }

            

        }
        
    }
}

struct doTap_Previews: PreviewProvider {
    static var previews: some View {
       doTap()
    }
}
