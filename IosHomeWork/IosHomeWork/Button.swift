import UIKit


public class Button: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("ERROR")
    }
    
    public func setup(text: String) {
        self.setTitle(text, for: .normal)
        self.backgroundColor = .red
        self.tintColor = .white
        self.layer.cornerRadius = 14
    }
}
