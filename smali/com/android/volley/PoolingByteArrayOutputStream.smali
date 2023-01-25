.class public Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "PoolingByteArrayOutputStream.java"


# static fields
.field private static final DEFAULT_SIZE:I = 0x100


# instance fields
.field private final mPool:Lcom/android/volley/toolbox/ByteArrayPool;


# direct methods
.method public constructor <init>(Lcom/android/volley/toolbox/ByteArrayPool;)V
    .locals 1
<<<<<<< HEAD:smali/com/android/volley/toolbox/PoolingByteArrayOutputStream.smali

    const/16 v0, 0x100

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;-><init>(Lcom/android/volley/toolbox/ByteArrayPool;I)V

=======
    .param p1, "pool"    # Lcom/android/volley/toolbox/ByteArrayPool;

    .line 40
    const/16 v0, 0x100

    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;-><init>(Lcom/android/volley/toolbox/ByteArrayPool;I)V

    .line 41
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/PoolingByteArrayOutputStream.smali
    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/ByteArrayPool;I)V
    .locals 1
<<<<<<< HEAD:smali/com/android/volley/toolbox/PoolingByteArrayOutputStream.smali

    .line 54
=======
    .param p1, "pool"    # Lcom/android/volley/toolbox/ByteArrayPool;
    .param p2, "size"    # I

    .line 51
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/PoolingByteArrayOutputStream.smali
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

<<<<<<< HEAD:smali/com/android/volley/toolbox/PoolingByteArrayOutputStream.smali
    const/16 v0, 0x100

    .line 56
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/volley/toolbox/ByteArrayPool;->getBuf(I)[B
=======
    .line 53
    const/16 v0, 0x100

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/volley/toolbox/ByteArrayPool;->getBuf(I)[B
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/PoolingByteArrayOutputStream.smali

    move-result-object p1

    iput-object p1, p0, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->buf:[B

    return-void
.end method

.method private expand(I)V
<<<<<<< HEAD:smali/com/android/volley/toolbox/PoolingByteArrayOutputStream.smali
    .locals 3

    .line 78
=======
    .locals 4
    .param p1, "i"    # I

    .line 72
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/PoolingByteArrayOutputStream.smali
    iget v0, p0, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->count:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->buf:[B

    array-length v1, v1

    if-gt v0, v1, :cond_0
<<<<<<< HEAD:smali/com/android/volley/toolbox/PoolingByteArrayOutputStream.smali

    return-void

    .line 81
=======

    .line 73
    return-void

    .line 75
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/PoolingByteArrayOutputStream.smali
    :cond_0
    iget-object v0, p0, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    iget v1, p0, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->count:I

    add-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/ByteArrayPool;->getBuf(I)[B

    move-result-object p1

<<<<<<< HEAD:smali/com/android/volley/toolbox/PoolingByteArrayOutputStream.smali
    .line 82
    iget-object v0, p0, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->buf:[B
=======
    .line 76
    .local v0, "newbuf":[B
    iget-object v1, p0, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->buf:[B
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/PoolingByteArrayOutputStream.smali

    iget v1, p0, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->count:I

<<<<<<< HEAD:smali/com/android/volley/toolbox/PoolingByteArrayOutputStream.smali
    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
=======
    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    iget-object v1, p0, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/PoolingByteArrayOutputStream.smali

    .line 83
    iget-object v0, p0, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    iget-object v1, p0, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->buf:[B

<<<<<<< HEAD:smali/com/android/volley/toolbox/PoolingByteArrayOutputStream.smali
    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/ByteArrayPool;->returnBuf([B)V

    .line 84
    iput-object p1, p0, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->buf:[B

=======
    .line 78
    iput-object v0, p0, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->buf:[B

    .line 79
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/PoolingByteArrayOutputStream.smali
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

<<<<<<< HEAD:smali/com/android/volley/toolbox/PoolingByteArrayOutputStream.smali
    .line 61
=======
    .line 58
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/PoolingByteArrayOutputStream.smali
    iget-object v0, p0, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    iget-object v1, p0, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->buf:[B

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/ByteArrayPool;->returnBuf([B)V

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->buf:[B

    .line 63
    invoke-super {p0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-void
.end method

.method public finalize()V
    .locals 2

<<<<<<< HEAD:smali/com/android/volley/toolbox/PoolingByteArrayOutputStream.smali
    .line 68
=======
    .line 65
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/PoolingByteArrayOutputStream.smali
    iget-object v0, p0, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    iget-object v1, p0, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->buf:[B

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/ByteArrayPool;->returnBuf([B)V

    return-void
.end method

.method public declared-synchronized write(I)V
    .locals 1
    .param p1, "oneByte"    # I

    monitor-enter p0

<<<<<<< HEAD:smali/com/android/volley/toolbox/PoolingByteArrayOutputStream.smali
=======
    .line 89
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/PoolingByteArrayOutputStream.smali
    const/4 v0, 0x1

    .line 95
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->expand(I)V

<<<<<<< HEAD:smali/com/android/volley/toolbox/PoolingByteArrayOutputStream.smali
    .line 96
=======
    .line 90
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/PoolingByteArrayOutputStream.smali
    invoke-super {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

<<<<<<< HEAD:smali/com/android/volley/toolbox/PoolingByteArrayOutputStream.smali
    .line 97
=======
    .line 91
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/PoolingByteArrayOutputStream.smali
    monitor-exit p0

    return-void

    .line 88
    .end local p0    # "this":Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;
    .end local p1    # "oneByte":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized write([BII)V
    .locals 0
<<<<<<< HEAD:smali/com/android/volley/toolbox/PoolingByteArrayOutputStream.smali

    monitor-enter p0

    .line 89
    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->expand(I)V

    .line 90
=======
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    monitor-enter p0

    .line 83
    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->expand(I)V

    .line 84
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/PoolingByteArrayOutputStream.smali
    invoke-super {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

<<<<<<< HEAD:smali/com/android/volley/toolbox/PoolingByteArrayOutputStream.smali
    .line 91
=======
    .line 85
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/PoolingByteArrayOutputStream.smali
    monitor-exit p0

    return-void

    .line 82
    .end local p0    # "this":Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;
    .end local p1    # "buffer":[B
    .end local p2    # "offset":I
    .end local p3    # "len":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
