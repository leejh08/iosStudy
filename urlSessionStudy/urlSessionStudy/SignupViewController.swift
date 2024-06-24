import UIKit

class SignupViewController: UIViewController {
    
    
    @IBOutlet weak var idTextField: UITextField!
    
    
    @IBOutlet weak var passWordTextField: UITextField!
    
    
    @IBAction func signUpButton(_ sender: Any) {
        let signUp = SignUp(email: idTextField.text!, password: passWordTextField.text!, nickname: nickNameTextField.text!, genre: "NOVEL")
        
        guard let signUpBody = try? JSONEncoder().encode(signUp) else {return}
        
        let url = URL(string: "http://3.37.195.210:8080/users/signup")
        
        var request = URLRequest(url: url!)
        
        
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
    
        let task = URLSession.shared.uploadTask(with: request, from: signUpBody) { (data: Data?, response: URLResponse?, error: Error?) in
            
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("urlSesstion error")
                return
            }
            print(response.statusCode)
        }
        task.resume()
    }
    
    
    @IBOutlet weak var nickNameTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
