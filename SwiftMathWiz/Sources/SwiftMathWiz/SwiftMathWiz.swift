
import MathWiz


public class SwiftMathWiz {
    public private(set) var text = "Hello, World!"
    
    public init() {
    }
    
    public static func Add(a: Int32, b: Int32) -> Int32 {
        MathWiz.add(a, b)
    }
    
    public static func Flip(a: Bool) -> Bool {
        MathWiz.flip(a)
    }
}
