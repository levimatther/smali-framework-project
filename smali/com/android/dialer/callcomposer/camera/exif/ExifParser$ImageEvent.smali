.class Lcom/android/dialer/callcomposer/camera/exif/ExifParser$ImageEvent;
.super Ljava/lang/Object;
.source "ExifParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/callcomposer/camera/exif/ExifParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageEvent"
.end annotation


# instance fields
.field stripIndex:I

.field type:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 816
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 817
    iput v0, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser$ImageEvent;->stripIndex:I

    .line 818
    iput p1, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser$ImageEvent;->type:I

    return-void
.end method

.method constructor <init>(II)V
    .locals 0

    .line 821
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 822
    iput p1, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser$ImageEvent;->type:I

    .line 823
    iput p2, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser$ImageEvent;->stripIndex:I

    return-void
.end method
