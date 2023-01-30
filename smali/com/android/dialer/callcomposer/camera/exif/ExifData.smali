.class public Lcom/android/dialer/callcomposer/camera/exif/ExifData;
.super Ljava/lang/Object;
.source "ExifData.java"


# instance fields
.field private final mIfdDatas:[Lcom/android/dialer/callcomposer/camera/exif/IfdData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/dialer/callcomposer/camera/exif/IfdData;

    .line 28
    iput-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifData;->mIfdDatas:[Lcom/android/dialer/callcomposer/camera/exif/IfdData;

    return-void
.end method

.method private addTag(Lcom/android/dialer/callcomposer/camera/exif/ExifTag;I)Lcom/android/dialer/callcomposer/camera/exif/ExifTag;
    .locals 1

    if-eqz p1, :cond_0

    .line 71
    invoke-static {p2}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->isValidIfd(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-direct {p0, p2}, Lcom/android/dialer/callcomposer/camera/exif/ExifData;->getOrCreateIfdData(I)Lcom/android/dialer/callcomposer/camera/exif/IfdData;

    move-result-object p2

    .line 73
    invoke-virtual {p2, p1}, Lcom/android/dialer/callcomposer/camera/exif/IfdData;->setTag(Lcom/android/dialer/callcomposer/camera/exif/ExifTag;)Lcom/android/dialer/callcomposer/camera/exif/ExifTag;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getOrCreateIfdData(I)Lcom/android/dialer/callcomposer/camera/exif/IfdData;
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifData;->mIfdDatas:[Lcom/android/dialer/callcomposer/camera/exif/IfdData;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/android/dialer/callcomposer/camera/exif/IfdData;

    invoke-direct {v0, p1}, Lcom/android/dialer/callcomposer/camera/exif/IfdData;-><init>(I)V

    .line 85
    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifData;->mIfdDatas:[Lcom/android/dialer/callcomposer/camera/exif/IfdData;

    aput-object v0, v1, p1

    :cond_0
    return-object v0
.end method


# virtual methods
.method addIfdData(Lcom/android/dialer/callcomposer/camera/exif/IfdData;)V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifData;->mIfdDatas:[Lcom/android/dialer/callcomposer/camera/exif/IfdData;

    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/camera/exif/IfdData;->getId()I

    move-result v1

    aput-object p1, v0, v1

    return-void
.end method

.method addTag(Lcom/android/dialer/callcomposer/camera/exif/ExifTag;)Lcom/android/dialer/callcomposer/camera/exif/ExifTag;
    .locals 1

    if-eqz p1, :cond_0

    .line 60
    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->getIfd()I

    move-result v0

    .line 61
    invoke-direct {p0, p1, v0}, Lcom/android/dialer/callcomposer/camera/exif/ExifData;->addTag(Lcom/android/dialer/callcomposer/camera/exif/ExifTag;I)Lcom/android/dialer/callcomposer/camera/exif/ExifTag;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method getIfdData(I)Lcom/android/dialer/callcomposer/camera/exif/IfdData;
    .locals 1

    .line 40
    invoke-static {p1}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->isValidIfd(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifData;->mIfdDatas:[Lcom/android/dialer/callcomposer/camera/exif/IfdData;

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getTag(SI)Lcom/android/dialer/callcomposer/camera/exif/ExifTag;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifData;->mIfdDatas:[Lcom/android/dialer/callcomposer/camera/exif/IfdData;

    aget-object p2, v0, p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p2, p1}, Lcom/android/dialer/callcomposer/camera/exif/IfdData;->getTag(S)Lcom/android/dialer/callcomposer/camera/exif/ExifTag;

    move-result-object p1

    :goto_0
    return-object p1
.end method
