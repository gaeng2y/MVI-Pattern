//
//  MVI_exampleApp.swift
//  MVI-example
//
//  Created by Kyeongmo Yang on 6/18/24.
//

import SwiftUI

@main
struct CounterApp: App {
    var body: some Scene {
        WindowGroup {
            let initialState = CounterState(count: 0)
            let intent = CounterIntent()
            let container = CounterContainer(state: initialState, intent: intent)
            ContentView(container: container)
        }
    }
}
