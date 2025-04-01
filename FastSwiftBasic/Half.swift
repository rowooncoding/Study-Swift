//
//  Half.swift
//  FastSwiftBasic
//
//  Created by 이로운 on 3/31/25.
//

import SwiftUI

struct Half: View {
    
    let names: [String] = ["김", "이", "최"]
    
    var body: some View {
        List {
            ForEach(names, id: \.self) { name in
                
                Text(sayHello(to: name))
            }
        }
    }
    
    func sayHello(to name: String) -> String {
        
        if(name == "김") {
            return "다시오셨군요 Hello, \(name)"
        }
        
        return "Hello, \(name)"
    }
}

#Preview {
    Half()
}
