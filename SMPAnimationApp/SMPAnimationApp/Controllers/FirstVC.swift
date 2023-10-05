import UIKit

class FirstVC: BaseViewController {
    
    @IBOutlet weak var activityIndicatorView: UIActivityIndicatorView! {
        didSet {
            activityIndicatorView.isHidden = true
        }
    }
    
    @IBAction func startBtnAction() {
        activityIndicatorView.isHidden = false
        activityIndicatorView.startAnimating()
        
        startAtivityAnimation(message: "Loading",
                              type: .ballClipRotateMultiple,
                              color: .red)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) { [weak self] in
            self?.activityIndicatorView.isHidden = true
            self?.stopAtivityAnimating()
        }
    }
}
