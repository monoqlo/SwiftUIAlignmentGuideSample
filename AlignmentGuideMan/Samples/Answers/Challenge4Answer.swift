//
//  Sample2.swift
//
//
//  Created by monoqlo on 2022/04/06.
//

import SwiftUI

fileprivate struct Challenge4Answer: View {
    private let rank: Rank
    
    init(rank: Rank) {
        self.rank = rank
    }
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            // コメントアウトを外すとどこからずらしているかわかりやすい
            // Color.red.frame(width: 1)

            Text(rank.majorText)
                .font(.system(size: 20).bold())
                .foregroundColor(.blue)
                .alignmentGuide(.majorTextRankCenter) { context in
                    context[HorizontalAlignment.center]
                }
            
            if let minorText = rank.minorText {
                Text(minorText)
                    .font(.system(size: 14).bold())
                    .alignmentGuide(.trailing) { context in
                        context[HorizontalAlignment.center] - 5
                    }
                    .alignmentGuide(.top) { _ in
                        6
                    }
            }
        }
        .frame(
            width: 33,
            height: 33,
            alignment: .majorTextRankCenter
        )
    }
}

extension HorizontalAlignment {
    fileprivate enum MajorTextRankAlignment: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context[HorizontalAlignment.center]
        }
    }
    
    fileprivate static let majorTextRankCenter = HorizontalAlignment(
        MajorTextRankAlignment.self)
}

extension Alignment {
    fileprivate static let majorTextRankCenter = Alignment(
        horizontal: HorizontalAlignment(HorizontalAlignment.MajorTextRankAlignment.self),
        vertical: .center
    )
}

fileprivate enum Rank: String, CaseIterable {
    case cMinus
    case c
    case cPlus
    case bMinus
    case b
    case bPlus
    case aMinus
    case a
    case aPlus
    case sMinus
    case s
    case sPlus
    case ss
        
    var majorText: String {
        switch self {
        case .cMinus, .c, .cPlus:
            return "C"
        case .bMinus, .b, .bPlus:
            return "B"
        case .aMinus, .a, .aPlus:
            return "A"
        case .sMinus, .s, .sPlus:
            return "S"
        case .ss:
            return "SS"
        }
    }
    
    var minorText: String? {
        switch self {
        case .c, .b, .a, .s, .ss:
            return nil
        case .cMinus, .bMinus, .aMinus, .sMinus:
            return "-"
        case .cPlus, .bPlus, .aPlus, .sPlus:
            return "+"
        }
    }
}


struct Challenge4Answer_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            ForEach(Rank.allCases) {
                Challenge4Answer(rank: $0)
            }
        }
        .previewLayout(.fixed(width: 200, height: 600))
    }
}

extension Rank: Identifiable {
    var id: String {
        rawValue
    }
}
