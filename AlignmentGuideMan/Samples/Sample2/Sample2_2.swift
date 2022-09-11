//
//  Sample2_1.swift
//
//
//  Created by monoqlo on 2022/04/06.
//

import SwiftUI

struct Sample2_2: View {
    var body: some View {
        HStack(alignment: .bottom) {
            Color.red.frame(height: 1)

            VStack {
                Rectangle()
                    .fill(.blue)
                    .frame(width: 100, height: 400)
                Text("Long Blue Bar")
                    .font(.title)
            }

            Color.red.frame(height: 1)

            VStack {
                Color.orange.frame(width: 1, height: 300)
                Rectangle()
                    .fill(.blue)
                    .frame(width: 150, height: 200)
                Text("Short Blue Bar")
                    .font(.title)
                    .alignmentGuide(HorizontalAlignment.center) { context in
                        // CGFloatな値を返せばよいので
                        // 任意の値を返すこともできる
                        0
                    }
                Text("iOSDC 2022 sample code #1")
                    .font(.caption)                    .alignmentGuide(HorizontalAlignment.center) { context in
                        // centerからちょっとずらしたい
                        // みたいな場合はこう
                        context[HorizontalAlignment.center] - 50
                    }
            }

            Color.red.frame(height: 1)
        }
    }
}

struct Sample2_2_Previews: PreviewProvider {
    static var previews: some View {
        Sample2_2()
            .previewLayout(.fixed(width: 800, height: 800))
    }
}
