.class public interface abstract Lcom/android/dialer/lightbringer/Lightbringer;
.super Ljava/lang/Object;
.source "Lightbringer.java"


# virtual methods
.method public abstract getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public abstract getPhoneAccountComponentName()Landroid/content/ComponentName;
.end method

.method public abstract getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract isReachable(Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public abstract registerListener(Lcom/android/dialer/lightbringer/LightbringerListener;)V
.end method

.method public abstract requestUpgrade(Landroid/telecom/Call;)V
.end method

.method public abstract supportsUpgrade(Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public abstract unregisterListener(Lcom/android/dialer/lightbringer/LightbringerListener;)V
.end method
