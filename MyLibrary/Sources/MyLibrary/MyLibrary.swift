public struct MyLibrary {
    public private(set) var text = "Hello, World!"

    public init() {
    }
    
    public static func add(a: Int, b: Int) -> Int {
        return a + b
    }
}
