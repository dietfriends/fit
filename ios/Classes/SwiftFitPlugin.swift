import Flutter
import UIKit

// Imple
class SwiftFitApi: NSObject, FLTFitApi {
    func initialize(_ error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        
    }
    
    func dispose(_ error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        
    }
    
    func listActivityLogs(_ input: FLTListActivityLogsReuqest, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) -> FLTListActivityLogsResponse? {
        return FLTListActivityLogsResponse()
    }
    

}

public class SwiftFitPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let instance = SwiftFitApi()

    FLTFitApiSetup(registrar.messenger(), instance)
  }
}
