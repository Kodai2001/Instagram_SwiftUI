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
            .padding([.leading, .bottom], 8)
            
            // post image
            Image("jackDorsey")
                .resizable()
                .scaledToFill()
                .frame(maxHeight: 440)
            
            // action button
            HStack(spacing: 16){
                Button(action: {}, label: {
                    Image(systemName: "heart")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20, height: 20)
                        .font(.system(size: 20))
                        .padding(4)
                })
                
                Button(action: {}, label: {
                    Image(systemName: "bubble.right")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20, height: 20)
                        .font(.system(size: 20))
                        .padding(4)
                })
                
                Button(action: {}, label: {
                    Image(systemName: "paperplane")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20, height: 20)
                        .font(.system(size: 20))
                        .padding(4)
                })
                
            }
            .padding(.leading, 4)
            .foregroundColor(.black)
            
            // caption
            Text("200 likes")
                .font(.system(size: 14, weight: .semibold))
                .padding(.leading, 8)
            
            HStack{
                Text("Jack Dorsey").font(.system(size: 14, weight: .semibold)) +
                Text("  Expect the unexpected. And whenever possible, be the unexpected.").font(.system(size: 15))
            }
            .padding(.horizontal, 8)
            
            Text("2d")
                .font(.system(size: 14))
                .foregroundColor(.gray)
                .padding([.leading, .top], 8)
                .padding(.top, -2)
        }
    }
}

struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell()
            .previewDevice("iPhone 12")
    }
}
