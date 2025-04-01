//
//  Loop.swift
//  FastSwiftBasic
//
//  Created by 이로운 on 3/31/25.
//

import SwiftUI

struct Loop: View {
    
    let names: [String] = ["a", "b", "c", "d", "e", "f"]
    
    var body: some View {
        VStack {
            ForEach(names, id: \.self) { name in
                Text(name)
            }
        }
    }
}

#Preview {
    Loop()
}
