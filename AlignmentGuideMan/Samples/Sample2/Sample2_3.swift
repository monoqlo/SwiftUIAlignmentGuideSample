//
//  Sample2_2.swift
//
//
//  Created by monoqlo on 2022/04/06.
//

import SwiftUI

struct Sample2_3: View {
    var body: some View {
        HStack(alignment: .bottom) {
            VStack {
                Rectangle()
                    .fill(.blue)
                    .frame(width: 150, height: 200)
                Text("Bell Peppers")
                    .font(.title)
            }
            .alignmentGuide(.bottom) { context in
                context[.bottom] + 100
            }
            .alignmentGuide(.top) { context in
                // .bottom が指定されているのでこちらは実行されない
                fatalError()
            }
            VStack {
                Rectangle()
                    .fill(.blue)
                    .frame(width: 150, height: 100)
                Text("Chili Peppers")
                    .font(.title)
                Text("Higher levels of capsicum")
                    .font(.caption)
            }
        }
    }
}

struct Sample2_3_Previews: PreviewProvider {
    static var previews: some View {
        Sample2_3()
            .previewLayout(.fixed(width: 800, height: 800))
    }
}
