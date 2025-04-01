//
//  Choice.swift
//  FastSwiftBasic
//
//  Created by 이로운 on 4/1/25.
//

import SwiftUI

struct Choice: View {
    // 열거형으로 만들지 않았다면 내가 원하지 않는 값들이 들어갈 수 있다.
    // var direction: String = ""
    var direction: Direction = .north
    var member: Member = .beta
    var menu: Menu = .steak("레어")
    
    var body: some View {
        Text("방향은 \(direction.rawValue)쪽 입니다.")
        Text("멤버는 \(member.rawValue) 입니다.")
    }
}

enum Direction: String {
    case north = "북"
    case west = "서"
    case east = "동"
    case south = "남"
}

enum Member: String {
    case alpha = "알파", beta = "베타", gamma = "감마"
}

enum Menu {
    case pasta
    case pizza
    case steak(String)
}

#Preview {
    Choice()
}
