import UIKit


@IBDesignable
class PasswordView : UIView {

	lazy var formView : UIView = UIView()
	lazy var passwordLabel : UILabel = UILabel()
	lazy var iconpasswordImageView : UIImageView = UIImageView()

	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		self.commonInit()
	}

	override init(frame: CGRect) {
		super.init(frame: frame)
		self.commonInit()
	}


	func commonInit() {
		self.bounds = CGRectMake(0, 0, 260, 43)

		self.formView.alpha = 0.8;
		self.formView.frame = CGRectMake(0, 0, 260, 43)
		self.formView.autoresizingMask = [UIViewAutoresizing.FlexibleWidth, UIViewAutoresizing.FlexibleBottomMargin]
		self.formView.layer.cornerRadius = 15
		self.formView.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
		self.addSubview(self.formView)

		self.passwordLabel.textColor = UIColor(red: 0.6, green: 0.6, blue: 0.6, alpha: 1)
		self.passwordLabel.font = UIFont(name: "ArialMT", size: 15)
		self.passwordText = NSLocalizedString("Password", comment: "")
		self.passwordLabel.frame = CGRectMake(48, 14, 197.5, 17)
		self.passwordLabel.autoresizingMask = [UIViewAutoresizing.FlexibleRightMargin, UIViewAutoresizing.FlexibleBottomMargin]
		self.addSubview(self.passwordLabel)

		self.iconpasswordImageView.image = UIImage(named:"iconpassword")
		self.iconpasswordImageView.frame = CGRectMake(16, 12.5, 17.5, 19)
		self.iconpasswordImageView.autoresizingMask = [UIViewAutoresizing.FlexibleRightMargin, UIViewAutoresizing.FlexibleBottomMargin]
		self.addSubview(self.iconpasswordImageView)

	}

	// MARK: - text properties

	@IBInspectable var passwordText: String? {
		didSet {
			self.passwordLabel.text = passwordText
		}
	}

	// MARK: - image properties

	@IBInspectable var iconpasswordImage: UIImage? {
		didSet {
			self.iconpasswordImageView.image = iconpasswordImage
		}
	}

}
