//
//  Elevator.swift
//  FastSwiftBasic
//
//  Created by 이로운 on 4/1/25.
//

import SwiftUI

struct Elevator: View {
    
    @State var myElevator = ElevatorStruct()
    
    var body: some View {
        VStack {
            Text("층수 : \(myElevator.level)")
        }
        
        HStack {
            Button {
                myElevator.goDown()
            } label: {
                Text("아래로")
            }
            
            
            Button {
                myElevator.goUp()
            } label: {
                Text("위로")
            }
        }
    }
}

// 구조체로 만들어보기
struct ElevatorStruct {
    // 층수 표시 디스플레이
    // 위로 올라갈 수 있어야함
    // 아래로 내려갈 수 있어야 함
    
    var level:Int = 1
    
    mutating func goDown() { // 따로 전치사 떠오르는게 없다면 언더바
        level -= 1
    }
    
    mutating func goUp() {
        level += 1
    }
}

#Preview {
    Elevator()
}
