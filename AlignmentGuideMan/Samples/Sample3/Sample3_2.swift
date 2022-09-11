//
//  Sample2.swift
//
//
//  Created by monoqlo on 2022/04/06.
//

import SwiftUI

// Text("Long Long Long Blue Bar") と Text("Short Blue Bar") の
// firstTextBaseline を揃えたい時に Custom Alignment を使わないと？
struct Sample3_2_1: View {
    var body: some View {
        HStack(alignment: .bottom) {
            Color.red.frame(height: 1)

            VStack {
                Rectangle()
                    .fill(.blue)
                    .frame(width: 100, height: 400)
                Text("Long Long Long Blue Bar")
                    .font(.title)
                    .alignmentGuide(.bottom) { context in
                        // VStack を跨いでいるのでこれでは効果がない
                        context[.firstTextBaseline]
                    }
            }
            .alignmentGuide(.bottom) { context in
                context[.firstTextBaseline]
            }

            VStack {
                // このTextのfirstTextBaselineに揃う
                Text("🐰🐢")
                    .font(.title)
                Rectangle()
                    .fill(.blue)
                    .frame(width: 150, height: 200)
                Text("Short Blue Bar")
                    .font(.title)
                    .alignmentGuide(.bottom) { context in
                        // VStack を跨いでいるのでこれでは効果がない
                        context[.firstTextBaseline]
                    }
                Text("iOSDC 2022 sample code #1")
                    .font(.caption)
            }
            .alignmentGuide(.bottom) { context in
                // Text("Short Blue Bar") に揃うような値を返すことができれば
                // Custom Alignment を使わなくても実現はできるが...
                context[.firstTextBaseline]
            }

            Text("Side\nText")
                .font(.title)

            Color.red.frame(height: 1)
        }
    }
}

struct Sample3_2_2: View {
    var body: some View {
        HStack(alignment: .blueBarTitleAlignment) {
            Color.red.frame(height: 1)

            VStack {
                Rectangle()
                    .fill(.blue)
                    .frame(width: 100, height: 400)
                Text("Long Long Long Blue Bar")
                    .font(.title)
                    .alignmentGuide(.blueBarTitleAlignment) { context in
                        context[.firstTextBaseline]
                    }
            }

            VStack {
                Text("🐰🐢")
                    .font(.title)
                Rectangle()
                    .fill(.blue)
                    .frame(width: 150, height: 200)
                Text("Short Blue Bar")
                    .font(.title)
                    .alignmentGuide(.blueBarTitleAlignment) { context in
                        context[.firstTextBaseline]
                    }
                Text("iOSDC 2022 sample code #1")
                    .font(.caption)
            }

            Text("Side\nText")
                .font(.title)

            Color.red.frame(height: 1)
        }
    }
}

extension VerticalAlignment {
    private struct BlueBarTitleAlignment: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context[.bottom]
        }
    }
    
    static let blueBarTitleAlignment = VerticalAlignment(
        BlueBarTitleAlignment.self
    )
}

struct Sample3_2_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Sample3_2_1()
            Sample3_2_2()
        }
        .previewLayout(.fixed(width: 800, height: 800))
    }
}
