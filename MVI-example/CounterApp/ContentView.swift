//
//  ContentView.swift
//  MVI-example
//
//  Created by Kyeongmo Yang on 6/18/24.
//

import SwiftUI

struct ContentView: View {
    @State private var container: CounterContainer
    
    init(container: CounterContainer) {
        self._container = State(wrappedValue: container)
    }
    
    var body: some View {
        VStack {
            Text("Count: \(container.state.count)")
                .font(.largeTitle)
                .padding()
            
            HStack {
                Button(action: {
                    container.send(.decrement)
                }) {
                    Text("-")
                        .font(.largeTitle)
                        .frame(width: 60, height: 60)
                        .background(Color.red)
                        .foregroundColor(.white)
                        .clipShape(Circle())
                }
                .padding()
                
                Button(action: {
                    container.send(.increment)
                }) {
                    Text("+")
                        .font(.largeTitle)
                        .frame(width: 60, height: 60)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .clipShape(Circle())
                }
                .padding()
            }
        }
    }
}


#Preview {
    ContentView(container: .init(state: .init(count: 0), intent: CounterIntent()))
}
