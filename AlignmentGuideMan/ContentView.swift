//
//  ContentView.swift
//  AlignmentGuideMan
//
//  Created by monoqlo on 2022/04/06.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        NavigationStack {
            List(Samples.allCases, id: \.self) { sample in
                NavigationLink {
                    sample.view
                } label: {
                    Text(sample.rawValue)
                }
            }
            .navigationTitle("Hello, iOSDC Japan 2022")
        }
    }
}

fileprivate enum Samples: String, CaseIterable {
    case sample1 = "Sample1"
    case sample2_1 = "Sample2_1"
    case sample2_2 = "Sample2_2"
    case sample2_3 = "Sample2_3"
    case sample3_0 = "Sample3_0"
    case sample3_1_1 = "Sample3_1_1"
    case sample3_1_2 = "Sample3_1_2"
    case sample4_1 = "Sample4_1"
    case sample4_2 = "Sample4_2"
    case sample5_1_1 = "Sample5_1_1"
    case sample5_1_2 = "Sample5_1_2"
    case sample5_2_1 = "Sample5_2_1"
    case sample5_2_2 = "Sample5_2_2"
    case sample5_2_3 = "Sample5_2_3"
    case sample5_2_4 = "Sample5_2_4"
    case sample5_2_5 = "Sample5_2_5"
    case sample5_3_1 = "Sample5_3_1"
    case sample5_3_2 = "Sample5_3_2"

    @ViewBuilder
    var view: some View {
        switch self {
        case .sample1:
            Sample1()
        case .sample2_1:
            Sample2_1()
        case .sample2_2:
            Sample2_2()
        case .sample2_3:
            Sample2_3()
        case .sample3_0:
            Sample3_0()
        case .sample3_1_1:
            Sample3_1_1()
        case .sample3_1_2:
            Sample3_1_2()
        case .sample4_1:
            Sample4_1()
        case .sample4_2:
            Sample4_2()
        case .sample5_1_1:
            Sample5_1_1()
        case .sample5_1_2:
            Sample5_1_2()
        case .sample5_2_1:
            Sample5_2_1()
        case .sample5_2_2:
            Sample5_2_2()
        case .sample5_2_3:
            Sample5_2_3()
        case .sample5_2_4:
            Sample5_2_4()
        case .sample5_2_5:
            Sample5_2_5()
        case .sample5_3_1:
            Sample5_3_1()
        case .sample5_3_2:
            Sample5_3_2()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
