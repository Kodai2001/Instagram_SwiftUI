//
//  UserCell.swift
//  InstagramSwiftUI
//
//  Created by system on 2021/10/30.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack {
            // image
            Image("jackDorsey")
                .resizable()
                .scaledToFill()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
            
            // vstack -> username, fullname
            VStack(alignment: .leading) {
                Text("Jack")
                    .font(.system(size: 14, weight: .semibold))
                
                Text("Jack Dorcey")
                    .font(.system(size: 14))
            }
            Spacer()
        }
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
    }
}
