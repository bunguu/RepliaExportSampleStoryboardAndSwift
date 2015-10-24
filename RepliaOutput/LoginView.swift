import UIKit


@IBDesignable
class LoginView : UIView {

	lazy var buttonshadowView : UIView = UIView()
	lazy var buttonView : UIView = UIView()
	lazy var loginLabel : UILabel = UILabel()

	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		self.commonInit()
	}

	override init(frame: CGRect) {
		super.init(frame: frame)
		self.commonInit()
	}


	func commonInit() {
		self.bounds = CGRectMake(0, 0, 260, 46.5)

		self.buttonshadowView.frame = CGRectMake(0, 3.5, 260, 43)
		self.buttonshadowView.autoresizingMask = [UIViewAutoresizing.FlexibleWidth, UIViewAutoresizing.FlexibleBottomMargin]
		self.buttonshadowView.layer.cornerRadius = 15
		self.buttonshadowView.backgroundColor = UIColor(red: 0.831, green: 0.472, blue: 0.297, alpha: 1)
		self.addSubview(self.buttonshadowView)

		self.buttonView.frame = CGRectMake(0, 0, 260, 43)
		self.buttonView.autoresizingMask = [UIViewAutoresizing.FlexibleWidth, UIViewAutoresizing.FlexibleBottomMargin]
		self.buttonView.layer.cornerRadius = 15
		self.buttonView.backgroundColor = UIColor(red: 0.984, green: 0.557, blue: 0.349, alpha: 1)
		self.addSubview(self.buttonView)

		self.loginLabel.textAlignment = NSTextAlignment.Center
		self.loginLabel.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
		self.loginLabel.font = UIFont(name: "ArialMT", size: 18)
		self.loginText = NSLocalizedString("LOGIN", comment: "")
		self.loginLabel.frame = CGRectMake(0, 12, 257, 20)
		self.loginLabel.autoresizingMask = [UIViewAutoresizing.FlexibleWidth, UIViewAutoresizing.FlexibleBottomMargin]
		self.addSubview(self.loginLabel)

	}

	// MARK: - text properties

	@IBInspectable var loginText: String? {
		didSet {
			self.loginLabel.text = loginText
		}
	}

}
