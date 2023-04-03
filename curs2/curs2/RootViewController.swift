import UIKit
struct ButtonInfo {
    let text: String
    let color: UIColor
}

class RootViewController: UIViewController{
    
    
    @IBOutlet weak private var button1: UIButton! // NAMING: sa oferiti context: topButton
    @IBOutlet weak private var button2: UIButton!
    
    @IBAction func onPushButton2(_ sender: Any) {
        
        performSegue(
            withIdentifier: "segueToOrangeController",
            sender: ButtonInfo(
                text: "The bottom button was pressed",
                color: .yellow
            )
        )
    }
    
    @IBAction func onPushButtonPressed(_ sender: Any) {
        performSegue(
            withIdentifier: "segueToOrangeController",
            sender: ButtonInfo(
                text: "The top button was pressed",
                color: .orange
            )
        )
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueToOrangeController" {
            let destinationController = segue.destination as! OrangeViewController
            destinationController.buttonInfo = (sender as! ButtonInfo)
        }
    }

    
}
protocol ButtonDelegate: AnyObject {
    func didPressButton()
}
