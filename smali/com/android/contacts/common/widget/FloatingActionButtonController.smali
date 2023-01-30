.class public Lcom/android/contacts/common/widget/FloatingActionButtonController;
.super Ljava/lang/Object;
.source "FloatingActionButtonController.java"


# static fields
.field public static final ALIGN_END:I = 0x2

.field public static final ALIGN_MIDDLE:I = 0x0

.field public static final ALIGN_QUARTER_END:I = 0x1

.field private static final FAB_ICON_FADE_OUT_DURATION:I = 0x42

.field private static final FAB_SCALE_IN_DURATION:I = 0x10a

.field private static final FAB_SCALE_IN_FADE_IN_DELAY:I = 0x64


# instance fields
.field private final mAnimationDuration:I

.field private final mFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field private final mFabInterpolator:Landroid/view/animation/Interpolator;

.field private final mFloatingActionButtonMarginRight:I

.field private final mFloatingActionButtonWidth:I

.field private mScreenWidth:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10c000d

    .line 52
    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFabInterpolator:Landroid/view/animation/Interpolator;

    const p1, 0x7f070165

    .line 54
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFloatingActionButtonWidth:I

    const p1, 0x7f070163

    .line 56
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFloatingActionButtonMarginRight:I

    const p1, 0x7f0a0018

    .line 57
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mAnimationDuration:I

    .line 58
    iput-object p2, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    return-void
.end method

.method private align(IIIZ)V
    .locals 1

    .line 125
    iget v0, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mScreenWidth:I

    if-nez v0, :cond_0

    return-void

    .line 129
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->getTranslationXForAlignment(I)I

    move-result p1

    if-eqz p4, :cond_1

    .line 132
    iget-object p4, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p4}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->isShown()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 133
    iget-object p4, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p4}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p4

    add-int/2addr p1, p2

    int-to-float p1, p1

    .line 134
    invoke-virtual {p4, p1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    int-to-float p2, p3

    .line 135
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFabInterpolator:Landroid/view/animation/Interpolator;

    .line 136
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget p2, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mAnimationDuration:I

    int-to-long p2, p2

    .line 137
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 138
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 140
    :cond_1
    iget-object p4, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    add-int/2addr p1, p2

    int-to-float p1, p1

    invoke-virtual {p4, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setTranslationX(F)V

    .line 141
    iget-object p1, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    int-to-float p2, p3

    invoke-virtual {p1, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setTranslationY(F)V

    :goto_0
    return-void
.end method

.method private getTranslationXForAlignment(I)I
    .locals 2

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 187
    iget p1, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mScreenWidth:I

    div-int/2addr p1, v0

    iget v1, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFloatingActionButtonWidth:I

    div-int/2addr v1, v0

    sub-int/2addr p1, v1

    iget v0, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFloatingActionButtonMarginRight:I

    sub-int/2addr p1, v0

    goto :goto_0

    .line 191
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid alignment value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/common/Assert;->createIllegalStateFailException(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    .line 183
    :cond_1
    iget p1, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mScreenWidth:I

    div-int/lit8 p1, p1, 0x4

    .line 193
    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_2

    mul-int/lit8 p1, p1, -0x1

    :cond_2
    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private isLayoutRtl()Z
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public align(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, p1, v0, v0, p2}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->align(IIIZ)V

    return-void
.end method

.method public changeIcon(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    iget-object p1, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onPageScrolled(F)V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->getTranslationXForAlignment(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setTranslationX(F)V

    return-void
.end method

.method public scaleIn(I)V
    .locals 3

    const/4 v0, 0x1

    .line 152
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->setVisible(Z)V

    .line 153
    iget-object v0, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/16 v1, 0x10a

    invoke-static {v0, v1, p1}, Lcom/android/dialer/animation/AnimUtils;->scaleIn(Landroid/view/View;II)V

    .line 154
    iget-object v0, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    add-int/lit8 p1, p1, 0x64

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/android/dialer/animation/AnimUtils;->fadeIn(Landroid/view/View;IILcom/android/dialer/animation/AnimUtils$AnimationCallback;)V

    return-void
.end method

.method public scaleOut()V
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget v1, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mAnimationDuration:I

    invoke-static {v0, v1}, Lcom/android/dialer/animation/AnimUtils;->scaleOut(Landroid/view/View;I)V

    .line 165
    iget-object v0, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/16 v1, 0x42

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/dialer/animation/AnimUtils;->fadeOut(Landroid/view/View;ILcom/android/dialer/animation/AnimUtils$AnimationCallback;)V

    return-void
.end method

.method public setScreenWidth(I)V
    .locals 0

    .line 68
    iput p1, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mScreenWidth:I

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->show()V

    goto :goto_0

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->hide()V

    :goto_0
    return-void
.end method
