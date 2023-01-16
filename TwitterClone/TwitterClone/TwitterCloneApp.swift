//
//  TwitterCloneApp.swift
//  TwitterClone
//
//  Created by Sebastian Cioată on 15.01.2023.
//

import SwiftUI
import Firebase


@main
struct TwitterCloneApp: App {

    init(){
        FirebaseApp.configure()
    }

    var body: some Scene {
        WindowGroup {
            NavigationView{
                LoginView()
            }
        }
    }
}
