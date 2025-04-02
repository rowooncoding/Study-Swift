//
//  Sample.swift
//  FastSwiftBasic
//
//  Created by 이로운 on 4/2/25.
//

import SwiftUI

struct Sample: View {
    
    let data = [
        Destination(direction: .north,
                    food: "파스타 맛집",
                    image: Image(systemName: "carrot")),
        Destination(direction: .east,
                    food: nil,
                    image: Image(systemName: "sunrise")),
        Destination(direction: .west,
                    food: nil,
                    image: Image(systemName: "balloon")),
        Destination(direction: .south,
                    food: "순대 맛집",
                    image: Image(systemName: "cursor.rays")),
    ]
    
    @State var selectedDestination: Destination?
    var body: some View {
        VStack {
            selectedDestination?.image
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            
            if let destination = selectedDestination {
                Text(destination.direction.rawValue)
                if let food = destination.food {
                    Text(food)
                }
            }
            
            Button {
                selectedDestination = data.randomElement()
            } label: {
                Text("돌려요!")
            }
        }
    }
}

struct Destination {
    let direction: Direction
    let food: String?
    let image: Image // 이미지 타입 사용
}

enum Direction: String {
    case north = "북", west = "서", east = "동", south = "남"
}

#Preview {
    Sample()
}
