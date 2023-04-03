import UIKit

class OrangeViewController: UIViewController {
    
    
    @IBOutlet weak private var textLabel: UILabel!
    
    var buttonInfo: ButtonInfo?

    override func viewDidLoad() {
        super.viewDidLoad()
        if let buttonInfo {
            textLabel.text = buttonInfo.text
            view.backgroundColor = buttonInfo.color
        }
    }
    
    @IBAction private func onBackButtonPressed(_ sender: Any) {
        if let navigationController = navigationController{
            navigationController.popViewController(animated: true)
        }
    }
    
}


