//
//  Challenge1.swift
//
//
//  Created by monoqlo on 2022/04/06.
//

import SwiftUI

struct Challenge1Answer: View {
    var body: some View {
        HStack(alignment: .bottom) {
            VStack {
                Rectangle()
                    .fill(.blue)
                    .frame(width: 100, height: 400)
                Text("Long Blue Bar")
                    .font(.title)
            }
            VStack {
                Rectangle()
                    .fill(.blue)
                    .frame(width: 150, height: 200)
                Text("Short Blue Bar")
                    .font(.title)
                Text("iOSDC 2022 sample code #1")
                    .font(.caption)
            }
        }
    }
}

struct Challenge1Answer_Previews: PreviewProvider {
    static var previews: some View {
        Challenge1Answer()
            .previewLayout(.fixed(width: 800, height: 800))
    }
}
