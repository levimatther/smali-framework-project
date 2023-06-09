.class public Lcom/android/dialer/callcomposer/camera/exif/ExifParser;
.super Ljava/lang/Object;
.source "ExifParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/callcomposer/camera/exif/ExifParser$ExifTagEvent;,
        Lcom/android/dialer/callcomposer/camera/exif/ExifParser$IfdEvent;,
        Lcom/android/dialer/callcomposer/camera/exif/ExifParser$ImageEvent;
    }
.end annotation


# static fields
.field private static final BIG_ENDIAN_TAG:S = 0x4d4ds

.field private static final DEFAULT_IFD0_OFFSET:I = 0x8

.field static final EVENT_COMPRESSED_IMAGE:I = 0x3

.field static final EVENT_END:I = 0x5

.field static final EVENT_NEW_TAG:I = 0x1

.field static final EVENT_START_OF_IFD:I = 0x0

.field static final EVENT_UNCOMPRESSED_STRIP:I = 0x4

.field static final EVENT_VALUE_OF_REGISTERED_TAG:I = 0x2

.field private static final EXIF_HEADER:I = 0x45786966

.field private static final EXIF_HEADER_TAIL:S = 0x0s

.field private static final LITTLE_ENDIAN_TAG:S = 0x4949s

.field private static final LOGV:Z = false

.field private static final OFFSET_SIZE:I = 0x2

.field private static final OPTION_IFD_0:I = 0x1

.field private static final OPTION_IFD_1:I = 0x2

.field private static final OPTION_IFD_EXIF:I = 0x4

.field private static final OPTION_IFD_GPS:I = 0x8

.field private static final OPTION_IFD_INTEROPERABILITY:I = 0x10

.field private static final OPTION_THUMBNAIL:I = 0x20

.field private static final TAG_EXIF_IFD:S

.field private static final TAG_GPS_IFD:S

.field private static final TAG_INTEROPERABILITY_IFD:S

.field private static final TAG_JPEG_INTERCHANGE_FORMAT:S

.field private static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S

.field private static final TAG_SIZE:I = 0xc

.field private static final TAG_STRIP_BYTE_COUNTS:S

.field private static final TAG_STRIP_OFFSETS:S

.field private static final TIFF_HEADER_TAIL:S = 0x2as

.field private static final US_ASCII:Ljava/nio/charset/Charset;


# instance fields
.field private mApp1End:I

.field private mContainExifData:Z

