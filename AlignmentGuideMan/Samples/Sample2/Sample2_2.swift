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
            VStack {
                Rectangle()
                    .fill(.blue)
                    .frame(width: 150, height: 200)
                Text("Bell Peppers")
                    .font(.title)
            }
            VStack {
                Rectangle()
                    .fill(.blue)
                    .frame(width: 150, height: 100)
                Text("Chili Peppers")
                    .font(.title)
                    .alignmentGuide(HorizontalAlignment.center) { context in
                        // CGFloatな値を返せばよいので
                        // 任意の値を返すこともできる
                        0
                    }
                Text("Higher levels of capsicum")
                    .font(.caption)
                    .alignmentGuide(HorizontalAlignment.center) { context in
                        // centerからちょっとずらしたい
                        // みたいな場合はこう
                        context[HorizontalAlignment.center] - 50
                    }
            }
        }
    }
}

struct Sample2_2_Previews: PreviewProvider {
    static var previews: some View {
        Sample2_2()
            .previewLayout(.fixed(width: 800, height: 800))
    }
}
