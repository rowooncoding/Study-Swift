//
//  Diff.swift
//  FastSwiftBasic
//
//  Created by 이로운 on 4/1/25.
//

import SwiftUI

struct Diff: View {
    
    let myCar = Car(name: "밴츠", owner: "엄마")
    let myKar = Kar(name: "아우디", owner: "로운")
    
    var body: some View {
        VStack {
            Text("\(myCar.name)의 주인은 \(myCar.owner)")
            
            Button {
                let broCar = myKar
                broCar.name = "bmw"
                broCar.owner = "친구"
                
                myKar.sayHi()
            } label: {
                Text("시동")
            }

        }
    }
}

struct Car {
    var name: String
    var owner: String
    
    func sayHi() {
        print("Hi, I am \(owner)")
    }
}

class Kar {
    var name: String
    var owner: String
    
    init(name: String, owner: String) {
        self.name = name
        self.owner = owner
    }
    
    func sayHi() {
        print("Hi, I am \(owner)")
    }
}

#Preview {
    Diff()
}