.field private final mCorrespondingEvent:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mDataAboveIfd0:[B

.field private mIfd0Position:I

.field private mIfdStartOffset:I

.field private mIfdType:I

.field private mImageEvent:Lcom/android/dialer/callcomposer/camera/exif/ExifParser$ImageEvent;

.field private final mInterface:Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;

.field private mJpegSizeTag:Lcom/android/dialer/callcomposer/camera/exif/ExifTag;

.field private mNeedToParseOffsetsInCurrentIfd:Z

.field private mNumOfTagInIfd:I

.field private final mOptions:I

.field private mStripSizeTag:Lcom/android/dialer/callcomposer/camera/exif/ExifTag;

.field private mTag:Lcom/android/dialer/callcomposer/camera/exif/ExifTag;

.field private final mTiffStream:Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "US-ASCII"

    .line 118
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->US_ASCII:Ljava/nio/charset/Charset;

    .line 138
    sget v0, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-static {v0}, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->TAG_EXIF_IFD:S

    .line 139
    sget v0, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-static {v0}, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->TAG_GPS_IFD:S

    .line 140
    sget v0, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    .line 141
    invoke-static {v0}, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->TAG_INTEROPERABILITY_IFD:S

    .line 142
    sget v0, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    .line 143
    invoke-static {v0}, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT:S

    .line 144
    sget v0, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 145
    invoke-static {v0}, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S

    .line 146
    sget v0, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    .line 147
    invoke-static {v0}, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->TAG_STRIP_OFFSETS:S

    .line 148
    sget v0, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    .line 149
    invoke-static {v0}, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->TAG_STRIP_BYTE_COUNTS:S

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;ILcom/android/dialer/callcomposer/camera/exif/ExifInterface;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/dialer/callcomposer/camera/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 124
    iput v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mIfdStartOffset:I

    .line 125
    iput v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mNumOfTagInIfd:I

    .line 132
    iput-boolean v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mContainExifData:Z

    .line 151
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    if-eqz p1, :cond_4

    .line 181
    iput-object p3, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mInterface:Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;

    .line 182
    invoke-direct {p0, p1}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->seekTiffData(Ljava/io/InputStream;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mContainExifData:Z

    .line 183
    new-instance p3, Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;

    invoke-direct {p3, p1}, Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p3, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mTiffStream:Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;

    .line 184
    iput p2, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mOptions:I

    .line 185
    iget-boolean p1, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mContainExifData:Z

    if-nez p1, :cond_0

    return-void

    .line 189
    :cond_0
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->parseTiffHeader()V

    .line 190
    iget-object p1, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mTiffStream:Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;

    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;->readUnsignedInt()J

    move-result-wide p1

    const-wide/32 v1, 0x7fffffff

    cmp-long p3, p1, v1

    if-gtz p3, :cond_3

    long-to-int p3, p1

    .line 194
    iput p3, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mIfd0Position:I

    .line 195
    iput v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mIfdType:I

    .line 196
    invoke-direct {p0, v0}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->needToParseOffsetsInCurrentIfd()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 197
    :cond_1
    invoke-direct {p0, v0, p1, p2}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->registerIfd(IJ)V

    const-wide/16 v0, 0x8

    cmp-long p1, p1, v0

    if-eqz p1, :cond_2

    add-int/lit8 p3, p3, -0x8

    .line 199
    new-array p1, p3, [B

    iput-object p1, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mDataAboveIfd0:[B

    .line 200
    invoke-virtual {p0, p1}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->read([B)I

    :cond_2
    return-void

    .line 192
    :cond_3
    new-instance p3, Lcom/android/dialer/callcomposer/camera/exif/ExifInvalidFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid offset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/dialer/callcomposer/camera/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 176
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Null argument inputStream to ExifParser"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkAllowed(II)Z
    .locals 1

    .line 597
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mInterface:Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;

    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p2

    if-eqz p2, :cond_0

    .line 598
    invoke-static {p2, p1}, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->isIfdAllowed(II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private checkOffsetOrImageTag(Lcom/android/dialer/callcomposer/camera/exif/ExifTag;)V
    .locals 5

    .line 546
    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->getComponentCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 549
    :cond_0
    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->getTagId()S

    move-result v0

    .line 550
    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->getIfd()I

    move-result v1

    .line 551
    sget-short v2, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->TAG_EXIF_IFD:S

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ne v0, v2, :cond_2

    sget v2, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-direct {p0, v1, v2}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x2

    .line 552
    invoke-direct {p0, v0}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v3}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 553
    :cond_1
    invoke-virtual {p1, v4}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->getValueAt(I)J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->registerIfd(IJ)V

    goto/16 :goto_2

    .line 555
    :cond_2
    sget-short v2, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->TAG_GPS_IFD:S

    if-ne v0, v2, :cond_3

    sget v2, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-direct {p0, v1, v2}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x4

    .line 556
    invoke-direct {p0, v0}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 557
    invoke-virtual {p1, v4}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->getValueAt(I)J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->registerIfd(IJ)V

    goto/16 :goto_2

    .line 559
    :cond_3
    sget-short v2, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->TAG_INTEROPERABILITY_IFD:S

    if-ne v0, v2, :cond_4

    sget v2, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    .line 560
    invoke-direct {p0, v1, v2}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 561
    invoke-direct {p0, v3}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 562
    invoke-virtual {p1, v4}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    invoke-direct {p0, v3, v0, v1}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->registerIfd(IJ)V

    goto/16 :goto_2

    .line 564
    :cond_4
    sget-short v2, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT:S

    if-ne v0, v2, :cond_5

    sget v2, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    .line 565
    invoke-direct {p0, v1, v2}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 566
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->isThumbnailRequested()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 567
    invoke-virtual {p1, v4}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->registerCompressedImage(J)V

    goto/16 :goto_2

    .line 569
    :cond_5
    sget-short v2, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S

    if-ne v0, v2, :cond_6

    sget v2, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 570
    invoke-direct {p0, v1, v2}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 571
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->isThumbnailRequested()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 572
    iput-object p1, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mJpegSizeTag:Lcom/android/dialer/callcomposer/camera/exif/ExifTag;

    goto :goto_2

    .line 574
    :cond_6
    sget-short v2, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->TAG_STRIP_OFFSETS:S

    if-ne v0, v2, :cond_9

    sget v2, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-direct {p0, v1, v2}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 575
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->isThumbnailRequested()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 576
    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 577
    :goto_0
    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->getComponentCount()I

    move-result v0

    if-ge v4, v0, :cond_a

    .line 578
    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->getDataType()S

    move-result v0

    if-ne v0, v3, :cond_7

    .line 579
    invoke-virtual {p1, v4}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    invoke-direct {p0, v4, v0, v1}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->registerUncompressedStrip(IJ)V

    goto :goto_1

    .line 581
    :cond_7
    invoke-virtual {p1, v4}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    invoke-direct {p0, v4, v0, v1}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->registerUncompressedStrip(IJ)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 585
    :cond_8
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->getOffset()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/dialer/callcomposer/camera/exif/ExifParser$ExifTagEvent;

    invoke-direct {v2, p1, v4}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser$ExifTagEvent;-><init>(Lcom/android/dialer/callcomposer/camera/exif/ExifTag;Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 588
    :cond_9
    sget-short v2, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->TAG_STRIP_BYTE_COUNTS:S

    if-ne v0, v2, :cond_a

    sget v0, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    .line 589
    invoke-direct {p0, v1, v0}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->checkAllowed(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 590
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->isThumbnailRequested()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 591
    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 592
    iput-object p1, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mStripSizeTag:Lcom/android/dialer/callcomposer/camera/exif/ExifTag;

    :cond_a
    :goto_2
    return-void
.end method

.method private isIfdRequested(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_8

    const/4 v2, 0x2

    if-eq p1, v1, :cond_6

    const/4 v3, 0x4

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    if-eq p1, v3, :cond_0

    return v0

    .line 162
    :cond_0
    iget p1, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mOptions:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    return v0

    .line 164
    :cond_2
    iget p1, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mOptions:I

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_3

    move v0, v1

    :cond_3
    return v0

    .line 160
    :cond_4
    iget p1, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mOptions:I

    and-int/2addr p1, v3

    if-eqz p1, :cond_5

    move v0, v1

    :cond_5
    return v0

    .line 158
    :cond_6
    iget p1, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mOptions:I

    and-int/2addr p1, v2

    if-eqz p1, :cond_7

    move v0, v1

    :cond_7
    return v0

    .line 156
    :cond_8
    iget p1, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mOptions:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_9

    move v0, v1

    :cond_9
    return v0
.end method

.method private isThumbnailRequested()Z
    .locals 1

    .line 170
    iget v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mOptions:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private needToParseOffsetsInCurrentIfd()Z
    .locals 5

    .line 373
    iget v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mIfdType:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_0

    return v1

    .line 383
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    return v0

    .line 380
    :cond_1
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->isThumbnailRequested()Z

    move-result v0

    return v0

    .line 375
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 376
    invoke-direct {p0, v0}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 377
    invoke-direct {p0, v2}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 378
    invoke-direct {p0, v4}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v1, v4

    :cond_4
    return v1
.end method

.method protected static parse(Ljava/io/InputStream;ILcom/android/dialer/callcomposer/camera/exif/ExifInterface;)Lcom/android/dialer/callcomposer/camera/exif/ExifParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/dialer/callcomposer/camera/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 213
    new-instance v0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;-><init>(Ljava/io/InputStream;ILcom/android/dialer/callcomposer/camera/exif/ExifInterface;)V

    return-object v0
.end method

.method protected static parse(Ljava/io/InputStream;Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;)Lcom/android/dialer/callcomposer/camera/exif/ExifParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/dialer/callcomposer/camera/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 226
    new-instance v0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;

    const/16 v1, 0x3f

    invoke-direct {v0, p0, v1, p1}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;-><init>(Ljava/io/InputStream;ILcom/android/dialer/callcomposer/camera/exif/ExifInterface;)V

    return-object v0
.end method

.method private parseTiffHeader()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/dialer/callcomposer/camera/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 705
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mTiffStream:Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;->readShort()S

    move-result v0

    const-string v1, "Invalid TIFF header"

    const/16 v2, 0x4949

    if-ne v2, v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mTiffStream:Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x4d4d

    if-ne v2, v0, :cond_2

    .line 709
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mTiffStream:Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 714
    :goto_0
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mTiffStream:Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;->readShort()S

    move-result v0

    const/16 v2, 0x2a

    if-ne v0, v2, :cond_1

    return-void

    .line 715
    :cond_1
    new-instance v0, Lcom/android/dialer/callcomposer/camera/exif/ExifInvalidFormatException;

    invoke-direct {v0, v1}, Lcom/android/dialer/callcomposer/camera/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 711
    :cond_2
    new-instance v0, Lcom/android/dialer/callcomposer/camera/exif/ExifInvalidFormatException;

    invoke-direct {v0, v1}, Lcom/android/dialer/callcomposer/camera/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readLong()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 802
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mTiffStream:Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;->readInt()I

    move-result v0

    return v0
.end method

.method private readRational()Lcom/android/dialer/callcomposer/camera/exif/Rational;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 807
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->readLong()I

    move-result v0

    .line 808
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->readLong()I

    move-result v1

    .line 809
    new-instance v2, Lcom/android/dialer/callcomposer/camera/exif/Rational;

    int-to-long v3, v0

    int-to-long v0, v1

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/android/dialer/callcomposer/camera/exif/Rational;-><init>(JJ)V

    return-object v2
.end method

.method private readString(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 768
    sget-object v0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private readString(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p1, :cond_0

    .line 777
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mTiffStream:Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;

    invoke-virtual {v0, p1, p2}, Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method private readTag()Lcom/android/dialer/callcomposer/camera/exif/ExifTag;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/dialer/callcomposer/camera/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 490
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mTiffStream:Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;->readShort()S

    move-result v2

    .line 491
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mTiffStream:Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;->readShort()S

    move-result v0

    .line 492
    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mTiffStream:Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;->readUnsignedInt()J

    move-result-wide v3

    const-wide/32 v7, 0x7fffffff

    cmp-long v1, v3, v7

    if-gtz v1, :cond_5

    .line 497
    invoke-static {v0}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->isValidType(S)Z

    move-result v1

    const/4 v5, 0x1

    const/4 v9, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 498
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    aput-object v0, v1, v5

    const-string v0, "ExifParser.readTag"

    const-string v2, "Tag %04x: Invalid data type %d"

    invoke-static {v0, v2, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 499
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mTiffStream:Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;->skip(J)J

    const/4 v0, 0x0

    return-object v0

    .line 503
    :cond_0
    new-instance v10, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;

    long-to-int v11, v3

    iget v6, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mIfdType:I

    if-eqz v11, :cond_1

    move v12, v5

    goto :goto_0

    :cond_1
    move v12, v9

    :goto_0
    move-object v1, v10

    move v3, v0

    move v4, v11

    move v5, v6

    move v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;-><init>(SSIIZ)V

    .line 510
    invoke-virtual {v10}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->getDataSize()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_4

    .line 512
    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mTiffStream:Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;->readUnsignedInt()J

    move-result-wide v1

    cmp-long v3, v1, v7

    if-gtz v3, :cond_3

    .line 518
    iget v3, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mIfd0Position:I

    int-to-long v3, v3

    cmp-long v3, v1, v3

    if-gez v3, :cond_2

    const/4 v3, 0x7

    if-ne v0, v3, :cond_2

    .line 519
    new-array v0, v11, [B

    .line 520
    iget-object v3, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mDataAboveIfd0:[B

    long-to-int v1, v1

    add-int/lit8 v1, v1, -0x8

    invoke-static {v3, v1, v0, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 522
    invoke-virtual {v10, v0}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->setValue([B)Z

    goto :goto_1

    :cond_2
    long-to-int v0, v1

    .line 524
    invoke-virtual {v10, v0}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->setOffset(I)V

    goto :goto_1

    .line 514
    :cond_3
    new-instance v0, Lcom/android/dialer/callcomposer/camera/exif/ExifInvalidFormatException;

    const-string v1, "offset is larger then Integer.MAX_VALUE"

    invoke-direct {v0, v1}, Lcom/android/dialer/callcomposer/camera/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 527
    :cond_4
    invoke-virtual {v10}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->hasDefinedCount()Z

    move-result v0

    .line 529
    invoke-virtual {v10, v9}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->setHasDefinedCount(Z)V

    .line 531
    invoke-virtual {p0, v10}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->readFullTagValue(Lcom/android/dialer/callcomposer/camera/exif/ExifTag;)V

    .line 532
    invoke-virtual {v10, v0}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->setHasDefinedCount(Z)V

    .line 533
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mTiffStream:Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;

    rsub-int/lit8 v1, v1, 0x4

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;->skip(J)J

    .line 535
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mTiffStream:Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {v10, v0}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->setOffset(I)V

    :goto_1
    return-object v10

    .line 494
    :cond_5
    new-instance v0, Lcom/android/dialer/callcomposer/camera/exif/ExifInvalidFormatException;

    const-string v1, "Number of component is larger then Integer.MAX_VALUE"

    invoke-direct {v0, v1}, Lcom/android/dialer/callcomposer/camera/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readUnsignedLong()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 790
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->readLong()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private readUnsignedRational()Lcom/android/dialer/callcomposer/camera/exif/Rational;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 795
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v0

    .line 796
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v2

    .line 797
    new-instance v4, Lcom/android/dialer/callcomposer/camera/exif/Rational;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/dialer/callcomposer/camera/exif/Rational;-><init>(JJ)V

    return-object v4
.end method

.method private readUnsignedShort()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 785
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mTiffStream:Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method private registerCompressedImage(J)V
    .locals 2

    .line 481
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance p2, Lcom/android/dialer/callcomposer/camera/exif/ExifParser$ImageEvent;

    const/4 v1, 0x3

    invoke-direct {p2, v1}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser$ImageEvent;-><init>(I)V

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private registerIfd(IJ)V
    .locals 2

    .line 477
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance p3, Lcom/android/dialer/callcomposer/camera/exif/ExifParser$IfdEvent;

    invoke-direct {p0, p1}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v1

    invoke-direct {p3, p1, v1}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser$IfdEvent;-><init>(IZ)V

    invoke-virtual {v0, p2, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private registerUncompressedStrip(IJ)V
    .locals 2

    .line 485
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance p3, Lcom/android/dialer/callcomposer/camera/exif/ExifParser$ImageEvent;

    const/4 v1, 0x4

    invoke-direct {p3, v1, p1}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser$ImageEvent;-><init>(II)V

    invoke-virtual {v0, p2, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private seekTiffData(Ljava/io/InputStream;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/dialer/callcomposer/camera/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 721
    new-instance v0, Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;

    invoke-direct {v0, p1}, Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 722
    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;->readShort()S

    move-result p1

    const/16 v1, -0x28

    if-ne p1, v1, :cond_4

    .line 726
    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;->readShort()S

    move-result p1

    :goto_0
    const/16 v1, -0x27

    const/4 v2, 0x0

    if-eq p1, v1, :cond_3

    .line 727
    invoke-static {p1}, Lcom/android/dialer/callcomposer/camera/exif/JpegHeader;->isSofMarker(S)Z

    move-result v1

    if-nez v1, :cond_3

    .line 728
    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;->readUnsignedShort()I

    move-result v1

    const/16 v3, -0x1f

    if-ne p1, v3, :cond_0

    const/16 p1, 0x8

    if-lt v1, p1, :cond_0

    .line 735
    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;->readInt()I

    move-result p1

    .line 736
    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;->readShort()S

    move-result v3

    add-int/lit8 v1, v1, -0x6

    const v4, 0x45786966

    if-ne p1, v4, :cond_0

    if-nez v3, :cond_0

    .line 739
    iput v1, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mApp1End:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x2

    if-lt v1, p1, :cond_2

    add-int/lit8 v1, v1, -0x2

    int-to-long v3, v1

    .line 744
    invoke-virtual {v0, v3, v4}, Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;->skip(J)J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-eqz p1, :cond_1

    goto :goto_1

    .line 748
    :cond_1
    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;->readShort()S

    move-result p1

    goto :goto_0

    :cond_2
    :goto_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "ExifParser.seekTiffData"

    const-string v1, "Invalid JPEG format."

    .line 745
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return v2

    .line 723
    :cond_4
    new-instance p1, Lcom/android/dialer/callcomposer/camera/exif/ExifInvalidFormatException;

    const-string v0, "Invalid JPEG format"

    invoke-direct {p1, v0}, Lcom/android/dialer/callcomposer/camera/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private skipRemainingTagsInCurrentIfd()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/dialer/callcomposer/camera/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 345
    iget v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mIfdStartOffset:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mNumOfTagInIfd:I

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    .line 346
    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mTiffStream:Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v1

    if-le v1, v0, :cond_0

    return-void

    .line 350
    :cond_0
    iget-boolean v2, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    if-eqz v2, :cond_2

    :goto_0
    if-ge v1, v0, :cond_3

    .line 352
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->readTag()Lcom/android/dialer/callcomposer/camera/exif/ExifTag;

    move-result-object v2

    iput-object v2, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mTag:Lcom/android/dialer/callcomposer/camera/exif/ExifTag;

    add-int/lit8 v1, v1, 0xc

    if-nez v2, :cond_1

    goto :goto_0

    .line 357
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->checkOffsetOrImageTag(Lcom/android/dialer/callcomposer/camera/exif/ExifTag;)V

    goto :goto_0

    .line 360
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->skipTo(I)V

    .line 362
    :cond_3
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v0

    .line 364
    iget v2, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mIfdType:I

    if-nez v2, :cond_5

    const/4 v2, 0x1

    .line 365
    invoke-direct {p0, v2}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->isThumbnailRequested()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_5

    .line 367
    invoke-direct {p0, v2, v0, v1}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->registerIfd(IJ)V

    :cond_5
    return-void
.end method

.method private skipTo(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 454
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mTiffStream:Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;->skipTo(J)V

    .line 455
    :goto_0
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 456
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method getCompressedImageSize()I
    .locals 2

    .line 447
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mJpegSizeTag:Lcom/android/dialer/callcomposer/camera/exif/ExifTag;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 450
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method getCurrentIfd()I
    .locals 1

    .line 424
    iget v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mIfdType:I

    return v0
.end method

.method getStripIndex()I
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mImageEvent:Lcom/android/dialer/callcomposer/camera/exif/ExifParser$ImageEvent;

    iget v0, v0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser$ImageEvent;->stripIndex:I

    return v0
.end method

.method getStripSize()I
    .locals 2

    .line 437
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mStripSizeTag:Lcom/android/dialer/callcomposer/camera/exif/ExifTag;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 440
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method protected getTag()Lcom/android/dialer/callcomposer/camera/exif/ExifTag;
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mTag:Lcom/android/dialer/callcomposer/camera/exif/ExifTag;

    return-object v0
.end method

.method protected next()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/dialer/callcomposer/camera/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 250
    iget-boolean v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mContainExifData:Z

    const/4 v1, 0x5

    if-nez v0, :cond_0

    return v1

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mTiffStream:Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v0

    .line 254
    iget v2, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mIfdStartOffset:I

    const/4 v3, 0x2

    add-int/2addr v2, v3

    iget v4, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mNumOfTagInIfd:I

    mul-int/lit8 v4, v4, 0xc

    add-int/2addr v2, v4

    const/4 v4, 0x1

    if-ge v0, v2, :cond_3

    .line 256
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->readTag()Lcom/android/dialer/callcomposer/camera/exif/ExifTag;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mTag:Lcom/android/dialer/callcomposer/camera/exif/ExifTag;

    if-nez v0, :cond_1

    .line 258
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->next()I

    move-result v0

    return v0

    .line 260
    :cond_1
    iget-boolean v1, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    if-eqz v1, :cond_2

    .line 261
    invoke-direct {p0, v0}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->checkOffsetOrImageTag(Lcom/android/dialer/callcomposer/camera/exif/ExifTag;)V

    :cond_2
    return v4

    :cond_3
    const-string v5, "ExifParser.next"

    const/4 v6, 0x0

    if-ne v0, v2, :cond_8

    .line 266
    iget v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mIfdType:I

    const-wide/16 v7, 0x0

    if-nez v0, :cond_5

    .line 267
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v9

    .line 268
    invoke-direct {p0, v4}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->isThumbnailRequested()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_4
    cmp-long v0, v9, v7

    if-eqz v0, :cond_8

    .line 270
    invoke-direct {p0, v4, v9, v10}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->registerIfd(IJ)V

    goto :goto_1

    .line 276
    :cond_5
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    const/4 v2, 0x4

    if-lez v0, :cond_6

    .line 277
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v4, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mTiffStream:Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;

    invoke-virtual {v4}, Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v4

    sub-int/2addr v0, v4

    goto :goto_0

    :cond_6
    move v0, v2

    :goto_0
    if-ge v0, v2, :cond_7

    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid size of link to next IFD: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v5, v0, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 282
    :cond_7
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v9

    cmp-long v0, v9, v7

    if-eqz v0, :cond_8

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid link to next IFD: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v5, v0, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-eqz v0, :cond_e

    .line 290
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 291
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 293
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->skipTo(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    instance-of v4, v2, Lcom/android/dialer/callcomposer/camera/exif/ExifParser$IfdEvent;

    if-eqz v4, :cond_b

    .line 305
    check-cast v2, Lcom/android/dialer/callcomposer/camera/exif/ExifParser$IfdEvent;

    iget v4, v2, Lcom/android/dialer/callcomposer/camera/exif/ExifParser$IfdEvent;->ifd:I

    iput v4, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mIfdType:I

    .line 306
    iget-object v4, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mTiffStream:Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;

    invoke-virtual {v4}, Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;->readUnsignedShort()I

    move-result v4

    iput v4, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mNumOfTagInIfd:I

    .line 307
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mIfdStartOffset:I

    .line 309
    iget v4, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mNumOfTagInIfd:I

    mul-int/lit8 v4, v4, 0xc

    add-int/2addr v4, v0

    add-int/2addr v4, v3

    iget v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mApp1End:I

    if-le v4, v0, :cond_9

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid size of IFD "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mIfdType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v5, v0, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 314
    :cond_9
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->needToParseOffsetsInCurrentIfd()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    .line 315
    iget-boolean v0, v2, Lcom/android/dialer/callcomposer/camera/exif/ExifParser$IfdEvent;->isRequested:Z

    if-eqz v0, :cond_a

    return v6

    .line 318
    :cond_a
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->skipRemainingTagsInCurrentIfd()V

    goto :goto_1

    .line 320
    :cond_b
    instance-of v0, v2, Lcom/android/dialer/callcomposer/camera/exif/ExifParser$ImageEvent;

    if-eqz v0, :cond_c

    .line 321
    check-cast v2, Lcom/android/dialer/callcomposer/camera/exif/ExifParser$ImageEvent;

    iput-object v2, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mImageEvent:Lcom/android/dialer/callcomposer/camera/exif/ExifParser$ImageEvent;

    .line 322
    iget v0, v2, Lcom/android/dialer/callcomposer/camera/exif/ExifParser$ImageEvent;->type:I

    return v0

    .line 324
    :cond_c
    check-cast v2, Lcom/android/dialer/callcomposer/camera/exif/ExifParser$ExifTagEvent;

    .line 325
    iget-object v0, v2, Lcom/android/dialer/callcomposer/camera/exif/ExifParser$ExifTagEvent;->tag:Lcom/android/dialer/callcomposer/camera/exif/ExifTag;

    iput-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mTag:Lcom/android/dialer/callcomposer/camera/exif/ExifTag;

    .line 326
    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->getDataType()S

    move-result v0

    const/4 v4, 0x7

    if-eq v0, v4, :cond_d

    .line 327
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mTag:Lcom/android/dialer/callcomposer/camera/exif/ExifTag;

    invoke-virtual {p0, v0}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->readFullTagValue(Lcom/android/dialer/callcomposer/camera/exif/ExifTag;)V

    .line 328
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mTag:Lcom/android/dialer/callcomposer/camera/exif/ExifTag;

    invoke-direct {p0, v0}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->checkOffsetOrImageTag(Lcom/android/dialer/callcomposer/camera/exif/ExifTag;)V

    .line 330
    :cond_d
    iget-boolean v0, v2, Lcom/android/dialer/callcomposer/camera/exif/ExifParser$ExifTagEvent;->isRequested:Z

    if-eqz v0, :cond_8

    return v3

    .line 295
    :catch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to skip to data at: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", the file may be broken."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    .line 295
    invoke-static {v5, v0, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_e
    return v1
.end method

.method protected read([B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 760
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mTiffStream:Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;

    invoke-virtual {v0, p1}, Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;->read([B)I

    move-result p1

    return p1
.end method

.method protected read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 755
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mTiffStream:Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method readFullTagValue(Lcom/android/dialer/callcomposer/camera/exif/ExifTag;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 603
    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->getDataType()S

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 607
    :cond_0
    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->getComponentCount()I

    move-result v0

    .line 608
    iget-object v2, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 609
    iget-object v2, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mTiffStream:Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;

    invoke-virtual {v3}, Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v3

    add-int/2addr v3, v0

    if-ge v2, v3, :cond_4

    .line 610
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 611
    instance-of v2, v0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser$ImageEvent;

    const-string v3, "ExifParser.readFullTagValue"

    if-eqz v2, :cond_1

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thumbnail overlaps value for tag: \n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    .line 613
    invoke-static {v3, v0, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 616
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 617
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid thumbnail offset: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 620
    :cond_1
    instance-of v2, v0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser$IfdEvent;

    const-string v4, " overlaps value for tag: \n"

    if-eqz v2, :cond_2

    .line 621
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ifd "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser$IfdEvent;

    iget v0, v0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser$IfdEvent;->ifd:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    .line 621
    invoke-static {v3, v0, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 624
    :cond_2
    instance-of v2, v0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser$ExifTagEvent;

    if-eqz v2, :cond_3

    .line 625
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tag value for tag: \n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser$ExifTagEvent;

    iget-object v0, v0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser$ExifTagEvent;->tag:Lcom/android/dialer/callcomposer/camera/exif/ExifTag;

    .line 628
    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    .line 625
    invoke-static {v3, v0, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 632
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mTiffStream:Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;

    invoke-virtual {v2}, Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v2

    sub-int/2addr v0, v2

    .line 633
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid size of tag: \n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " setting count to: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    .line 633
    invoke-static {v3, v2, v4}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 636
    invoke-virtual {p1, v0}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->forceSetComponentCount(I)V

    .line 641
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->getDataType()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_7

    .line 691
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v2, v0, [Lcom/android/dialer/callcomposer/camera/exif/Rational;

    :goto_2
    if-ge v1, v0, :cond_5

    .line 693
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->readRational()Lcom/android/dialer/callcomposer/camera/exif/Rational;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 695
    :cond_5
    invoke-virtual {p1, v2}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->setValue([Lcom/android/dialer/callcomposer/camera/exif/Rational;)Z

    goto/16 :goto_7

    .line 682
    :pswitch_2
    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v2, v0, [I

    :goto_3
    if-ge v1, v0, :cond_6

    .line 684
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->readLong()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 686
    :cond_6
    invoke-virtual {p1, v2}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->setValue([I)Z

    goto :goto_7

    .line 664
    :pswitch_3
    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v2, v0, [Lcom/android/dialer/callcomposer/camera/exif/Rational;

    :goto_4
    if-ge v1, v0, :cond_7

    .line 666
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->readUnsignedRational()Lcom/android/dialer/callcomposer/camera/exif/Rational;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 668
    :cond_7
    invoke-virtual {p1, v2}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->setValue([Lcom/android/dialer/callcomposer/camera/exif/Rational;)Z

    goto :goto_7

    .line 655
    :pswitch_4
    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v2, v0, [J

    :goto_5
    if-ge v1, v0, :cond_8

    .line 657
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 659
    :cond_8
    invoke-virtual {p1, v2}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->setValue([J)Z

    goto :goto_7

    .line 673
    :pswitch_5
    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v2, v0, [I

    :goto_6
    if-ge v1, v0, :cond_9

    .line 675
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->readUnsignedShort()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 677
    :cond_9
    invoke-virtual {p1, v2}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->setValue([I)Z

    goto :goto_7

    .line 651
    :pswitch_6
    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->getComponentCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->readString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->setValue(Ljava/lang/String;)Z

    goto :goto_7

    .line 645
    :pswitch_7
    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v0, v0, [B

    .line 646
    invoke-virtual {p0, v0}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->read([B)I

    .line 647
    invoke-virtual {p1, v0}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->setValue([B)Z

    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method registerForTagValue(Lcom/android/dialer/callcomposer/camera/exif/ExifTag;)V
    .locals 4

    .line 469
    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->getOffset()I

    move-result v0

    iget-object v1, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mTiffStream:Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/android/dialer/callcomposer/camera/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 470
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/camera/exif/ExifTag;->getOffset()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/dialer/callcomposer/camera/exif/ExifParser$ExifTagEvent;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Lcom/android/dialer/callcomposer/camera/exif/ExifParser$ExifTagEvent;-><init>(Lcom/android/dialer/callcomposer/camera/exif/ExifTag;Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
