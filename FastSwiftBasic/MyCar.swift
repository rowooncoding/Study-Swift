//
//  MyCar.swift
//  FastSwiftBasic
//
//  Created by 이로운 on 4/3/25.
//

import SwiftUI

struct MyCar: View {
    
    var myCar: KIA? = KIA()
    var broCar: Hyundai? = Hyundai()
    let cars: [Driveable] = [KIA(), Hyundai()]
    
    @State var speed: Int = 10
    var body: some View {
        VStack {
            Text("Speed: \(speed) km/h")
            Button {
                speed = broCar?.speedDown(with: speed) ?? speed
            } label: {
                Text("감속!")
            }
        }
    }
}

struct KIA: Driveable {
    func speedDown(with speed: Int) -> Int {
        print("속도가 0으로 줄어듭니다")
        return speed - 5
    }
}

struct Hyundai: Driveable {
    func speedDown(with speed: Int) -> Int {
        print("속도가 스스슥 줄어듭니다")
        return speed - 9
    }
}

protocol Driveable {
    func speedDown(with speed: Int) -> Int
}

#Preview {
    MyCar()
}
