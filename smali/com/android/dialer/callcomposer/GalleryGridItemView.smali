.class public Lcom/android/dialer/callcomposer/GalleryGridItemView;
.super Landroid/widget/FrameLayout;
.source "GalleryGridItemView.java"


# instance fields
.field private checkbox:Landroid/view/View;

.field private currentFilePath:Ljava/lang/String;

.field private final data:Lcom/android/dialer/callcomposer/GalleryGridItemData;

.field private gallery:Landroid/view/View;

.field private image:Landroid/widget/ImageView;

.field private isGallery:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance p1, Lcom/android/dialer/callcomposer/GalleryGridItemData;

    invoke-direct {p1}, Lcom/android/dialer/callcomposer/GalleryGridItemData;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/callcomposer/GalleryGridItemView;->data:Lcom/android/dialer/callcomposer/GalleryGridItemData;

    return-void
.end method

.method private updateImageView()V
    .locals 8

    .line 101
    iget-object v0, p0, Lcom/android/dialer/callcomposer/GalleryGridItemView;->image:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 103
    iget-object v0, p0, Lcom/android/dialer/callcomposer/GalleryGridItemView;->currentFilePath:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/dialer/callcomposer/GalleryGridItemView;->data:Lcom/android/dialer/callcomposer/GalleryGridItemData;

    invoke-virtual {v2}, Lcom/android/dialer/callcomposer/GalleryGridItemData;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/callcomposer/GalleryGridItemView;->data:Lcom/android/dialer/callcomposer/GalleryGridItemData;

    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/GalleryGridItemData;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/callcomposer/GalleryGridItemView;->currentFilePath:Ljava/lang/String;

    .line 110
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/GalleryGridItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/dialer/callcomposer/GalleryGridItemView;->data:Lcom/android/dialer/callcomposer/GalleryGridItemData;

    .line 111
    invoke-virtual {v2}, Lcom/android/dialer/callcomposer/GalleryGridItemData;->getFileUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->AT_MOST:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    .line 112
    invoke-static {v2}, Lcom/bumptech/glide/request/RequestOptions;->downsampleOf(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 113
    invoke-static {}, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;->withCrossFade()Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestBuilder;->transition(Lcom/bumptech/glide/TransitionOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/dialer/callcomposer/GalleryGridItemView;->image:Landroid/widget/ImageView;

    .line 114
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/callcomposer/GalleryGridItemView;->data:Lcom/android/dialer/callcomposer/GalleryGridItemData;

    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/GalleryGridItemData;->getDateModifiedSeconds()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/android/dialer/callcomposer/GalleryGridItemView;->image:Landroid/widget/ImageView;

    .line 119
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/GalleryGridItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f11024b

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 122
    invoke-virtual {v7, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    .line 120
    invoke-virtual {v4, v5, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/android/dialer/callcomposer/GalleryGridItemView;->image:Landroid/widget/ImageView;

    .line 125
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/GalleryGridItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11024c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public bind(Landroid/database/Cursor;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/android/dialer/callcomposer/GalleryGridItemView;->data:Lcom/android/dialer/callcomposer/GalleryGridItemData;

    invoke-virtual {v0, p1}, Lcom/android/dialer/callcomposer/GalleryGridItemData;->bind(Landroid/database/Cursor;)V

    const/4 p1, 0x0

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/dialer/callcomposer/GalleryGridItemView;->showGallery(Z)V

    .line 97
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/GalleryGridItemView;->updateImageView()V

    return-void
.end method

.method public getData()Lcom/android/dialer/callcomposer/GalleryGridItemData;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/android/dialer/callcomposer/GalleryGridItemView;->data:Lcom/android/dialer/callcomposer/GalleryGridItemData;

    return-object v0
.end method

.method public isGallery()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Lcom/android/dialer/callcomposer/GalleryGridItemView;->isGallery:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 51
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f090191

    .line 52
    invoke-virtual {p0, v0}, Lcom/android/dialer/callcomposer/GalleryGridItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/dialer/callcomposer/GalleryGridItemView;->image:Landroid/widget/ImageView;

    const v0, 0x7f0900c8

    .line 53
    invoke-virtual {p0, v0}, Lcom/android/dialer/callcomposer/GalleryGridItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/callcomposer/GalleryGridItemView;->checkbox:Landroid/view/View;

    const v0, 0x7f090173

    .line 54
    invoke-virtual {p0, v0}, Lcom/android/dialer/callcomposer/GalleryGridItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/callcomposer/GalleryGridItemView;->gallery:Landroid/view/View;

    .line 56
    iget-object v0, p0, Lcom/android/dialer/callcomposer/GalleryGridItemView;->image:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 57
    iget-object v0, p0, Lcom/android/dialer/callcomposer/GalleryGridItemView;->checkbox:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 58
    iget-object v0, p0, Lcom/android/dialer/callcomposer/GalleryGridItemView;->gallery:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 65
    invoke-super {p0, p1, p1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 75
    iget-object p1, p0, Lcom/android/dialer/callcomposer/GalleryGridItemView;->checkbox:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 76
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/GalleryGridItemView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070170

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 77
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/android/dialer/callcomposer/GalleryGridItemView;->setPadding(IIII)V

    goto :goto_0

    .line 79
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/callcomposer/GalleryGridItemView;->checkbox:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 80
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/GalleryGridItemView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07016f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 81
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/android/dialer/callcomposer/GalleryGridItemView;->setPadding(IIII)V

    :goto_0
    return-void
.end method

.method public showGallery(Z)V
    .locals 1

    .line 90
    iput-boolean p1, p0, Lcom/android/dialer/callcomposer/GalleryGridItemView;->isGallery:Z

    .line 91
    iget-object v0, p0, Lcom/android/dialer/callcomposer/GalleryGridItemView;->gallery:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
