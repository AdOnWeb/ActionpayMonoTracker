using System;

using Android.App;
using Android.Content;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using Android.OS;

using Actionpay.Tracker.Android;

namespace AndroidExample
{
  [Activity (Label = "Android", MainLauncher = true, Icon = "@drawable/icon")]
  public class MainActivity : Activity
  {
    int count = 0;
    int sentCount = 0;

    protected override void OnCreate (Bundle bundle)
    {
      base.OnCreate (bundle);

      // Set our view from the "main" layout resource
      SetContentView (Resource.Layout.Main);

      // Get our button from the layout resource,
      // and attach an event to it
      FindViewById<Button> (Resource.Id.btnEvent).Click += delegate {
        SLTracker.SharedTracker.TrackAction("event");
      };

      FindViewById<Button> (Resource.Id.btnPurchase).Click += delegate {
        SLTracker.SharedTracker.TrackAction("event", "100");
      };

      TextView status = FindViewById<TextView> (Resource.Id.textStatus);

      SLTracker.SharedTracker.BeginSend += (sender, action) => {
        count++;
        RunOnUiThread(delegate { status.Text = count + " / " + sentCount; });
        return true;
      };
      SLTracker.SharedTracker.EndSend += (sender, action) => {
        sentCount++;
        RunOnUiThread(delegate { status.Text = count + " / " + sentCount; });
      };
    }
  }
}


