//
//  Sample2.swift
//
//
//  Created by monoqlo on 2022/04/06.
//

import SwiftUI

// Custom Alignment の使い所
//
// StackをまたいでViewを揃えたいとき
struct Sample3_3: View {
    var body: some View {
        // alignment が .bottom だった Sample3_0 と比べてみよう
        HStack(alignment: .squreTitleAlignment) {
            VStack {
                Rectangle()
                    .fill(.blue)
                    .frame(width: 200, height: 400)
                    .alignmentGuide(.squreTitleAlignment) { context in
                        context[.bottom]
                    }
                Text("Bell Peppers\n& Onions")
                    .font(.title)
            }
            VStack {
                Rectangle()
                    .fill(.blue)
                    .frame(width: 250, height: 200)
                // このコメントアウトを外せば Sample3_2と同じレイアウト
//                    .alignmentGuide(.squreTitleAlignment) { context in
//                        context[.bottom]
//                    }
                Text("Chili Peppers")
                    .font(.title)
                Text("Higher levels of capsicum")
                    .font(.caption)
            }
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

struct Sample3_3_Previews: PreviewProvider {
    static var previews: some View {
        Sample3_3()
            .previewLayout(.fixed(width: 800, height: 800))
    }
}
