.class Lcom/android/dialer/shortcuts/IconFactory;
.super Ljava/lang/Object;
.source "IconFactory.java"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/dialer/shortcuts/IconFactory;->context:Landroid/content/Context;

    return-void
.end method

.method private create(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Icon;
    .locals 2

    .line 85
    invoke-static {}, Lcom/android/dialer/common/Assert;->isWorkerThread()V

    .line 88
    iget-object v0, p0, Lcom/android/dialer/shortcuts/IconFactory;->context:Landroid/content/Context;

    .line 90
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    .line 89
    invoke-static {v0, p1, v1}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;

    move-result-object p1

    .line 92
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 93
    invoke-direct {p0, p2, p3, p1}, Lcom/android/dialer/shortcuts/IconFactory;->createAdaptiveIcon(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    goto :goto_0

    .line 94
    :cond_0
    invoke-direct {p0, p2, p3, p1}, Lcom/android/dialer/shortcuts/IconFactory;->createFlatIcon(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private createAdaptiveIcon(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Landroid/graphics/drawable/Icon;
    .locals 2

    if-nez p3, :cond_0

    .line 101
    new-instance p3, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;

    iget-object v0, p0, Lcom/android/dialer/shortcuts/IconFactory;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;-><init>(Landroid/content/res/Resources;)V

    .line 104
    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    div-float/2addr v1, v0

    invoke-virtual {p3, v1}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->setScale(F)Lcom/android/contacts/common/lettertiles/LetterTileDrawable;

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 105
    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->setCanonicalDialerLetterTileDetails(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/contacts/common/lettertiles/LetterTileDrawable;

    .line 111
    iget-object p1, p0, Lcom/android/dialer/shortcuts/IconFactory;->context:Landroid/content/Context;

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07019b

    .line 114
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 116
    invoke-static {p3, p1, p1}, Lcom/android/dialer/util/DrawableConverter;->drawableToBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 115
    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithAdaptiveBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    return-object p1

    .line 118
    :cond_0
    invoke-static {p3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 119
    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithAdaptiveBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    return-object p1
.end method

.method private createCircularDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/android/dialer/shortcuts/IconFactory;->context:Landroid/content/Context;

    .line 145
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/RoundedBitmapDrawable;

    move-result-object p1

    const/4 v0, 0x1

    .line 146
    invoke-virtual {p1, v0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->setCircular(Z)V

    .line 147
    invoke-virtual {p1, v0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->setAntiAlias(Z)V

    return-object p1
.end method

.method private createFlatIcon(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Landroid/graphics/drawable/Icon;
    .locals 1

    if-nez p3, :cond_0

    .line 127
    new-instance p3, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;

    iget-object v0, p0, Lcom/android/dialer/shortcuts/IconFactory;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;-><init>(Landroid/content/res/Resources;)V

    const/4 v0, 0x1

    .line 128
    invoke-virtual {p3, p1, p2, v0, v0}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->setCanonicalDialerLetterTileDetails(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/contacts/common/lettertiles/LetterTileDrawable;

    goto :goto_0

    .line 133
    :cond_0
    invoke-static {p3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 134
    invoke-direct {p0, p1}, Lcom/android/dialer/shortcuts/IconFactory;->createCircularDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 136
    :goto_0
    iget-object p1, p0, Lcom/android/dialer/shortcuts/IconFactory;->context:Landroid/content/Context;

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07019c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 139
    invoke-static {p3, p1, p1}, Lcom/android/dialer/util/DrawableConverter;->drawableToBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 138
    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public create(Landroid/content/pm/ShortcutInfo;)Landroid/graphics/drawable/Icon;
    .locals 2

    .line 74
    invoke-static {}, Lcom/android/dialer/common/Assert;->isWorkerThread()V

    .line 76
    invoke-static {p1}, Lcom/android/dialer/shortcuts/DialerShortcut;->getLookupUriFromShortcutInfo(Landroid/content/pm/ShortcutInfo;)Landroid/net/Uri;

    move-result-object v0

    .line 77
    invoke-static {p1}, Lcom/android/dialer/shortcuts/DialerShortcut;->getDisplayNameFromShortcutInfo(Landroid/content/pm/ShortcutInfo;)Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-static {p1}, Lcom/android/dialer/shortcuts/DialerShortcut;->getLookupKeyFromShortcutInfo(Landroid/content/pm/ShortcutInfo;)Ljava/lang/String;

    move-result-object p1

    .line 75
    invoke-direct {p0, v0, v1, p1}, Lcom/android/dialer/shortcuts/IconFactory;->create(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    return-object p1
.end method

.method public create(Lcom/android/dialer/shortcuts/DialerShortcut;)Landroid/graphics/drawable/Icon;
    .locals 2

    .line 65
    invoke-static {}, Lcom/android/dialer/common/Assert;->isWorkerThread()V

    .line 67
    invoke-virtual {p1}, Lcom/android/dialer/shortcuts/DialerShortcut;->getLookupUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/dialer/shortcuts/DialerShortcut;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/dialer/shortcuts/DialerShortcut;->getLookupKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/dialer/shortcuts/IconFactory;->create(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    return-object p1
.end method
