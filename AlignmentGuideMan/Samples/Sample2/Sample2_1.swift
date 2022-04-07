//
//  Sample2_1.swift
//
//
//  Created by monoqlo on 2022/04/06.
//

import SwiftUI

// Challenge1Answerと同じレイアウト
struct Sample2_1: View {
    var body: some View {
        HStack(alignment: .bottom) {
            VStack {
                Rectangle()
                    .fill(.blue)
                    .frame(width: 150, height: 200)
                Text("Bell Peppers")
                    .font(.title)
            }
            // 明示的に指定する時に使う
            .alignmentGuide(.bottom) { context in
                // これは暗黙的に設定している値と同じ
                context[.bottom]
                
                // 以下は同値
                //
                // context.height
                // context[.bottom]
                //
                // つまり context[.bottom] とは自身のheight分上に持ち上げているイメージ
            }
            // デフォルト alignment は HorizontalAlignment.center
            VStack {
                Rectangle()
                    .fill(.blue)
                    .frame(width: 150, height: 100)
                Text("Chili Peppers")
                    .font(.title)
                    .alignmentGuide(HorizontalAlignment.center) { context in
                        // これは暗黙的に設定している値と同じ
                        context[HorizontalAlignment.center]
                        
                        // context[HorizontalAlignment.center] は
                        // context.width の値の半分
                        //
                        // つまり context[HorizontalAlignment.center] とは
                        // 自身のwidthの1/2分leading方向にずらしているイメージ
                    }
                Text("Higher levels of capsicum")
                    .font(.caption)
            }
        }
    }
}

struct Sample2_1_Previews: PreviewProvider {
    static var previews: some View {
        Sample2_1()
            .previewLayout(.fixed(width: 800, height: 800))
    }
}
