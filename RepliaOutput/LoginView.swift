import UIKit


@IBDesignable
class LoginView : UIView {

	lazy var buttonshadowView : UIView = UIView()
	lazy var buttonView : UIView = UIView()
	lazy var loginLabel : UILabel = UILabel()

	required init(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		self.commonInit()
	}

	override init(frame: CGRect) {
		super.init(frame: frame)
		self.commonInit()
	}


	func commonInit() {
		self.buttonshadowView.layer.cornerRadius = 15
		self.buttonshadowView.backgroundColor = UIColor(red: 0.831, green: 0.472, blue: 0.297, alpha: 1)
		self.addSubview(self.buttonshadowView)

		self.buttonView.layer.cornerRadius = 15
		self.buttonView.backgroundColor = UIColor(red: 0.984, green: 0.557, blue: 0.349, alpha: 1)
		self.addSubview(self.buttonView)

		self.loginLabel.textAlignment = NSTextAlignment.Center
		self.loginLabel.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
		self.loginLabel.font = UIFont(name: "ArialMT", size: 18)
		self.loginText = NSLocalizedString("LOGIN", comment: "")
		self.addSubview(self.loginLabel)

	}

	override func layoutSubviews() {
		let originalFrame = self.frame
		self.bounds = CGRectMake(0, 0, 260, 46.5)

		self.buttonshadowView.frame = CGRectMake(0, 3.5, 260, 43)
		self.buttonshadowView.autoresizingMask = UIViewAutoresizing.FlexibleWidth | UIViewAutoresizing.FlexibleBottomMargin

		self.buttonView.frame = CGRectMake(0, 0, 260, 43)
		self.buttonView.autoresizingMask = UIViewAutoresizing.FlexibleWidth | UIViewAutoresizing.FlexibleBottomMargin

		self.loginLabel.frame = CGRectMake(0, 8.5, 257, 27.5)
		self.loginLabel.autoresizingMask = UIViewAutoresizing.FlexibleWidth | UIViewAutoresizing.FlexibleBottomMargin

		self.frame = originalFrame
	}

	// MARK: - text properties

	@IBInspectable var loginText: String? {
		didSet {
			self.loginLabel.text = loginText
		}
	}

}
