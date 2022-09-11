//
//  Sample5_3.swift
//  AlignmentGuideMan
//
//  Created by monoqlo on 2022/09/11.
//

import SwiftUI

// オマケ
// offset

struct Sample5_3_1: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("🐰🐰🐰🐰🐰🐰🐰🐰🐰🐰🐰🐰🐰🐰🐰🐰🐰🐰🐰🐰🐰🐰")
            Text("Offset by passing horizontal & vertical distance")
                .border(Color.green)
                .offset(x: 50, y: 50)
        }
        .border(.red)
    }
}

struct Sample5_3_2: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("🐰🐰🐰🐰🐰🐰🐰🐰🐰🐰🐰🐰🐰🐰🐰🐰🐰🐰🐰🐰🐰🐰")
            Text("Offset by passing horizontal & vertical distance")
                .border(Color.green)
                .offset(x: 50, y: 50)
                .border(Color.blue)
                .offset(x: 50, y: 50)
                .border(Color.orange)
                .offset(x: -100, y: 50)
        }
        .border(.red)
    }
}

struct Sample5_3_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Sample5_3_1()
            Sample5_3_2()
        }
    }
}
