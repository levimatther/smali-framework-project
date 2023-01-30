.class Lcom/android/dialer/app/dialpad/DialpadFragment$4;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Lcom/android/incallui/RttCallDialog$RttDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/dialpad/DialpadFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/dialpad/DialpadFragment;)V
    .locals 0

    .line 1680
    iput-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$4;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1683
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090272

    if-eq p1, v0, :cond_1

    const v0, 0x7f09034e

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1685
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$4;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$3000(Lcom/android/dialer/app/dialpad/DialpadFragment;)V

    goto :goto_0

    :cond_1
    const-string p1, "DialpadFragment"

    const-string v0, "onKeyUp rtt_call"

    .line 1688
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$4;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$3100(Lcom/android/dialer/app/dialpad/DialpadFragment;Z)V

    :goto_0
    return-void
.end method
