.class public abstract Lcom/android/dialer/callcomposer/CallComposerFragment;
.super Landroidx/fragment/app/Fragment;
.source "CallComposerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/callcomposer/CallComposerFragment$CallComposerListener;
    }
.end annotation


# static fields
.field protected static final CAMERA_PERMISSION:I = 0x1

.field protected static final STORAGE_PERMISSION:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract clearComposer()V
.end method

.method public getListener()Lcom/android/dialer/callcomposer/CallComposerFragment$CallComposerListener;
    .locals 1

    .line 45
    const-class v0, Lcom/android/dialer/callcomposer/CallComposerFragment$CallComposerListener;

    invoke-static {p0, v0}, Lcom/android/dialer/common/FragmentUtils;->getParent(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/callcomposer/CallComposerFragment$CallComposerListener;

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 34
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 35
    const-class p1, Lcom/android/dialer/callcomposer/CallComposerFragment$CallComposerListener;

    invoke-static {p0, p1}, Lcom/android/dialer/common/FragmentUtils;->getParent(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "CallComposerFragment.onAttach"

    const-string v1, "Container activity must implement CallComposerListener."

    .line 36
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    invoke-static {}, Lcom/android/dialer/common/Assert;->fail()V

    :cond_0
    return-void
.end method

.method public abstract shouldHide()Z
.end method
