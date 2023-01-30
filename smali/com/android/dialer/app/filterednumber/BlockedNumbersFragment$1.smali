.class Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment$1;
.super Ljava/lang/Object;
.source "BlockedNumbersFragment.java"

# interfaces
.implements Lcom/android/dialer/blocking/FilteredNumbersUtil$CheckForSendToVoicemailContactListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment$1;->this$0:Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 154
    :goto_0
    iget-object v0, p0, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment$1;->this$0:Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;

    invoke-static {v0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->access$000(Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
