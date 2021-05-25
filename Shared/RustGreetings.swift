//
//  RustGreetings.swift
//  rust-poc (iOS)
//
//  Created by Felipe Cavalcanti on 24/05/21.
//

import Foundation

class RustGreetings{
    func sayHello(to: String) -> String {
        let result = rust_greeting(to)
        let swift_result = String(cString: result!)
        
        rust_greeting_free(UnsafeMutablePointer(mutating: result))
        return swift_result
    }
}
