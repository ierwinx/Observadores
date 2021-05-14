import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblResult: UILabel!
    
    private let nombreRed = NSNotification.Name(rawValue: Notificacion.redNotificacion)
    private let nombreblue = NSNotification.Name(rawValue: Notificacion.blueNotification)
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        createObserver()
    }
    
    private func createObserver() {
        //red
        NotificationCenter.default.addObserver(self, selector: #selector(actualizaNombre(notificacion:)), name: nombreRed, object: nil)
        
        //blue
        NotificationCenter.default.addObserver(self, selector: #selector(actualizaNombre(notificacion:)), name: nombreblue, object: nil)
    }
    
    @objc private func actualizaNombre(notificacion: Notification) {
        
        if notificacion.name == nombreRed {
            lblResult.text = "Escogiste: Rojo"
        } else {
            lblResult.text = "Escogiste: Azul"
        }
        
    }

}

