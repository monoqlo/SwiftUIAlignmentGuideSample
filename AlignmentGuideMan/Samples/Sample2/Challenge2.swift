//
//  Challenge2.swift
//
//
//  Created by monoqlo on 2022/04/06.
//

import SwiftUI

private struct Animal: Hashable {
    var name: String
}

struct Challenge2: View {
    
    private let animals: [Animal] = [.init(name: "Dog"),
                             .init(name: "Crocodile"),
                             .init(name: "Horse"),
                             .init(name: "Rhinoceros")]
    
    var body: some View {
        VStack(alignment: .trailing, spacing: 20) {
            Color.gray.frame(width: 1)

            ForEach(animals, id: \.hashValue) { animal in
                Text(animal.name)
                    .font(.largeTitle)
                    .padding()
                    .background(Color.green)
            }

            Color.gray.frame(width: 1)
        }
    }
}

struct Challenge2_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Challenge2()
            
            VStack {
                Text("""
[中級編]
alignmentGuide() を使って
次のようなレイアウトを組んでみよう
""")
                .font(.title)
                Image("Challenge2Layout")
            }
        }
        .previewLayout(.fixed(width: 800, height: 800))
    }
}
