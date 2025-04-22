# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in /home/dd/Work/android-sdk-linux/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Proguard configurations for common Android libraries:
# https://github.com/krschultz/android-proguard-snippets


-ignorewarnings
-keep class com.example.BuildConfig { *; }
-keep class com.newrelic.** { *; }
-dontwarn com.newrelic.**
-keepattributes Exceptions, Signature, InnerClasses, LineNumberTable, SourceFile, EnclosingMethod

##
## NewRelic Gradle plugin 7.x may require the following additions:
##
# Retain generic signatures of TypeToken and its subclasses if R8 version 3.0 full-mode is enabled.
# https://r8.googlesource.com/r8/+/refs/heads/master/compatibility-faq.md#r8-full-mode
-keepattributes Signature
-keep class com.newrelic.com.google.gson.reflect.TypeToken { *; }
-keep class * extends com.newrelic.com.google.gson.reflect.TypeToken


## Gson rules
# Gson uses generic type information stored in a class file when working with fields. Proguard
# removes such information by default, so configure it to keep all of it.
#-keepattributes Signature

# For using GSON @Expose annotation
-keepattributes *Annotation*

# Gson specific classes
-dontwarn sun.misc.**
#-keep class com.google.gson.stream.** { *; }