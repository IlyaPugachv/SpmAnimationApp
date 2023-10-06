import UIKit
import NVActivityIndicatorView
import NVActivityIndicatorViewExtended

class BaseViewController: UIViewController, NVActivityIndicatorViewable {
    
    func startAtivityAnimation(message: String, type: NVActivityIndicatorType, color: UIColor) {
        startAnimating(message: message, type: type, color: color)
    }
    
    func stopAtivityAnimating() {
        stopAnimating()
    }
}
