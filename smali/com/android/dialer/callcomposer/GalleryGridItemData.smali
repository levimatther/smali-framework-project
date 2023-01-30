.class public final Lcom/android/dialer/callcomposer/GalleryGridItemData;
.super Ljava/lang/Object;
.source "GalleryGridItemData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/dialer/callcomposer/GalleryGridItemData;",
            ">;"
        }
    .end annotation
.end field

.field public static final IMAGE_PROJECTION:[Ljava/lang/String;

.field private static final INDEX_DATA_PATH:I = 0x1

.field private static final INDEX_DATE_MODIFIED:I = 0x3

.field private static final INDEX_MIME_TYPE:I = 0x2


# instance fields
.field private dateModifiedSeconds:J

.field private filePath:Ljava/lang/String;

.field private mimeType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "_id"

    const-string v1, "_data"

    const-string v2, "mime_type"

    const-string v3, "date_modified"

    .line 32
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/callcomposer/GalleryGridItemData;->IMAGE_PROJECTION:[Ljava/lang/String;

    .line 106
    new-instance v0, Lcom/android/dialer/callcomposer/GalleryGridItemData$1;

    invoke-direct {v0}, Lcom/android/dialer/callcomposer/GalleryGridItemData$1;-><init>()V

    sput-object v0, Lcom/android/dialer/callcomposer/GalleryGridItemData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/dialer/callcomposer/GalleryGridItemData;->bind(Landroid/database/Cursor;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/callcomposer/GalleryGridItemData;->filePath:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/callcomposer/GalleryGridItemData;->mimeType:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/dialer/callcomposer/GalleryGridItemData;->dateModifiedSeconds:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/dialer/callcomposer/GalleryGridItemData$1;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/android/dialer/callcomposer/GalleryGridItemData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/dialer/callcomposer/GalleryGridItemData;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/GalleryGridItemData;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/dialer/callcomposer/GalleryGridItemData;->filePath:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/GalleryGridItemData;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/dialer/callcomposer/GalleryGridItemData;->mimeType:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/GalleryGridItemData;->getDateModifiedSeconds()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/dialer/callcomposer/GalleryGridItemData;->dateModifiedSeconds:J

    return-void
.end method


# virtual methods
.method public bind(Landroid/database/Cursor;)V
    .locals 2

    const/4 v0, 0x2

    .line 56
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/dialer/callcomposer/GalleryGridItemData;->mimeType:Ljava/lang/String;

    const/4 v0, 0x3

    .line 57
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 58
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    iput-wide v0, p0, Lcom/android/dialer/callcomposer/GalleryGridItemData;->dateModifiedSeconds:J

    const/4 v0, 0x1

    .line 59
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/android/dialer/callcomposer/GalleryGridItemData;->filePath:Ljava/lang/String;

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 83
    instance-of v0, p1, Lcom/android/dialer/callcomposer/GalleryGridItemData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/callcomposer/GalleryGridItemData;->mimeType:Ljava/lang/String;

    check-cast p1, Lcom/android/dialer/callcomposer/GalleryGridItemData;

    iget-object v1, p1, Lcom/android/dialer/callcomposer/GalleryGridItemData;->mimeType:Ljava/lang/String;

    .line 84
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/callcomposer/GalleryGridItemData;->filePath:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/dialer/callcomposer/GalleryGridItemData;->filePath:Ljava/lang/String;

    .line 85
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/android/dialer/callcomposer/GalleryGridItemData;->dateModifiedSeconds:J

    iget-wide v2, p0, Lcom/android/dialer/callcomposer/GalleryGridItemData;->dateModifiedSeconds:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getDateModifiedSeconds()J
    .locals 2

    .line 74
    iget-wide v0, p0, Lcom/android/dialer/callcomposer/GalleryGridItemData;->dateModifiedSeconds:J

    return-wide v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/android/dialer/callcomposer/GalleryGridItemData;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileUri()Landroid/net/Uri;
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/android/dialer/callcomposer/GalleryGridItemData;->filePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/dialer/callcomposer/GalleryGridItemData;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/android/dialer/callcomposer/GalleryGridItemData;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 91
    iget-object v1, p0, Lcom/android/dialer/callcomposer/GalleryGridItemData;->filePath:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/dialer/callcomposer/GalleryGridItemData;->mimeType:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/android/dialer/callcomposer/GalleryGridItemData;->dateModifiedSeconds:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 101
    iget-object p2, p0, Lcom/android/dialer/callcomposer/GalleryGridItemData;->filePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object p2, p0, Lcom/android/dialer/callcomposer/GalleryGridItemData;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-wide v0, p0, Lcom/android/dialer/callcomposer/GalleryGridItemData;->dateModifiedSeconds:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
