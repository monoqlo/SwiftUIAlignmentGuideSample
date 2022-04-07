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
struct Sample3_2: View {
    var body: some View {
        // alignment が .bottom だった Sample3_0 と比べてみよう
        HStack(alignment: .squreTitleAlignment) {
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
            VStack {
                Rectangle()
                    .fill(.blue)
                    .frame(width: 250, height: 200)
                Text("Chili Peppers")
                    .font(.title)
                    .alignmentGuide(.squreTitleAlignment) { context in
                        context[.firstTextBaseline]
                    }
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

struct Sample3_2_Previews: PreviewProvider {
    static var previews: some View {
        Sample3_2()
            .previewLayout(.fixed(width: 800, height: 800))
    }
}
