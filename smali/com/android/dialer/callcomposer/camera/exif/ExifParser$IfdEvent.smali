.class Lcom/android/dialer/callcomposer/camera/exif/ExifParser$IfdEvent;
.super Ljava/lang/Object;
.source "ExifParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/callcomposer/camera/exif/ExifParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IfdEvent"
.end annotation


# instance fields
.field ifd:I

.field isRequested:Z


# direct methods
.method constructor <init>(IZ)V
    .locals 0

    .line 831
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 832
    iput p1, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser$IfdEvent;->ifd:I

    .line 833
    iput-boolean p2, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser$IfdEvent;->isRequested:Z

    return-void
.end method
