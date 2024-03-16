import XCTest
@testable import FontDescriptor

final class FontDescriptorTests: XCTestCase {
  func testFontDescriptor() throws {
    let expected = [
      "ArialMT": (face: "Regular", family: "Arial", visibleName: "Arial"),
      "Arial-BoldMT": (face: "Bold", family: "Arial", visibleName: "Arial Bold"),
      "Arial-BoldItalicMT": (face: "Bold Italic", family: "Arial", visibleName: "Arial Bold Italic"),
      "Arial-ItalicMT": (face: "Italic", family: "Arial", visibleName: "Arial Italic")
    ]

    expected.forEach { key, value in
      let descriptor = FontDescriptor(name: key)
      XCTAssertEqual(descriptor.face, value.face)
      XCTAssertEqual(descriptor.family, value.family)
      XCTAssertEqual(descriptor.name, key)
      XCTAssertEqual(descriptor.visibleName, value.visibleName)
    }
  }
}
