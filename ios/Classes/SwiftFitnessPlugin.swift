import Flutter
import UIKit

// Imple
class SwiftFitnessApi: NSObject, FLTFitnessApi {
    func initialize(_ error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        
    }
    
    func dispose(_ error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        
    }
    
    func listActivityLogs(_ input: FLTListActivityLogsReuqest, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) -> FLTListActivityLogsResponse? {
        return FLTListActivityLogsResponse()
    }
    

}

public class SwiftFitnessPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let instance = SwiftFitnessApi()

    FLTFitnessApiSetup(registrar.messenger(), instance)
  }
}
