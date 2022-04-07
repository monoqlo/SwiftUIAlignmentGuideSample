//
//  Sample2.swift
//
//
//  Created by monoqlo on 2022/04/06.
//

import SwiftUI

fileprivate struct Challenge4: View {
    private let rank: Rank
    
    init(rank: Rank) {
        self.rank = rank
    }
    
    var body: some View {
        ZStack {
            Text(rank.majorText)
                .font(.system(size: 20).bold())
                .foregroundColor(.blue)

            if let minorText = rank.minorText {
                Text(minorText)
                    .font(.system(size: 14).bold())
            }
        }
    }
}

extension HorizontalAlignment {

}

extension HorizontalAlignment {

}

extension Alignment {

}

struct AdaptiveTextRankView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            VStack {
                ForEach(Rank.allCases) {
                    Challenge4(rank: $0)
                }
            }
            
            VStack {
                Text("""
[応用編]
左のようなレイアウトを組んでみよう
""")
                HStack(alignment: .top) {
                    Image("Challenge4Layout")
                        .resizable()
                        .scaledToFit()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100)
                        .padding(8)
                        .border(.blue)
                    
                    VStack {
                        Text("""
アルファベットと+/-それぞれ
縦方向の中心が揃っている
""")
                            .font(.caption)
                        HStack {
                            Image("Challenge4LayoutMajor")
                                .resizable()
                                .scaledToFit()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100)
                            Image("Challenge4LayoutMinor")
                                .resizable()
                                .scaledToFit()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100)
                        }
                    }
                    .padding(8)
                    .border(.gray)
                }
            }
        }
        .previewLayout(.fixed(width: 400, height: 600))
    }
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

extension Rank: Identifiable {
    var id: String {
        rawValue
    }
}
