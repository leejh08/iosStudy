import UIKit
import SnapKit
import Then



class StackViewController: UIViewController {

    let stackView = UIStackView().then {
        $0.axis = .vertical
        $0.distribution = .equalSpacing
        $0.spacing = 10
        $0.backgroundColor = .yellow
    }
    
    let view1 = UIView().then {
        $0.backgroundColor = .red
    }
    
    let view2 = UIView().then {
        $0.backgroundColor = .green
    }
    
    let view3 = UIView().then {
        $0.backgroundColor = .cyan
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .blue
        addView()
        setLayout()
    }

    func addView() {
        view.addSubview(stackView)
        stackView.addArrangedSubview(view1)
        stackView.addArrangedSubview(view2)
        stackView.addArrangedSubview(view3)
    }

    func setLayout() {
        stackView.snp.makeConstraints {
            $0.width.equalToSuperview()
        }

        view1.snp.makeConstraints {
            $0.height.equalTo(200)
        }
        view2.snp.makeConstraints {
            $0.height.equalTo(100)
        }
        view3.snp.makeConstraints {
            $0.height.equalTo(320)
        }
        
        }
        
    }

