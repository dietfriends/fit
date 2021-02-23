import Flutter
import UIKit
import HealthKit
//import SwiftProtobuf

// Imple
class SwiftFitPlugin: NSObject, FlutterPlugin, FLTFitApi {
    public static func register(with registrar: FlutterPluginRegistrar) {
      let messenger : FlutterBinaryMessenger = registrar.messenger()
      let api : FLTFitApi = SwiftFitPlugin()
      FLTFitApiSetup(messenger, api)
    }
    func getActivityType(_ input: FLTProtoWrapper, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) -> FLTProtoWrapper? {
        return nil
    }
    
    func listActivityLogs(_ input: FLTProtoWrapper, error flutterError: AutoreleasingUnsafeMutablePointer<FlutterError?>) -> FLTProtoWrapper? {
        do {
        /*
            let protobuf : FlutterStandardTypedData = input.proto!
        
            _ = try Dietfriends_Fitness_ListActivityLogsRequest(serializedData: protobuf.data)
        
            var response = Dietfriends_Fitness_ListActivityLogsResponse()
            response.activityLogs = [];
            let binaryData: Data = try response.serializedData()

            let wrap = FLTProtoWrapper()
            wrap.proto = FlutterStandardTypedData(bytes: binaryData)
            return wrap*/
            return nil
        } catch {
            flutterError.pointee = FlutterError(code: "Error", message: "", details: "")
            return nil
        }
    }
    

    
    func initialize(_ error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        
    }
    
    func dispose(_ error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        
    }
    


}



    

