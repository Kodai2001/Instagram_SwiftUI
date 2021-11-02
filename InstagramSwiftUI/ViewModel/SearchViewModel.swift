//
//  SearchViewModel.swift
//  InstagramSwiftUI
//
//  Created by system on 2021/11/02.
//

import SwiftUI

class SearchViewModel: ObservableObject {
    @Published var users = [User]()
    
    init() {
        fetchUsers()
    }
    
    func fetchUsers() {
        COLLECTION_USERS.getDocuments { snapshot, _ in
            guard let documents = snapshot?.documents else {return}
            self.users = documents.compactMap({try? $0.data(as: User.self)})
        }
    }
    
    func filteredUsers(_ query: String) -> [User] {
        let lowerCasedQuery = query.lowercased()
        return users.filter({$0.fullname.lowercased().contains(lowerCasedQuery) ||
                                $0.username.contains(lowerCasedQuery)})
    }
    
}
