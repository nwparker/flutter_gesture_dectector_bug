import Foundation

class DummyViewFactory: NSObject, FlutterPlatformViewFactory {    
    func create(withFrame frame: CGRect, viewIdentifier viewId: Int64, arguments args: Any?) -> FlutterPlatformView {
        return DummyView()
    }
}
