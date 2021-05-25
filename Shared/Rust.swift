//
//  RustGreetings.swift
//  rust-poc (iOS)
//
//  Created by Felipe Cavalcanti on 24/05/21.
//

import Foundation

class Rust{
    func getURL(url: String) -> String {
        let result = rust_get(url)
        let swift_result = String(cString: result!)
        
        rust_free(UnsafeMutablePointer(mutating: result))
        return swift_result
    }
}
