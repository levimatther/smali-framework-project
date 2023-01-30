.class public Lcom/android/voicemail/impl/utils/LoggerUtils;
.super Ljava/lang/Object;
.source "LoggerUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$logImpressionOnMainThread$0(Landroid/content/Context;Lcom/android/dialer/logging/DialerImpression$Type;)V
    .locals 0

    .line 31
    invoke-static {p0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    return-void
.end method

.method public static logImpressionOnMainThread(Landroid/content/Context;Lcom/android/dialer/logging/DialerImpression$Type;)V
    .locals 1

    .line 31
    new-instance v0, Lcom/android/voicemail/impl/utils/-$$Lambda$LoggerUtils$hm5095vfbIDmifZvMZ739GeoLTs;

    invoke-direct {v0, p0, p1}, Lcom/android/voicemail/impl/utils/-$$Lambda$LoggerUtils$hm5095vfbIDmifZvMZ739GeoLTs;-><init>(Landroid/content/Context;Lcom/android/dialer/logging/DialerImpression$Type;)V

    invoke-static {v0}, Lcom/android/dialer/common/concurrent/ThreadUtil;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
