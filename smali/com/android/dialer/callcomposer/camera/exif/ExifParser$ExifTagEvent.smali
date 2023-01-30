.class Lcom/android/dialer/callcomposer/camera/exif/ExifParser$ExifTagEvent;
.super Ljava/lang/Object;
.source "ExifParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/callcomposer/camera/exif/ExifParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExifTagEvent"
.end annotation


# instance fields
.field isRequested:Z

.field tag:Lcom/android/dialer/callcomposer/camera/exif/ExifTag;


# direct methods
.method constructor <init>(Lcom/android/dialer/callcomposer/camera/exif/ExifTag;Z)V
    .locals 0

    .line 841
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 842
    iput-object p1, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser$ExifTagEvent;->tag:Lcom/android/dialer/callcomposer/camera/exif/ExifTag;

    .line 843
    iput-boolean p2, p0, Lcom/android/dialer/callcomposer/camera/exif/ExifParser$ExifTagEvent;->isRequested:Z

    return-void
.end method
