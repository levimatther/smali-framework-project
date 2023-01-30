.class public abstract Lcom/android/incallui/baseui/BaseFragment;
.super Landroidx/fragment/app/Fragment;
.source "BaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/incallui/baseui/Presenter<",
        "TU;>;U::",
        "Lcom/android/incallui/baseui/Ui;",
        ">",
        "Landroidx/fragment/app/Fragment;"
    }
.end annotation


# static fields
.field private static final KEY_FRAGMENT_HIDDEN:Ljava/lang/String; = "key_fragment_hidden"


# instance fields
.field private mPresenter:Lcom/android/incallui/baseui/Presenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 30
    invoke-virtual {p0}, Lcom/android/incallui/baseui/BaseFragment;->createPresenter()Lcom/android/incallui/baseui/Presenter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/baseui/BaseFragment;->mPresenter:Lcom/android/incallui/baseui/Presenter;

    return-void
.end method


# virtual methods
.method public abstract createPresenter()Lcom/android/incallui/baseui/Presenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getPresenter()Lcom/android/incallui/baseui/Presenter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/android/incallui/baseui/BaseFragment;->mPresenter:Lcom/android/incallui/baseui/Presenter;

    return-object v0
.end method

.method public abstract getUi()Lcom/android/incallui/baseui/Ui;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 48
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 49
    iget-object p1, p0, Lcom/android/incallui/baseui/BaseFragment;->mPresenter:Lcom/android/incallui/baseui/Presenter;

    invoke-virtual {p0}, Lcom/android/incallui/baseui/BaseFragment;->getUi()Lcom/android/incallui/baseui/Ui;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/incallui/baseui/Presenter;->onUiReady(Lcom/android/incallui/baseui/Ui;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 54
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/incallui/baseui/BaseFragment;->mPresenter:Lcom/android/incallui/baseui/Presenter;

    invoke-virtual {v0, p1}, Lcom/android/incallui/baseui/Presenter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "key_fragment_hidden"

    .line 57
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/android/incallui/baseui/BaseFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 65
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 66
    iget-object v0, p0, Lcom/android/incallui/baseui/BaseFragment;->mPresenter:Lcom/android/incallui/baseui/Presenter;

    invoke-virtual {p0}, Lcom/android/incallui/baseui/BaseFragment;->getUi()Lcom/android/incallui/baseui/Ui;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/baseui/Presenter;->onUiDestroy(Lcom/android/incallui/baseui/Ui;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 71
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 72
    iget-object v0, p0, Lcom/android/incallui/baseui/BaseFragment;->mPresenter:Lcom/android/incallui/baseui/Presenter;

    invoke-virtual {v0, p1}, Lcom/android/incallui/baseui/Presenter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/incallui/baseui/BaseFragment;->isHidden()Z

    move-result v0

    const-string v1, "key_fragment_hidden"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
