using System;
using System.Drawing;

using MonoTouch.Foundation;
using MonoTouch.UIKit;

using Actionpay.Tracker.IOS;

namespace iOS
{
  public partial class iOSViewController : UIViewController
  {
    int count = 0;
    int sentCount = 0;

    public iOSViewController (IntPtr handle) : base (handle)
    {
    }

    public override void DidReceiveMemoryWarning ()
    {
      // Releases the view if it doesn't have a superview.
      base.DidReceiveMemoryWarning ();
      
      // Release any cached data, images, etc that aren't in use.
    }

    #region View lifecycle

    public override void ViewDidLoad ()
    {
      base.ViewDidLoad ();

      SLTracker.SharedTracker.BeginSend += (sender, action) => {
        count++;
        BeginInvokeOnMainThread(delegate { status.Text = count + " / " + sentCount; });
        return true;
      };
      SLTracker.SharedTracker.EndSend += (sender, action) => {
        sentCount++;
        BeginInvokeOnMainThread(delegate { status.Text = count + " / " + sentCount; });
      };
    }

    public override void ViewWillAppear (bool animated)
    {
      base.ViewWillAppear (animated);
    }

    public override void ViewDidAppear (bool animated)
    {
      base.ViewDidAppear (animated);
    }

    public override void ViewWillDisappear (bool animated)
    {
      base.ViewWillDisappear (animated);
    }

    public override void ViewDidDisappear (bool animated)
    {
      base.ViewDidDisappear (animated);
    }

    #endregion

    partial void UIButton5_TouchUpInside (UIButton sender)
    {
      SLTracker.SharedTracker.TrackAction("event");
    }

    partial void UIButton6_TouchUpInside (UIButton sender)
    {
      SLTracker.SharedTracker.TrackAction("purchase", "100");
    }
  }
}

