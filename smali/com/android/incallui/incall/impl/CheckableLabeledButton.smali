.class public Lcom/android/incallui/incall/impl/CheckableLabeledButton;
.super Landroid/widget/LinearLayout;
.source "CheckableLabeledButton.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/incall/impl/CheckableLabeledButton$SavedState;,
        Lcom/android/incallui/incall/impl/CheckableLabeledButton$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final DISABLED_STATE_OPACITY:F = 0.3f


# instance fields
.field private background:Landroid/graphics/drawable/Drawable;

.field private backgroundMore:Landroid/graphics/drawable/Drawable;

.field private broadcasting:Z

.field private iconView:Landroid/widget/ImageView;

.field private isChecked:Z

.field private labelView:Landroid/widget/TextView;

.field private onCheckedChangeListener:Lcom/android/incallui/incall/impl/CheckableLabeledButton$OnCheckedChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    .line 43
    sput-object v0, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const/4 v0, 0x1

    .line 63
    invoke-virtual {p0, v0}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->setOrientation(I)V

    .line 64
    invoke-virtual {p0, v0}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->setGravity(I)V

    .line 69
    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08015d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->backgroundMore:Landroid/graphics/drawable/Drawable;

    .line 70
    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08015b

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->background:Landroid/graphics/drawable/Drawable;

    .line 72
    sget-object v1, Lcom/android/dialer/R$styleable;->CheckableLabeledButton:[I

    .line 73
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 74
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v4, 0x2

    .line 75
    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 76
    invoke-virtual {p2, v5, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 77
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v6, 0x7f07018c

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    .line 80
    invoke-virtual {p0, p2, p2, p2, p2}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->setPadding(IIII)V

    .line 82
    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v6, 0x7f070196

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 84
    new-instance v6, Landroid/widget/ImageView;

    const v7, 0x10302d3

    invoke-direct {v6, p1, v3, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v6, p0, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->iconView:Landroid/widget/ImageView;

    .line 85
    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    .line 86
    iput p2, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 87
    iput p2, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 88
    iget-object p2, p0, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    iget-object p2, p0, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->iconView:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 90
    iget-object p2, p0, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    iget-object p2, p0, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->iconView:Landroid/widget/ImageView;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 92
    iget-object p2, p0, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f0600ea

    invoke-virtual {v1, v6, v3}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 93
    iget-object p2, p0, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 94
    iget-object p2, p0, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setDuplicateParentStateEnabled(Z)V

    .line 95
    iget-object p2, p0, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070189

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setElevation(F)V

    .line 96
    iget-object p2, p0, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->iconView:Landroid/widget/ImageView;

    const v1, 0x7f020007

    .line 97
    invoke-static {p1, v1}, Landroid/animation/AnimatorInflater;->loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;

    move-result-object v1

    .line 96
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 98
    iget-object p2, p0, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->addView(Landroid/view/View;)V

    .line 100
    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->labelView:Landroid/widget/TextView;

    .line 101
    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    const/4 v1, -0x2

    .line 102
    iput v1, p2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 103
    iput v1, p2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f07018b

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 106
    iget-object p1, p0, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->labelView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    iget-object p1, p0, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->labelView:Landroid/widget/TextView;

    const p2, 0x7f1200ee

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 108
    iget-object p1, p0, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->labelView:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object p1, p0, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->labelView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->setSingleLine()V

    .line 110
    iget-object p1, p0, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->labelView:Landroid/widget/TextView;

    const/16 p2, 0x9

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxEms(I)V

    .line 111
    iget-object p1, p0, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->labelView:Landroid/widget/TextView;

    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 112
    iget-object p1, p0, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->labelView:Landroid/widget/TextView;

    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 113
    iget-object p1, p0, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->labelView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    .line 114
    iget-object p1, p0, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->labelView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->addView(Landroid/view/View;)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->setFocusable(Z)V

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->setClickable(Z)V

    .line 118
    invoke-virtual {p0, v5}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->setEnabled(Z)V

    .line 119
    invoke-virtual {p0, v3}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method private isCheckable()Z
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->onCheckedChangeListener:Lcom/android/incallui/incall/impl/CheckableLabeledButton$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private performSetChecked(Z)V
    .locals 1

    .line 217
    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->isChecked()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 220
    :cond_0
    iput-boolean p1, p0, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->isChecked:Z

    .line 221
    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->refreshDrawableState()V

    return-void
.end method

.method private userRequestedSetChecked(Z)V
    .locals 1

    .line 232
    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->isChecked()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 235
    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->broadcasting:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 238
    iput-boolean v0, p0, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->broadcasting:Z

    .line 239
    iget-object v0, p0, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->onCheckedChangeListener:Lcom/android/incallui/incall/impl/CheckableLabeledButton$OnCheckedChangeListener;

    if-eqz v0, :cond_2

    .line 240
    invoke-interface {v0, p0, p1}, Lcom/android/incallui/incall/impl/CheckableLabeledButton$OnCheckedChangeListener;->onCheckedChanged(Lcom/android/incallui/incall/impl/CheckableLabeledButton;Z)V

    :cond_2
    const/4 p1, 0x0

    .line 242
    iput-boolean p1, p0, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->broadcasting:Z

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .line 168
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 169
    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->invalidate()V

    return-void
.end method

.method public isChecked()Z
    .locals 1

    .line 144
    iget-boolean v0, p0, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->isChecked:Z

    return v0
.end method

.method public onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 159
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 160
    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    sget-object v0, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->CHECKED_STATE_SET:[I

    invoke-static {p1, v0}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 198
    check-cast p1, Lcom/android/incallui/incall/impl/CheckableLabeledButton$SavedState;

    .line 199
    invoke-virtual {p1}, Lcom/android/incallui/incall/impl/CheckableLabeledButton$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 200
    iget-boolean p1, p1, Lcom/android/incallui/incall/impl/CheckableLabeledButton$SavedState;->isChecked:Z

    invoke-direct {p0, p1}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->performSetChecked(Z)V

    .line 201
    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->requestLayout()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 206
    new-instance v0, Lcom/android/incallui/incall/impl/CheckableLabeledButton$SavedState;

    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->isChecked()Z

    move-result v1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/incallui/incall/impl/CheckableLabeledButton$SavedState;-><init>(ZLandroid/os/Parcelable;Lcom/android/incallui/incall/impl/CheckableLabeledButton$1;)V

    return-object v0
.end method

.method public performClick()Z
    .locals 2

    .line 178
    invoke-direct {p0}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->isCheckable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    return v0

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->toggle()V

    .line 183
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    .line 187
    invoke-virtual {p0, v1}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->playSoundEffect(I)V

    :cond_1
    return v0
.end method

.method public refreshDrawableState()V
    .locals 4

    .line 124
    invoke-super {p0}, Landroid/widget/LinearLayout;->refreshDrawableState()V

    .line 125
    iget-object v0, p0, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->isEnabled()Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e99999a    # 0.3f

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 126
    iget-object v0, p0, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->labelView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 149
    invoke-direct {p0, p1}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->performSetChecked(Z)V

    return-void
.end method

.method public setIconDrawable(I)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setLabelText(I)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->labelView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/android/incallui/incall/impl/CheckableLabeledButton$OnCheckedChangeListener;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->onCheckedChangeListener:Lcom/android/incallui/incall/impl/CheckableLabeledButton$OnCheckedChangeListener;

    return-void
.end method

.method public setShouldShowMoreIndicator(Z)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->iconView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->backgroundMore:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->background:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public toggle()V
    .locals 1

    .line 154
    invoke-virtual {p0}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->userRequestedSetChecked(Z)V

    return-void
.end method
