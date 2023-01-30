.class public Lcom/android/incallui/answer/impl/answermethod/AnswerMethodFactory;
.super Ljava/lang/Object;
.source "AnswerMethodFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAnswerMethod(Landroid/app/Activity;)Lcom/android/incallui/answer/impl/answermethod/AnswerMethod;
    .locals 0

    .line 33
    new-instance p0, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;

    invoke-direct {p0}, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;-><init>()V

    return-object p0
.end method

.method private static needTwoButton(Landroid/app/Activity;)Z
    .locals 1

    .line 51
    invoke-static {p0}, Lcom/android/incallui/util/AccessibilityUtil;->isTouchExplorationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    invoke-static {p0}, Lcom/android/dialer/compat/ActivityCompat;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static needsReplacement(Landroidx/fragment/app/Fragment;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 47
    :cond_0
    instance-of v1, p0, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/android/incallui/answer/impl/answermethod/AnswerMethodFactory;->needTwoButton(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
