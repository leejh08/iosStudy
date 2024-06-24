import UIKit
import SnapKit
import Then



class ViewController: UIViewController {
    
    
    let loginLabel = UILabel().then {
        $0.text = "login"
        $0.font = .boldSystemFont(ofSize: 50)
        
        
    }
    
    let idTextField = UITextField().then {
        $0.placeholder = "아이디를 입력하세요"
        $0.textColor = .black
        $0.backgroundColor = .red
        $0.layer.cornerRadius = 15
    }
    
    let passwordTextfield = UITextField().then {
        $0.placeholder = "비밀번호를 입력하세요"
        $0.textColor = .black
        $0.backgroundColor = .red
        $0.layer.cornerRadius = 15
    }
    
    
    
    
    class customView: UIView {
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.view.addSubview(loginLabel)
        self.view.addSubview(idTextField)
        self.view.addSubview(passwordTextfield)
        
        
        
        
        loginLabel.snp.makeConstraints {
            $0.centerX.centerY.equalToSuperview()
        }
        idTextField.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.leading.trailing.equalToSuperview().inset(100)
            $0.top.equalTo(loginLabel.snp.bottom).offset(74)
        }
        passwordTextfield.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.leading.trailing.equalToSuperview().inset(100)
            $0.top.equalTo(loginLabel.snp.bottom).offset(130)
        }
    }


}







