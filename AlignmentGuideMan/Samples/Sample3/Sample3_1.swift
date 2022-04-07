//
//  Sample2.swift
//
//
//  Created by monoqlo on 2022/04/06.
//

import SwiftUI

// Custom Alignment の基礎
//
// Challenge1Answerと同じレイアウト
struct Sample3_1: View {
    var body: some View {
        HStack(alignment: .squreTitleAlignment) {
            VStack {
                Rectangle()
                    .fill(.blue)
                    .frame(width: 200, height: 400)
                Text("Bell Peppers")
                    .font(.title)
            }
            VStack {
                Rectangle()
                    .fill(.blue)
                    .frame(width: 250, height: 200)
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

struct Sample3_1_Previews: PreviewProvider {
    static var previews: some View {
        Sample3_1()
            .previewLayout(.fixed(width: 800, height: 800))
    }
}
