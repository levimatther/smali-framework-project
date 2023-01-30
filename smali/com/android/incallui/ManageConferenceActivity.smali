.class public Lcom/android/incallui/ManageConferenceActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ManageConferenceActivity.java"


# instance fields
.field private isVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public isVisible()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/android/incallui/ManageConferenceActivity;->isVisible:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 2

    .line 76
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->bringToForeground(Z)V

    .line 77
    invoke-virtual {p0}, Lcom/android/incallui/ManageConferenceActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 41
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/android/incallui/ManageConferenceActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 43
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/incallui/InCallPresenter;->setManageConferenceActivity(Lcom/android/incallui/ManageConferenceActivity;)V

    const p1, 0x7f0c0025

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/incallui/ManageConferenceActivity;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Lcom/android/incallui/ManageConferenceActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const v0, 0x7f0901e0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_0

    .line 48
    new-instance p1, Lcom/android/incallui/ConferenceManagerFragment;

    invoke-direct {p1}, Lcom/android/incallui/ConferenceManagerFragment;-><init>()V

    .line 49
    invoke-virtual {p0}, Lcom/android/incallui/ManageConferenceActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 50
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 51
    invoke-virtual {v1, v0, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 52
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 58
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 59
    invoke-virtual {p0}, Lcom/android/incallui/ManageConferenceActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->setManageConferenceActivity(Lcom/android/incallui/ManageConferenceActivity;)V

    :cond_0
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/android/incallui/ManageConferenceActivity;->onBackPressed()V

    return v0

    .line 99
    :cond_0
    invoke-static {p1, p2}, Lcom/android/incallui/ConferenceManagerFragment;->onKeyUp(ILandroid/view/KeyEvent;)Z

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 66
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/android/incallui/ManageConferenceActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1

    .line 71
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onStart()V
    .locals 1

    .line 82
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lcom/android/incallui/ManageConferenceActivity;->isVisible:Z

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 88
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/android/incallui/ManageConferenceActivity;->isVisible:Z

    return-void
.end method
