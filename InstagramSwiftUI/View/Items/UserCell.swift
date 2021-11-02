//
//  UserCell.swift
//  InstagramSwiftUI
//
//  Created by system on 2021/10/30.
//

import SwiftUI
import Kingfisher

struct UserCell: View {
    let user: User
    
    var body: some View {
        HStack {
            // image
            KFImage(URL(string: user.profileImageURL))
                .resizable()
                .scaledToFill()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
            
            // vstack -> username, fullname
            VStack(alignment: .leading) {
                Text(user.username)
                    .font(.system(size: 14, weight: .semibold))
                
                Text(user.fullname)
                    .font(.system(size: 14))
            }
            Spacer()
        }
    }
}
