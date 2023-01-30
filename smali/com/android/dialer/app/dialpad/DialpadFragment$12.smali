.class Lcom/android/dialer/app/dialpad/DialpadFragment$12;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Lcom/android/incallui/RttCallDialog$RttDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/dialpad/DialpadFragment;->callSpeedNumber(I)V
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

    .line 3454
    iput-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$12;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 3457
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090272

    if-eq p1, v0, :cond_1

    const v0, 0x7f09034e

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 3459
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$12;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$3000(Lcom/android/dialer/app/dialpad/DialpadFragment;)V

    goto :goto_0

    .line 3462
    :cond_1
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$12;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$3100(Lcom/android/dialer/app/dialpad/DialpadFragment;Z)V

    :goto_0
    return-void
.end method
