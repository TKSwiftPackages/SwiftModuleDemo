import Human

public struct Speaker {
    public init() {
    }
    
    public static func intro() -> String {
        return Human.intro() + " : " + "Speaker"
    }
}
