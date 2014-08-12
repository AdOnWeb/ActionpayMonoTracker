#!/usr/bin/env sh

#mono ../../proj.mono/tools/ILMerge.exe /out:Tracker.iOS.dll \
#  Smartlead.Tracker.IOS.dll Smartlead.Tracker.Core.dll \
#  JsonLight.dll MD5.dll ODIN.ios.dll 

#mono ../../proj.mono/tools/ILMerge.exe /out:Tracker.Android.dll \
#  Smartlead.Tracker.Android.dll Smartlead.Tracker.Core.dll \
#  JsonLight.dll MD5.dll ODIN.android.dll 

mono ../../proj.mono/tools/monomerge.exe -out Tracker.Core.dll \
  ../../proj.mono.ios/Smartlead.Tracker.IOS/bin/Release/Smartlead.Tracker.Core.dll \
  ../../proj.mono.ios/Smartlead.Tracker.IOS/bin/Release/JsonLight.dll \
  ../../proj.mono.ios/Smartlead.Tracker.IOS/bin/Release/MD5.dll

# mono ../../proj.mono/tools/monomerge.exe -out Tracker.iOS.dll \
#   ../../proj.mono.ios/Smartlead.Tracker.IOS/bin/Release/Smartlead.Tracker.IOS.dll \
#   ../../proj.mono.ios/Smartlead.Tracker.IOS/bin/Release/ODIN.ios.dll

cp ../../proj.mono.ios/Smartlead.Tracker.IOS/bin/Release/Smartlead.Tracker.IOS.dll Tracker.IOS.dll

cp ../../proj.mono.ios/Smartlead.Tracker.IOS/bin/Release/ODIN.ios.dll ODIN.ios.dll

# mono ../../proj.mono/tools/monomerge.exe -out Tracker.Android.dll \
#   ../../proj.mono.android/Smartlead.Tracker.Android/bin/Release/Smartlead.Tracker.Android.dll \
#   ../../proj.mono.android/Smartlead.Tracker.Android/bin/Release/ODIN.android.dll

cp ../../proj.mono.android/Smartlead.Tracker.Android/bin/Release/Smartlead.Tracker.Android.dll Tracker.Android.dll

cp ../../proj.mono.android/Smartlead.Tracker.Android/bin/Release/ODIN.android.dll ODIN.android.dll
