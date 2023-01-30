.class Lcom/android/dialer/app/dialpad/DialpadFragment$10;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/dialpad/DialpadFragment;->onUsbDebug()V
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

    .line 3196
    iput-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$10;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 3199
    iget-object p2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$10;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-virtual {p2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2}, Lcom/android/dialer/app/SpecialCharSequenceMgr;->sendUSBDebugChangeBC(Landroid/content/Context;)V

    .line 3200
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
