//
//  Sample2_3.swift
//
//
//  Created by monoqlo on 2022/04/06.
//

import SwiftUI

struct Sample3_0: View {
    var body: some View {
        HStack(alignment: .bottom) {
            VStack {
                Rectangle()
                    .fill(.blue)
                    .frame(width: 150, height: 200)
                Text("Bell Peppers\n2行目")
                    .font(.title)
                    .alignmentGuide(.bottom) { context in
                        // 実行されるが特にレイアウトに影響はない
                        context[.firstTextBaseline]
                    }
            }
            VStack {
                Rectangle()
                    .fill(.blue)
                    .frame(width: 150, height: 100)
                Text("Chili Peppers")
                    .font(.title)
                    .alignmentGuide(.bottom) { context in
                        // 実行されるが特にレイアウトに影響はない
                        1000000
                    }
                Text("Higher levels of capsicum")
                    .font(.caption)
            }
        }
    }
}

struct Sample3_0_Previews: PreviewProvider {
    static var previews: some View {
        Sample3_0()
            .previewLayout(.fixed(width: 800, height: 800))
    }
}
