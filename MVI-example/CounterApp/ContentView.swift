//
//  ContentView.swift
//  MVI-example
//
//  Created by Kyeongmo Yang on 6/18/24.
//

import SwiftUI

struct ContentView: View {
    @State private var state = CounterState(count: 0)
    private var intent = CounterIntent()

    var body: some View {
        VStack {
            Text("Count: \(state.count)")
                .font(.largeTitle)
                .padding()

            HStack {
                Button(action: {
                    state = intent.reduce(state: state, action: .decrement)
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
                    state = intent.reduce(state: state, action: .increment)
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
    ContentView()
}
