.class Lcom/android/dialer/callcomposer/camera/CameraManager$SizeComparator;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/callcomposer/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SizeComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/hardware/Camera$Size;",
        ">;"
    }
.end annotation


# static fields
.field private static final PREFER_LEFT:I = -0x1

.field private static final PREFER_RIGHT:I = 0x1


# instance fields
.field private final mMaxHeight:I

.field private final mMaxWidth:I

.field private final mTargetAspectRatio:F

.field private final mTargetPixels:I


# direct methods
.method public constructor <init>(IIFI)V
    .locals 0

    .line 726
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 727
    iput p1, p0, Lcom/android/dialer/callcomposer/camera/CameraManager$SizeComparator;->mMaxWidth:I

    .line 728
    iput p2, p0, Lcom/android/dialer/callcomposer/camera/CameraManager$SizeComparator;->mMaxHeight:I

    .line 729
    iput p3, p0, Lcom/android/dialer/callcomposer/camera/CameraManager$SizeComparator;->mTargetAspectRatio:F

    .line 730
    iput p4, p0, Lcom/android/dialer/callcomposer/camera/CameraManager$SizeComparator;->mTargetPixels:I

    return-void
.end method


# virtual methods
.method public compare(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I
    .locals 5

    .line 740
    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    iget v1, p0, Lcom/android/dialer/callcomposer/camera/CameraManager$SizeComparator;->mMaxWidth:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v0, v1, :cond_0

    iget v0, p1, Landroid/hardware/Camera$Size;->height:I

    iget v1, p0, Lcom/android/dialer/callcomposer/camera/CameraManager$SizeComparator;->mMaxHeight:I

    if-gt v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget v1, p2, Landroid/hardware/Camera$Size;->width:I

    iget v4, p0, Lcom/android/dialer/callcomposer/camera/CameraManager$SizeComparator;->mMaxWidth:I

    if-gt v1, v4, :cond_1

    iget v1, p2, Landroid/hardware/Camera$Size;->height:I

    iget v4, p0, Lcom/android/dialer/callcomposer/camera/CameraManager$SizeComparator;->mMaxHeight:I

    if-gt v1, v4, :cond_1

    move v2, v3

    :cond_1
    const/4 v1, -0x1

    if-eq v0, v2, :cond_3

    .line 742
    iget p1, p1, Landroid/hardware/Camera$Size;->width:I

    iget p2, p0, Lcom/android/dialer/callcomposer/camera/CameraManager$SizeComparator;->mMaxWidth:I

    if-gt p1, p2, :cond_2

    move v3, v1

    :cond_2
    return v3

    .line 746
    :cond_3
    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    int-to-float v0, v0

    iget v2, p1, Landroid/hardware/Camera$Size;->height:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 747
    iget v2, p2, Landroid/hardware/Camera$Size;->width:I

    int-to-float v2, v2

    iget v4, p2, Landroid/hardware/Camera$Size;->height:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    .line 748
    iget v4, p0, Lcom/android/dialer/callcomposer/camera/CameraManager$SizeComparator;->mTargetAspectRatio:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 749
    iget v4, p0, Lcom/android/dialer/callcomposer/camera/CameraManager$SizeComparator;->mTargetAspectRatio:F

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v4, v0, v2

    if-eqz v4, :cond_5

    sub-float/2addr v0, v2

    const/4 p1, 0x0

    cmpg-float p1, v0, p1

    if-gez p1, :cond_4

    move v3, v1

    :cond_4
    return v3

    .line 757
    :cond_5
    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    iget p1, p1, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v0, p1

    iget p1, p0, Lcom/android/dialer/callcomposer/camera/CameraManager$SizeComparator;->mTargetPixels:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 758
    iget v0, p2, Landroid/hardware/Camera$Size;->width:I

    iget p2, p2, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v0, p2

    iget p2, p0, Lcom/android/dialer/callcomposer/camera/CameraManager$SizeComparator;->mTargetPixels:I

    sub-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 708
    check-cast p1, Landroid/hardware/Camera$Size;

    check-cast p2, Landroid/hardware/Camera$Size;

    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/callcomposer/camera/CameraManager$SizeComparator;->compare(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I

    move-result p1

    return p1
.end method
