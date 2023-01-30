.class public Lcom/android/dialer/widget/EmptyContentView;
.super Landroid/widget/LinearLayout;
.source "EmptyContentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/widget/EmptyContentView$OnEmptyViewActionButtonClickedListener;
    }
.end annotation


# static fields
.field public static final NO_IMAGE:I

.field public static final NO_LABEL:I


# instance fields
.field private actionLabel:I

.field private mActionView:Landroid/widget/TextView;

.field private mDescriptionView:Landroid/widget/TextView;

.field private mImageView:Landroid/widget/ImageView;

.field private mOnActionButtonClickedListener:Lcom/android/dialer/widget/EmptyContentView$OnEmptyViewActionButtonClickedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/android/dialer/widget/EmptyContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lcom/android/dialer/widget/EmptyContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/dialer/widget/EmptyContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 62
    invoke-virtual {p0}, Lcom/android/dialer/widget/EmptyContentView;->inflateLayout()V

    const/4 p1, 0x0

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/dialer/widget/EmptyContentView;->setClickable(Z)V

    const p1, 0x7f09014a

    .line 67
    invoke-virtual {p0, p1}, Lcom/android/dialer/widget/EmptyContentView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/dialer/widget/EmptyContentView;->mImageView:Landroid/widget/ImageView;

    const p1, 0x7f09014b

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/dialer/widget/EmptyContentView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/dialer/widget/EmptyContentView;->mDescriptionView:Landroid/widget/TextView;

    const p1, 0x7f090149

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/dialer/widget/EmptyContentView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/dialer/widget/EmptyContentView;->mActionView:Landroid/widget/TextView;

    .line 70
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x1

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/dialer/widget/EmptyContentView;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public getActionLabel()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/android/dialer/widget/EmptyContentView;->actionLabel:I

    return v0
.end method

.method protected inflateLayout()V
    .locals 2

    const/4 v0, 0x1

    .line 134
    invoke-virtual {p0, v0}, Lcom/android/dialer/widget/EmptyContentView;->setOrientation(I)V

    .line 136
    invoke-virtual {p0}, Lcom/android/dialer/widget/EmptyContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0c0080

    .line 137
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public isShowingContent()Z
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/android/dialer/widget/EmptyContentView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/widget/EmptyContentView;->mDescriptionView:Landroid/widget/TextView;

    .line 118
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/widget/EmptyContentView;->mActionView:Landroid/widget/TextView;

    .line 119
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 128
    iget-object p1, p0, Lcom/android/dialer/widget/EmptyContentView;->mOnActionButtonClickedListener:Lcom/android/dialer/widget/EmptyContentView$OnEmptyViewActionButtonClickedListener;

    if-eqz p1, :cond_0

    .line 129
    invoke-interface {p1}, Lcom/android/dialer/widget/EmptyContentView$OnEmptyViewActionButtonClickedListener;->onEmptyViewActionButtonClicked()V

    :cond_0
    return-void
.end method

.method public setActionClickedListener(Lcom/android/dialer/widget/EmptyContentView$OnEmptyViewActionButtonClickedListener;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/android/dialer/widget/EmptyContentView;->mOnActionButtonClickedListener:Lcom/android/dialer/widget/EmptyContentView$OnEmptyViewActionButtonClickedListener;

    return-void
.end method

.method public setActionLabel(I)V
    .locals 1

    .line 102
    iput p1, p0, Lcom/android/dialer/widget/EmptyContentView;->actionLabel:I

    if-nez p1, :cond_0

    .line 104
    iget-object p1, p0, Lcom/android/dialer/widget/EmptyContentView;->mActionView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object p1, p0, Lcom/android/dialer/widget/EmptyContentView;->mActionView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/widget/EmptyContentView;->mActionView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 108
    iget-object p1, p0, Lcom/android/dialer/widget/EmptyContentView;->mActionView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setDescription(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 77
    iget-object p1, p0, Lcom/android/dialer/widget/EmptyContentView;->mDescriptionView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object p1, p0, Lcom/android/dialer/widget/EmptyContentView;->mDescriptionView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/widget/EmptyContentView;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 81
    iget-object p1, p0, Lcom/android/dialer/widget/EmptyContentView;->mDescriptionView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setImage(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 93
    iget-object p1, p0, Lcom/android/dialer/widget/EmptyContentView;->mImageView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    iget-object p1, p0, Lcom/android/dialer/widget/EmptyContentView;->mImageView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/widget/EmptyContentView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    iget-object p1, p0, Lcom/android/dialer/widget/EmptyContentView;->mImageView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method
