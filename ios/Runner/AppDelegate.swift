import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    
    let liveViewFactory = DummyViewFactory()
    registrar(forPlugin: "dummyView")?.register(liveViewFactory, withId: "dummyView")
    
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
