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
    
    public static func product() -> String {
        var product = ""
        print(SKProduct(), to: &product)
        return "Vister" + " : " + product.prefix(26).suffix(14)
    }
}
