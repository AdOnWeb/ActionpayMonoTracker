ActionpayMonoTracker
====================

SDK для внедрения в сторонние проекты с целью отслеживания установки приложения а также целевых действий пользователей.

Внедрение
=========

Линкуем файлы в проект:
-----------------------

 - Actionpay.Tracker.Core.dll
 - JsonLight.dll
 - MD5.dll

### Для Monotouch:

 - Actionpay.Tracker.IOS.dll
 - ODIN.ios.dll

### Для Monodroid:

 - Actionpay.Tracker.Android.dll
 - ODIN.android.dll

Инициализация трекера
---------------------

Для Monodroid в Application

```cs
[Application]
public class App : Application
{
  // Required constructor
  public App(IntPtr javaReference, JniHandleOwnership transfer) 
    : base(javaReference, transfer) { }

  public override void OnCreate()
  {
    base.OnCreate ();

    // Инициализация в боевом режиме
    SLTracker.Init ("1" /* App ID */, ApplicationContext, testMode: true);
    // Установим время автоматической отсылки событий
    SLTracker.SharedTracker.UpdateInterval(10 /* каждые 10 секунд */, true /* Повторять? */);
  }
}
```

Для Monotouch

```cs
[Register ("AppDelegate")]
public partial class AppDelegate : UIApplicationDelegate
{

  public override bool FinishedLaunching (UIApplication application, NSDictionary launchOptions)
  {
    // Инициализация в боевом режиме
    SLTracker.Init ("1" /* App ID */, "trackerexample" /* URL scheme */, null, false /* Ignore SSL? */, testMode: true);
    // Установим время автоматической отсылки событий
    SLTracker.SharedTracker.UpdateInterval(10 /* каждые 10 секунд */, true /* Повторять? */);
    return true;
  }
  
  // ...

  // ЭТО НЕОБХОДИМО СДЕЛАТЬ: Устанавливаем обработчик URL Scheme
  public override bool OpenUrl (UIApplication application, NSUrl url, string sourceApplication, NSObject annotation)
  {
    return SLTracker.SharedTracker.TrackUrl (application, url);
  }
}
```

Обработка событий

```cs
SLTracker.SharedTracker.BeginSend += (sender, action) => { /* ... */ };
SLTracker.SharedTracker.EndSend += (sender, action) => { /* ... */ };
```

Использование
-------------

Событие происходит только один раз

```cs
SLTracker.SharedTracker.TrackAction("event"); // Повторно событие не отработает
```

Событие отрабатывает каждый раз

```cs
SLTracker.SharedTracker.TrackAction("purchase", "440");
```

Методы отслеживания событий

```cs
// name – имя события
// price – используется при регистрации событий оплаты (если указан этот параметр событие отрабатывает каждый раз)
// order – Идетификатор заказа (Используется совместно с price)
// apid – Постфикс идентификатор (если хотите указать свой постфикс к имени события, в противном случае он будет формироваться автоматически)

Task<bool> trackAction(string name, string price = null, string order = null, string apid = null)
```

Обратная связь
==============
