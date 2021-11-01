//
//  InstagramSwiftUIApp.swift
//  InstagramSwiftUI
//
//  Created by system on 2021/10/29.
//

import SwiftUI
import Firebase

@main
struct InstagramSwiftUIApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(AuthViewModel.shared)
            
        }
    }
}
