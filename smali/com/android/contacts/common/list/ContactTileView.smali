.class public abstract Lcom/android/contacts/common/list/ContactTileView;
.super Landroid/widget/FrameLayout;
.source "ContactTileView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/ContactTileView$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

.field private mLookupUri:Landroid/net/Uri;

.field private mName:Landroid/widget/TextView;

.field private mPhoto:Landroid/widget/ImageView;

.field private mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lcom/android/contacts/common/list/ContactTileView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/list/ContactTileView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactTileView;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    return-void
.end method


# virtual methods
.method protected configureViewForImage(Z)V
    .locals 0

    return-void
.end method

.method protected createClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 59
    new-instance v0, Lcom/android/contacts/common/list/ContactTileView$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/list/ContactTileView$1;-><init>(Lcom/android/contacts/common/list/ContactTileView;)V

    return-object v0
.end method

.method protected abstract getApproximateImageSize()I
.end method

.method protected getDefaultImageRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;
    .locals 2

    .line 160
    new-instance v0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileView;->isContactPhotoCircular()Z

    move-result v1

    invoke-direct {v0, p1, p2, v1}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getLookupUri()Landroid/net/Uri;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method protected getNameForView(Lcom/android/contacts/common/list/ContactEntry;)Ljava/lang/String;
    .locals 0

    .line 128
    iget-object p1, p1, Lcom/android/contacts/common/list/ContactEntry;->namePrimary:Ljava/lang/String;

    return-object p1
.end method

.method protected isContactPhotoCircular()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected abstract isDarkTheme()Z
.end method

.method public loadFromContact(Lcom/android/contacts/common/list/ContactEntry;)V
    .locals 10

    if-eqz p1, :cond_2

    .line 88
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->mName:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactTileView;->getNameForView(Lcom/android/contacts/common/list/ContactEntry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p1, Lcom/android/contacts/common/list/ContactEntry;->lookupUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->mLookupUri:Landroid/net/Uri;

    const/4 v0, 0x0

    .line 91
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactTileView;->setVisibility(I)V

    .line 93
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    if-eqz v1, :cond_1

    .line 94
    iget-object v1, p1, Lcom/android/contacts/common/list/ContactEntry;->namePrimary:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/contacts/common/list/ContactEntry;->lookupKey:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/common/list/ContactTileView;->getDefaultImageRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    move-result-object v9

    .line 95
    iget-object v1, p1, Lcom/android/contacts/common/list/ContactEntry;->photoUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactTileView;->configureViewForImage(Z)V

    .line 96
    iget-object v4, p0, Lcom/android/contacts/common/list/ContactTileView;->mPhoto:Landroid/widget/ImageView;

    if-eqz v4, :cond_3

    .line 97
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactTileView;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    iget-object v5, p1, Lcom/android/contacts/common/list/ContactEntry;->photoUri:Landroid/net/Uri;

    .line 100
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileView;->getApproximateImageSize()I

    move-result v6

    .line 101
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileView;->isDarkTheme()Z

    move-result v7

    .line 102
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileView;->isContactPhotoCircular()Z

    move-result v8

    .line 97
    invoke-virtual/range {v3 .. v9}, Lcom/android/contacts/common/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    goto :goto_0

    .line 108
    :cond_1
    sget-object p1, Lcom/android/contacts/common/list/ContactTileView;->TAG:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "contactPhotoManager not set"

    invoke-static {p1, v1, v0}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x4

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactTileView;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 50
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0900e7

    .line 51
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->mName:Landroid/widget/TextView;

    const v0, 0x7f0900e5

    .line 52
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->mPhoto:Landroid/widget/ImageView;

    .line 54
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileView;->createClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    .line 55
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setListener(Lcom/android/contacts/common/list/ContactTileView$Listener;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactTileView;->mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    return-void
.end method

.method public setPhotoManager(Lcom/android/contacts/common/ContactPhotoManager;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactTileView;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    return-void
.end method
