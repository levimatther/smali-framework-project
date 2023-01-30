.class Lcom/android/dialer/callcomposer/camera/exif/ExifReader;
.super Ljava/lang/Object;
.source "ExifReader.java"


# instance fields
.field private final mInterface:Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;


# direct methods
.method constructor <init>(Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifReader;->mInterface:Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;

    return-void
.end method


# virtual methods
.method protected read(Ljava/io/InputStream;)Lcom/android/dialer/callcomposer/camera/exif/ExifData;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/dialer/callcomposer/camera/exif/ExifInvalidFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifReader;->mInterface:Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;

    invoke-static {p1, v0}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->parse(Ljava/io/InputStream;Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;)Lcom/android/dialer/callcomposer/camera/exif/ExifParser;

    move-result-object p1

    .line 40
    new-instance v0, Lcom/android/dialer/callcomposer/camera/exif/ExifData;

    invoke-direct {v0}, Lcom/android/dialer/callcomposer/camera/exif/ExifData;-><init>()V

    .line 43
    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->next()I

    move-result v1

    :goto_0
    const/4 v2, 0x5

    if-eq v1, v2, :cond_8

    if-eqz v1, :cond_6

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    const/4 v3, 0x0

    const-string v4, "ExifReader.read"

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 71
    :cond_0
    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->getStripSize()I

    move-result v1

    new-array v2, v1, [B

    .line 72
    invoke-virtual {p1, v2}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->read([B)I

    move-result v2

    if-eq v1, v2, :cond_7

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "Failed to read the strip bytes"

    .line 73
    invoke-static {v4, v2, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 65
    :cond_1
    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->getCompressedImageSize()I

    move-result v1

    new-array v2, v1, [B

    .line 66
    invoke-virtual {p1, v2}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->read([B)I

    move-result v2

    if-eq v1, v2, :cond_7

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "Failed to read the compressed thumbnail"

    .line 67
    invoke-static {v4, v2, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 58
    :cond_2
    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->getTag()Lcom/android/dialer/callcomposer/camera/exif/ExifTag;

    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->getDataType()S

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_3

    .line 60
    invoke-virtual {p1, v1}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->readFullTagValue(Lcom/android/dialer/callcomposer/camera/exif/ExifTag;)V

    .line 62
    :cond_3
    invoke-virtual {v1}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->getIfd()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/dialer/callcomposer/camera/exif/ExifData;->getIfdData(I)Lcom/android/dialer/callcomposer/camera/exif/IfdData;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/dialer/callcomposer/camera/exif/IfdData;->setTag(Lcom/android/dialer/callcomposer/camera/exif/ExifTag;)Lcom/android/dialer/callcomposer/camera/exif/ExifTag;

    goto :goto_1

    .line 50
    :cond_4
    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->getTag()Lcom/android/dialer/callcomposer/camera/exif/ExifTag;

    move-result-object v1

    .line 51
    invoke-virtual {v1}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->hasValue()Z

    move-result v2

    if-nez v2, :cond_5

    .line 52
    invoke-virtual {p1, v1}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->registerForTagValue(Lcom/android/dialer/callcomposer/camera/exif/ExifTag;)V

    goto :goto_1

    .line 54
    :cond_5
    invoke-virtual {v1}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->getIfd()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/dialer/callcomposer/camera/exif/ExifData;->getIfdData(I)Lcom/android/dialer/callcomposer/camera/exif/IfdData;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/dialer/callcomposer/camera/exif/IfdData;->setTag(Lcom/android/dialer/callcomposer/camera/exif/ExifTag;)Lcom/android/dialer/callcomposer/camera/exif/ExifTag;

    goto :goto_1

    .line 47
    :cond_6
    new-instance v1, Lcom/android/dialer/callcomposer/camera/exif/IfdData;

    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->getCurrentIfd()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/dialer/callcomposer/camera/exif/IfdData;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/dialer/callcomposer/camera/exif/ExifData;->addIfdData(Lcom/android/dialer/callcomposer/camera/exif/IfdData;)V

    .line 77
    :cond_7
    :goto_1
    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->next()I

    move-result v1

    goto/16 :goto_0

    :cond_8
    return-object v0
.end method
