.class Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager$MainHandler;
.super Landroid/os/Handler;
.source "FocusOverlayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;


# direct methods
.method public constructor <init>(Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;Landroid/os/Looper;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager$MainHandler;->this$0:Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;

    .line 97
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 102
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager$MainHandler;->this$0:Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;

    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/camera/camerafocus/FocusOverlayManager;->cancelAutoFocus()V

    :goto_0
    return-void
.end method
