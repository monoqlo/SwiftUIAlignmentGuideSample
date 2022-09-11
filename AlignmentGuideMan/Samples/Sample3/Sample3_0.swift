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
            Color.red.frame(height: 1)

            VStack {
                Rectangle()
                    .fill(.blue)
                    .frame(width: 200, height: 400)
                Text("Bell Peppers\n& Onions")
                    .font(.title)
                    .alignmentGuide(.bottom) { context in
                        // VStack を跨いでいるので効果なし
                        context[.firstTextBaseline]
                    }
            }

            Color.red.frame(height: 1)

            VStack {
                Rectangle()
                    .fill(.blue)
                    .frame(width: 250, height: 200)
                Text("Chili Peppers")
                    .font(.title)
                    .alignmentGuide(.bottom) { context in
                        // VStack を跨いでいるので効果なし
                        160
                    }
                Text("Higher levels of capsicum")
                    .font(.caption)
            }

            Color.red.frame(height: 1)
        }
    }
}

struct Sample3_0_Previews: PreviewProvider {
    static var previews: some View {
        Sample3_0()
            .previewLayout(.fixed(width: 800, height: 800))
    }
}
