.class Lcom/android/dialer/app/filterednumber/ViewNumbersToImportFragment$1;
.super Ljava/lang/Object;
.source "ViewNumbersToImportFragment.java"

# interfaces
.implements Lcom/android/dialer/blocking/FilteredNumbersUtil$ImportSendToVoicemailContactsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/filterednumber/ViewNumbersToImportFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/filterednumber/ViewNumbersToImportFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/filterednumber/ViewNumbersToImportFragment;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/android/dialer/app/filterednumber/ViewNumbersToImportFragment$1;->this$0:Lcom/android/dialer/app/filterednumber/ViewNumbersToImportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImportComplete()V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/android/dialer/app/filterednumber/ViewNumbersToImportFragment$1;->this$0:Lcom/android/dialer/app/filterednumber/ViewNumbersToImportFragment;

    invoke-virtual {v0}, Lcom/android/dialer/app/filterednumber/ViewNumbersToImportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/dialer/app/filterednumber/ViewNumbersToImportFragment$1;->this$0:Lcom/android/dialer/app/filterednumber/ViewNumbersToImportFragment;

    invoke-virtual {v0}, Lcom/android/dialer/app/filterednumber/ViewNumbersToImportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method
