.class public Lcom/android/voicemail/impl/ErrorActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ErrorActivity.java"

# interfaces
.implements Landroid/widget/MenuBar$MenuBarListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private menuBar:Landroid/widget/MenuBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 15
    const-class v0, Lcom/android/voicemail/impl/ErrorActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/impl/ErrorActivity;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClickCSK()Z
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/android/voicemail/impl/ErrorActivity;->TAG:Ljava/lang/String;

    const-string v1, "onClickRSK"

    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 36
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    const/4 v0, 0x0

    return v0
.end method

.method public onClickLSK()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClickRSK()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 18
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    sget-object p1, Lcom/android/voicemail/VVMMainActivity;->VoicemailActivities:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-virtual {p0}, Lcom/android/voicemail/impl/ErrorActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0xe

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    const p1, 0x7f0c0022

    .line 22
    invoke-virtual {p0, p1}, Lcom/android/voicemail/impl/ErrorActivity;->setContentView(I)V

    .line 23
    invoke-virtual {p0}, Lcom/android/voicemail/impl/ErrorActivity;->getMenuBar()Landroid/widget/MenuBar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/voicemail/impl/ErrorActivity;->menuBar:Landroid/widget/MenuBar;

    const v0, 0x7f110525

    const v1, 0x7f110550

    const/4 v2, 0x0

    .line 24
    invoke-virtual {p1, v0, v1, v0, v2}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 25
    iget-object p1, p0, Lcom/android/voicemail/impl/ErrorActivity;->menuBar:Landroid/widget/MenuBar;

    invoke-virtual {p1, p0}, Landroid/widget/MenuBar;->setMenuBarListener(Landroid/widget/MenuBar$MenuBarListener;)V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 63
    invoke-static {}, Lcom/android/voicemail/VVMMainActivity;->shutdown()V

    .line 64
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/voicemail/impl/ErrorActivity;->menuBar:Landroid/widget/MenuBar;

    invoke-virtual {v0, p1, p2}, Landroid/widget/MenuBar;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onOptionMenuClick(I)V
    .locals 0

    return-void
.end method

.method public onOptionMenuDismiss()V
    .locals 0

    return-void
.end method

.method public onOptionMenuShow()V
    .locals 0

    return-void
.end method
