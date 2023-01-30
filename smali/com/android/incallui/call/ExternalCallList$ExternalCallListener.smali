.class public interface abstract Lcom/android/incallui/call/ExternalCallList$ExternalCallListener;
.super Ljava/lang/Object;
.source "ExternalCallList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/call/ExternalCallList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ExternalCallListener"
.end annotation


# virtual methods
.method public abstract onExternalCallAdded(Landroid/telecom/Call;)V
.end method

.method public abstract onExternalCallPulled(Landroid/telecom/Call;)V
.end method

.method public abstract onExternalCallRemoved(Landroid/telecom/Call;)V
.end method

.method public abstract onExternalCallUpdated(Landroid/telecom/Call;)V
.end method
