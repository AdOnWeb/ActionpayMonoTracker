#!/usr/bin/env sh

#mono ../../proj.mono/tools/ILMerge.exe /out:Tracker.iOS.dll \
#  Actionpay.Tracker.IOS.dll Actionpay.Tracker.Core.dll \
#  JsonLight.dll MD5.dll ODIN.ios.dll 

#mono ../../proj.mono/tools/ILMerge.exe /out:Tracker.Android.dll \
#  Actionpay.Tracker.Android.dll Actionpay.Tracker.Core.dll \
#  JsonLight.dll MD5.dll ODIN.android.dll 

# mono ../../proj.mono/tools/monomerge.exe -out Tracker.Core.dll \
#   ../../proj.mono.ios/Actionpay.Tracker.IOS/bin/Release/Actionpay.Tracker.Core.dll \
#   ../../proj.mono.ios/Actionpay.Tracker.IOS/bin/Release/JsonLight.dll \
#   ../../proj.mono.ios/Actionpay.Tracker.IOS/bin/Release/MD5.dll

# mono ../../proj.mono/tools/monomerge.exe -out Tracker.iOS.dll \
#   ../../proj.mono.ios/Actionpay.Tracker.IOS/bin/Release/Actionpay.Tracker.IOS.dll \
#   ../../proj.mono.ios/Actionpay.Tracker.IOS/bin/Release/ODIN.ios.dll

cp ../../proj.mono.ios/Smartlead.Tracker.IOS/bin/Release/Actionpay.Tracker.Core.dll Actionpay.Tracker.Core.dll
cp ../../proj.mono.ios/Smartlead.Tracker.IOS/bin/Release/JsonLight.dll JsonLight.dll
cp ../../proj.mono.ios/Smartlead.Tracker.IOS/bin/Release/MD5.dll MD5.dll

cp ../../proj.mono.ios/Smartlead.Tracker.IOS/bin/Release/Actionpay.Tracker.IOS.dll Actionpay.Tracker.IOS.dll
cp ../../proj.mono.ios/Smartlead.Tracker.IOS/bin/Release/ODIN.ios.dll ODIN.ios.dll

# mono ../../proj.mono/tools/monomerge.exe -out Tracker.Android.dll \
#   ../../proj.mono.android/Actionpay.Tracker.Android/bin/Release/Actionpay.Tracker.Android.dll \
#   ../../proj.mono.android/Actionpay.Tracker.Android/bin/Release/ODIN.android.dll

cp ../../proj.mono.android/Smartlead.Tracker.Android/bin/Release/Actionpay.Tracker.Android.dll Actionpay.Tracker.Android.dll
cp ../../proj.mono.android/Smartlead.Tracker.Android/bin/Release/ODIN.android.dll ODIN.android.dll
