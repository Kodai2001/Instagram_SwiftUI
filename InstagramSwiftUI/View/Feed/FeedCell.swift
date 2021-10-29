//
//  FeedCell.swift
//  InstagramSwiftUI
//
//  Created by system on 2021/10/29.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack(alignment: .leading) {
            // user info
            HStack {
                Image("jackDorsey")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 36, height: 36)
                    .clipped()
                    .cornerRadius(18)
                
                Text("Jack Dorsey")
                    .font(.system(size: 14,
                                  weight: .semibold
                    ))
            }
            
            // post image
            Image("jackDorsey")
                .resizable()
                .scaledToFill()
                .frame(maxHeight: 440)
            
            // action button
            HStack(spacing: 8){
                Button(action: {}, label: {
                    Image(systemName: "heart")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 28, height: 28)
                        .font(.system(size: 20))
                }).padding(4)
                
                Button(action: {}, label: {
                    Image(systemName: "bubble.right")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 28, height: 28)
                        .font(.system(size: 20))
                }).padding(4)
                
                Button(action: {}, label: {
                    Image(systemName: "paperplane")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 28, height: 28)
                        .font(.system(size: 20))
                }).padding(4)
            }.foregroundColor(.black)
            
            // caption
            HStack{
                Text("Jack Dorsey").font(.system(size: 14, weight: .semibold)) +
                Text("  Expect the unexpected. And whenever possible, be the unexpected.").font(.system(size: 15))
            }
            
            Text("2d")
                .font(.system(size: 14))
                .foregroundColor(.gray)
                .padding(.top)
            
        }
    }
}

struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell()
    }
}
