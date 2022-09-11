//
//  Challenge1.swift
//
//
//  Created by monoqlo on 2022/04/06.
//

import SwiftUI

struct Challenge2Answer: View {
    private let animals: [String] = ["Dog", "Crocodile", "Horse", "Rhinoceros"]
    
    var body: some View {
        VStack(alignment: .trailing, spacing: 20) {
            Color.gray.frame(width: 1)

            ForEach(animals, id: \.self) {
                Text($0)
                    .font(.largeTitle)
                    .padding()
                    .background(Color.green)
            }
            .alignmentGuide(.trailing) { context in
                return context.width * 2
            }

            Color.gray.frame(width: 1)
        }
    }
}

// 以下オマケ
struct Challenge2AnswerSupplements1: View {
    private let animals: [String] = ["Dog", "Crocodile", "Horse", "Rhinoceros"]

    var body: some View {
        VStack(alignment: .trailing, spacing: 20) {
            Color.gray.frame(width: 1)

            ForEach(animals, id: \.self) {
                Text($0)
                    .font(.largeTitle)
                    .padding()
                    .background(Color.green)
            }
            .alignmentGuide(.trailing) { context in
                print("width: \(context.width)")
                if context.width < 120 {
                    return context[.leading]
                } else if context.width < 180 {
                    return context[.trailing]
                } else {
                    return -50
                }
            }

            // alignmentGuide をいじっていないものはデフォルトの trailing に揃っている
            // 補助線見てもわかるようにここを基準に上のTextたちは移動している
            Circle()
                .fill(Color.green)
                .frame(width: 50, height: 50)

            Color.gray.frame(width: 1)
        }
    }
}

struct Challenge2AnswerSupplements2: View {
    private let animals: [String] = ["Dog", "Crocodile", "Horse", "Rhinoceros"]

    var body: some View {
        VStack(alignment: .trailing, spacing: 20) {
            Color.gray.frame(width: 1)

            ForEach(animals, id: \.self) {
                Text($0)
                    .font(.largeTitle)
                    .padding()
                    .background(Color.green)
            }
            .alignmentGuide(.leading) { context in
                return 100
            }
            .alignmentGuide(.trailing) { context in
                print("width: \(context.width)")
                if context.width < 120 {
                    // 上で設定している値になってる
                    // context[.leading] == 100
                    return context[.leading]
                } else if context.width < 180 {
                    return context[.trailing]
                } else {
                    return -50
                }
            }

            Color.gray.frame(width: 1)
        }
    }
}

struct Challenge2AnswerSupplements3: View {
    private let animals: [String] = ["Dog", "Crocodile", "Horse", "Rhinoceros"]

    var body: some View {
        VStack(alignment: .trailing, spacing: 20) {
            Color.gray.frame(width: 1)

            ForEach(animals, id: \.self) {
                Text($0)
                    .font(.largeTitle)
                    .padding()
                    .background(Color.green)
            }
            .alignmentGuide(.leading) {
                $0[.leading] + 30
            }
            .alignmentGuide(.leading) { context in
                return 100
            }
            .alignmentGuide(.trailing) { context in
                print("width: \(context.width)")
                if context.width < 120 {
                    // 最後に設定した値になる
                    // context[.leading] == 100
                    return context[.leading]
                } else if context.width < 180 {
                    return context[.trailing]
                } else {
                    return -50
                }
            }

            Color.gray.frame(width: 1)
        }
    }
}

// subscript(explicit:) の例
// https://developer.apple.com/documentation/swiftui/viewdimensions/subscript(explicit:)-61812
struct Challenge2AnswerSupplements4: View {
    private let animals: [String] = ["Dog", "Crocodile", "Horse", "Rhinoceros"]

    var body: some View {
        VStack(alignment: .trailing, spacing: 20) {
            Color.gray.frame(width: 1)

            ForEach(animals, id: \.self) {
                Text($0)
                    .font(.largeTitle)
                    .padding()
                    .background(Color.green)
            }
//            .alignmentGuide(.leading) { context in
//                return 100
//            }
            .alignmentGuide(HorizontalAlignment.trailing) { context in
                print("width: \(context.width)")
                if context.width < 120 {
                    // デフォルト値のままなので
                    // context[explicit: .leading] == nil
                    return context[explicit: .leading] ?? -50
                } else if context.width < 180 {
                    // デフォルト値
                    // context[.leading] == 0
                    return context[.leading]
                } else {
                    return -50
                }
            }

            Color.gray.frame(width: 1)

            ForEach(animals, id: \.self) {
                Text($0)
                    .font(.largeTitle)
                    .padding()
                    .background(Color.orange)
            }
            .alignmentGuide(.leading) { context in
                return 100
            }
            .alignmentGuide(HorizontalAlignment.trailing) { context in
                print("width: \(context.width)")
                if context.width < 120 {
                    // 設定した値があるので
                    // context[explicit: .leading] == 100
                    return context[explicit: .leading] ?? -50
                } else if context.width < 180 {
                    // 設定した値があるので
                    // context[.leading] == 100
                    return context[.leading]
                } else {
                    return -50
                }
            }

            Color.gray.frame(width: 1)
        }
    }
}

struct Challenge2Answer_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Challenge2Answer()
            Challenge2AnswerSupplements1()
            Challenge2AnswerSupplements2()
            Challenge2AnswerSupplements3()
            Challenge2AnswerSupplements4()
        }
        .previewLayout(.fixed(width: 800, height: 800))
    }
}


