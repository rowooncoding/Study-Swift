//
//  Nil.swift
//  FastSwiftBasic
//
//  Created by 이로운 on 4/1/25.
//

import SwiftUI

struct Nil: View {
    
    var name: String = "Rowon"
    var petName: String?
    
    var name2: String = "Bami"
    var petName2: String = "coco"
    
    var body: some View {
        VStack {
            Text("이름은 \(name) 입니다.")
            Text("이름은 \(name2) 입니다. 반려동물 이름은 \(petName2)")
        }
        .onAppear {
            print("이름은 \(name) 입니다. 반려동물 이름은 \(petName)")
        }
    }
}

#Preview {
    Nil()
}
