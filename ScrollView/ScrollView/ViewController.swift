import UIKit
import Then
import SnapKit


class ViewController: UIViewController {

    let scrollView = UIScrollView().then {
        $0.backgroundColor = .yellow
    }
    let contentView = UIView().then {
        $0.backgroundColor = .gray
    }
    let contentLable = UILabel().then {
        $0.text = "Scroll"
        $0.textColor = .black
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        addView()
        setLayout()
    }

    func addView() {
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(contentLable)
    }

    
    
    
    
    func setLayout() {
        scrollView.snp.makeConstraints {
            $0.width.height.equalToSuperview()
        }
        contentView.snp.makeConstraints {
            $0.width.bottom.top.equalToSuperview()
            $0.bottom.equalToSuperview()
            $0.height.equalTo(1000)
        }
        contentLable.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
    }
}

