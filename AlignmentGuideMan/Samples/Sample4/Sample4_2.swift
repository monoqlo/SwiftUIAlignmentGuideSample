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
            Image("monoqloIcon")
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
            
            
            HStack {
                VStack(alignment: .leading) {
                    Text("monoqlo")
                        .font(.headline)
                    Text("iOSDC 2022")
                        .font(.body)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .border(.gray)
            
            Image(systemName: "heart")
                .foregroundColor(.pink)
                .padding()
                .border(.gray)
        }
        .frame(width: 300)
        .padding()
        .border(.green)
    }
}

struct Sample4_2_Previews: PreviewProvider {
    static var previews: some View {
        Sample4_2()
            .previewLayout(.fixed(width: 800, height: 800))
    }
}
