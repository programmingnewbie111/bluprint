import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var logoImg: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.logoImg.alpha = 0
        _ = Timer.scheduledTimer(timeInterval: 3.0, target: self, selector: #selector(timeToMoveOn), userInfo: nil, repeats: false)
    }
    @objc func timeToMoveOn() {
    self.performSegue(withIdentifier: "moveSign", sender: self)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIImageView.animate(withDuration: 1.0) {
            self.logoImg.alpha = 1.0


}
}
}
