.class public Lcom/android/dialer/callcomposer/camera/exif/ExifInterface$OrientationParams;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OrientationParams"
.end annotation


# instance fields
.field public invertDimensions:Z

.field public rotation:I

.field scaleX:I

.field scaleY:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 289
    iput v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface$OrientationParams;->rotation:I

    const/4 v1, 0x1

    .line 290
    iput v1, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface$OrientationParams;->scaleX:I

    .line 291
    iput v1, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface$OrientationParams;->scaleY:I

    .line 292
    iput-boolean v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface$OrientationParams;->invertDimensions:Z

    return-void
.end method
