//
//  Option.swift
//  FastSwiftBasic
//
//  Created by 이로운 on 4/2/25.
//

import SwiftUI

struct Option: View {
    
    // bami 사람 자체 옵셔널 처리 (사람이 있을수도 있고 없을 수도 있음!)
    // bami 에게만 mbti 옵셔널 처리
    var bami: People? = People(name: "Bami", mbit: MBTI(name: "ISTJ"))
    var rowoon = People(name: "Rowoon", petName: "mango")
    var berry = People(name: "Berry", petName: "coco")
    
    var body: some View {
        VStack {
            
            if let bami = bami { // bami 라는 사람이 nil이 아니면!
                if let mbti = bami.mbit { // bami라는 사람이 nil이 아니고 mbti 자체도 nil이 아니면
                    if let name = mbti.name {
                        
                    }
                }
            }
            
            if let bamiMBTIName = bami?.mbit?.name {
                Text(bamiMBTIName)
            } else {
                Text("검사를 해주세요!")
            }
            
            // if let 키워드 사용
//            if let petName = bami.petName {
//                Text("이름은 \(bami.name) 애완동물 이름은 \(petName)")
//            } else {
//                Text("이름은 \(bami.name) 애완동물 이름은 없어요!")
//            }
                
            // 잘못된 nil 검사
//            if bami.petName == "" {
//              Text("이름은 \(bami.name) 애완동물 이름은 없어요!")
//            } else {
//                Text("이름은 \(bami.name) 애완동물 이름은\(bami.petName)")
//            }
            
            // nil 병합 연산자 사용
            Text(bami?.mbit?.name ?? "검사를 해주세요!")
            Text("이름은 \(rowoon.name) 애완동물 이름은\(rowoon.petName ?? "없어요!")")
            Text("이름은 \(berry.name) 애완동물 이름은\(berry.petName ?? "없어요!")")
        }
    }
}

struct People {
    let name: String
    var petName: String?
    var mbit: MBTI?
}

struct MBTI {
    let name: String?
}

#Preview {
    Option()
}
