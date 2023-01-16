//
//  NewTweetView.swift
//  TwitterClone
//
//  Created by Sebastian Cioată on 16.01.2023.
//

import SwiftUI

struct NewTweetView: View {
    
    @State private var caption = ""
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack{
            HStack{
                Button{
                    presentationMode.wrappedValue.dismiss()
                }label:{
                    Text("Cancel")
                        .foregroundColor(Color(.systemBlue))
                }
                Spacer()
                Button{
                    print("Tweet")
                }label:{
                    Text("Tweet")
                        .bold()
                        .padding(.horizontal)
                        .padding(.vertical,8)
                        .background(Color(.systemBlue))
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                }
            }
            .padding()
          
            
            HStack(alignment: .top){
                Circle()
                    .frame(width: 64, height: 64)
                    .padding()
                //TextArea("Test", text: $caption)
                TextField("What's happening?", text:$caption)
                    .padding(.horizontal,8)
                    .padding(.vertical, 12)
                
               
            }
            Spacer()
            .padding()
        }
    }
}

struct NewTweetView_Previews: PreviewProvider {
    static var previews: some View {
        NewTweetView()
    }
}
