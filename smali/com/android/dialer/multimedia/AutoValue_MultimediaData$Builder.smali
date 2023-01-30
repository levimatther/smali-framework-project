.class final Lcom/android/dialer/multimedia/AutoValue_MultimediaData$Builder;
.super Lcom/android/dialer/multimedia/MultimediaData$Builder;
.source "AutoValue_MultimediaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/multimedia/AutoValue_MultimediaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private imageContentType:Ljava/lang/String;

.field private imageUri:Landroid/net/Uri;

.field private important:Ljava/lang/Boolean;

.field private location:Landroid/location/Location;

.field private text:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/android/dialer/multimedia/MultimediaData$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/dialer/multimedia/MultimediaData;
    .locals 9

    .line 131
    iget-object v0, p0, Lcom/android/dialer/multimedia/AutoValue_MultimediaData$Builder;->important:Ljava/lang/Boolean;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " important"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    new-instance v0, Lcom/android/dialer/multimedia/AutoValue_MultimediaData;

    iget-object v3, p0, Lcom/android/dialer/multimedia/AutoValue_MultimediaData$Builder;->text:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/dialer/multimedia/AutoValue_MultimediaData$Builder;->location:Landroid/location/Location;

    iget-object v5, p0, Lcom/android/dialer/multimedia/AutoValue_MultimediaData$Builder;->imageUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/dialer/multimedia/AutoValue_MultimediaData$Builder;->imageContentType:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/dialer/multimedia/AutoValue_MultimediaData$Builder;->important:Ljava/lang/Boolean;

    .line 142
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/dialer/multimedia/AutoValue_MultimediaData;-><init>(Ljava/lang/String;Landroid/location/Location;Landroid/net/Uri;Ljava/lang/String;ZLcom/android/dialer/multimedia/AutoValue_MultimediaData$1;)V

    return-object v0

    .line 135
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing required properties:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setImageContentType(Ljava/lang/String;)Lcom/android/dialer/multimedia/MultimediaData$Builder;
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/android/dialer/multimedia/AutoValue_MultimediaData$Builder;->imageContentType:Ljava/lang/String;

    return-object p0
.end method

.method setImageUri(Landroid/net/Uri;)Lcom/android/dialer/multimedia/MultimediaData$Builder;
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/android/dialer/multimedia/AutoValue_MultimediaData$Builder;->imageUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setImportant(Z)Lcom/android/dialer/multimedia/MultimediaData$Builder;
    .locals 0

    .line 125
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/multimedia/AutoValue_MultimediaData$Builder;->important:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setLocation(Landroid/location/Location;)Lcom/android/dialer/multimedia/MultimediaData$Builder;
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/android/dialer/multimedia/AutoValue_MultimediaData$Builder;->location:Landroid/location/Location;

    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/android/dialer/multimedia/MultimediaData$Builder;
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/android/dialer/multimedia/AutoValue_MultimediaData$Builder;->text:Ljava/lang/String;

    return-object p0
.end method
