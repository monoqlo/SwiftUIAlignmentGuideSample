//
//  Sample5_2.swift
//  AlignmentGuideMan
//
//  Created by monoqlo on 2022/08/17.
//

import SwiftUI

struct SpeakerHeader: View {
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
                    Text("iOSDC 2022 スピーカー")
                        .font(.body)
                }
            }
        }
    }
}

struct Sample5_2_1: View {
    var body: some View {
        VStack {
            SpeakerHeader()
            Grid(alignment: .leading, verticalSpacing: 8) {
                Divider()
                GridRow {
                    Text("ワインエキスパート認定番号")
                        .lineLimit(1)
                        .font(.caption)
                    Text("1234567890")
                        .font(.caption)
                }
                Divider()
                GridRow {
                    Text("名前")
                        .font(.caption)
                    Text("monoqlo")
                        .font(.caption)
                }
                GridRow {
                    Text("電話番号")
                        .font(.caption)
                    Text("XXX-XXXX-XXXXX")
                        .font(.caption)
                }
            }
        }
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(.gray)
        )
        .frame(maxWidth: 350)
    }
}

struct Sample5_2_2: View {
    var body: some View {
        VStack {
            SpeakerHeader()
            VStack(alignment: .profileListRowAlignment, spacing: 8) {
                Divider()
                HStack( spacing: 24) {
                    Text("ワインエキスパート認定番号")
                        .lineLimit(1)
                        .font(.caption)
                        .frame(maxWidth: 166, alignment: .leading)
                    Text("1234567890")
                        .font(.caption)
                        .alignmentGuide(.profileListRowAlignment) {
                            $0[.leading] - 30
                        }
                }
                Divider()
                HStack(spacing: 24) {
                    Text("名前")
                        .font(.caption)
                        .frame(maxWidth: 166, alignment: .leading)
                    Text("monoqlo")
                        .font(.caption)
                        .alignmentGuide(.profileListRowAlignment) {
                            $0[.leading] - 30
                        }
                }
                HStack(spacing: 24) {
                    Text("電話番号")
                        .font(.caption)
                        .frame(maxWidth: 166, alignment: .leading)
                    Text("XXX-XXXX-XXXXX")
                        .font(.caption)
                        .alignmentGuide(.profileListRowAlignment) {
                            $0[.leading] - 30
                        }
                }
            }
        }
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(.gray)
        )
        .frame(maxWidth: 350)

    }
}

private extension HorizontalAlignment {
    struct ProfileListRowAlignment: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context[HorizontalAlignment.center]
        }
    }

    static let profileListRowAlignment = HorizontalAlignment(
        ProfileListRowAlignment.self
    )
}

struct Sample5_2_3: View {
    var body: some View {
        VStack {
            SpeakerHeader()
            VStack(alignment: .leading, spacing: 4) {
                Divider()
                Divider()
                    .offset(y: 26)
                HStack(spacing: 30) {
                    VStack(alignment: .leading, spacing: 16) {
                        Text("ワインエキスパート認定番号")
                            .lineLimit(1)
                            .font(.caption)
                        VStack(alignment: .leading, spacing: 8) {
                            Text("名前")
                                .font(.caption)
                            Text("電話番号")
                                .font(.caption)
                        }

                    }
                    VStack(alignment: .leading, spacing: 16) {
                        Text("1234567890")
                            .font(.caption)
                        VStack(alignment: .leading, spacing: 8) {
                            Text("monoqlo")
                                .font(.caption)
                            Text("XXX-XXXX-XXXXX")
                                .font(.caption)
                        }
                    }
                }
            }
        }
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(.gray)
        )
        .frame(maxWidth: 350)
    }
}

struct Sample5_2_4: View {
    var body: some View {
        VStack {
            SpeakerHeader()
            Divider()
            VStack(spacing: 8) {
                Row(title: "ワインエキスパート認定番号", text: "1234567890")
                Divider()
                Row(title: "名前", text: "monoqlo")
                Row(title: "電話番号", text: "XXX-XXXX-XXXXX")
            }
        }
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(.gray)
        )
        .frame(width: 350)
    }

    struct Row: View {
        let title: String
        let text: String

        var body: some View {
            ZStack(alignment: .init(horizontal: .profileListRowTitleAlignment,
                                    vertical: .center)) {
                Text(title)
                    .font(.caption)
                    .alignmentGuide(.profileListRowTitleAlignment) {
                        $0[.leading] + 188
                    }
                Text(text)
                    .font(.caption)
                    .alignmentGuide(.profileListRowTextAlignment) {
                        $0[.leading] - 30
                    }
            }
            .frame(maxWidth: 300,
                   alignment: .init(
                    horizontal: .profileListRowTextAlignment,
                    vertical: .center
                   )
            )
        }
    }
}

private extension HorizontalAlignment {
    struct ProfileListRowTitleAlignment: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context[.leading]
        }
    }

    static let profileListRowTitleAlignment = HorizontalAlignment(
        ProfileListRowTitleAlignment.self
    )

    struct ProfileListRowTextAlignment: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context[HorizontalAlignment.center]
        }
    }

    static let profileListRowTextAlignment = HorizontalAlignment(
        ProfileListRowTextAlignment.self
    )
}

struct Sample5_2_5: View {
    var body: some View {
        VStack {
            SpeakerHeader()
            VStack(alignment: .profileListRowTitleAlignment) {
                VStack(alignment: .profileListRowTextAlignment, spacing: 8) {
//                    Color.red.frame(width: 1)
                    Divider()
                    HStack(spacing: 24) {
                        Text("ワインエキスパート認定番号")
                            .lineLimit(1)
                            .font(.caption)
//                            .alignmentGuide(.profileListRowTitleAlignment) {
//                                $0[.leading]
//                            }
                            .alignmentGuide(.profileListRowTextAlignment) {
                                $0[.leading]
                            }
                        Text("1234567890")
                            .font(.caption)
                            .alignmentGuide(.profileListRowTextAlignment) {
                                $0[.leading] - 30
                            }
                    }
                    .border(.red)
                    Divider()
                    HStack(spacing: 24) {
                        Text("名前")
                            .font(.caption)
//                            .alignmentGuide(.profileListRowTitleAlignment) {
//                                $0[.leading]
//                            }
                            .alignmentGuide(.profileListRowTextAlignment) {
                                $0[.leading]
                            }
                        Text("monoqlo")
                            .font(.caption)
                            .alignmentGuide(.profileListRowTextAlignment) {
                                $0[.leading] - 30
                            }
                    }
                    HStack(spacing: 24) {
                        Text("電話番号")
                            .font(.caption)
//                            .alignmentGuide(.profileListRowTitleAlignment) {
//                                $0[.leading]
//                            }
                            .alignmentGuide(.profileListRowTextAlignment) {
                                $0[.leading]
                            }
                        Text("XXX-XXXX-XXXXX")
                            .font(.caption)
                            .alignmentGuide(.profileListRowTextAlignment) {
                                $0[.leading] - 30
                            }
                    }
//                    Color.red.frame(width: 1)
                }
            }
        }
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(.gray)
        )
        .frame(maxWidth: 350)

    }
}


struct Sample5_2_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Sample5_2_1()
            Sample5_2_2()
            Sample5_2_3()
            Sample5_2_4()
            Sample5_2_5()
        }
        .previewLayout(.fixed(width: 500, height: 400))
    }
}
