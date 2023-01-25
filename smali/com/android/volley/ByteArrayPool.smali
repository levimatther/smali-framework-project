.class public Lcom/android/volley/toolbox/ByteArrayPool;
.super Ljava/lang/Object;
.source "ByteArrayPool.java"


# static fields
.field protected static final BUF_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final mBuffersByLastUse:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private final mBuffersBySize:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private mCurrentSize:I

.field private final mSizeLimit:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

<<<<<<< HEAD:smali/com/android/volley/toolbox/ByteArrayPool.smali
    .line 75
=======
    .line 68
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/ByteArrayPool.smali
    new-instance v0, Lcom/android/volley/toolbox/ByteArrayPool$1;

    invoke-direct {v0}, Lcom/android/volley/toolbox/ByteArrayPool$1;-><init>()V

    sput-object v0, Lcom/android/volley/toolbox/ByteArrayPool;->BUF_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "sizeLimit"    # I

<<<<<<< HEAD:smali/com/android/volley/toolbox/ByteArrayPool.smali
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/LinkedList;
=======
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/ByteArrayPool.smali

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mBuffersByLastUse:Ljava/util/List;

<<<<<<< HEAD:smali/com/android/volley/toolbox/ByteArrayPool.smali
    .line 59
=======
    .line 56
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/ByteArrayPool.smali
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mBuffersBySize:Ljava/util/List;

<<<<<<< HEAD:smali/com/android/volley/toolbox/ByteArrayPool.smali
=======
    .line 59
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/ByteArrayPool.smali
    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mCurrentSize:I

<<<<<<< HEAD:smali/com/android/volley/toolbox/ByteArrayPool.smali
    .line 86
    iput p1, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mSizeLimit:I

=======
    .line 78
    iput p1, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mSizeLimit:I

    .line 79
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/ByteArrayPool.smali
    return-void
.end method

.method private declared-synchronized trim()V
    .locals 3

    monitor-enter p0

<<<<<<< HEAD:smali/com/android/volley/toolbox/ByteArrayPool.smali
    .line 134
=======
    .line 124
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/ByteArrayPool.smali
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mCurrentSize:I

    iget v1, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mSizeLimit:I
<<<<<<< HEAD:smali/com/android/volley/toolbox/ByteArrayPool.smali

    if-le v0, v1, :cond_0

    .line 135
=======

    if-le v0, v1, :cond_0

    .line 125
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/ByteArrayPool.smali
    iget-object v0, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mBuffersByLastUse:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

<<<<<<< HEAD:smali/com/android/volley/toolbox/ByteArrayPool.smali
    .line 136
