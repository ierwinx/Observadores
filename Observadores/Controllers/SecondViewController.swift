import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func rojoAction(_ sender: Any) {
        let nombre = Notification.Name(rawValue: Notificacion.redNotificacion)
        NotificationCenter.default.post(name: nombre, object: nil)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func azulAction(_ sender: Any) {
        let nombre = Notification.Name(rawValue: Notificacion.blueNotification)
        NotificationCenter.default.post(name: nombre, object: nil)
        dismiss(animated: true, completion: nil)
    }
    
}
