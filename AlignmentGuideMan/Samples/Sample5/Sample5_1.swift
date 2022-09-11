//
//  Sample5_1.swift
//  AlignmentGuideMan
//
//  Created by monoqlo on 2022/09/11.
//

import SwiftUI

// frame と alignmentGuide

struct Sample5_1_1: View {
    var body: some View {
        Text("""
        ⭐️ monoqlo ⭐️
        ⭐️ iOSDC 2022 ⭐️
        """)
        .border(.red)
        .alignmentGuide(.bottom) { context in
            context[.firstTextBaseline]
        }
        .frame(alignment: .bottom)
        .border(.green)
    }
}

struct Sample5_1_2: View {
    var body: some View {
        VStack {
            Text("top")

            Text("""
             ⭐️ monoqlo ⭐️
             ⭐️ iOSDC 2022 ⭐️
             """)
            .border(.red)
            .alignmentGuide(.frameTextAlignment) { context in
                context[.firstTextBaseline]
            }

            Text("bottom")
        }
        .frame(height: 200,
               alignment: .init(horizontal: .center,
                                vertical: .frameTextAlignment))
        .border(.black)
    }
}

private extension VerticalAlignment {
    struct FrameTextAlignment: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context[.bottom]
        }
    }

    static let frameTextAlignment = VerticalAlignment(
        FrameTextAlignment.self
    )
}

struct Sample5_1_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Sample5_1_1()
            Sample5_1_2()
        }
    }
}
