#if os(iOS)
import UIKit
#else
import AppKit
#endif

#if os(iOS)
public typealias FontDescriptor = UIFontDescriptor
#else
public typealias FontDescriptor = NSFontDescriptor
#endif

public extension FontDescriptor {
  var face: String {
    object(forKey: .face)! as! String
  }

  var family: String {
    object(forKey: .family)! as! String
  }

  var name: String {
    object(forKey: .name)! as! String
  }

  var visibleName: String {
    object(forKey: .visibleName)! as! String
  }

  convenience init(name: String) {
    self.init(name: name, matrix: .identity)
  }
}
