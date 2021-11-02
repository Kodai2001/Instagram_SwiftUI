//
//  UploadPostViewModel.swift
//  InstagramSwiftUI
//
//  Created by system on 2021/11/03.
//

import SwiftUI
import Firebase

class UploadPostViewModel: ObservableObject {
    
    func uplaodPost(caption: String, image: UIImage, completion: FirestoreCompletion) {
        guard let user = AuthViewModel.shared.currentUser else {return}
        
        ImageUploader.uploadImage(image: image, type: .post) { imageURL in
            let data = ["caption": caption,
                        "timestamp": Timestamp(date: Date()),
                        "likes": 0,
                        "imageURL": imageURL,
                        "ownerUid": user.id ?? "",
                        "ownerImageURL": user.profileImageURL,
                        "ownerUsername": user.username] as [String: Any]
            
            COLLECTION_POSTS.addDocument(data: data, completion: completion)
        }
    }
}
