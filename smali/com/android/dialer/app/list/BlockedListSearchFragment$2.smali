.class Lcom/android/dialer/app/list/BlockedListSearchFragment$2;
.super Ljava/lang/Object;
.source "BlockedListSearchFragment.java"

# interfaces
.implements Lcom/android/dialer/app/widget/SearchEditTextLayout$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/list/BlockedListSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/list/BlockedListSearchFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/list/BlockedListSearchFragment;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/android/dialer/app/list/BlockedListSearchFragment$2;->this$0:Lcom/android/dialer/app/list/BlockedListSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackButtonClicked()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/android/dialer/app/list/BlockedListSearchFragment$2;->this$0:Lcom/android/dialer/app/list/BlockedListSearchFragment;

    invoke-virtual {v0}, Lcom/android/dialer/app/list/BlockedListSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onSearchViewClicked()V
    .locals 0

    return-void
.end method
