//
//  Sample2_2.swift
//
//
//  Created by monoqlo on 2022/04/06.
//

import SwiftUI

struct Sample2_3: View {
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
            .alignmentGuide(.bottom) { context in
                context[.bottom] + 100
            }
            .alignmentGuide(.top) { context in
                // HStackのalignmentに .bottom が指定されているので
                // context[.top] などで参照されない限りこちらは実行されない
                fatalError()
            }

            Color.red.frame(height: 1)

            VStack {
                Rectangle()
                    .fill(.blue)
                    .frame(width: 150, height: 200)
                Text("Short Blue Bar")
                    .font(.title)
                Text("iOSDC 2022 sample code #1")
                    .font(.caption)
            }

            Color.red.frame(height: 1)
        }
    }
}

struct Sample2_3_Previews: PreviewProvider {
    static var previews: some View {
        Sample2_3()
            .previewLayout(.fixed(width: 800, height: 800))
    }
}
