using System;

using Android.App;
using Android.Runtime;

using Actionpay.Tracker.Android;

namespace AndroidExample
{
  [Application]
  public class App : Application
  {
    // Required constructor
    public App(IntPtr javaReference, JniHandleOwnership transfer) 
      : base(javaReference, transfer) { }

    public override void OnCreate()
    {
      base.OnCreate ();

      SLTracker.Init ("1", ApplicationContext, testMode: true);
      SLTracker.SharedTracker.UpdateInterval(10, true);
    }
  }
}

