.class Lcom/android/dialer/callcomposer/camera/exif/JpegHeader;
.super Ljava/lang/Object;
.source "JpegHeader.java"


# static fields
.field static final APP1:S = -0x1fs

.field private static final DAC:S = -0x34s

.field private static final DHT:S = -0x3cs

.field static final EOI:S = -0x27s

.field private static final JPG:S = -0x38s

.field private static final SOF0:S = -0x40s

.field private static final SOF15:S = -0x31s

.field static final SOI:S = -0x28s


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isSofMarker(S)Z
    .locals 1

    const/16 v0, -0x40

    if-lt p0, v0, :cond_0

    const/16 v0, -0x31

    if-gt p0, v0, :cond_0

    const/16 v0, -0x3c

    if-eq p0, v0, :cond_0

    const/16 v0, -0x38

    if-eq p0, v0, :cond_0

    const/16 v0, -0x34

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
