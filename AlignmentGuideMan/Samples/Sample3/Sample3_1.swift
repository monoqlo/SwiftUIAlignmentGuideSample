//
//  Sample2.swift
//
//
//  Created by monoqlo on 2022/04/06.
//

import SwiftUI

// Custom Alignment の基礎
struct Sample3_1_1: View {
    var body: some View {
        // squreTitleAlignment のデフォルトが .bottom なので
        // Sample3_0と同じレイアウト
        HStack(alignment: .squreTitleAlignment) {
            Color.red.frame(height: 1)

            VStack {
                Rectangle()
                    .fill(.blue)
                    .frame(width: 200, height: 400)
                Text("Bell Peppers\n& Onions")
                    .font(.title)
            }

            Color.red.frame(height: 1)

            VStack {
                Rectangle()
                    .fill(.blue)
                    .frame(width: 250, height: 200)
                Text("Chili Peppers")
                    .font(.title)
                Text("Higher levels of capsicum")
                    .font(.caption)
            }

            Color.red.frame(height: 1)
        }
    }
}

// Custom Alignment の使い所
//
// StackをまたいでViewを揃えたいとき
struct Sample3_1_2: View {
    var body: some View {
        // alignment が .bottom だった Sample3_0 と比べてみよう
        HStack(alignment: .squreTitleAlignment) {
            Color.red.frame(height: 1)

            VStack {
                Rectangle()
                    .fill(.blue)
                    .frame(width: 200, height: 400)
                Text("Bell Peppers\n& Onions")
                    .font(.title)
                    .alignmentGuide(.squreTitleAlignment) { context in
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
                    .alignmentGuide(.squreTitleAlignment) { context in
                        160
                    }
                Text("Higher levels of capsicum")
                    .font(.caption)
            }

            Color.red.frame(height: 1)
        }
    }
}

private extension VerticalAlignment {
    struct SqureTitleAlignment: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context[VerticalAlignment.bottom]
        }
    }

    static let squreTitleAlignment = VerticalAlignment(
        SqureTitleAlignment.self
    )
}

struct Sample3_1_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Sample3_1_1()
            Sample3_1_2()
        }
            .previewLayout(.fixed(width: 800, height: 800))
    }
}
