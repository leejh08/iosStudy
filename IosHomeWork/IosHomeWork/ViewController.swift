import UIKit
import SnapKit
import Then

class ViewController: UIViewController {
    
    let loginLabel = UILabel().then {
        $0.text = "Login"
        $0.textColor = .black
        $0.font = .systemFont(ofSize: 30)
    }

    
    let loginTextField = secondTextField()
    let passwordTextField = secondTextField()
    let loginButton = Button()
    
    
    func attribute() {
        view.backgroundColor = .white
    }
    
    func layout() {
        [
            loginLabel,
            loginTextField,
            passwordTextField,
            loginButton,
            
        ].forEach {view.addSubview($0)}
        
        
        loginLabel.snp.makeConstraints {
            $0.centerX.centerY.equalToSuperview()
        }
        
        loginTextField.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.bottom.equalTo(self.view.safeAreaLayoutGuide).inset(250)
            $0.leading.trailing.equalToSuperview().inset(30)
            $0.width.equalTo(10)
        }
        
        passwordTextField.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.bottom.equalTo(self.view.safeAreaLayoutGuide).inset(200)
            $0.leading.trailing.equalToSuperview().inset(30)
        }
        
        loginButton.snp.makeConstraints {
            $0.top.equalTo(passwordTextField.snp.bottom).offset(20)
            $0.leading.trailing.equalToSuperview().inset(30)
            
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.setup(text: "LOGIN")
        
        layout()
        attribute()
    
    }
}



