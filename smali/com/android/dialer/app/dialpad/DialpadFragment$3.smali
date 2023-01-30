.class Lcom/android/dialer/app/dialpad/DialpadFragment$3;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/dialpad/DialpadFragment;->setFormattedDigits(Ljava/lang/String;Ljava/lang/String;)V
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

    .line 1227
    iput-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$3;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1230
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$3;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {v0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$2800(Lcom/android/dialer/app/dialpad/DialpadFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1231
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$3;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {v0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$2900(Lcom/android/dialer/app/dialpad/DialpadFragment;)V

    :cond_0
    return-void
.end method
