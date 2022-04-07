//
//  Challenge1.swift
//
//
//  Created by monoqlo on 2022/04/06.
//

import SwiftUI

private struct Animal: Hashable {
    var name: String
}

struct Challenge2Answer: View {
    private let animals: [Animal] = [.init(name: "Dog"),
                                     .init(name: "Crocodile"),
                                     .init(name: "Horse"),
                                     .init(name: "Rhinoceros")]
    
    var body: some View {
        VStack(alignment: .trailing, spacing: 20) {
            Rectangle()
                .frame(width: 1)
            ForEach(animals, id: \.hashValue) { animal in
                Text(animal.name)
                    .font(.largeTitle)
                    .padding()
                    .background(Color.green)
            }
            .alignmentGuide(.trailing) { context in
                context.width * 2
            }
            Rectangle()
                .frame(width: 1)
        }
    }
}

struct Challenge2Answer_Previews: PreviewProvider {
    static var previews: some View {
        Challenge2Answer()
            .previewLayout(.fixed(width: 800, height: 800))
    }
}
