//
//  Sample2.swift
//
//
//  Created by monoqlo on 2022/04/06.
//

import SwiftUI

// frame Alignment の応用
struct Sample4_2: View {
    var body: some View {
        HStack {
            Rectangle()
                .fill(.blue)
                .clipShape(Circle())
                .frame(width: 100, height: 100)
                .padding()
            
            HStack {
                VStack(alignment: .leading, spacing: 16) {
                    Text("Hello world!")
                        .font(.largeTitle)
                    Text("Apple")
                        .font(.title)
                }
                // めいいっぱい伸ばしてあげて leading に寄せる
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .border(.gray, width: 3)
            
            Image(systemName: "heart")
                .resizable()
                .frame(width: 40, height: 40)
                .foregroundColor(.pink)
                .padding()
        }
        .frame(width: 600)
        .padding()
        .border(.green, width: 3)
    }
}

struct Sample4_2_Previews: PreviewProvider {
    static var previews: some View {
        Sample4_2()
            .previewLayout(.fixed(width: 800, height: 800))
    }
}
