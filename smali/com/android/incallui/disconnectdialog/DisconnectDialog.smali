.class public interface abstract Lcom/android/incallui/disconnectdialog/DisconnectDialog;
.super Ljava/lang/Object;
.source "DisconnectDialog.java"


# virtual methods
.method public abstract createDialog(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/incallui/call/DialerCall;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/app/Dialog;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end method

.method public abstract shouldShow(Landroid/telecom/DisconnectCause;)Z
.end method
