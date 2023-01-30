.class public Lcom/android/dialer/app/widget/SearchEditTextLayout;
.super Landroid/widget/FrameLayout;
.source "SearchEditTextLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/app/widget/SearchEditTextLayout$Callback;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0xc8

.field private static final EXPAND_MARGIN_FRACTION_START:F = 0.8f


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mBackButtonView:Landroid/view/View;

.field private mBottomMargin:I

.field private mCallback:Lcom/android/dialer/app/widget/SearchEditTextLayout$Callback;

.field private mClearButtonView:Landroid/view/View;

.field private mCollapsed:Landroid/view/View;

.field private mCollapsedElevation:F

.field private mCollapsedSearchBox:Landroid/view/View;

.field private mExpanded:Landroid/view/View;

.field protected mIsExpanded:Z

.field protected mIsFadedOut:Z

.field private mLeftMargin:I

.field private mOverflowButtonView:Landroid/view/View;

.field private mPreImeKeyListener:Landroid/view/View$OnKeyListener;

.field private mRightMargin:I

.field private mSearchIcon:Landroid/view/View;

.field private mSearchView:Landroid/widget/EditText;

.field private mTopMargin:I

.field private mVoiceSearchButtonView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mIsExpanded:Z

    .line 40
    iput-boolean p1, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mIsFadedOut:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/app/widget/SearchEditTextLayout;)Landroid/view/View;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mCollapsed:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/dialer/app/widget/SearchEditTextLayout;)Lcom/android/dialer/app/widget/SearchEditTextLayout$Callback;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mCallback:Lcom/android/dialer/app/widget/SearchEditTextLayout$Callback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/dialer/app/widget/SearchEditTextLayout;)Landroid/view/View;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mClearButtonView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/dialer/app/widget/SearchEditTextLayout;)Landroid/widget/EditText;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mSearchView:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/dialer/app/widget/SearchEditTextLayout;F)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->setMargins(F)V

    return-void
.end method

