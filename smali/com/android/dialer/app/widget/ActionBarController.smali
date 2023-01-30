.class public Lcom/android/dialer/app/widget/ActionBarController;
.super Ljava/lang/Object;
.source "ActionBarController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/app/widget/ActionBarController$ActivityUi;
    }
.end annotation


# static fields
.field private static final KEY_IS_EXPANDED:Ljava/lang/String; = "key_actionbar_is_expanded"

.field private static final KEY_IS_FADED_OUT:Ljava/lang/String; = "key_actionbar_is_faded_out"

.field private static final KEY_IS_SLID_UP:Ljava/lang/String; = "key_actionbar_is_slid_up"


# instance fields
.field private mActivityUi:Lcom/android/dialer/app/widget/ActionBarController$ActivityUi;

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private final mFadeInCallback:Lcom/android/dialer/animation/AnimUtils$AnimationCallback;

.field private final mFadeOutCallback:Lcom/android/dialer/animation/AnimUtils$AnimationCallback;

.field private mIsActionBarSlidUp:Z

.field private mSearchBox:Lcom/android/dialer/app/widget/SearchEditTextLayout;


# direct methods
.method public constructor <init>(Lcom/android/dialer/app/widget/ActionBarController$ActivityUi;Lcom/android/dialer/app/widget/SearchEditTextLayout;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/android/dialer/app/widget/ActionBarController$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/app/widget/ActionBarController$1;-><init>(Lcom/android/dialer/app/widget/ActionBarController;)V

    iput-object v0, p0, Lcom/android/dialer/app/widget/ActionBarController;->mFadeOutCallback:Lcom/android/dialer/animation/AnimUtils$AnimationCallback;

    .line 52
    new-instance v0, Lcom/android/dialer/app/widget/ActionBarController$2;

    invoke-direct {v0, p0}, Lcom/android/dialer/app/widget/ActionBarController$2;-><init>(Lcom/android/dialer/app/widget/ActionBarController;)V

    iput-object v0, p0, Lcom/android/dialer/app/widget/ActionBarController;->mFadeInCallback:Lcom/android/dialer/animation/AnimUtils$AnimationCallback;

    .line 67
    iput-object p1, p0, Lcom/android/dialer/app/widget/ActionBarController;->mActivityUi:Lcom/android/dialer/app/widget/ActionBarController$ActivityUi;

    .line 68
    iput-object p2, p0, Lcom/android/dialer/app/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/app/widget/SearchEditTextLayout;

    return-void
.end method

.method private setHideOffset(I)V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/android/dialer/app/widget/ActionBarController;->mActivityUi:Lcom/android/dialer/app/widget/ActionBarController$ActivityUi;

    invoke-interface {v0, p1}, Lcom/android/dialer/app/widget/ActionBarController$ActivityUi;->setActionBarHideOffset(I)V

    return-void
.end method


# virtual methods
.method public isActionBarShowing()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/android/dialer/app/widget/ActionBarController;->mIsActionBarSlidUp:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/app/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/app/widget/SearchEditTextLayout;

    invoke-virtual {v0}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->isFadedOut()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$slideActionBar$0$ActionBarController(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 154
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 155
    iget-object v0, p0, Lcom/android/dialer/app/widget/ActionBarController;->mActivityUi:Lcom/android/dialer/app/widget/ActionBarController$ActivityUi;

    invoke-interface {v0}, Lcom/android/dialer/app/widget/ActionBarController$ActivityUi;->getActionBarHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    invoke-direct {p0, p1}, Lcom/android/dialer/app/widget/ActionBarController;->setHideOffset(I)V

    return-void
.end method

.method public onDialpadDown()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 107
    iget-object v1, p0, Lcom/android/dialer/app/widget/ActionBarController;->mActivityUi:Lcom/android/dialer/app/widget/ActionBarController$ActivityUi;

    .line 110
    invoke-interface {v1}, Lcom/android/dialer/app/widget/ActionBarController$ActivityUi;->isInSearchUi()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/dialer/app/widget/ActionBarController;->mActivityUi:Lcom/android/dialer/app/widget/ActionBarController$ActivityUi;

    .line 111
    invoke-interface {v1}, Lcom/android/dialer/app/widget/ActionBarController$ActivityUi;->hasSearchQuery()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/android/dialer/app/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/app/widget/SearchEditTextLayout;

    .line 112
    invoke-virtual {v1}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->isFadedOut()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/android/dialer/app/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/app/widget/SearchEditTextLayout;

    .line 113
    invoke-virtual {v1}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->isExpanded()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v0, v4

    const-string v1, "ActionBarController.onDialpadDown"

    const-string v4, "isInSearchUi: %b, hasSearchQuery: %b, isFadedOut: %b, isExpanded: %b"

    .line 107
    invoke-static {v1, v4, v0}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    iget-object v0, p0, Lcom/android/dialer/app/widget/ActionBarController;->mActivityUi:Lcom/android/dialer/app/widget/ActionBarController$ActivityUi;

    invoke-interface {v0}, Lcom/android/dialer/app/widget/ActionBarController$ActivityUi;->isInSearchUi()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 115
    iget-object v0, p0, Lcom/android/dialer/app/widget/ActionBarController;->mActivityUi:Lcom/android/dialer/app/widget/ActionBarController$ActivityUi;

    invoke-interface {v0}, Lcom/android/dialer/app/widget/ActionBarController$ActivityUi;->hasSearchQuery()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/android/dialer/app/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/app/widget/SearchEditTextLayout;

    invoke-virtual {v0}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->isFadedOut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/dialer/app/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/app/widget/SearchEditTextLayout;

    invoke-virtual {v0, v3}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->setVisible(Z)V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/app/widget/SearchEditTextLayout;

    invoke-virtual {v0}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/android/dialer/app/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/app/widget/SearchEditTextLayout;

    invoke-virtual {v0, v2, v2}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->expand(ZZ)V

    .line 122
    :cond_1
    invoke-virtual {p0, v2, v3}, Lcom/android/dialer/app/widget/ActionBarController;->slideActionBar(ZZ)V

    goto :goto_0

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/android/dialer/app/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/app/widget/SearchEditTextLayout;

    iget-object v1, p0, Lcom/android/dialer/app/widget/ActionBarController;->mFadeInCallback:Lcom/android/dialer/animation/AnimUtils$AnimationCallback;

    invoke-virtual {v0, v1}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->fadeIn(Lcom/android/dialer/animation/AnimUtils$AnimationCallback;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onDialpadUp()V
    .locals 3

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isInSearchUi "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/dialer/app/widget/ActionBarController;->mActivityUi:Lcom/android/dialer/app/widget/ActionBarController$ActivityUi;

    invoke-interface {v1}, Lcom/android/dialer/app/widget/ActionBarController$ActivityUi;->isInSearchUi()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ActionBarController.onDialpadUp"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lcom/android/dialer/app/widget/ActionBarController;->mActivityUi:Lcom/android/dialer/app/widget/ActionBarController$ActivityUi;

    invoke-interface {v0}, Lcom/android/dialer/app/widget/ActionBarController$ActivityUi;->isInSearchUi()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 136
    invoke-virtual {p0, v0, v0}, Lcom/android/dialer/app/widget/ActionBarController;->slideActionBar(ZZ)V

    goto :goto_0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/app/widget/SearchEditTextLayout;

    iget-object v1, p0, Lcom/android/dialer/app/widget/ActionBarController;->mFadeOutCallback:Lcom/android/dialer/animation/AnimUtils$AnimationCallback;

    invoke-virtual {v0, v1}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->fadeOut(Lcom/android/dialer/animation/AnimUtils$AnimationCallback;)V

    :goto_0
    return-void
.end method

.method public onSearchBoxTapped()V
    .locals 3

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isInSearchUi "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/dialer/app/widget/ActionBarController;->mActivityUi:Lcom/android/dialer/app/widget/ActionBarController$ActivityUi;

    .line 79
    invoke-interface {v1}, Lcom/android/dialer/app/widget/ActionBarController$ActivityUi;->isInSearchUi()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ActionBarController.onSearchBoxTapped"

    .line 78
    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/android/dialer/app/widget/ActionBarController;->mActivityUi:Lcom/android/dialer/app/widget/ActionBarController$ActivityUi;

    invoke-interface {v0}, Lcom/android/dialer/app/widget/ActionBarController$ActivityUi;->isInSearchUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/dialer/app/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/app/widget/SearchEditTextLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->expand(ZZ)V

    :cond_0
    return-void
.end method

.method public onSearchUiExited()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 87
    iget-object v1, p0, Lcom/android/dialer/app/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/app/widget/SearchEditTextLayout;

    .line 90
    invoke-virtual {v1}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->isExpanded()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/dialer/app/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/app/widget/SearchEditTextLayout;

    .line 91
    invoke-virtual {v1}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->isFadedOut()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "ActionBarController.onSearchUIExited"

    const-string v4, "isExpanded: %b, isFadedOut %b"

    .line 87
    invoke-static {v1, v4, v0}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/android/dialer/app/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/app/widget/SearchEditTextLayout;

    invoke-virtual {v0}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/dialer/app/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/app/widget/SearchEditTextLayout;

    invoke-virtual {v0, v3}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->collapse(Z)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/app/widget/SearchEditTextLayout;

    invoke-virtual {v0}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->isFadedOut()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/android/dialer/app/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/app/widget/SearchEditTextLayout;

    invoke-virtual {v0}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->fadeIn()V

    .line 99
    :cond_1
    invoke-virtual {p0, v2, v2}, Lcom/android/dialer/app/widget/ActionBarController;->slideActionBar(ZZ)V

    return-void
.end method

.method public restoreActionBarOffset()V
    .locals 2

    .line 207
    iget-boolean v0, p0, Lcom/android/dialer/app/widget/ActionBarController;->mIsActionBarSlidUp:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/dialer/app/widget/ActionBarController;->slideActionBar(ZZ)V

    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "key_actionbar_is_slid_up"

    .line 181
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/dialer/app/widget/ActionBarController;->mIsActionBarSlidUp:Z

    const-string v0, "key_actionbar_is_faded_out"

    .line 183
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/dialer/app/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/app/widget/SearchEditTextLayout;

    invoke-virtual {v0}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->isFadedOut()Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/android/dialer/app/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/app/widget/SearchEditTextLayout;

    invoke-virtual {v0, v1}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->setVisible(Z)V

    goto :goto_0

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/app/widget/SearchEditTextLayout;

    invoke-virtual {v0}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->isFadedOut()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/android/dialer/app/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/app/widget/SearchEditTextLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->setVisible(Z)V

    :cond_1
    :goto_0
    const-string v0, "key_actionbar_is_expanded"

    .line 192
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 194
    iget-object p1, p0, Lcom/android/dialer/app/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/app/widget/SearchEditTextLayout;

    invoke-virtual {p1}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->isExpanded()Z

    move-result p1

    if-nez p1, :cond_3

    .line 195
    iget-object p1, p0, Lcom/android/dialer/app/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/app/widget/SearchEditTextLayout;

    invoke-virtual {p1, v1, v1}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->expand(ZZ)V

    goto :goto_1

    .line 197
    :cond_2
    iget-object p1, p0, Lcom/android/dialer/app/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/app/widget/SearchEditTextLayout;

    invoke-virtual {p1}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->isExpanded()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 198
    iget-object p1, p0, Lcom/android/dialer/app/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/app/widget/SearchEditTextLayout;

    invoke-virtual {p1, v1}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->collapse(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 174
    iget-boolean v0, p0, Lcom/android/dialer/app/widget/ActionBarController;->mIsActionBarSlidUp:Z

    const-string v1, "key_actionbar_is_slid_up"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 175
    iget-object v0, p0, Lcom/android/dialer/app/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/app/widget/SearchEditTextLayout;

    invoke-virtual {v0}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->isFadedOut()Z

    move-result v0

    const-string v1, "key_actionbar_is_faded_out"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 176
    iget-object v0, p0, Lcom/android/dialer/app/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/app/widget/SearchEditTextLayout;

    invoke-virtual {v0}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->isExpanded()Z

    move-result v0

    const-string v1, "key_actionbar_is_expanded"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/android/dialer/app/widget/ActionBarController;->mSearchBox:Lcom/android/dialer/app/widget/SearchEditTextLayout;

    invoke-virtual {v0}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public slideActionBar(ZZ)V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 144
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "ActionBarController.slidingActionBar"

    const-string/jumbo v4, "up: %b, animate: %b"

    invoke-static {v2, v4, v1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    iget-object v1, p0, Lcom/android/dialer/app/widget/ActionBarController;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/android/dialer/app/widget/ActionBarController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 148
    iget-object v1, p0, Lcom/android/dialer/app/widget/ActionBarController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    :cond_0
    if-eqz p2, :cond_2

    new-array p2, v0, [F

    if-eqz p1, :cond_1

    .line 151
    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    goto :goto_0

    :cond_1
    fill-array-data p2, :array_1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcom/android/dialer/app/widget/ActionBarController;->mAnimator:Landroid/animation/ValueAnimator;

    .line 152
    new-instance v0, Lcom/android/dialer/app/widget/-$$Lambda$ActionBarController$5ioLToIn4qm0DaVlVByyi8Xe8U4;

    invoke-direct {v0, p0}, Lcom/android/dialer/app/widget/-$$Lambda$ActionBarController$5ioLToIn4qm0DaVlVByyi8Xe8U4;-><init>(Lcom/android/dialer/app/widget/ActionBarController;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 157
    iget-object p2, p0, Lcom/android/dialer/app/widget/ActionBarController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 159
    iget-object p2, p0, Lcom/android/dialer/app/widget/ActionBarController;->mActivityUi:Lcom/android/dialer/app/widget/ActionBarController$ActivityUi;

    invoke-interface {p2}, Lcom/android/dialer/app/widget/ActionBarController$ActivityUi;->getActionBarHeight()I

    move-result v3

    :cond_3
    invoke-direct {p0, v3}, Lcom/android/dialer/app/widget/ActionBarController;->setHideOffset(I)V

    .line 161
    :goto_1
    iput-boolean p1, p0, Lcom/android/dialer/app/widget/ActionBarController;->mIsActionBarSlidUp:Z

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
