import UIKit


@IBDesignable
class EmailView : UIView {

	lazy var formView2 : UIView = UIView()
	lazy var eMailLabel : UILabel = UILabel()
	lazy var iconemailImageView : UIImageView = UIImageView()

	required init(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		self.commonInit()
	}

	override init(frame: CGRect) {
		super.init(frame: frame)
		self.commonInit()
	}


	func commonInit() {
		self.formView2.alpha = 0.8;
		self.formView2.layer.cornerRadius = 15
		self.formView2.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
		self.addSubview(self.formView2)

		self.eMailLabel.textColor = UIColor(red: 0.6, green: 0.6, blue: 0.6, alpha: 1)
		self.eMailLabel.font = UIFont(name: "ArialMT", size: 15)
		self.eMailText = NSLocalizedString("E-Mail", comment: "")
		self.addSubview(self.eMailLabel)

		self.iconemailImageView.image = UIImage(named:"iconemail")
		self.addSubview(self.iconemailImageView)

	}

	override func layoutSubviews() {
		let originalFrame = self.frame
		self.bounds = CGRectMake(0, 0, 260, 43)

		self.formView2.frame = CGRectMake(0, 0, 260, 43)
		self.formView2.autoresizingMask = UIViewAutoresizing.FlexibleWidth | UIViewAutoresizing.FlexibleBottomMargin

		self.eMailLabel.frame = CGRectMake(47.5, 10, 198, 23.5)
		self.eMailLabel.autoresizingMask = UIViewAutoresizing.FlexibleWidth | UIViewAutoresizing.FlexibleBottomMargin

		self.iconemailImageView.frame = CGRectMake(14.5, 16.5, 18.5, 13)
		self.iconemailImageView.autoresizingMask = UIViewAutoresizing.FlexibleRightMargin | UIViewAutoresizing.FlexibleBottomMargin

		self.frame = originalFrame
	}

	// MARK: - text properties

	@IBInspectable var eMailText: String? {
		didSet {
			self.eMailLabel.text = eMailText
		}
	}

	// MARK: - image properties

	@IBInspectable var iconemailImage: UIImage? {
		didSet {
			self.iconemailImageView.image = iconemailImage
		}
	}

}
