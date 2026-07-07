import SwiftUI

enum Theme {
    static let accent = Color(hex: "#C08A28")
    static let background = Color(hex: "#0F0D08")
    static let ink = Color(hex: "#F6EEDD")
    static let muted = Color(hex: "#B79A6B")

    static func font(_ size: CGFloat, weight: Font.Weight = .regular) -> Font {
        .system(size: size, weight: weight, design: .serif)
    }

    static let cardCorner: CGFloat = 16
}

extension Color {
    init(hex: String) {
        let s = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var v: UInt64 = 0
        Scanner(string: s).scanHexInt64(&v)
        let r = Double((v >> 16) & 0xFF) / 255.0
        let g = Double((v >> 8) & 0xFF) / 255.0
        let b = Double(v & 0xFF) / 255.0
        self.init(red: r, green: g, blue: b)
    }
}
