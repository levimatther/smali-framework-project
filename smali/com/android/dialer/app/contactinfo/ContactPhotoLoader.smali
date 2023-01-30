.class public Lcom/android/dialer/app/contactinfo/ContactPhotoLoader;
.super Ljava/lang/Object;
.source "ContactPhotoLoader.java"


# instance fields
.field private final mContactInfo:Lcom/android/dialer/phonenumbercache/ContactInfo;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/dialer/phonenumbercache/ContactInfo;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/dialer/app/contactinfo/ContactPhotoLoader;->mContext:Landroid/content/Context;

    .line 51
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/phonenumbercache/ContactInfo;

    iput-object p1, p0, Lcom/android/dialer/app/contactinfo/ContactPhotoLoader;->mContactInfo:Lcom/android/dialer/phonenumbercache/ContactInfo;

    return-void
.end method

.method private createLetterTileDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 117
    new-instance v0, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;

    iget-object v1, p0, Lcom/android/dialer/app/contactinfo/ContactPhotoLoader;->mContext:Landroid/content/Context;

    .line 118
    invoke-static {v1}, Lcom/android/dialer/location/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 119
    new-instance v1, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;

    iget-object v2, p0, Lcom/android/dialer/app/contactinfo/ContactPhotoLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;-><init>(Landroid/content/res/Resources;)V

    .line 120
    iget-object v2, p0, Lcom/android/dialer/app/contactinfo/ContactPhotoLoader;->mContactInfo:Lcom/android/dialer/phonenumbercache/ContactInfo;

    iget-object v2, v2, Lcom/android/dialer/phonenumbercache/ContactInfo;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/dialer/app/contactinfo/ContactPhotoLoader;->mContactInfo:Lcom/android/dialer/phonenumbercache/ContactInfo;

    iget-object v3, v3, Lcom/android/dialer/phonenumbercache/ContactInfo;->lookupKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/dialer/app/contactinfo/ContactPhotoLoader;->mContactInfo:Lcom/android/dialer/phonenumbercache/ContactInfo;

    iget-object v4, v4, Lcom/android/dialer/phonenumbercache/ContactInfo;->sourceType:Lcom/android/dialer/logging/ContactSource$Type;

    .line 124
    invoke-virtual {v0, v4}, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->isBusiness(Lcom/android/dialer/logging/ContactSource$Type;)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    move v0, v4

    .line 120
    :goto_0
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->setCanonicalDialerLetterTileDetails(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/contacts/common/lettertiles/LetterTileDrawable;

    return-object v1
.end method

.method private createPhotoIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    const-string v0, "ContactPhotoLoader.createPhotoIconDrawable"

    .line 84
    iget-object v1, p0, Lcom/android/dialer/app/contactinfo/ContactPhotoLoader;->mContactInfo:Lcom/android/dialer/phonenumbercache/ContactInfo;

    iget-object v1, v1, Lcom/android/dialer/phonenumbercache/ContactInfo;->photoUri:Landroid/net/Uri;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const/4 v1, 0x0

    .line 88
    :try_start_0
    iget-object v3, p0, Lcom/android/dialer/app/contactinfo/ContactPhotoLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/dialer/app/contactinfo/ContactPhotoLoader;->mContactInfo:Lcom/android/dialer/phonenumbercache/ContactInfo;

    iget-object v4, v4, Lcom/android/dialer/phonenumbercache/ContactInfo;->photoUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "createPhotoIconDrawable: InputStream is null"

    new-array v4, v1, [Ljava/lang/Object;

    .line 90
    invoke-static {v0, v3, v4}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    .line 95
    :cond_1
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 96
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    if-nez v4, :cond_2

    const-string v3, "createPhotoIconDrawable: Bitmap is null"

    new-array v4, v1, [Ljava/lang/Object;

    .line 99
    invoke-static {v0, v3, v4}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    .line 104
    :cond_2
    iget-object v3, p0, Lcom/android/dialer/app/contactinfo/ContactPhotoLoader;->mContext:Landroid/content/Context;

    .line 105
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v4}, Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v3

    const/4 v4, 0x1

    .line 106
    invoke-virtual {v3, v4}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->setAntiAlias(Z)V

    .line 107
    invoke-virtual {v3, v4}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->setCircular(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v3

    .line 110
    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2
.end method

.method private static drawableToBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 3

    .line 55
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 56
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 57
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 58
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p1
.end method


# virtual methods
.method getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/android/dialer/app/contactinfo/ContactPhotoLoader;->createPhotoIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/android/dialer/app/contactinfo/ContactPhotoLoader;->createLetterTileDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public loadPhotoIcon()Landroid/graphics/Bitmap;
    .locals 2

    .line 64
    invoke-static {}, Lcom/android/dialer/common/Assert;->isWorkerThread()V

    .line 65
    iget-object v0, p0, Lcom/android/dialer/app/contactinfo/ContactPhotoLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 66
    invoke-virtual {p0}, Lcom/android/dialer/app/contactinfo/ContactPhotoLoader;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1, v0, v0}, Lcom/android/dialer/app/contactinfo/ContactPhotoLoader;->drawableToBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
