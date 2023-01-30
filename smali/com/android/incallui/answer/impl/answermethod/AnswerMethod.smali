.class public abstract Lcom/android/incallui/answer/impl/answermethod/AnswerMethod;
.super Landroidx/fragment/app/Fragment;
.source "AnswerMethod.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getParent()Lcom/android/incallui/answer/impl/answermethod/AnswerMethodHolder;
    .locals 1

    .line 37
    const-class v0, Lcom/android/incallui/answer/impl/answermethod/AnswerMethodHolder;

    invoke-static {p0, v0}, Lcom/android/dialer/common/FragmentUtils;->getParentUnsafe(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/answer/impl/answermethod/AnswerMethodHolder;

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 43
    const-class p1, Lcom/android/incallui/answer/impl/answermethod/AnswerMethodHolder;

    invoke-static {p0, p1}, Lcom/android/dialer/common/FragmentUtils;->checkParent(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)V

    return-void
.end method

.method public setContactPhoto(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public abstract setHintText(Ljava/lang/CharSequence;)V
.end method

.method public abstract setShowIncomingWillDisconnect(Z)V
.end method
