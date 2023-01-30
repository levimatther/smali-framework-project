.class public interface abstract Lcom/android/incallui/call/CallList$Listener;
.super Ljava/lang/Object;
.source "CallList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/call/CallList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onCallListChange(Lcom/android/incallui/call/CallList;)V
.end method

.method public abstract onDisconnect(Lcom/android/incallui/call/DialerCall;)V
.end method

.method public abstract onHandoverToWifiFailed(Lcom/android/incallui/call/DialerCall;)V
.end method

.method public abstract onIncomingCall(Lcom/android/incallui/call/DialerCall;)V
.end method

.method public abstract onInternationalCallOnWifi(Lcom/android/incallui/call/DialerCall;)V
.end method

.method public abstract onSessionModificationStateChange(Lcom/android/incallui/call/DialerCall;)V
.end method

.method public onSpeakEasyStateChange()V
    .locals 0

    return-void
.end method

.method public onUpgradeToRtt(Lcom/android/incallui/call/DialerCall;I)V
    .locals 0

    return-void
.end method

.method public abstract onUpgradeToVideo(Lcom/android/incallui/call/DialerCall;)V
.end method

.method public abstract onWiFiToLteHandover(Lcom/android/incallui/call/DialerCall;)V
.end method
