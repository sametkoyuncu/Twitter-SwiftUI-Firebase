//
//  Twitter_SwiftUI_FirebaseApp.swift
//  Twitter-SwiftUI-Firebase
//
//  Created by fmss on 29.11.2022.
//

import SwiftUI
import Firebase

@main
struct Twitter_SwiftUI_FirebaseApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }
    }
}
