//
//  Challenge1.swift
//
//
//  Created by monoqlo on 2022/04/06.
//

import SwiftUI

struct Challenge3Answer: View {
    var body: some View {
        VStack(alignment: .squreLeadingTtileAlignment) {

            // これらのコメントアウトを外すとどこに揃っているかわかりやすい
//            Color.red.frame(width: 1)
//            Circle()
//                .fill(.blue)
//                .frame(width: 100, height: 100)
//            Color.red.frame(width: 1)

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
                        .alignmentGuide(.squreLeadingTtileAlignment) { context in
                            context[.leading]
                        }
                    Text("Chili Peppers")
                        .font(.title)
                        .alignmentGuide(.squreTitleAlignment) { context in
                            context[.firstTextBaseline]
                        }
                    Text("Higher levels of capsicum")
                        .font(.caption)
                }
                // 今回のレイアウトではRectangleの代わりに
                // ここで設定しても見た目は一緒
//                .alignmentGuide(.squreLeadingTtileAlignment) { context in
//                    context[.leading]
//                }
            }
            Text("Challenge!!")
                .font(.largeTitle)
        }
    }
}

private extension VerticalAlignment {
    struct SqureTitleAlignment: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context[.bottom]
        }
    }
    
    static let squreTitleAlignment = VerticalAlignment(
        SqureTitleAlignment.self
    )
}

private extension HorizontalAlignment {
    struct SqureLeadingTtileAlignment: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context[.leading]
        }
    }
    
    static let squreLeadingTtileAlignment = HorizontalAlignment(
        SqureLeadingTtileAlignment.self
    )
}

struct Challenge3Answer_Previews: PreviewProvider {
    static var previews: some View {
        Challenge3Answer()
            .previewLayout(.fixed(width: 800, height: 800))
    }
}
