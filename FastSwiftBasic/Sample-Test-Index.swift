//
//  Sample-Test-Index.swift
//  FastSwiftBasic
//
//  Created by 이로운 on 4/2/25.
//

import SwiftUI

let data = [
    DestinationIndex(directionIndex: .north,
                     foodIndex: "파스타 맛집",
                     imageIndex: Image(systemName: "carrot")),
    DestinationIndex(directionIndex: .east,
                     foodIndex: nil,
                     imageIndex: Image(systemName: "sunrise")),
    DestinationIndex(directionIndex: .west,
                     foodIndex: nil,
                     imageIndex: Image(systemName: "balloon")),
    DestinationIndex(directionIndex: .south,
                     foodIndex: "순대 맛집",
                     imageIndex: Image(systemName: "cursor.rays")),
]

struct Sample_Test_Index: View {
    @State var currentIndex: Int = 0 // 0번째 인덱스 부터 시작할 것
    
    var body: some View {

        let selectedDataIndex = data[currentIndex] // 인덱스로 해당 요소 가져오기
        
        selectedDataIndex.imageIndex
        
        Text(selectedDataIndex.directionIndex.rawValue) // 초기 값을 index 0으로 잡았기 때문에 nil 검사 필요 없음
        
        if let foodName = selectedDataIndex.foodIndex { // 음식은 여전히 nil일 수 있기 때문에 검사
            Text(foodName)
        }
        
        Button {
            currentIndex = (currentIndex + 1) % data.count // index가 갯수를 넘으려고 하면 index를 0으로 초기화 하는 역할(out of range 방지)
        } label: {
            Text("press")
        }

    }
}

struct DestinationIndex {
    let directionIndex: DirectionIndex
    let foodIndex: String?
    let imageIndex: Image
}

enum DirectionIndex:String {
    case north = "북"
    case east = "동"
    case west = "서"
    case south = "남"
}

func onPress() -> DestinationIndex? {
    return data.randomElement()
}

#Preview {
    Sample_Test_Index()
}
