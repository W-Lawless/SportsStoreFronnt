//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by W Lawless on 3/29/21.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
