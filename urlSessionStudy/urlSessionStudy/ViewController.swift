import UIKit
import Alamofire


class ViewController: UIViewController {
    
    @IBOutlet weak var idTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBAction func login(_ sender: Any) {
        let loginBody = Login(email: idTextField.text!, password: passwordTextField.text!)
        
        guard let loginBody = try? JSONEncoder().encode(loginBody) else {return}
        
        let url = URL(string: "http://3.37.195.210:8080/users/login")
        
        var request = URLRequest(url: url!)
        
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        
        
        let task = URLSession.shared.uploadTask(with: request, from: loginBody) { (data, response, error) in
            guard let data, let response = response as? HTTPURLResponse, (200..<300) ~= response.statusCode else {
                print("Error: HTTP request failed")
                return
            }
            print(data)
        }
        task.resume()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
}

