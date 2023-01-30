.class public Lcom/android/dialershared/bubble/WindowRoot;
.super Landroid/widget/FrameLayout;
.source "WindowRoot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialershared/bubble/WindowRoot$OnConfigurationChangedListener;,
        Lcom/android/dialershared/bubble/WindowRoot$OnBackPressedListener;
    }
.end annotation


# instance fields
.field private backPressedListener:Lcom/android/dialershared/bubble/WindowRoot$OnBackPressedListener;

.field private configurationChangedListener:Lcom/android/dialershared/bubble/WindowRoot$OnConfigurationChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 69
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 70
    iget-object v0, p0, Lcom/android/dialershared/bubble/WindowRoot;->configurationChangedListener:Lcom/android/dialershared/bubble/WindowRoot$OnConfigurationChangedListener;

    if-eqz v0, :cond_0

    .line 71
    invoke-interface {v0, p1}, Lcom/android/dialershared/bubble/WindowRoot$OnConfigurationChangedListener;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 58
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/dialershared/bubble/WindowRoot;->backPressedListener:Lcom/android/dialershared/bubble/WindowRoot$OnBackPressedListener;

    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 60
    iget-object p1, p0, Lcom/android/dialershared/bubble/WindowRoot;->backPressedListener:Lcom/android/dialershared/bubble/WindowRoot$OnBackPressedListener;

    invoke-interface {p1}, Lcom/android/dialershared/bubble/WindowRoot$OnBackPressedListener;->onBackPressed()Z

    move-result p1

    return p1

    :cond_0
    return v0

    .line 64
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setOnBackPressedListener(Lcom/android/dialershared/bubble/WindowRoot$OnBackPressedListener;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/android/dialershared/bubble/WindowRoot;->backPressedListener:Lcom/android/dialershared/bubble/WindowRoot$OnBackPressedListener;

    return-void
.end method

.method public setOnConfigurationChangedListener(Lcom/android/dialershared/bubble/WindowRoot$OnConfigurationChangedListener;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/android/dialershared/bubble/WindowRoot;->configurationChangedListener:Lcom/android/dialershared/bubble/WindowRoot$OnConfigurationChangedListener;

    return-void
.end method
