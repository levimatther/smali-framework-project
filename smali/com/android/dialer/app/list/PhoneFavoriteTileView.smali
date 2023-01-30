.class public abstract Lcom/android/dialer/app/list/PhoneFavoriteTileView;
.super Lcom/android/contacts/common/list/ContactTileView;
.source "PhoneFavoriteTileView.java"


# static fields
.field private static final DEFAULT_IMAGE_LETTER_OFFSET:F = -0.12f

.field private static final DEFAULT_IMAGE_LETTER_SCALE:F = 0.7f

.field static final DRAG_PHONE_FAVORITE_TILE:Ljava/lang/String; = "PHONE_FAVORITE_TILE"

.field private static final EMPTY_CLIP_DATA:Landroid/content/ClipData;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isPinned:Z

.field private isStarred:Z

.field private mPhoneNumberString:Ljava/lang/String;

.field private mShadowOverlay:Landroid/view/View;

.field private position:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lcom/android/dialer/app/list/PhoneFavoriteTileView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/app/list/PhoneFavoriteTileView;->TAG:Ljava/lang/String;

    const-string v0, ""

    .line 58
    invoke-static {v0, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/app/list/PhoneFavoriteTileView;->EMPTY_CLIP_DATA:Landroid/content/ClipData;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/common/list/ContactTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 65
    iput p1, p0, Lcom/android/dialer/app/list/PhoneFavoriteTileView;->position:I

    return-void
.end method

.method static synthetic access$000()Landroid/content/ClipData;
    .locals 1

    .line 45
    sget-object v0, Lcom/android/dialer/app/list/PhoneFavoriteTileView;->EMPTY_CLIP_DATA:Landroid/content/ClipData;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/dialer/app/list/PhoneFavoriteTileView;)Lcom/android/contacts/common/list/ContactTileView$Listener;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/dialer/app/list/PhoneFavoriteTileView;->mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/dialer/app/list/PhoneFavoriteTileView;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/android/dialer/app/list/PhoneFavoriteTileView;->position:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/dialer/app/list/PhoneFavoriteTileView;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/android/dialer/app/list/PhoneFavoriteTileView;->isStarred:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/dialer/app/list/PhoneFavoriteTileView;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/android/dialer/app/list/PhoneFavoriteTileView;->isPinned:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/dialer/app/list/PhoneFavoriteTileView;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/dialer/app/list/PhoneFavoriteTileView;->mPhoneNumberString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/dialer/app/list/PhoneFavoriteTileView;)Lcom/android/contacts/common/list/ContactTileView$Listener;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/dialer/app/list/PhoneFavoriteTileView;->mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/dialer/app/list/PhoneFavoriteTileView;)Lcom/android/contacts/common/list/ContactTileView$Listener;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/dialer/app/list/PhoneFavoriteTileView;->mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    return-object p0
.end method


# virtual methods
.method protected configureViewForImage(Z)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/android/dialer/app/list/PhoneFavoriteTileView;->mShadowOverlay:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 176
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected createClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 120
    new-instance v0, Lcom/android/dialer/app/list/PhoneFavoriteTileView$2;

    invoke-direct {v0, p0}, Lcom/android/dialer/app/list/PhoneFavoriteTileView$2;-><init>(Lcom/android/dialer/app/list/PhoneFavoriteTileView;)V

    return-object v0
.end method

.method protected getDefaultImageRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;
    .locals 8

    .line 163
    new-instance v7, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    const/4 v3, 0x1

    const v4, 0x3f333333    # 0.7f

    const v5, -0x420a3d71    # -0.12f

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IFFZ)V

    return-object v7
.end method

.method protected isContactPhotoCircular()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isDarkTheme()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public loadFromContact(Lcom/android/contacts/common/list/ContactEntry;)V
    .locals 2

    .line 91
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactTileView;->loadFromContact(Lcom/android/contacts/common/list/ContactEntry;)V

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/android/dialer/app/list/PhoneFavoriteTileView;->mPhoneNumberString:Ljava/lang/String;

    .line 94
    iget v0, p1, Lcom/android/contacts/common/list/ContactEntry;->pinned:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/dialer/app/list/PhoneFavoriteTileView;->isPinned:Z

    .line 95
    iget-boolean v0, p1, Lcom/android/contacts/common/list/ContactEntry;->isFavorite:Z

    iput-boolean v0, p0, Lcom/android/dialer/app/list/PhoneFavoriteTileView;->isStarred:Z

    if-eqz p1, :cond_3

    .line 98
    iget-object v0, p1, Lcom/android/contacts/common/list/ContactEntry;->phoneNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/dialer/app/list/PhoneFavoriteTileView;->mPhoneNumberString:Ljava/lang/String;

    .line 103
    sget-object v0, Lcom/android/contacts/common/list/ContactEntry;->BLANK_ENTRY:Lcom/android/contacts/common/list/ContactEntry;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x4

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/list/PhoneFavoriteTileView;->setVisibility(I)V

    goto :goto_2

    :cond_1
    const v0, 0x7f0900e1

    .line 106
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/list/PhoneFavoriteTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 107
    iget-boolean p1, p1, Lcom/android/contacts/common/list/ContactEntry;->isFavorite:Z

    if-eqz p1, :cond_2

    move p1, v1

    goto :goto_1

    :cond_2
    const/16 p1, 0x8

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    invoke-virtual {p0, v1}, Lcom/android/dialer/app/list/PhoneFavoriteTileView;->setVisibility(I)V

    :cond_3
    :goto_2
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 73
    invoke-super {p0}, Lcom/android/contacts/common/list/ContactTileView;->onFinishInflate()V

    const v0, 0x7f0902b3

    .line 74
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/list/PhoneFavoriteTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/list/PhoneFavoriteTileView;->mShadowOverlay:Landroid/view/View;

    .line 76
    new-instance v0, Lcom/android/dialer/app/list/PhoneFavoriteTileView$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/app/list/PhoneFavoriteTileView$1;-><init>(Lcom/android/dialer/app/list/PhoneFavoriteTileView;)V

    invoke-virtual {p0, v0}, Lcom/android/dialer/app/list/PhoneFavoriteTileView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 187
    iput p1, p0, Lcom/android/dialer/app/list/PhoneFavoriteTileView;->position:I

    return-void
.end method
