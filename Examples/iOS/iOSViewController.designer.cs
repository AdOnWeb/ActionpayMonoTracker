// WARNING
//
// This file has been generated automatically by Xamarin Studio from the outlets and
// actions declared in your storyboard file.
// Manual changes to this file will not be maintained.
//
using System;
using MonoTouch.Foundation;
using MonoTouch.UIKit;
using System.CodeDom.Compiler;

namespace iOS
{
	[Register ("iOSViewController")]
	partial class iOSViewController
	{
		[Outlet]
		[GeneratedCode ("iOS Designer", "1.0")]
		UILabel status { get; set; }

		[Action ("UIButton5_TouchUpInside:")]
		[GeneratedCode ("iOS Designer", "1.0")]
		partial void UIButton5_TouchUpInside (UIButton sender);

		[Action ("UIButton6_TouchUpInside:")]
		[GeneratedCode ("iOS Designer", "1.0")]
		partial void UIButton6_TouchUpInside (UIButton sender);

		void ReleaseDesignerOutlets ()
		{
			if (status != null) {
				status.Dispose ();
				status = null;
			}
		}
	}
}
