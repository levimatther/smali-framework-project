.class public Lcom/android/incallui/rtt/impl/RttCheckableButton;
.super Landroid/widget/Button;
.source "RttCheckableButton.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/rtt/impl/RttCheckableButton$SavedState;,
        Lcom/android/incallui/rtt/impl/RttCheckableButton$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private broadcasting:Z

.field private contentDescriptionChecked:Ljava/lang/CharSequence;

.field private contentDescriptionUnchecked:Ljava/lang/CharSequence;

.field private isChecked:Z

.field private onCheckedChangeListener:Lcom/android/incallui/rtt/impl/RttCheckableButton$OnCheckedChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    .line 33
    sput-object v0, Lcom/android/incallui/rtt/impl/RttCheckableButton;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/android/incallui/rtt/impl/RttCheckableButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010072

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lcom/android/incallui/rtt/impl/RttCheckableButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/incallui/rtt/impl/RttCheckableButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/rtt/impl/RttCheckableButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 66
    sget-object v0, Lcom/android/dialer/R$styleable;->RttCheckableButton:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 67
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/incallui/rtt/impl/RttCheckableButton;->setChecked(Z)V

    const/4 p2, 0x1

    .line 69
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/rtt/impl/RttCheckableButton;->contentDescriptionChecked:Ljava/lang/CharSequence;

    const/4 v0, 0x2

    .line 71
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/rtt/impl/RttCheckableButton;->contentDescriptionUnchecked:Ljava/lang/CharSequence;

    .line 72
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    invoke-direct {p0}, Lcom/android/incallui/rtt/impl/RttCheckableButton;->updateContentDescription()Ljava/lang/CharSequence;

    .line 75
    invoke-virtual {p0, p2}, Lcom/android/incallui/rtt/impl/RttCheckableButton;->setClickable(Z)V

    .line 76
    invoke-virtual {p0, p2}, Lcom/android/incallui/rtt/impl/RttCheckableButton;->setFocusable(Z)V

    return-void
.end method

.method private isCheckable()Z
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttCheckableButton;->onCheckedChangeListener:Lcom/android/incallui/rtt/impl/RttCheckableButton$OnCheckedChangeListener;

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

    .line 92
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttCheckableButton;->isChecked()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 95
    :cond_0
    iput-boolean p1, p0, Lcom/android/incallui/rtt/impl/RttCheckableButton;->isChecked:Z

    .line 96
    invoke-direct {p0}, Lcom/android/incallui/rtt/impl/RttCheckableButton;->updateContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    .line 97
    invoke-virtual {p0, p1}, Lcom/android/incallui/rtt/impl/RttCheckableButton;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttCheckableButton;->refreshDrawableState()V

    return-void
.end method

.method private updateContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/android/incallui/rtt/impl/RttCheckableButton;->isChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttCheckableButton;->contentDescriptionChecked:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttCheckableButton;->contentDescriptionUnchecked:Ljava/lang/CharSequence;

    .line 104
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/incallui/rtt/impl/RttCheckableButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private userRequestedSetChecked(Z)V
    .locals 1

    .line 116
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttCheckableButton;->isChecked()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 119
    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/rtt/impl/RttCheckableButton;->broadcasting:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lcom/android/incallui/rtt/impl/RttCheckableButton;->broadcasting:Z

    .line 123
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttCheckableButton;->onCheckedChangeListener:Lcom/android/incallui/rtt/impl/RttCheckableButton$OnCheckedChangeListener;

    if-eqz v0, :cond_2

    .line 124
    invoke-interface {v0, p0, p1}, Lcom/android/incallui/rtt/impl/RttCheckableButton$OnCheckedChangeListener;->onCheckedChanged(Lcom/android/incallui/rtt/impl/RttCheckableButton;Z)V

    :cond_2
    const/4 p1, 0x0

    .line 126
    iput-boolean p1, p0, Lcom/android/incallui/rtt/impl/RttCheckableButton;->broadcasting:Z

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .line 150
    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    .line 151
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttCheckableButton;->invalidate()V

    return-void
.end method

.method public isChecked()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lcom/android/incallui/rtt/impl/RttCheckableButton;->isChecked:Z

    return v0
.end method

.method public onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 141
    invoke-super {p0, p1}, Landroid/widget/Button;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 142
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttCheckableButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    sget-object v0, Lcom/android/incallui/rtt/impl/RttCheckableButton;->CHECKED_STATE_SET:[I

    invoke-static {p1, v0}, Lcom/android/incallui/rtt/impl/RttCheckableButton;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 180
    check-cast p1, Lcom/android/incallui/rtt/impl/RttCheckableButton$SavedState;

    .line 181
    invoke-virtual {p1}, Lcom/android/incallui/rtt/impl/RttCheckableButton$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/Button;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 182
    iget-boolean p1, p1, Lcom/android/incallui/rtt/impl/RttCheckableButton$SavedState;->isChecked:Z

    invoke-direct {p0, p1}, Lcom/android/incallui/rtt/impl/RttCheckableButton;->performSetChecked(Z)V

    .line 183
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttCheckableButton;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 188
    new-instance v0, Lcom/android/incallui/rtt/impl/RttCheckableButton$SavedState;

    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttCheckableButton;->isChecked()Z

    move-result v1

    invoke-super {p0}, Landroid/widget/Button;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/incallui/rtt/impl/RttCheckableButton$SavedState;-><init>(ZLandroid/os/Parcelable;Lcom/android/incallui/rtt/impl/RttCheckableButton$1;)V

    return-object v0
.end method

.method public performClick()Z
    .locals 2

    .line 160
    invoke-direct {p0}, Lcom/android/incallui/rtt/impl/RttCheckableButton;->isCheckable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    invoke-super {p0}, Landroid/widget/Button;->performClick()Z

    move-result v0

    return v0

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttCheckableButton;->toggle()V

    .line 165
    invoke-super {p0}, Landroid/widget/Button;->performClick()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    .line 169
    invoke-virtual {p0, v1}, Lcom/android/incallui/rtt/impl/RttCheckableButton;->playSoundEffect(I)V

    :cond_1
    return v0
.end method

.method public setChecked(Z)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/android/incallui/rtt/impl/RttCheckableButton;->performSetChecked(Z)V

    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/android/incallui/rtt/impl/RttCheckableButton$OnCheckedChangeListener;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/android/incallui/rtt/impl/RttCheckableButton;->onCheckedChangeListener:Lcom/android/incallui/rtt/impl/RttCheckableButton$OnCheckedChangeListener;

    return-void
.end method

.method public toggle()V
    .locals 1

    .line 136
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttCheckableButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/incallui/rtt/impl/RttCheckableButton;->userRequestedSetChecked(Z)V

    return-void
.end method
