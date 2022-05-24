import Flutter
import UIKit

public class SwiftEmojiLoggerNativePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "emoji_logger_native", binaryMessenger: registrar.messenger())
    let instance = SwiftEmojiLoggerNativePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
      let arguments = call.arguments as! NSDictionary
      
      switch call.method {
      case "debug":
          print(arguments["message"]!)
          result(nil)
          break
      case "error":
          print(arguments["message"]!)
          result(nil)
          break
      default:
          result(FlutterMethodNotImplemented)
      }
  }
}
