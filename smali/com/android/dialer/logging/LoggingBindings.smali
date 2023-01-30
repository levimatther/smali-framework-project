.class public interface abstract Lcom/android/dialer/logging/LoggingBindings;
.super Ljava/lang/Object;
.source "LoggingBindings.java"


# virtual methods
.method public abstract logCallImpression(Lcom/android/dialer/logging/DialerImpression$Type;Ljava/lang/String;J)V
.end method

.method public abstract logImpression(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V
.end method

.method public abstract logInteraction(Lcom/android/dialer/logging/InteractionEvent$Type;)V
.end method

.method public abstract logQuickContactOnTouch(Landroid/widget/QuickContactBadge;Lcom/android/dialer/logging/InteractionEvent$Type;Z)V
.end method

.method public abstract logScreenView(Lcom/android/dialer/logging/ScreenEvent$Type;Landroid/app/Activity;)V
.end method

.method public abstract logSpeedDialContactComposition(IIIIIII)V
.end method

.method public abstract sendHitEventAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end method
