.class public Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/callcomposer/camera/exif/ExifInterface$OrientationParams;,
        Lcom/android/dialer/callcomposer/camera/exif/ExifInterface$Orientation;
    }
.end annotation


# static fields
.field static final DEFINITION_NULL:I = 0x0

.field private static final GPS_DATE_FORMAT_STR:Ljava/lang/String; = "yyyy:MM:dd"

.field private static final IFD_NULL:I = -0x1

.field private static final NULL_ARGUMENT_STRING:Ljava/lang/String; = "Argument is null"

.field static final TAG_EXIF_IFD:I

.field static final TAG_GPS_IFD:I

.field static final TAG_INTEROPERABILITY_IFD:I

.field static final TAG_JPEG_INTERCHANGE_FORMAT:I

.field static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

.field public static final TAG_ORIENTATION:I

.field static final TAG_STRIP_BYTE_COUNTS:I

.field static final TAG_STRIP_OFFSETS:I

.field private static sOffsetTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mData:Lcom/android/dialer/callcomposer/camera/exif/ExifData;

.field private mTagInfo:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x112

    .line 51
    invoke-static {v0, v1}, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->TAG_ORIENTATION:I

    const/16 v1, -0x7897

    .line 53
    invoke-static {v0, v1}, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->TAG_EXIF_IFD:I

    const/16 v1, -0x77db

    .line 54
    invoke-static {v0, v1}, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->TAG_GPS_IFD:I

    const/16 v1, 0x111

    .line 55
    invoke-static {v0, v1}, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    const/16 v1, 0x117

    .line 56
    invoke-static {v0, v1}, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    const/4 v0, 0x1

    const/16 v1, 0x201

    .line 58
    invoke-static {v0, v1}, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    const/16 v1, 0x202

    .line 59
    invoke-static {v0, v1}, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    const/4 v0, 0x2

    const/16 v1, -0x5ffb

    .line 61
    invoke-static {v0, v1}, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    .line 67
    sget v1, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-static {v1}, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-static {v1}, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v1}, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-static {v1}, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v1}, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lcom/android/dialer/callcomposer/camera/exif/ExifData;

    invoke-direct {v0}, Lcom/android/dialer/callcomposer/camera/exif/ExifData;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->mData:Lcom/android/dialer/callcomposer/camera/exif/ExifData;

    const/4 v0, 0x0

    .line 157
    iput-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    .line 82
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy:MM:dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "UTC"

    .line 83
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method private static defineTag(IS)I
    .locals 1

    const v0, 0xffff

    and-int/2addr p1, v0

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, p1

    return p0
.end method

