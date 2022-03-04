import StoreKit

public struct Visitor {
    public init() {
    }
    
    public static func intro() -> String {
        var uuid = "Unkonwn"
        if #available(iOS 15, *) {
            uuid = AppStore.deviceVerificationID!.uuidString
        }
        return "Vister" + " : " + "UUID-" + uuid.prefix(7)
    }
}
