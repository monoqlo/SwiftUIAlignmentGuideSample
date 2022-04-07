//
//  Sample1.swift
//  
//
//  Created by monoqlo on 2022/04/06.
//

import SwiftUI

struct Sample1: View {
    var body: some View {
        HStack {
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

struct Sample1_Previews: PreviewProvider {
    static var previews: some View {
        Sample1()
            .previewLayout(.fixed(width: 800, height: 800))
    }
}
