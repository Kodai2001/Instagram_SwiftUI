//
//  ContentView.swift
//  InstagramSwiftUI
//
//  Created by system on 2021/10/29.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    @State var selectedIndex = 0
    
    var body: some View {
        Group {
            // if not logged in show login
            if viewModel.userSession == nil {
                LoginView()
            } else {
            // else show main interface
                if let user = viewModel.currentUser {
                    MainTabView(user: user, selectedIndex: $selectedIndex)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
