//
//  User.swift
//  InstagramSwiftUI
//
//  Created by system on 2021/11/02.
//

import FirebaseFirestoreSwift

struct User: Identifiable, Decodable {
    let username: String
    let email: String
    let fullname: String
    let profileImageURL: String
    @DocumentID var id: String?
    var isFollowed: Bool? = false
    
    var isCurrentUser: Bool {return AuthViewModel.shared.userSession?.uid == id}
}
