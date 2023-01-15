//
//  FeedView.swift
//  TwitterClone
//
//  Created by Sebastian Cioată on 15.01.2023.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        
        ScrollView{
            LazyVStack{
                ForEach(0 ... 20, id: \.self){
                    _ in
                    TweetRowView()
                }
            }
        }
        
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
