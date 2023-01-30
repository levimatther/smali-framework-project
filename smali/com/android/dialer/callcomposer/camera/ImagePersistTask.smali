.class public Lcom/android/dialer/callcomposer/camera/ImagePersistTask;
.super Lcom/android/dialer/common/concurrent/FallibleAsyncTask;
.source "ImagePersistTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/dialer/common/concurrent/FallibleAsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBytes:[B

.field private final mCallback:Lcom/android/dialer/callcomposer/camera/CameraManager$MediaCallback;

.field private final mContext:Landroid/content/Context;

.field private mHeight:I

.field private final mHeightPercent:F

.field private mWidth:I


# direct methods
.method constructor <init>(IIF[BLandroid/content/Context;Lcom/android/dialer/callcomposer/camera/CameraManager$MediaCallback;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/android/dialer/common/concurrent/FallibleAsyncTask;-><init>()V

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 54
    :goto_0
    invoke-static {v0}, Lcom/android/dialer/common/Assert;->checkArgument(Z)V

    .line 55
    invoke-static {p4}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-static {p5}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-static {p6}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iput p1, p0, Lcom/android/dialer/callcomposer/camera/ImagePersistTask;->mWidth:I

    .line 59
    iput p2, p0, Lcom/android/dialer/callcomposer/camera/ImagePersistTask;->mHeight:I

    .line 60
    iput p3, p0, Lcom/android/dialer/callcomposer/camera/ImagePersistTask;->mHeightPercent:F

    .line 61
    iput-object p4, p0, Lcom/android/dialer/callcomposer/camera/ImagePersistTask;->mBytes:[B

    .line 62
    iput-object p5, p0, Lcom/android/dialer/callcomposer/camera/ImagePersistTask;->mContext:Landroid/content/Context;

    .line 63
    iput-object p6, p0, Lcom/android/dialer/callcomposer/camera/ImagePersistTask;->mCallback:Lcom/android/dialer/callcomposer/camera/CameraManager$MediaCallback;

    return-void
.end method

.method private writeClippedBitmap(Ljava/io/OutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    new-instance v0, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;

    invoke-direct {v0}, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;-><init>()V

    const/4 v1, 0x0

    .line 91
    :try_start_0
    iget-object v2, p0, Lcom/android/dialer/callcomposer/camera/ImagePersistTask;->mBytes:[B

    invoke-virtual {v0, v2}, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->readExif([B)V

    .line 92
    sget v2, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-virtual {v0, v2}, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 94
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move v2, v1

    .line 100
    :goto_0
    invoke-static {v2}, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->getOrientationParams(I)Lcom/android/dialer/callcomposer/camera/exif/ExifInterface$OrientationParams;

    move-result-object v2

    .line 101
    iget-object v3, p0, Lcom/android/dialer/callcomposer/camera/ImagePersistTask;->mBytes:[B

    array-length v4, v3

    invoke-static {v3, v1, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 104
    iget-boolean v4, v2, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface$OrientationParams;->invertDimensions:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    .line 105
    iget v4, p0, Lcom/android/dialer/callcomposer/camera/ImagePersistTask;->mWidth:I

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-ne v4, v6, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    invoke-static {v4}, Lcom/android/dialer/common/Assert;->checkState(Z)V

    .line 106
    iget v4, p0, Lcom/android/dialer/callcomposer/camera/ImagePersistTask;->mHeight:I

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ne v4, v6, :cond_2

    move v1, v5

    :cond_2
    invoke-static {v1}, Lcom/android/dialer/common/Assert;->checkState(Z)V

    .line 107
    iget v1, p0, Lcom/android/dialer/callcomposer/camera/ImagePersistTask;->mHeight:I

    int-to-float v1, v1

    iget v4, p0, Lcom/android/dialer/callcomposer/camera/ImagePersistTask;->mHeightPercent:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    .line 108
    iget v4, p0, Lcom/android/dialer/callcomposer/camera/ImagePersistTask;->mWidth:I

    goto :goto_3

    .line 110
    :cond_3
    iget v4, p0, Lcom/android/dialer/callcomposer/camera/ImagePersistTask;->mWidth:I

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ne v4, v6, :cond_4

    move v4, v5

    goto :goto_2

    :cond_4
    move v4, v1

    :goto_2
    invoke-static {v4}, Lcom/android/dialer/common/Assert;->checkState(Z)V

    .line 111
    iget v4, p0, Lcom/android/dialer/callcomposer/camera/ImagePersistTask;->mHeight:I

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-ne v4, v6, :cond_5

    move v1, v5

    :cond_5
    invoke-static {v1}, Lcom/android/dialer/common/Assert;->checkState(Z)V

    .line 112
    iget v1, p0, Lcom/android/dialer/callcomposer/camera/ImagePersistTask;->mWidth:I

    .line 113
    iget v4, p0, Lcom/android/dialer/callcomposer/camera/ImagePersistTask;->mHeight:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/dialer/callcomposer/camera/ImagePersistTask;->mHeightPercent:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 116
    :goto_3
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v5, v4

    div-int/lit8 v5, v5, 0x2

    .line 117
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int/2addr v6, v1

    div-int/lit8 v6, v6, 0x2

    .line 118
    iput v1, p0, Lcom/android/dialer/callcomposer/camera/ImagePersistTask;->mWidth:I

    .line 119
    iput v4, p0, Lcom/android/dialer/callcomposer/camera/ImagePersistTask;->mHeight:I

    .line 122
    invoke-static {v3, v6, v5, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 123
    iget v2, v2, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface$OrientationParams;->rotation:I

    invoke-static {v1, v2}, Lcom/android/dialer/callcomposer/util/BitmapResizer;->resizeForEnrichedCalling(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 126
    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->clearExif()V

    .line 127
    invoke-virtual {v0, v1, p1}, Lcom/android/dialer/callcomposer/camera/exif/ExifInterface;->writeExif(Landroid/graphics/Bitmap;Ljava/io/OutputStream;)V

    .line 129
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 130
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackgroundFallible([Ljava/lang/Void;)Landroid/net/Uri;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    iget-object p1, p0, Lcom/android/dialer/callcomposer/camera/ImagePersistTask;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/dialer/util/DialerUtils;->createShareableFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    .line 70
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 71
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/dialer/callcomposer/camera/ImagePersistTask;->writeClippedBitmap(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 74
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/ImagePersistTask;->mContext:Landroid/content/Context;

    .line 75
    invoke-static {}, Lcom/android/dialer/constants/Constants;->get()Lcom/android/dialer/constants/Constants;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dialer/constants/Constants;->getFileProviderAuthority()Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-static {v0, v1, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 70
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    .line 72
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method protected bridge synthetic doInBackgroundFallible([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 38
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/dialer/callcomposer/camera/ImagePersistTask;->doInBackgroundFallible([Ljava/lang/Void;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/android/dialer/common/concurrent/FallibleAsyncTask$FallibleTaskResult;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dialer/common/concurrent/FallibleAsyncTask$FallibleTaskResult<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 80
    invoke-virtual {p1}, Lcom/android/dialer/common/concurrent/FallibleAsyncTask$FallibleTaskResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/ImagePersistTask;->mCallback:Lcom/android/dialer/callcomposer/camera/CameraManager$MediaCallback;

    new-instance v1, Ljava/lang/Exception;

    invoke-virtual {p1}, Lcom/android/dialer/common/concurrent/FallibleAsyncTask$FallibleTaskResult;->getThrowable()Ljava/lang/Throwable;

    move-result-object p1

    const-string v2, "Persisting image failed"

    invoke-direct {v1, v2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/android/dialer/callcomposer/camera/CameraManager$MediaCallback;->onMediaFailed(Ljava/lang/Exception;)V

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/callcomposer/camera/ImagePersistTask;->mCallback:Lcom/android/dialer/callcomposer/camera/CameraManager$MediaCallback;

    invoke-virtual {p1}, Lcom/android/dialer/common/concurrent/FallibleAsyncTask$FallibleTaskResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iget v1, p0, Lcom/android/dialer/callcomposer/camera/ImagePersistTask;->mWidth:I

    iget v2, p0, Lcom/android/dialer/callcomposer/camera/ImagePersistTask;->mHeight:I

    const-string v3, "image/jpeg"

    invoke-interface {v0, p1, v3, v1, v2}, Lcom/android/dialer/callcomposer/camera/CameraManager$MediaCallback;->onMediaReady(Landroid/net/Uri;Ljava/lang/String;II)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 38
    check-cast p1, Lcom/android/dialer/common/concurrent/FallibleAsyncTask$FallibleTaskResult;

    invoke-virtual {p0, p1}, Lcom/android/dialer/callcomposer/camera/ImagePersistTask;->onPostExecute(Lcom/android/dialer/common/concurrent/FallibleAsyncTask$FallibleTaskResult;)V

    return-void
.end method
