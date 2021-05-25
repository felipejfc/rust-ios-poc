//
//  ContentView.swift
//  Shared
//
//  Created by Felipe Cavalcanti on 24/05/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let rust = Rust()
        Text(rust.getURL(url: "https://httpbin.org/get"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
