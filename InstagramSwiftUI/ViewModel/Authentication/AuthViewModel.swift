//
//  AuthViewModel.swift
//  InstagramSwiftUI
//
//  Created by system on 2021/11/01.
//

import SwiftUI
import Firebase

class AuthViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    @Published var currentUser: User?
    
    static let shared = AuthViewModel()
    
    init() {
        userSession = Auth.auth().currentUser
        fetchUser()
    }
    
    func login(withEmail email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let error = error {
                print("DEBUG: Login failed \(error.localizedDescription)")
                return
            }
            
            guard let user = result?.user else {return}
            self.userSession = user
            self.fetchUser()
        }
    }
    
    func register(withEmail email: String, password: String, image: UIImage?, fullname: String, username: String) {
        
        guard let image = image else {return}
        ImageUploader.uploadImage(image: image, type: .profile) { imageURL in
            Auth.auth().createUser(withEmail: email, password: password) { result, error in
                if let error = error {
                    print(error.localizedDescription)
                    return
                }
                
                guard let user = result?.user else {return}
                self.userSession = user
                print("Successfuly registered user...")
                
                let data = ["email": email,
                            "username": username,
                            "fullname": fullname,
                            "profileImageURL": imageURL,
                            "uid": user.uid]
                
                COLLECTION_USERS.document(user.uid).setData(data) { _ in
                    print("Successfuly uploaded user data...")
                    self.userSession = user
                    self.fetchUser()
                }
            }
        }
    }
    
    func signout() {
        self.userSession = nil
        try? Auth.auth().signOut()
    }
    
    func resetPassword() {
        
    }
    
    func fetchUser() {
        guard let uid = userSession?.uid else {return}
        COLLECTION_USERS.document(uid).getDocument { snapshot, _ in
            guard let user = try? snapshot?.data(as: User.self) else {return}
            self.currentUser = user
        }
    }
}
