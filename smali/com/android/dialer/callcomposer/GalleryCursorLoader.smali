.class public Lcom/android/dialer/callcomposer/GalleryCursorLoader;
.super Landroidx/loader/content/CursorLoader;
.source "GalleryCursorLoader.java"


# static fields
.field public static final ACCEPTABLE_IMAGE_TYPES:[Ljava/lang/String;

.field private static final IMAGE_SELECTION:Ljava/lang/String;

.field public static final MEDIA_SCANNER_VOLUME_EXTERNAL:Ljava/lang/String; = "external"

.field private static final SORT_ORDER:Ljava/lang/String; = "date_modified DESC"

.field private static final STORAGE_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "image/jpeg"

    const-string v1, "image/jpg"

    const-string v2, "image/png"

    const-string v3, "image/webp"

    .line 30
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/callcomposer/GalleryCursorLoader;->ACCEPTABLE_IMAGE_TYPES:[Ljava/lang/String;

    const-string v0, "external"

    .line 33
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/callcomposer/GalleryCursorLoader;->STORAGE_URI:Landroid/net/Uri;

    .line 35
    invoke-static {}, Lcom/android/dialer/callcomposer/GalleryCursorLoader;->createSelection()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/callcomposer/GalleryCursorLoader;->IMAGE_SELECTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 38
    sget-object v2, Lcom/android/dialer/callcomposer/GalleryCursorLoader;->STORAGE_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/dialer/callcomposer/GalleryGridItemData;->IMAGE_PROJECTION:[Ljava/lang/String;

    sget-object v4, Lcom/android/dialer/callcomposer/GalleryCursorLoader;->IMAGE_SELECTION:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "date_modified DESC"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Landroidx/loader/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static createSelection()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "mime_type IN (\'image/jpeg\', \'image/jpg\', \'image/png\', \'image/webp\') AND media_type in (%d)"

    .line 49
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