=======
    .line 126
    .local v0, "buf":[B
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/ByteArrayPool.smali
    iget-object v1, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mBuffersBySize:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

<<<<<<< HEAD:smali/com/android/volley/toolbox/ByteArrayPool.smali
    .line 137
=======
    .line 127
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/ByteArrayPool.smali
    iget v1, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mCurrentSize:I

    array-length v2, v0

<<<<<<< HEAD:smali/com/android/volley/toolbox/ByteArrayPool.smali
    sub-int/2addr v1, v0
=======
    sub-int/2addr v1, v2
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/ByteArrayPool.smali

    iput v1, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mCurrentSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    .end local v0    # "buf":[B
    goto :goto_0

<<<<<<< HEAD:smali/com/android/volley/toolbox/ByteArrayPool.smali
    .line 139
=======
    .line 129
    .end local p0    # "this":Lcom/android/volley/toolbox/ByteArrayPool;
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/ByteArrayPool.smali
    :cond_0
    monitor-exit p0

    return-void

<<<<<<< HEAD:smali/com/android/volley/toolbox/ByteArrayPool.smali
=======
    .line 123
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/ByteArrayPool.smali
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized getBuf(I)[B
<<<<<<< HEAD:smali/com/android/volley/toolbox/ByteArrayPool.smali
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 98
=======
    .locals 4
    .param p1, "len"    # I

    monitor-enter p0

    .line 90
    const/4 v0, 0x0

    .local v0, "i":I
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/ByteArrayPool.smali
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mBuffersBySize:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

<<<<<<< HEAD:smali/com/android/volley/toolbox/ByteArrayPool.smali
    .line 99
=======
    .line 91
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/ByteArrayPool.smali
    iget-object v1, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mBuffersBySize:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

<<<<<<< HEAD:smali/com/android/volley/toolbox/ByteArrayPool.smali
    .line 100
    array-length v2, v1

    if-lt v2, p1, :cond_0

    .line 101
    iget p1, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mCurrentSize:I

    array-length v2, v1

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mCurrentSize:I

    .line 102
    iget-object p1, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mBuffersBySize:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 103
    iget-object p1, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mBuffersByLastUse:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_1
    :try_start_1
    new-array p1, p1, [B
=======
    .line 92
    .local v1, "buf":[B
    array-length v2, v1

    if-lt v2, p1, :cond_0

    .line 93
    iget v2, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mCurrentSize:I

    array-length v3, v1

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mCurrentSize:I

    .line 94
    iget-object v2, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mBuffersBySize:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 95
    iget-object v2, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mBuffersByLastUse:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-object v1

    .line 90
    .end local v1    # "buf":[B
    .end local p0    # "this":Lcom/android/volley/toolbox/ByteArrayPool;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    .end local v0    # "i":I
    :cond_1
    :try_start_1
    new-array v0, p1, [B
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/ByteArrayPool.smali
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

<<<<<<< HEAD:smali/com/android/volley/toolbox/ByteArrayPool.smali
    return-object p1
=======
    return-object v0
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/ByteArrayPool.smali

    .line 89
    .end local p1    # "len":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized returnBuf([B)V
    .locals 3
    .param p1, "buf"    # [B

    monitor-enter p0

<<<<<<< HEAD:smali/com/android/volley/toolbox/ByteArrayPool.smali
    if-eqz p1, :cond_2

    .line 117
=======
    .line 109
    if-eqz p1, :cond_2

>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/ByteArrayPool.smali
    :try_start_0
    array-length v0, p1

    iget v1, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mSizeLimit:I

    if-le v0, v1, :cond_0
<<<<<<< HEAD:smali/com/android/volley/toolbox/ByteArrayPool.smali

    goto :goto_0

    .line 120
=======

    goto :goto_0

    .line 112
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/ByteArrayPool.smali
    :cond_0
    iget-object v0, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mBuffersByLastUse:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

<<<<<<< HEAD:smali/com/android/volley/toolbox/ByteArrayPool.smali
    .line 121
=======
    .line 113
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/ByteArrayPool.smali
    iget-object v0, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mBuffersBySize:Ljava/util/List;

    sget-object v1, Lcom/android/volley/toolbox/ByteArrayPool;->BUF_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

<<<<<<< HEAD:smali/com/android/volley/toolbox/ByteArrayPool.smali
    if-gez v0, :cond_1

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 125
=======
    .line 114
    .local v0, "pos":I
    if-gez v0, :cond_1

    .line 115
    neg-int v1, v0

    add-int/lit8 v0, v1, -0x1

    .line 117
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/ByteArrayPool.smali
    :cond_1
    iget-object v1, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mBuffersBySize:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

<<<<<<< HEAD:smali/com/android/volley/toolbox/ByteArrayPool.smali
    .line 126
    iget v0, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mCurrentSize:I

    array-length p1, p1

    add-int/2addr v0, p1
=======
    .line 118
    iget v1, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mCurrentSize:I

    array-length v2, p1

    add-int/2addr v1, v2
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/ByteArrayPool.smali

    iput v1, p0, Lcom/android/volley/toolbox/ByteArrayPool;->mCurrentSize:I

<<<<<<< HEAD:smali/com/android/volley/toolbox/ByteArrayPool.smali
    .line 127
=======
    .line 119
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/ByteArrayPool.smali
    invoke-direct {p0}, Lcom/android/volley/toolbox/ByteArrayPool;->trim()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

<<<<<<< HEAD:smali/com/android/volley/toolbox/ByteArrayPool.smali
    .line 128
=======
    .line 120
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/ByteArrayPool.smali
    monitor-exit p0

    return-void

<<<<<<< HEAD:smali/com/android/volley/toolbox/ByteArrayPool.smali
=======
    .line 108
    .end local v0    # "pos":I
    .end local p0    # "this":Lcom/android/volley/toolbox/ByteArrayPool;
    .end local p1    # "buf":[B
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/ByteArrayPool.smali
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

<<<<<<< HEAD:smali/com/android/volley/toolbox/ByteArrayPool.smali
    .line 118
=======
    .line 110
    .restart local p1    # "buf":[B
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/ByteArrayPool.smali
    :cond_2
    :goto_0
    monitor-exit p0

    return-void
.end method
