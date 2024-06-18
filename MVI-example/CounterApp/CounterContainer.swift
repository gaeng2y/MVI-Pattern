//
//  CounterContainer.swift
//  MVI-example
//
//  Created by Kyeongmo Yang on 6/18/24.
//

import Foundation
import Observation

protocol CounterContainerProtocol {
    var state: CounterState { get }
    func send(_ action: CounterAction)
}

@Observable
class CounterContainer: CounterContainerProtocol {
    private(set) var state: CounterState
    private let intent: CounterIntentProtocol
    
    init(state: CounterState, intent: CounterIntentProtocol) {
        self.state = state
        self.intent = intent
    }
    
    func send(_ action: CounterAction) {
        state = intent.reduce(state: state, action: action)
    }
}
