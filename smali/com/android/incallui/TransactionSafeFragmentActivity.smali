.class public abstract Lcom/android/incallui/TransactionSafeFragmentActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "TransactionSafeFragmentActivity.java"


# instance fields
.field private mIsSafeToCommitTransactions:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public isSafeToCommitTransactions()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/android/incallui/TransactionSafeFragmentActivity;->mIsSafeToCommitTransactions:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 32
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Lcom/android/incallui/TransactionSafeFragmentActivity;->mIsSafeToCommitTransactions:Z

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 44
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/android/incallui/TransactionSafeFragmentActivity;->mIsSafeToCommitTransactions:Z

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 50
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Lcom/android/incallui/TransactionSafeFragmentActivity;->mIsSafeToCommitTransactions:Z

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 38
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/android/incallui/TransactionSafeFragmentActivity;->mIsSafeToCommitTransactions:Z

    return-void
.end method
