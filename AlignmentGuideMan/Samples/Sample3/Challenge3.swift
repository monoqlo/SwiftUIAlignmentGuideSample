//
//  Sample2.swift
//
//
//  Created by monoqlo on 2022/04/06.
//

import SwiftUI

struct Challenge3: View {
    var body: some View {
        VStack {
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

struct Challenge3_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Challenge3()
            
            VStack {
                Text("""
[上級編]
Custom Alignment を使って
次のようなレイアウトを組んでみよう
""")
                .font(.title)
                Image("Challenge3Layout")
            }
        }
        .previewLayout(.fixed(width: 800, height: 800))
    }
}
