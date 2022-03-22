//
//  scrollingCollectionView.swift
//  firstSwiftUI
//
//  Created by JoSoJeong on 2021/03/20.
//

import SwiftUI

struct Box {
    var id: Int
    var title: String
    let imageUrl: String
}

struct scrollingCollectionView: View {
    
    let boxes:[Box] = [
    Box(id: 0, title: "red stuff", imageUrl: "red"),
        Box(id: 1, title: "yellow stuff", imageUrl: "yellow"),
        Box(id: 2, title: "green stuff", imageUrl: "green"),
        Box(id: 3, title: "blue stuff", imageUrl: "blue"),
        Box(id: 4, title: "black stuff", imageUrl: "black")
    
    ]
    
    var body: some View {
        ScrollView(.horizontal){
            HStack {
                ForEach(boxes, id: \.id) {
                    box in
                    BoxView(box: box)
                }
            }
        }.padding(20)
        .navigationTitle(Text("Collection View"))
    }
    
    
}

struct BoxView: View {
    let box: Box // 하나의 박스
    var body: some View {
        VStack {
            Image(box.imageUrl)
                .resizable().frame(width: 80, height: 80).cornerRadius(12)
            Text(box.title).font(.subheadline).fontWeight(.bold)
        }
    }
}

struct scrollingCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        scrollingCollectionView()
    }
}
