//
//  Sample2.swift
//
//
//  Created by monoqlo on 2022/04/06.
//

import SwiftUI

// frame Alignment の基礎
struct Sample4_1: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Hello world!")
                .font(.largeTitle)
                .frame(width: 300,
                       height: 100,
                       alignment: .topLeading)
                .border(.red, width: 3)
            
            Text("Hello world!")
                .font(.largeTitle)
                .frame(alignment: .topLeading)
                .border(.red, width: 3)
        }
    }
}

struct Sample4_1_Previews: PreviewProvider {
    static var previews: some View {
        Sample4_1()
            .previewLayout(.fixed(width: 800, height: 800))
    }
}
