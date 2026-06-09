-dontobfuscate
-optimizationpasses 5

-keep public class * extends android.app.Activity
-keep public class * extends android.app.Service
-keep public class * extends android.content.BroadcastReceiver

-keep class com.google.firebase.** { *; }
-keep class com.google.android.gms.** { *; }
-keep class retrofit2.** { *; }
-keep class com.squareup.okhttp3.** { *; }
-keep class com.google.gson.** { *; }
-keep class io.socket.** { *; }

-assumenosideeffects class android.util.Log {
    public static *** d(...);
    public static *** v(...);
}
