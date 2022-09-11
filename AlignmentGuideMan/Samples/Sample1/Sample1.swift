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
            Color.red.frame(height: 1)

            VStack {
                Rectangle()
                    .fill(.blue)
                    .frame(width: 100, height: 400)
                Text("Long Blue Bar")
                    .font(.title)
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

struct Sample1_Previews: PreviewProvider {
    static var previews: some View {
        Sample1()
            .previewLayout(.fixed(width: 800, height: 800))
    }
}
