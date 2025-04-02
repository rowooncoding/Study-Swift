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
    @State var direction: Direction = .north
    
    var body: some View {
        VStack {
            switch direction {
            case .north:
                Text("\(direction.rawValue)은 추워요")
            case .west:
                Text("\(direction.rawValue)은 예뻐요")
            case .south:
                Text("\(direction.rawValue)는 벌레가 많아요")
            case .east:
                Text("\(direction.rawValue)는 4월부터 12월까지 여름이래요")
            }
        }
        
        Button {
            switch direction {
            case .north:
                direction = .east
            case .west:
                direction = .north
            case .east:
                direction = .south
            case .south:
                direction = .west
            }
        } label: {
            Text("지역에 대한 정보가 나옵니다.")
        }
    }
}

//enum Direction: String {
//    case north = "시베리아"
//    case west = "유럽"
//    case east = "한국"
//    case south = "호주"
//}

#Preview {
    Choice()
}
