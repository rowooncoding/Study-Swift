//
//  Function.swift
//  FastSwiftBasic
//
//  Created by 이로운 on 3/31/25.
//

import SwiftUI

struct Function: View {
    
    @State var inputNumber: Int = 4
    
    var body: some View {
        VStack {
            Text("Input Number is \(inputNumber)")
            
            Button {
                inputNumber = plusFive(with: inputNumber)
            } label: {
                Text("+5")
            }
        }
    }
    
    func plusFive(with param: Int) -> Int {
        return param + 5
    }
}

#Preview {
    Function()
}
