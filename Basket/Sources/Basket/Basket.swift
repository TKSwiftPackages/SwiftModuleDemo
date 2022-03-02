import BasketFramework
import BasketLibrary

public struct Basket {
    public init() {
    }
    
    public static func introFramework() -> String {
        return "Basket" + " : " + BasketFrameworkIntro.intro()
    }

    public static func introLibrary() -> String {
        return "Basket" + " : " + BasketLibraryIntro.intro()
    }
}
