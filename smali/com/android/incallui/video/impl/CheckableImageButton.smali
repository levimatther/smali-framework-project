.class public Lcom/android/incallui/video/impl/CheckableImageButton;
.super Landroid/widget/ImageButton;
.source "CheckableImageButton.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/video/impl/CheckableImageButton$SavedState;,
        Lcom/android/incallui/video/impl/CheckableImageButton$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private broadcasting:Z

.field private contentDescriptionChecked:Ljava/lang/CharSequence;

.field private contentDescriptionUnchecked:Ljava/lang/CharSequence;

.field private isChecked:Z

.field private onCheckedChangeListener:Lcom/android/incallui/video/impl/CheckableImageButton$OnCheckedChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    .line 33
    sput-object v0, Lcom/android/incallui/video/impl/CheckableImageButton;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/android/incallui/video/impl/CheckableImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lcom/android/incallui/video/impl/CheckableImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/video/impl/CheckableImageButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 61
    sget-object v0, Lcom/android/dialer/R$styleable;->CheckableImageButton:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 62
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/incallui/video/impl/CheckableImageButton;->setChecked(Z)V

    const/4 p2, 0x1

    .line 64
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/video/impl/CheckableImageButton;->contentDescriptionChecked:Ljava/lang/CharSequence;

    const/4 v0, 0x2

    .line 66
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/video/impl/CheckableImageButton;->contentDescriptionUnchecked:Ljava/lang/CharSequence;

    .line 67
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    invoke-direct {p0}, Lcom/android/incallui/video/impl/CheckableImageButton;->updateContentDescription()Ljava/lang/CharSequence;

    .line 70
    invoke-virtual {p0, p2}, Lcom/android/incallui/video/impl/CheckableImageButton;->setClickable(Z)V

    .line 71
    invoke-virtual {p0, p2}, Lcom/android/incallui/video/impl/CheckableImageButton;->setFocusable(Z)V

    return-void
.end method

.method private isCheckable()Z
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/android/incallui/video/impl/CheckableImageButton;->onCheckedChangeListener:Lcom/android/incallui/video/impl/CheckableImageButton$OnCheckedChangeListener;

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

    .line 87
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/CheckableImageButton;->isChecked()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 90
    :cond_0
    iput-boolean p1, p0, Lcom/android/incallui/video/impl/CheckableImageButton;->isChecked:Z

    .line 91
    invoke-direct {p0}, Lcom/android/incallui/video/impl/CheckableImageButton;->updateContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/incallui/video/impl/CheckableImageButton;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/CheckableImageButton;->refreshDrawableState()V

    return-void
.end method

.method private updateContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/android/incallui/video/impl/CheckableImageButton;->isChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/video/impl/CheckableImageButton;->contentDescriptionChecked:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/video/impl/CheckableImageButton;->contentDescriptionUnchecked:Ljava/lang/CharSequence;

    .line 99
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/incallui/video/impl/CheckableImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private userRequestedSetChecked(Z)V
    .locals 1

    .line 111
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/CheckableImageButton;->isChecked()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 114
    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/video/impl/CheckableImageButton;->broadcasting:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 117
    iput-boolean v0, p0, Lcom/android/incallui/video/impl/CheckableImageButton;->broadcasting:Z

    .line 118
    iget-object v0, p0, Lcom/android/incallui/video/impl/CheckableImageButton;->onCheckedChangeListener:Lcom/android/incallui/video/impl/CheckableImageButton$OnCheckedChangeListener;

    if-eqz v0, :cond_2

    .line 119
    invoke-interface {v0, p0, p1}, Lcom/android/incallui/video/impl/CheckableImageButton$OnCheckedChangeListener;->onCheckedChanged(Lcom/android/incallui/video/impl/CheckableImageButton;Z)V

    :cond_2
    const/4 p1, 0x0

    .line 121
    iput-boolean p1, p0, Lcom/android/incallui/video/impl/CheckableImageButton;->broadcasting:Z

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .line 145
    invoke-super {p0}, Landroid/widget/ImageButton;->drawableStateChanged()V

    .line 146
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/CheckableImageButton;->invalidate()V

    return-void
.end method

.method public isChecked()Z
    .locals 1

    .line 126
    iget-boolean v0, p0, Lcom/android/incallui/video/impl/CheckableImageButton;->isChecked:Z

    return v0
.end method

.method public onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 136
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 137
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/CheckableImageButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    sget-object v0, Lcom/android/incallui/video/impl/CheckableImageButton;->CHECKED_STATE_SET:[I

    invoke-static {p1, v0}, Lcom/android/incallui/video/impl/CheckableImageButton;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 175
    check-cast p1, Lcom/android/incallui/video/impl/CheckableImageButton$SavedState;

    .line 176
    invoke-virtual {p1}, Lcom/android/incallui/video/impl/CheckableImageButton$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ImageButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 177
    iget-boolean p1, p1, Lcom/android/incallui/video/impl/CheckableImageButton$SavedState;->isChecked:Z

    invoke-direct {p0, p1}, Lcom/android/incallui/video/impl/CheckableImageButton;->performSetChecked(Z)V

    .line 178
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/CheckableImageButton;->requestLayout()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 183
    new-instance v0, Lcom/android/incallui/video/impl/CheckableImageButton$SavedState;

    invoke-virtual {p0}, Lcom/android/incallui/video/impl/CheckableImageButton;->isChecked()Z

    move-result v1

    invoke-super {p0}, Landroid/widget/ImageButton;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/incallui/video/impl/CheckableImageButton$SavedState;-><init>(ZLandroid/os/Parcelable;Lcom/android/incallui/video/impl/CheckableImageButton$1;)V

    return-object v0
.end method

.method public performClick()Z
    .locals 2

    .line 155
    invoke-direct {p0}, Lcom/android/incallui/video/impl/CheckableImageButton;->isCheckable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    invoke-super {p0}, Landroid/widget/ImageButton;->performClick()Z

    move-result v0

    return v0

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/CheckableImageButton;->toggle()V

    .line 160
    invoke-super {p0}, Landroid/widget/ImageButton;->performClick()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    .line 164
    invoke-virtual {p0, v1}, Lcom/android/incallui/video/impl/CheckableImageButton;->playSoundEffect(I)V

    :cond_1
    return v0
.end method

.method public setChecked(Z)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/android/incallui/video/impl/CheckableImageButton;->performSetChecked(Z)V

    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/android/incallui/video/impl/CheckableImageButton$OnCheckedChangeListener;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/android/incallui/video/impl/CheckableImageButton;->onCheckedChangeListener:Lcom/android/incallui/video/impl/CheckableImageButton$OnCheckedChangeListener;

    return-void
.end method

.method public toggle()V
    .locals 1

    .line 131
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/CheckableImageButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/incallui/video/impl/CheckableImageButton;->userRequestedSetChecked(Z)V

    return-void
.end method
