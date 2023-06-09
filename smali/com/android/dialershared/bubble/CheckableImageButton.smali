.class public Lcom/android/dialershared/bubble/CheckableImageButton;
.super Landroidx/appcompat/widget/AppCompatImageButton;
.source "CheckableImageButton.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final DRAWABLE_STATE_CHECKED:[I


# instance fields
.field private mChecked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    .line 38
    sput-object v0, Lcom/android/dialershared/bubble/CheckableImageButton;->DRAWABLE_STATE_CHECKED:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/android/dialershared/bubble/CheckableImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010072

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lcom/android/dialershared/bubble/CheckableImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    new-instance p1, Lcom/android/dialershared/bubble/CheckableImageButton$1;

    invoke-direct {p1, p0}, Lcom/android/dialershared/bubble/CheckableImageButton$1;-><init>(Lcom/android/dialershared/bubble/CheckableImageButton;)V

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/android/dialershared/bubble/CheckableImageButton;->mChecked:Z

    return v0
.end method

.method public onCreateDrawableState(I)[I
    .locals 1

    .line 93
    iget-boolean v0, p0, Lcom/android/dialershared/bubble/CheckableImageButton;->mChecked:Z

    if-eqz v0, :cond_0

    .line 94
    sget-object v0, Lcom/android/dialershared/bubble/CheckableImageButton;->DRAWABLE_STATE_CHECKED:[I

    array-length v0, v0

    add-int/2addr p1, v0

    .line 95
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->onCreateDrawableState(I)[I

    move-result-object p1

    sget-object v0, Lcom/android/dialershared/bubble/CheckableImageButton;->DRAWABLE_STATE_CHECKED:[I

    .line 94
    invoke-static {p1, v0}, Lcom/android/dialershared/bubble/CheckableImageButton;->mergeDrawableStates([I[I)[I

    move-result-object p1

    return-object p1

    .line 98
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->onCreateDrawableState(I)[I

    move-result-object p1

    return-object p1
.end method

.method public setChecked(Z)V
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/android/dialershared/bubble/CheckableImageButton;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 75
    iput-boolean p1, p0, Lcom/android/dialershared/bubble/CheckableImageButton;->mChecked:Z

    .line 76
    invoke-virtual {p0}, Lcom/android/dialershared/bubble/CheckableImageButton;->refreshDrawableState()V

    const/16 p1, 0x800

    .line 77
    invoke-virtual {p0, p1}, Lcom/android/dialershared/bubble/CheckableImageButton;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/android/dialershared/bubble/CheckableImageButton;->mChecked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/dialershared/bubble/CheckableImageButton;->setChecked(Z)V

    return-void
.end method
