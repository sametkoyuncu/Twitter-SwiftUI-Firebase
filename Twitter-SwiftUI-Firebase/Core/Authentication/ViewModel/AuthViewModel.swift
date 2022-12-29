//
//  AuthViewModel.swift
//  Twitter-SwiftUI-Firebase
//
//  Created by fmss on 19.12.2022.
//

import SwiftUI
import Firebase

class AuthViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    init() {
        self.userSession = Auth.auth().currentUser
        
    }
    
    func login(withEmail email: String, password: String) {
        print("DEBUG: login with email: \(email)")
    }
    
    func register(withEmail email: String, password: String, fullname: String, username: String) {
        print("DEBUG: register with email: \(email)")
    }
}
