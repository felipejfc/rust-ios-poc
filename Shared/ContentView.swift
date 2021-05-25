//
//  ContentView.swift
//  Shared
//
//  Created by Felipe Cavalcanti on 24/05/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let rustGreetings = RustGreetings()
        Text(rustGreetings.sayHello(to: "someone"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
