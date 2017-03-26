-dontoptimize
-dontobfuscate

-dontnote android.net.http.*
-dontnote org.apache.http.**

-keep class com.ashish.movieguide.data.network.models.**

-keep public class * extends android.view.View {
    public <init>(android.content.Context);
    public <init>(android.content.Context, android.util.AttributeSet);
    public <init>(android.content.Context, android.util.AttributeSet, int);
    public void set*(...);
}

# Preserve static fields of inner classes of R classes that might be accessed through introspection.
-keepclassmembers class **.R$* {
    public static <fields>;
}

-keep class * extends android.support.v4.view.ActionProvider
-keepclassmembers class * extends android.support.v4.view.ActionProvider {
    <init>(android.content.Context);
}

# Kotlin
-dontnote kotlin.**

# Okio
-dontwarn okio.**
-dontnote okio.**

# OkHttp
-dontwarn okhttp3.**
-dontnote okhttp3.**

# Retrofit
-dontwarn rx.**
-dontwarn retrofit2.**
-dontnote retrofit2.**
-keep class retrofit2.** { *; }
-keepclasseswithmembers class * {
    @retrofit2.http.* <methods>;
}

# RxJava 2
-dontnote io.reactivex.**

# IcePick
-dontwarn icepick.**
-keep class **$$Icepick { *; }
-keepclasseswithmembernames class * {
    @icepick.* <fields>;
}

# Glide
-keep public class * implements com.bumptech.glide.module.GlideModule
-keep public enum com.bumptech.glide.load.resource.bitmap.ImageHeaderParser$** {
  **[] $VALUES;
  public *;
}