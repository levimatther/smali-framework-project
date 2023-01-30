.class public abstract Lcom/android/dialer/multimedia/MultimediaData;
.super Ljava/lang/Object;
.source "MultimediaData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/multimedia/MultimediaData$Builder;
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/android/dialer/multimedia/MultimediaData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    invoke-static {}, Lcom/android/dialer/multimedia/MultimediaData;->builder()Lcom/android/dialer/multimedia/MultimediaData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/multimedia/MultimediaData$Builder;->build()Lcom/android/dialer/multimedia/MultimediaData;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/multimedia/MultimediaData;->EMPTY:Lcom/android/dialer/multimedia/MultimediaData;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/android/dialer/multimedia/MultimediaData$Builder;
    .locals 2

    .line 35
    new-instance v0, Lcom/android/dialer/multimedia/AutoValue_MultimediaData$Builder;

    invoke-direct {v0}, Lcom/android/dialer/multimedia/AutoValue_MultimediaData$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/dialer/multimedia/AutoValue_MultimediaData$Builder;->setImportant(Z)Lcom/android/dialer/multimedia/MultimediaData$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract getImageContentType()Ljava/lang/String;
.end method

.method public abstract getImageUri()Landroid/net/Uri;
.end method

.method public abstract getLocation()Landroid/location/Location;
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public hasData()Z
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/android/dialer/multimedia/MultimediaData;->hasImageData()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/dialer/multimedia/MultimediaData;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/dialer/multimedia/MultimediaData;->getLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasImageData()Z
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/android/dialer/multimedia/MultimediaData;->getImageUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/multimedia/MultimediaData;->getImageContentType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract isImportant()Z
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 78
    invoke-virtual {p0}, Lcom/android/dialer/multimedia/MultimediaData;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/dialer/common/LogUtil;->sanitizePii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 79
    invoke-virtual {p0}, Lcom/android/dialer/multimedia/MultimediaData;->getLocation()Landroid/location/Location;

    move-result-object v1

    invoke-static {v1}, Lcom/android/dialer/common/LogUtil;->sanitizePii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 80
    invoke-virtual {p0}, Lcom/android/dialer/multimedia/MultimediaData;->getImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/android/dialer/common/LogUtil;->sanitizePii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 81
    invoke-virtual {p0}, Lcom/android/dialer/multimedia/MultimediaData;->getImageContentType()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 82
    invoke-virtual {p0}, Lcom/android/dialer/multimedia/MultimediaData;->isImportant()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "MultimediaData{subject: %s, location: %s, imageUrl: %s, imageContentType: %s, important: %b}"

    .line 75
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
