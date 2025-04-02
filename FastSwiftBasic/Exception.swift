//
//  Exception.swift
//  FastSwiftBasic
//
//  Created by 이로운 on 4/2/25.
//

import SwiftUI

struct Exception: View {
    @State var inputNumber = ""
    @State var resultNumber: Float = 0
    
    var body: some View {
        TextField("나눌 숫자를 입력해주세요", text: $inputNumber)
        Text("나눈 결과는 : \(resultNumber)")
        
        Button {
            do {
                try resultNumber = devideTen(with: (Float(inputNumber) ?? 1.0))
            } catch DivideError.dividedByZero {
                print("0으로 나눴음")
                resultNumber = -99
            } catch {
                print(error.localizedDescription)
            }
        } label: {
            Text("나누기")
        }
    }
    
    func devideTen(with inputNumber: Float) throws -> Float {
        var result: Float = 0
        
        // 에러처리
        if inputNumber == 0 {
            throw DivideError.dividedByZero
        } else {
            result = 10 / inputNumber
        }
    
        return result
    }
}

enum DivideError: Error {
    case dividedByZero
}

#Preview {
    Exception()
}
