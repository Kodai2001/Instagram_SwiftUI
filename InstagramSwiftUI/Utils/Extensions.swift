//
//  Extensions.swift
//  InstagramSwiftUI
//
//  Created by system on 2021/10/30.
//

import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
