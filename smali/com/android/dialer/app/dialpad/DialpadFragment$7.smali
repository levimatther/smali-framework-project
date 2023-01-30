.class Lcom/android/dialer/app/dialpad/DialpadFragment$7;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Lcom/android/dialer/app/calllog/CallLogAsync$OnLastOutgoingCallComplete;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/dialpad/DialpadFragment;->queryLastOutgoingCall()V
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

    .line 2887
    iput-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$7;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lastOutgoingCall(Ljava/lang/String;)V
    .locals 1

    .line 2896
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$7;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-virtual {v0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2899
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$7;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {v0, p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$3302(Lcom/android/dialer/app/dialpad/DialpadFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 2900
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$7;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$3400(Lcom/android/dialer/app/dialpad/DialpadFragment;)V

    return-void
.end method
