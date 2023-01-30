.class public abstract Lcom/android/dialer/multimedia/MultimediaData$Builder;
.super Ljava/lang/Object;
.source "MultimediaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/multimedia/MultimediaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract build()Lcom/android/dialer/multimedia/MultimediaData;
.end method

.method public setImage(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/dialer/multimedia/MultimediaData$Builder;
    .locals 0

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/dialer/multimedia/MultimediaData$Builder;->setImageUri(Landroid/net/Uri;)Lcom/android/dialer/multimedia/MultimediaData$Builder;

    .line 95
    invoke-virtual {p0, p2}, Lcom/android/dialer/multimedia/MultimediaData$Builder;->setImageContentType(Ljava/lang/String;)Lcom/android/dialer/multimedia/MultimediaData$Builder;

    return-object p0
.end method

.method abstract setImageContentType(Ljava/lang/String;)Lcom/android/dialer/multimedia/MultimediaData$Builder;
.end method

.method abstract setImageUri(Landroid/net/Uri;)Lcom/android/dialer/multimedia/MultimediaData$Builder;
.end method

.method public abstract setImportant(Z)Lcom/android/dialer/multimedia/MultimediaData$Builder;
.end method

.method public abstract setLocation(Landroid/location/Location;)Lcom/android/dialer/multimedia/MultimediaData$Builder;
.end method

.method public abstract setText(Ljava/lang/String;)Lcom/android/dialer/multimedia/MultimediaData$Builder;
.end method
