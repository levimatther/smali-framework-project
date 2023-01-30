.class Lcom/android/dialer/callcomposer/camera/exif/IfdData;
.super Ljava/lang/Object;
.source "IfdData.java"


# static fields
.field private static final sIfds:[I


# instance fields
.field private final mExifTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Short;",
            "Lcom/android/dialer/callcomposer/camera/exif/ExifTag;",
            ">;"
        }
    .end annotation
.end field

.field private final mIfdId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 33
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/dialer/callcomposer/camera/exif/IfdData;->sIfds:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method constructor <init>(I)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/IfdData;->mExifTags:Ljava/util/Map;

    .line 50
    iput p1, p0, Lcom/android/dialer/callcomposer/camera/exif/IfdData;->mIfdId:I

    return-void
.end method

.method private getAllTags()[Lcom/android/dialer/callcomposer/camera/exif/ExifTag;
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/dialer/callcomposer/camera/exif/ExifTag;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/dialer/callcomposer/camera/exif/ExifTag;

    return-object v0
.end method

.method static getIfds()[I
    .locals 1

    .line 54
    sget-object v0, Lcom/android/dialer/callcomposer/camera/exif/IfdData;->sIfds:[I

    return-object v0
.end method

.method private getTagCount()I
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 103
    :cond_1
    instance-of v2, p1, Lcom/android/dialer/callcomposer/camera/exif/IfdData;

    if-eqz v2, :cond_5

    .line 104
    check-cast p1, Lcom/android/dialer/callcomposer/camera/exif/IfdData;

    .line 105
    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/camera/exif/IfdData;->getId()I

    move-result v2

    iget v3, p0, Lcom/android/dialer/callcomposer/camera/exif/IfdData;->mIfdId:I

    if-ne v2, v3, :cond_5

    invoke-direct {p1}, Lcom/android/dialer/callcomposer/camera/exif/IfdData;->getTagCount()I

    move-result v2

    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/exif/IfdData;->getTagCount()I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 106
    invoke-direct {p1}, Lcom/android/dialer/callcomposer/camera/exif/IfdData;->getAllTags()[Lcom/android/dialer/callcomposer/camera/exif/ExifTag;

    move-result-object p1

    .line 107
    array-length v2, p1

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, p1, v3

    .line 108
    invoke-virtual {v4}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->getTagId()S

    move-result v5

    invoke-static {v5}, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->isOffsetTag(S)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 111
    :cond_2
    iget-object v5, p0, Lcom/android/dialer/callcomposer/camera/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->getTagId()S

    move-result v6

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;

    .line 112
    invoke-virtual {v4, v5}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    return v1

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    return v1
.end method

.method protected getId()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/android/dialer/callcomposer/camera/exif/IfdData;->mIfdId:I

    return v0
.end method

.method protected getTag(S)Lcom/android/dialer/callcomposer/camera/exif/ExifTag;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;

    return-object p1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 124
    iget v1, p0, Lcom/android/dialer/callcomposer/camera/exif/IfdData;->mIfdId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/exif/IfdData;->mExifTags:Ljava/util/Map;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected setTag(Lcom/android/dialer/callcomposer/camera/exif/ExifTag;)Lcom/android/dialer/callcomposer/camera/exif/ExifTag;
    .locals 2

    .line 82
    iget v0, p0, Lcom/android/dialer/callcomposer/camera/exif/IfdData;->mIfdId:I

    invoke-virtual {p1, v0}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->setIfd(I)V

    .line 83
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->getTagId()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;

    return-object p1
.end method
