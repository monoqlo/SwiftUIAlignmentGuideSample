//
//  Challenge1.swift
//  
//
//  Created by monoqlo on 2022/04/06.
//

import SwiftUI

struct Challenge1: View {
    var body: some View {
        HStack {
            VStack {
                Rectangle()
                    .fill(.blue)
                    .frame(width: 150, height: 200)
                Text("Bell Peppers")
                    .font(.title)
            }
            VStack {
                Rectangle()
                    .fill(.blue)
                    .frame(width: 150, height: 100)
                Text("Chili Peppers")
                    .font(.title)
                Text("Higher levels of capsicum")
                    .font(.caption)
            }
        }
    }
}

struct Challenge1_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Challenge1()
            
            VStack {
                Text("""
[初級編]
次のようなレイアウトを組んでみよう
""")
                .font(.title)
                Image("Challenge1Layout")
            }
        }
        .previewLayout(.fixed(width: 800, height: 800))
    }
}
