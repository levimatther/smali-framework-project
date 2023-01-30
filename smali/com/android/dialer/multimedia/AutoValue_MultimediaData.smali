.class final Lcom/android/dialer/multimedia/AutoValue_MultimediaData;
.super Lcom/android/dialer/multimedia/MultimediaData;
.source "AutoValue_MultimediaData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/multimedia/AutoValue_MultimediaData$Builder;
    }
.end annotation


# instance fields
.field private final imageContentType:Ljava/lang/String;

.field private final imageUri:Landroid/net/Uri;

.field private final important:Z

.field private final location:Landroid/location/Location;

.field private final text:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/location/Location;Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/android/dialer/multimedia/MultimediaData;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/dialer/multimedia/AutoValue_MultimediaData;->text:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/android/dialer/multimedia/AutoValue_MultimediaData;->location:Landroid/location/Location;

    .line 29
    iput-object p3, p0, Lcom/android/dialer/multimedia/AutoValue_MultimediaData;->imageUri:Landroid/net/Uri;

    .line 30
    iput-object p4, p0, Lcom/android/dialer/multimedia/AutoValue_MultimediaData;->imageContentType:Ljava/lang/String;

    .line 31
    iput-boolean p5, p0, Lcom/android/dialer/multimedia/AutoValue_MultimediaData;->important:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/location/Location;Landroid/net/Uri;Ljava/lang/String;ZLcom/android/dialer/multimedia/AutoValue_MultimediaData$1;)V
    .locals 0

    .line 9
    invoke-direct/range {p0 .. p5}, Lcom/android/dialer/multimedia/AutoValue_MultimediaData;-><init>(Ljava/lang/String;Landroid/location/Location;Landroid/net/Uri;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 68
    :cond_0
    instance-of v1, p1, Lcom/android/dialer/multimedia/MultimediaData;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 69
    check-cast p1, Lcom/android/dialer/multimedia/MultimediaData;

    .line 70
    iget-object v1, p0, Lcom/android/dialer/multimedia/AutoValue_MultimediaData;->text:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/android/dialer/multimedia/MultimediaData;->getText()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/dialer/multimedia/MultimediaData;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_0
    iget-object v1, p0, Lcom/android/dialer/multimedia/AutoValue_MultimediaData;->location:Landroid/location/Location;

    if-nez v1, :cond_2

    .line 71
    invoke-virtual {p1}, Lcom/android/dialer/multimedia/MultimediaData;->getLocation()Landroid/location/Location;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/android/dialer/multimedia/MultimediaData;->getLocation()Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_1
    iget-object v1, p0, Lcom/android/dialer/multimedia/AutoValue_MultimediaData;->imageUri:Landroid/net/Uri;

    if-nez v1, :cond_3

    .line 72
    invoke-virtual {p1}, Lcom/android/dialer/multimedia/MultimediaData;->getImageUri()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/android/dialer/multimedia/MultimediaData;->getImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_2
    iget-object v1, p0, Lcom/android/dialer/multimedia/AutoValue_MultimediaData;->imageContentType:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 73
    invoke-virtual {p1}, Lcom/android/dialer/multimedia/MultimediaData;->getImageContentType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/android/dialer/multimedia/MultimediaData;->getImageContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_3
    iget-boolean v1, p0, Lcom/android/dialer/multimedia/AutoValue_MultimediaData;->important:Z

    .line 74
    invoke-virtual {p1}, Lcom/android/dialer/multimedia/MultimediaData;->isImportant()Z

    move-result p1

    if-ne v1, p1, :cond_5

    goto :goto_4

    :cond_5
    move v0, v2

    :goto_4
    return v0

    :cond_6
    return v2
.end method

.method public getImageContentType()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/android/dialer/multimedia/AutoValue_MultimediaData;->imageContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUri()Landroid/net/Uri;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/android/dialer/multimedia/AutoValue_MultimediaData;->imageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/android/dialer/multimedia/AutoValue_MultimediaData;->location:Landroid/location/Location;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/android/dialer/multimedia/AutoValue_MultimediaData;->text:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 83
    iget-object v0, p0, Lcom/android/dialer/multimedia/AutoValue_MultimediaData;->text:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 85
    iget-object v3, p0, Lcom/android/dialer/multimedia/AutoValue_MultimediaData;->location:Landroid/location/Location;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 87
    iget-object v3, p0, Lcom/android/dialer/multimedia/AutoValue_MultimediaData;->imageUri:Landroid/net/Uri;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Landroid/net/Uri;->hashCode()I

    move-result v3

    :goto_2
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 89
    iget-object v3, p0, Lcom/android/dialer/multimedia/AutoValue_MultimediaData;->imageContentType:Ljava/lang/String;

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    xor-int/2addr v0, v1

    mul-int/2addr v0, v2

    .line 91
    iget-boolean v1, p0, Lcom/android/dialer/multimedia/AutoValue_MultimediaData;->important:Z

    if-eqz v1, :cond_4

    const/16 v1, 0x4cf

    goto :goto_4

    :cond_4
    const/16 v1, 0x4d5

    :goto_4
    xor-int/2addr v0, v1

    return v0
.end method

.method public isImportant()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/android/dialer/multimedia/AutoValue_MultimediaData;->important:Z

    return v0
.end method
