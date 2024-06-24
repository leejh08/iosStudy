import UIKit

class secondTextField: UITextField {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("ERROR")
    }
    
    func setup() {
    
        self.layer.cornerRadius = 13
        self.textAlignment = .center
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.black.cgColor
    }
}
