.class Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment$2;
.super Ljava/lang/Object;
.source "BlockedNumbersFragment.java"

# interfaces
.implements Lcom/android/dialer/blocking/FilteredNumbersUtil$ImportSendToVoicemailContactsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->onClick(Landroid/view/View;)V
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

    .line 227
    iput-object p1, p0, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment$2;->this$0:Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImportComplete()V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment$2;->this$0:Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;

    invoke-static {v0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->access$000(Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
