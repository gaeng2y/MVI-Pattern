//
//  CounterIntent.swift
//  MVI-example
//
//  Created by Kyeongmo Yang on 6/18/24.
//

import Foundation

class CounterIntent {
    func reduce(state: CounterState, action: CounterAction) -> CounterState {
        switch action {
        case .increment:
            return CounterState(count: state.count + 1)
        case .decrement:
            return CounterState(count: state.count - 1)
        }
    }
}

enum CounterAction {
    case increment
    case decrement
}
