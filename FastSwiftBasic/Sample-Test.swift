//
//  Sample-Test.swift
//  FastSwiftBasic
//
//  Created by 이로운 on 4/2/25.
//  Part1 -> Ch3 -> 테스트를 위한 브랜치임
//  구조체를 사용하던 것을 클래스로 리펙토링
//

import SwiftUI

class DestinationViewModel: ObservableObject {
    @Published var selectedDestination: Destination? = nil
    
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
    
    func pickRandomDestination() {
        selectedDestination = data.randomElement()
    }
}

struct Sample_Test: View {
    @StateObject private var viewModel = DestinationViewModel() // 뷰모델을 상태 객체로 선언
    
    var body: some View {
        VStack {
            viewModel.selectedDestination?.image
            
            if let destination = viewModel.selectedDestination {
                Text(destination.direction.rawValue)
                
                if let food = destination.food {
                    Text(food)
                }
            }
            
            Button {
                viewModel.pickRandomDestination()
            } label: {
                Text("press")
            }

        }
    }
}

struct Destination {
    var direction: Direction
    var food: String?
    var image: Image
}

enum Direction: String {
    case north = "북", east = "동", west = "서", south = "남"
}

#Preview {
    Sample_Test()
}
