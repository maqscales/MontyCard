import SwiftUI

// macOS 12 support shims.
// View.fontWeight(_:) is macOS 13+. Text.fontWeight(_:) works on 10.15+.

extension Text {
    func compatFontWeight(_ weight: Font.Weight?) -> Text {
        self.fontWeight(weight)
    }
}

extension View {
    @ViewBuilder
    func compatFontWeight(_ weight: Font.Weight?) -> some View {
        if #available(macOS 13.0, *) {
            self.fontWeight(weight)
        } else {
            self
        }
    }
}
