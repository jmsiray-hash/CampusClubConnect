import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var reminderSwitch: UISwitch!
    @IBOutlet weak var roleSegmentedControl: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // Data passing papuntang ConfirmationViewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationVC = segue.destination as? ConfirmationViewController {
            destinationVC.studentName = nameTextField.text
            
            let selectedIndex = roleSegmentedControl.selectedSegmentIndex
            destinationVC.selectedRole = roleSegmentedControl.titleForSegment(at: selectedIndex)
            
            destinationVC.isRemindersOn = reminderSwitch.isOn
        }
    }
}
