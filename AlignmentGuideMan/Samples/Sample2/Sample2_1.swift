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
            Color.red.frame(height: 1)

            VStack {
                Rectangle()
                    .fill(.blue)
                    .frame(width: 100, height: 400)
                Text("Long Blue Bar")
                    .font(.title)
            }
            // 明示的に指定する時に使う
            .alignmentGuide(.bottom) { context in
                // これは暗黙的に設定している値と同じ
                context[.bottom]
                
                // （デフォルトでは）以下は同値
                //
                // context.height
                // context[.bottom]
                //
                // つまり context[.bottom] とは自身のheight分上に持ち上げているイメージ
            }

            Color.red.frame(height: 1)

            // デフォルト alignment は HorizontalAlignment.center
            VStack {
                Color.orange.frame(width: 1, height: 300)

                Rectangle()
                    .fill(.blue)
                    .frame(width: 150, height: 200)
                Text("Short Blue Bar")
                    .font(.title)
                    .alignmentGuide(HorizontalAlignment.center) { context in
                        // これは暗黙的に設定している値と同じ
                        context[HorizontalAlignment.center]
                        
                        // （デフォルトでは）context[HorizontalAlignment.center] は
                        // context.width の値の半分
                        //
                        // つまり context[HorizontalAlignment.center] とは
                        // 自身のwidthの1/2分leading方向にずらしているイメージ
                    }
                Text("iOSDC 2022 sample code #1")
                    .font(.caption)
            }

            Color.red.frame(height: 1)
        }
    }
}

struct Sample2_1_Previews: PreviewProvider {
    static var previews: some View {
        Sample2_1()
            .previewLayout(.fixed(width: 800, height: 800))
    }
}