.method private static getAllowedIfdFlagsFromInfo(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x18

    return p0
.end method

.method private getDefinedTagDefaultIfd(I)I
    .locals 1

    .line 250
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 254
    :cond_0
    invoke-static {p1}, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->getTrueIfd(I)I

    move-result p1

    return p1
.end method

.method private static getFlagsFromAllowedIfds([I)I
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 198
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_3

    .line 202
    :cond_0
    invoke-static {}, Lcom/android/dialer/callcomposer/camera/exif/IfdData;->getIfds()[I

    move-result-object v1

    move v2, v0

    move v3, v2

    :goto_0
    const/4 v4, 0x5

    if-ge v2, v4, :cond_3

    .line 204
    array-length v4, p0

    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_2

    aget v6, p0, v5

    .line 205
    aget v7, v1, v2

    if-ne v7, v6, :cond_1

    const/4 v4, 0x1

    shl-int/2addr v4, v2

    or-int/2addr v3, v4

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v3

    :cond_4
    :goto_3
    return v0
.end method

.method public static getOrientationParams(I)Lcom/android/dialer/callcomposer/camera/exif/ExifInterface$OrientationParams;
    .locals 5

    .line 296
    new-instance v0, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface$OrientationParams;

    invoke-direct {v0}, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface$OrientationParams;-><init>()V

    const/16 v1, 0x10e

    const/16 v2, 0x5a

    const/4 v3, 0x1

    const/4 v4, -0x1

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 308
    :pswitch_0
    iput v1, v0, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface$OrientationParams;->rotation:I

    .line 309
    iput-boolean v3, v0, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface$OrientationParams;->invertDimensions:Z

    goto :goto_0

    .line 321
    :pswitch_1
    iput v1, v0, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface$OrientationParams;->rotation:I

    .line 322
    iput v4, v0, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface$OrientationParams;->scaleX:I

    .line 323
    iput-boolean v3, v0, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface$OrientationParams;->invertDimensions:Z

    goto :goto_0

    .line 312
    :pswitch_2
    iput v2, v0, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface$OrientationParams;->rotation:I

    .line 313
    iput-boolean v3, v0, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface$OrientationParams;->invertDimensions:Z

    goto :goto_0

    .line 316
    :pswitch_3
    iput v2, v0, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface$OrientationParams;->rotation:I

    .line 317
    iput v4, v0, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface$OrientationParams;->scaleX:I

    .line 318
    iput-boolean v3, v0, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface$OrientationParams;->invertDimensions:Z

    goto :goto_0

    .line 302
    :pswitch_4
    iput v4, v0, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface$OrientationParams;->scaleY:I

    goto :goto_0

    :pswitch_5
    const/16 p0, 0xb4

    .line 305
    iput p0, v0, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface$OrientationParams;->rotation:I

    goto :goto_0

    .line 299
    :pswitch_6
    iput v4, v0, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface$OrientationParams;->scaleX:I

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getTagIntValue(II)Ljava/lang/Integer;
    .locals 0

    .line 215
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->getTagIntValues(II)[I

    move-result-object p1

    if-eqz p1, :cond_1

    .line 216
    array-length p2, p1

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 219
    aget p1, p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getTagIntValues(II)[I
    .locals 0

    .line 223
    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->getTag(II)Lcom/android/dialer/callcomposer/camera/exif/ExifTag;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 227
    :cond_0
    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->getValueAsInts()[I

    move-result-object p1

    return-object p1
.end method

.method private static getTrueIfd(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x10

    return p0
.end method

.method static getTrueTagKey(I)S
    .locals 0

    int-to-short p0, p0

    return p0
.end method

.method private initTagInfo()V
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 174
    fill-array-data v1, :array_0

    .line 175
    invoke-static {v1}, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    .line 176
    iget-object v2, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    const/high16 v4, 0x40000

    or-int v5, v1, v4

    invoke-virtual {v2, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 177
    iget-object v2, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->TAG_EXIF_IFD:I

    or-int/lit8 v6, v5, 0x1

    invoke-virtual {v2, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 178
    iget-object v2, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-virtual {v2, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 179
    iget-object v2, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->TAG_ORIENTATION:I

    const/high16 v6, 0x30000

    or-int/2addr v1, v6

    const/4 v6, 0x1

    or-int/2addr v1, v6

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 180
    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-virtual {v1, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    new-array v1, v6, [I

    const/4 v2, 0x0

    aput v6, v1, v2

    .line 183
    invoke-static {v1}, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    .line 184
    iget-object v3, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    or-int/2addr v1, v4

    or-int/2addr v1, v6

    invoke-virtual {v3, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 187
    iget-object v3, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-virtual {v3, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    new-array v1, v6, [I

    aput v0, v1, v2

    .line 192
    invoke-static {v1}, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    .line 193
    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    or-int/2addr v0, v4

    or-int/2addr v0, v6

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method static isIfdAllowed(II)Z
    .locals 5

    .line 128
    invoke-static {}, Lcom/android/dialer/callcomposer/camera/exif/IfdData;->getIfds()[I

    move-result-object v0

    .line 129
    invoke-static {p0}, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->getAllowedIfdFlagsFromInfo(I)I

    move-result p0

    const/4 v1, 0x0

    move v2, v1

    .line 130
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 131
    aget v3, v0, v2

    if-ne p1, v3, :cond_0

    shr-int v3, p0, v2

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method static isOffsetTag(S)Z
    .locals 1

    .line 154
    sget-object v0, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private readExif(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 109
    :try_start_0
    new-instance v0, Lcom/android/dialer/callcomposer/camera/exif/ExifReader;

    invoke-direct {v0, p0}, Lcom/android/dialer/callcomposer/camera/exif/ExifReader;-><init>(Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;)V

    invoke-virtual {v0, p1}, Lcom/android/dialer/callcomposer/camera/exif/ExifReader;->read(Ljava/io/InputStream;)Lcom/android/dialer/callcomposer/camera/exif/ExifData;

    move-result-object p1
    :try_end_0
    .catch Lcom/android/dialer/callcomposer/camera/exif/ExifInvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    iput-object p1, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->mData:Lcom/android/dialer/callcomposer/camera/exif/ExifData;

    return-void

    :catch_0
    move-exception p1

    .line 111
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid exif format : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public clearExif()V
    .locals 1

    .line 331
    new-instance v0, Lcom/android/dialer/callcomposer/camera/exif/ExifData;

    invoke-direct {v0}, Lcom/android/dialer/callcomposer/camera/exif/ExifData;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->mData:Lcom/android/dialer/callcomposer/camera/exif/ExifData;

    return-void
.end method

.method public getTag(I)Lcom/android/dialer/callcomposer/camera/exif/ExifTag;
    .locals 1

    .line 354
    invoke-direct {p0, p1}, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 355
    invoke-virtual {p0, p1, v0}, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->getTag(II)Lcom/android/dialer/callcomposer/camera/exif/ExifTag;

    move-result-object p1

    return-object p1
.end method

.method public getTag(II)Lcom/android/dialer/callcomposer/camera/exif/ExifTag;
    .locals 1

    .line 232
    invoke-static {p2}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->isValidIfd(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->mData:Lcom/android/dialer/callcomposer/camera/exif/ExifData;

    invoke-static {p1}, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result p1

    invoke-virtual {v0, p1, p2}, Lcom/android/dialer/callcomposer/camera/exif/ExifData;->getTag(SI)Lcom/android/dialer/callcomposer/camera/exif/ExifTag;

    move-result-object p1

    return-object p1
.end method

.method getTagInfo()Landroid/util/SparseIntArray;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    .line 162
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->initTagInfo()V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method public getTagIntValue(I)Ljava/lang/Integer;
    .locals 1

    .line 239
    invoke-direct {p0, p1}, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 240
    invoke-direct {p0, p1, v0}, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->getTagIntValue(II)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public readExif([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V

    return-void
.end method

.method public setTag(Lcom/android/dialer/callcomposer/camera/exif/ExifTag;)Lcom/android/dialer/callcomposer/camera/exif/ExifTag;
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->mData:Lcom/android/dialer/callcomposer/camera/exif/ExifData;

    invoke-virtual {v0, p1}, Lcom/android/dialer/callcomposer/camera/exif/ExifData;->addTag(Lcom/android/dialer/callcomposer/camera/exif/ExifTag;)Lcom/android/dialer/callcomposer/camera/exif/ExifTag;

    move-result-object p1

    return-object p1
.end method

.method public writeExif(Landroid/graphics/Bitmap;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 371
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x5a

    invoke-virtual {p1, v0, v1, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 372
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    return-void

    .line 369
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
