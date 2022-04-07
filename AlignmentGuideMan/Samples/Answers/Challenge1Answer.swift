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
                    .frame(width: 200, height: 400)
                Text("Bell Peppers")
                    .font(.title)
            }
            VStack {
                Rectangle()
                    .fill(.blue)
                    .frame(width: 250, height: 200)
                Text("Chili Peppers")
                    .font(.title)
                Text("Higher levels of capsicum")
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