.method private prepareAnimator()V
    .locals 3

    .line 289
    iget-object v0, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/dialer/app/widget/SearchEditTextLayout$7;

    invoke-direct {v1, p0}, Lcom/android/dialer/app/widget/SearchEditTextLayout$7;-><init>(Lcom/android/dialer/app/widget/SearchEditTextLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 302
    iget-object v0, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 303
    iget-object v0, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private setMargins(F)V
    .locals 2

    .line 320
    invoke-virtual {p0}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 321
    iget v1, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mTopMargin:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 322
    iget v1, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mBottomMargin:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 323
    iget v1, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mLeftMargin:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 324
    iget v1, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mRightMargin:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 325
    invoke-virtual {p0}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->requestLayout()V

    return-void
.end method

.method private updateVisibility(Z)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 273
    :goto_1
    iget-object p1, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mSearchIcon:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 274
    iget-object p1, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mCollapsedSearchBox:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 275
    iget-object p1, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mVoiceSearchButtonView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 276
    iget-object p1, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mOverflowButtonView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 277
    iget-object p1, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mBackButtonView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 281
    iget-object p1, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mSearchView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 282
    iget-object p1, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mClearButtonView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 284
    :cond_2
    iget-object p1, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mClearButtonView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void
.end method


# virtual methods
.method public collapse(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 245
    invoke-direct {p0, v0}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->updateVisibility(Z)V

    if-eqz p1, :cond_0

    .line 248
    iget-object p1, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mCollapsed:Landroid/view/View;

    iget-object v1, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mExpanded:Landroid/view/View;

    const/16 v2, 0xc8

    invoke-static {p1, v1, v2}, Lcom/android/dialer/animation/AnimUtils;->crossFadeViews(Landroid/view/View;Landroid/view/View;I)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 249
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mAnimator:Landroid/animation/ValueAnimator;

    .line 250
    invoke-direct {p0}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->prepareAnimator()V

    goto :goto_0

    .line 252
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mCollapsed:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 253
    iget-object p1, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mCollapsed:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 254
    invoke-direct {p0, v1}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->setMargins(F)V

    .line 255
    iget-object p1, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mExpanded:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 258
    :goto_0
    iput-boolean v0, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mIsExpanded:Z

    .line 259
    iget p1, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mCollapsedElevation:F

    invoke-virtual {p0, p1}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->setElevation(F)V

    const p1, 0x7f080208

    .line 260
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->setBackgroundResource(I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mPreImeKeyListener:Landroid/view/View$OnKeyListener;

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-interface {v0, p0, v1, p1}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 180
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public expand(ZZ)V
    .locals 6

    const/4 v0, 0x1

    .line 215
    invoke-direct {p0, v0}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->updateVisibility(Z)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 218
    iget-object p1, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mExpanded:Landroid/view/View;

    iget-object v2, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mCollapsed:Landroid/view/View;

    const/16 v3, 0xc8

    invoke-static {p1, v2, v3}, Lcom/android/dialer/animation/AnimUtils;->crossFadeViews(Landroid/view/View;Landroid/view/View;I)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 219
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mAnimator:Landroid/animation/ValueAnimator;

    const p1, 0x3f4ccccd    # 0.8f

    .line 220
    invoke-direct {p0, p1}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->setMargins(F)V

    .line 221
    invoke-direct {p0}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->prepareAnimator()V

    goto :goto_0

    .line 223
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mExpanded:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 224
    iget-object p1, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mExpanded:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 225
    invoke-direct {p0, v1}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->setMargins(F)V

    .line 226
    iget-object p1, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mCollapsed:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 230
    :goto_0
    invoke-virtual {p0}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->getPaddingTop()I

    move-result p1

    .line 231
    invoke-virtual {p0}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->getPaddingStart()I

    move-result v2

    .line 232
    invoke-virtual {p0}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->getPaddingBottom()I

    move-result v3

    .line 233
    invoke-virtual {p0}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->getPaddingEnd()I

    move-result v4

    const v5, 0x7f080215

    .line 234
    invoke-virtual {p0, v5}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->setBackgroundResource(I)V

    .line 235
    invoke-virtual {p0, v1}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->setElevation(F)V

    .line 236
    invoke-virtual {p0, v2, p1, v4, v3}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->setPaddingRelative(IIII)V

    if-eqz p2, :cond_1

    .line 239
    iget-object p1, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mSearchView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 241
    :cond_1
    iput-boolean v0, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mIsExpanded:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x0
    .end array-data
.end method

.method public fadeIn()V
    .locals 1

    const/16 v0, 0xc8

    .line 193
    invoke-static {p0, v0}, Lcom/android/dialer/animation/AnimUtils;->fadeIn(Landroid/view/View;I)V

    const/4 v0, 0x0

    .line 194
    iput-boolean v0, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mIsFadedOut:Z

    return-void
.end method

.method public fadeIn(Lcom/android/dialer/animation/AnimUtils$AnimationCallback;)V
    .locals 2

    const/16 v0, 0xc8

    const/4 v1, 0x0

    .line 198
    invoke-static {p0, v0, v1, p1}, Lcom/android/dialer/animation/AnimUtils;->fadeIn(Landroid/view/View;IILcom/android/dialer/animation/AnimUtils$AnimationCallback;)V

    .line 199
    iput-boolean v1, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mIsFadedOut:Z

    return-void
.end method

.method public fadeOut()V
    .locals 1

    const/4 v0, 0x0

    .line 184
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->fadeOut(Lcom/android/dialer/animation/AnimUtils$AnimationCallback;)V

    return-void
.end method

.method public fadeOut(Lcom/android/dialer/animation/AnimUtils$AnimationCallback;)V
    .locals 1

    const/16 v0, 0xc8

    .line 188
    invoke-static {p0, v0, p1}, Lcom/android/dialer/animation/AnimUtils;->fadeOut(Landroid/view/View;ILcom/android/dialer/animation/AnimUtils$AnimationCallback;)V

    const/4 p1, 0x1

    .line 189
    iput-boolean p1, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mIsFadedOut:Z

    return-void
.end method

.method public isExpanded()Z
    .locals 1

    .line 307
    iget-boolean v0, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mIsExpanded:Z

    return v0
.end method

.method public isFadedOut()Z
    .locals 1

    .line 311
    iget-boolean v0, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mIsFadedOut:Z

    return v0
.end method

.method public synthetic lambda$onFinishInflate$0$SearchEditTextLayout(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 110
    iget-object p1, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mSearchView:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x0

    return p1
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 75
    invoke-virtual {p0}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 76
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v1, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mTopMargin:I

    .line 77
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v1, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mBottomMargin:I

    .line 78
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v1, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mLeftMargin:I

    .line 79
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mRightMargin:I

    .line 81
    invoke-virtual {p0}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->getElevation()F

    move-result v0

    iput v0, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mCollapsedElevation:F

    const v0, 0x7f09028c

    .line 83
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mCollapsed:Landroid/view/View;

    const v0, 0x7f09028d

    .line 84
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mExpanded:Landroid/view/View;

    const v1, 0x7f090299

    .line 85
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mSearchView:Landroid/widget/EditText;

    const v0, 0x7f090295

    .line 87
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mSearchIcon:Landroid/view/View;

    const v0, 0x7f09028e

    .line 88
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mCollapsedSearchBox:Landroid/view/View;

    const v0, 0x7f09034f

    .line 89
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mVoiceSearchButtonView:Landroid/view/View;

    const v0, 0x7f090138

    .line 90
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mOverflowButtonView:Landroid/view/View;

    const v0, 0x7f090289

    .line 91
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mBackButtonView:Landroid/view/View;

    .line 93
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0801a3

    const/4 v3, 0x0

    .line 94
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    .line 95
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    const v1, 0x7f090291

    .line 96
    invoke-virtual {p0, v1}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mClearButtonView:Landroid/view/View;

    .line 100
    iget-object v2, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mCollapsed:Landroid/view/View;

    new-instance v3, Lcom/android/dialer/app/widget/SearchEditTextLayout$1;

    invoke-direct {v3, p0}, Lcom/android/dialer/app/widget/SearchEditTextLayout$1;-><init>(Lcom/android/dialer/app/widget/SearchEditTextLayout;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 108
    iget-object v2, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mCollapsed:Landroid/view/View;

    new-instance v3, Lcom/android/dialer/app/widget/-$$Lambda$SearchEditTextLayout$8enBEPwX08rWwgKUOyEduvVD-PU;

    invoke-direct {v3, p0}, Lcom/android/dialer/app/widget/-$$Lambda$SearchEditTextLayout$8enBEPwX08rWwgKUOyEduvVD-PU;-><init>(Lcom/android/dialer/app/widget/SearchEditTextLayout;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 114
    iget-object v2, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mSearchView:Landroid/widget/EditText;

    new-instance v3, Lcom/android/dialer/app/widget/SearchEditTextLayout$2;

    invoke-direct {v3, p0}, Lcom/android/dialer/app/widget/SearchEditTextLayout$2;-><init>(Lcom/android/dialer/app/widget/SearchEditTextLayout;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 126
    iget-object v2, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mSearchView:Landroid/widget/EditText;

    new-instance v3, Lcom/android/dialer/app/widget/SearchEditTextLayout$3;

    invoke-direct {v3, p0}, Lcom/android/dialer/app/widget/SearchEditTextLayout$3;-><init>(Lcom/android/dialer/app/widget/SearchEditTextLayout;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v2, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mSearchView:Landroid/widget/EditText;

    new-instance v3, Lcom/android/dialer/app/widget/SearchEditTextLayout$4;

    invoke-direct {v3, p0}, Lcom/android/dialer/app/widget/SearchEditTextLayout$4;-><init>(Lcom/android/dialer/app/widget/SearchEditTextLayout;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 150
    invoke-virtual {p0, v1}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/dialer/app/widget/SearchEditTextLayout$5;

    invoke-direct {v2, p0}, Lcom/android/dialer/app/widget/SearchEditTextLayout$5;-><init>(Lcom/android/dialer/app/widget/SearchEditTextLayout;)V

    .line 151
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/dialer/app/widget/SearchEditTextLayout$6;

    invoke-direct {v1, p0}, Lcom/android/dialer/app/widget/SearchEditTextLayout$6;-><init>(Lcom/android/dialer/app/widget/SearchEditTextLayout;)V

    .line 160
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    return-void
.end method

.method public setCallback(Lcom/android/dialer/app/widget/SearchEditTextLayout$Callback;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mCallback:Lcom/android/dialer/app/widget/SearchEditTextLayout$Callback;

    return-void
.end method

.method public setPreImeKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mPreImeKeyListener:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 204
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->setAlpha(F)V

    const/4 p1, 0x0

    .line 205
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->setVisibility(I)V

    .line 206
    iput-boolean p1, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mIsFadedOut:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 208
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->setAlpha(F)V

    const/16 p1, 0x8

    .line 209
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->setVisibility(I)V

    const/4 p1, 0x1

    .line 210
    iput-boolean p1, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout;->mIsFadedOut:Z

    :goto_0
    return-void
.end method
