.class Lcom/google/common/collect/CompactHashSet;
.super Ljava/util/AbstractSet;
.source "CompactHashSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final DEFAULT_SIZE:I = 0x3

.field private static final HASH_MASK:J = -0x100000000L

.field private static final LOAD_FACTOR:F = 1.0f

.field private static final NEXT_MASK:J = 0xffffffffL

.field static final UNSET:I = -0x1


# instance fields
.field transient elements:[Ljava/lang/Object;

.field private transient entries:[J

.field transient modCount:I

.field private transient size:I

.field private transient table:[I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 169
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    const/4 v0, 0x3

    .line 170
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactHashSet;->init(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 178
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 179
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CompactHashSet;->init(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/CompactHashSet;)[J
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    return-object p0
.end method

.method static synthetic access$100(J)I
    .locals 0

    .line 73
    invoke-static {p0, p1}, Lcom/google/common/collect/CompactHashSet;->getHash(J)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/google/common/collect/CompactHashSet;Ljava/lang/Object;I)Z
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/CompactHashSet;->remove(Ljava/lang/Object;I)Z

    move-result p0

    return p0
.end method

.method public static create()Lcom/google/common/collect/CompactHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/CompactHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 78
    new-instance v0, Lcom/google/common/collect/CompactHashSet;

    invoke-direct {v0}, Lcom/google/common/collect/CompactHashSet;-><init>()V

    return-object v0
.end method

.method public static create(Ljava/util/Collection;)Lcom/google/common/collect/CompactHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Lcom/google/common/collect/CompactHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 89
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/CompactHashSet;->createWithExpectedSize(I)Lcom/google/common/collect/CompactHashSet;

    move-result-object v0

    .line 90
    invoke-virtual {v0, p0}, Lcom/google/common/collect/CompactHashSet;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static varargs create([Ljava/lang/Object;)Lcom/google/common/collect/CompactHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/google/common/collect/CompactHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 102
    array-length v0, p0

    invoke-static {v0}, Lcom/google/common/collect/CompactHashSet;->createWithExpectedSize(I)Lcom/google/common/collect/CompactHashSet;

    move-result-object v0

    .line 103
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static createWithExpectedSize(I)Lcom/google/common/collect/CompactHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/CompactHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 117
    new-instance v0, Lcom/google/common/collect/CompactHashSet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashSet;-><init>(I)V

    return-object v0
.end method

.method private static getHash(J)I
    .locals 1

    const/16 v0, 0x20

    ushr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method private static getNext(J)I
    .locals 0

    long-to-int p0, p0

    return p0
.end method

.method private hashTableMask()I
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private static newEntries(I)[J
    .locals 2

    .line 212
    new-array p0, p0, [J

    const-wide/16 v0, -0x1

    .line 213
    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    return-object p0
.end method

.method private static newTable(I)[I
    .locals 1

    .line 206
    new-array p0, p0, [I

    const/4 v0, -0x1

    .line 207
    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([II)V

    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 572
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 573
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    if-ltz v0, :cond_1

    .line 577
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactHashSet;->init(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 579
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 580
    invoke-virtual {p0, v2}, Lcom/google/common/collect/CompactHashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 575
    :cond_1
    new-instance p1, Ljava/io/InvalidObjectException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private remove(Ljava/lang/Object;I)Z
    .locals 9

    .line 360
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->hashTableMask()I

    move-result v0

    and-int/2addr v0, p2

    .line 361
    iget-object v1, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    aget v1, v1, v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    return v2

    :cond_0
    move v4, v3

    .line 367
    :goto_0
    iget-object v5, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    aget-wide v6, v5, v1

    invoke-static {v6, v7}, Lcom/google/common/collect/CompactHashSet;->getHash(J)I

    move-result v5

    if-ne v5, p2, :cond_2

    iget-object v5, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    aget-object v5, v5, v1

    invoke-static {p1, v5}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-ne v4, v3, :cond_1

    .line 370
    iget-object p1, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    iget-object p2, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    aget-wide v2, p2, v1

    invoke-static {v2, v3}, Lcom/google/common/collect/CompactHashSet;->getNext(J)I

    move-result p2

    aput p2, p1, v0

    goto :goto_1

    .line 373
    :cond_1
    iget-object p1, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    aget-wide v2, p1, v4

    aget-wide v5, p1, v1

    invoke-static {v5, v6}, Lcom/google/common/collect/CompactHashSet;->getNext(J)I

    move-result p2

    invoke-static {v2, v3, p2}, Lcom/google/common/collect/CompactHashSet;->swapNext(JI)J

    move-result-wide v2

    aput-wide v2, p1, v4

    .line 376
    :goto_1
    invoke-virtual {p0, v1}, Lcom/google/common/collect/CompactHashSet;->moveLastEntry(I)V

    .line 377
    iget p1, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    .line 378
    iget p1, p0, Lcom/google/common/collect/CompactHashSet;->modCount:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/common/collect/CompactHashSet;->modCount:I

    return p2

    .line 382
    :cond_2
    iget-object v4, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    aget-wide v5, v4, v1

    invoke-static {v5, v6}, Lcom/google/common/collect/CompactHashSet;->getNext(J)I

    move-result v4

    if-ne v4, v3, :cond_3

    return v2

    :cond_3
    move v8, v4

    move v4, v1

    move v1, v8

    goto :goto_0
.end method

.method private resizeMeMaybe(I)V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    array-length v0, v0

    if-le p1, v0, :cond_1

    ushr-int/lit8 p1, v0, 0x1

    const/4 v1, 0x1

    .line 290
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p1, v0

    if-gez p1, :cond_0

    const p1, 0x7fffffff

    :cond_0
    if-eq p1, v0, :cond_1

    .line 295
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CompactHashSet;->resizeEntries(I)V

    :cond_1
    return-void
.end method

.method private resizeTable(I)V
    .locals 10

    .line 316
    invoke-static {p1}, Lcom/google/common/collect/CompactHashSet;->newTable(I)[I

    move-result-object p1

    .line 317
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    .line 319
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    .line 320
    :goto_0
    iget v3, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    if-ge v2, v3, :cond_0

    .line 321
    aget-wide v3, v0, v2

    .line 322
    invoke-static {v3, v4}, Lcom/google/common/collect/CompactHashSet;->getHash(J)I

    move-result v3

    and-int v4, v3, v1

    .line 324
    aget v5, p1, v4

    .line 325
    aput v2, p1, v4

    int-to-long v3, v3

    const/16 v6, 0x20

    shl-long/2addr v3, v6

    const-wide v6, 0xffffffffL

    int-to-long v8, v5

    and-long v5, v8, v6

    or-long/2addr v3, v5

    .line 326
    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 329
    :cond_0
    iput-object p1, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    return-void
.end method

.method private static swapNext(JI)J
    .locals 4

    const-wide v0, -0x100000000L

    and-long/2addr p0, v0

    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 563
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 564
    iget v0, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 565
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->firstEntryIndex()I

    move-result v0

    :goto_0
    if-ltz v0, :cond_0

    .line 566
    iget-object v1, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 565
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactHashSet;->getSuccessor(I)I

    move-result v0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 238
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->allocArrays()V

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    .line 242
    iget-object v1, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    .line 244
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v2

    .line 245
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->hashTableMask()I

    move-result v3

    and-int/2addr v3, v2

    .line 246
    iget v4, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    .line 247
    iget-object v5, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    aget v6, v5, v3

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    .line 249
    aput v4, v5, v3

    goto :goto_1

    .line 255
    :cond_1
    :goto_0
    aget-wide v8, v0, v6

    .line 256
    invoke-static {v8, v9}, Lcom/google/common/collect/CompactHashSet;->getHash(J)I

    move-result v3

    if-ne v3, v2, :cond_2

    aget-object v3, v1, v6

    invoke-static {p1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p1, 0x0

    return p1

    .line 259
    :cond_2
    invoke-static {v8, v9}, Lcom/google/common/collect/CompactHashSet;->getNext(J)I

    move-result v3

    if-ne v3, v7, :cond_5

    .line 261
    invoke-static {v8, v9, v4}, Lcom/google/common/collect/CompactHashSet;->swapNext(JI)J

    move-result-wide v7

    aput-wide v7, v0, v6

    :goto_1
    const v0, 0x7fffffff

    if-eq v4, v0, :cond_4

    add-int/lit8 v0, v4, 0x1

    .line 267
    invoke-direct {p0, v0}, Lcom/google/common/collect/CompactHashSet;->resizeMeMaybe(I)V

    .line 268
    invoke-virtual {p0, v4, p1, v2}, Lcom/google/common/collect/CompactHashSet;->insertEntry(ILjava/lang/Object;I)V

    .line 269
    iput v0, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    .line 270
    iget-object p1, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    array-length p1, p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 271
    invoke-static {v4, p1, v0, v1}, Lcom/google/common/collect/Hashing;->needsResizing(IID)Z

    move-result v0

    if-eqz v0, :cond_3

    mul-int/lit8 p1, p1, 0x2

    .line 272
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashSet;->resizeTable(I)V

    .line 274
    :cond_3
    iget p1, p0, Lcom/google/common/collect/CompactHashSet;->modCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/common/collect/CompactHashSet;->modCount:I

    return v0

    .line 264
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot contain more than Integer.MAX_VALUE elements!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    move v6, v3

    goto :goto_0
.end method

.method adjustAfterRemove(II)I
    .locals 0

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method allocArrays()V
    .locals 3

    .line 195
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->needsAllocArrays()Z

    move-result v0

    const-string v1, "Arrays already allocated"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 197
    iget v0, p0, Lcom/google/common/collect/CompactHashSet;->modCount:I

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 198
    invoke-static {v0, v1, v2}, Lcom/google/common/collect/Hashing;->closedTableSize(ID)I

    move-result v1

    .line 199
    invoke-static {v1}, Lcom/google/common/collect/CompactHashSet;->newTable(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    .line 201
    invoke-static {v0}, Lcom/google/common/collect/CompactHashSet;->newEntries(I)[J

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    .line 202
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    return-void
.end method

.method public clear()V
    .locals 6

    .line 552
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 555
    :cond_0
    iget v0, p0, Lcom/google/common/collect/CompactHashSet;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/CompactHashSet;->modCount:I

    .line 556
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 557
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 558
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    iget v1, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    const-wide/16 v4, -0x1

    invoke-static {v0, v3, v1, v4, v5}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 559
    iput v3, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 6

    .line 334
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->needsAllocArrays()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 337
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    .line 338
    iget-object v2, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->hashTableMask()I

    move-result v3

    and-int/2addr v3, v0

    aget v2, v2, v3

    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 340
    iget-object v3, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    aget-wide v4, v3, v2

    .line 341
    invoke-static {v4, v5}, Lcom/google/common/collect/CompactHashSet;->getHash(J)I

    move-result v3

    if-ne v3, v0, :cond_1

    iget-object v3, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    aget-object v2, v3, v2

    invoke-static {p1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    .line 344
    :cond_1
    invoke-static {v4, v5}, Lcom/google/common/collect/CompactHashSet;->getNext(J)I

    move-result v2

    goto :goto_0

    :cond_2
    return v1
.end method

.method firstEntryIndex()I
    .locals 1

    .line 427
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 496
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->firstEntryIndex()I

    move-result v0

    :goto_0
    if-ltz v0, :cond_0

    .line 498
    iget-object v1, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 497
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactHashSet;->getSuccessor(I)I

    move-result v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method getSuccessor(I)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 431
    iget v0, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method init(I)V
    .locals 3

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Initial capacity must be non-negative"

    .line 184
    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 185
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/CompactHashSet;->modCount:I

    return-void
.end method

.method insertEntry(ILjava/lang/Object;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;I)V"
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    int-to-long v1, p3

    const/16 p3, 0x20

    shl-long/2addr v1, p3

    const-wide v3, 0xffffffffL

    or-long/2addr v1, v3

    aput-wide v1, v0, p1

    .line 283
    iget-object p3, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    aput-object p2, p3, p1

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 509
    iget v0, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 445
    new-instance v0, Lcom/google/common/collect/CompactHashSet$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashSet$1;-><init>(Lcom/google/common/collect/CompactHashSet;)V

    return-object v0
.end method

.method moveLastEntry(I)V
    .locals 6

    .line 391
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    if-ge p1, v0, :cond_2

    .line 394
    iget-object v4, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    aget-object v5, v4, v0

    aput-object v5, v4, p1

    .line 395
    aput-object v3, v4, v0

    .line 398
    iget-object v3, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    aget-wide v4, v3, v0

    .line 399
    aput-wide v4, v3, p1

    .line 400
    aput-wide v1, v3, v0

    .line 404
    invoke-static {v4, v5}, Lcom/google/common/collect/CompactHashSet;->getHash(J)I

    move-result v1

    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->hashTableMask()I

    move-result v2

    and-int/2addr v1, v2

    .line 405
    iget-object v2, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    aget v3, v2, v1

    if-ne v3, v0, :cond_0

    .line 408
    aput p1, v2, v1

    goto :goto_1

    .line 415
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    aget-wide v4, v1, v3

    invoke-static {v4, v5}, Lcom/google/common/collect/CompactHashSet;->getNext(J)I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    invoke-static {v4, v5, p1}, Lcom/google/common/collect/CompactHashSet;->swapNext(JI)J

    move-result-wide v1

    aput-wide v1, v0, v3

    goto :goto_1

    :cond_1
    move v3, v1

    goto :goto_0

    .line 421
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    aput-object v3, v0, p1

    .line 422
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    aput-wide v1, v0, p1

    :goto_1
    return-void
.end method

.method needsAllocArrays()Z
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 352
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 355
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/CompactHashSet;->remove(Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method resizeEntries(I)V
    .locals 4

    .line 305
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    .line 306
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    .line 307
    array-length v1, v0

    .line 308
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    if-le p1, v1, :cond_0

    const-wide/16 v2, -0x1

    .line 310
    invoke-static {v0, v1, p1, v2, v3}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 312
    :cond_0
    iput-object v0, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    return-void
.end method

.method public size()I
    .locals 1

    .line 504
    iget v0, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 488
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->needsAllocArrays()Z

    move-result v0

    const/16 v1, 0x11

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    .line 489
    invoke-static {v0, v1}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;I)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    invoke-static {v0, v2, v3, v1}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;III)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .line 514
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 523
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->needsAllocArrays()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 524
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 525
    aput-object v0, p1, v1

    :cond_0
    return-object p1

    .line 529
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    invoke-static {v0, v1, v2, p1}, Lcom/google/common/collect/ObjectArrays;->toArrayImpl([Ljava/lang/Object;II[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public trimToSize()V
    .locals 3

    .line 537
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 540
    :cond_0
    iget v0, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    .line 541
    iget-object v1, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 542
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactHashSet;->resizeEntries(I)V

    :cond_1
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 544
    invoke-static {v0, v1, v2}, Lcom/google/common/collect/Hashing;->closedTableSize(ID)I

    move-result v0

    .line 545
    iget-object v1, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 546
    invoke-direct {p0, v0}, Lcom/google/common/collect/CompactHashSet;->resizeTable(I)V

    :cond_2
    return-void
.end method
