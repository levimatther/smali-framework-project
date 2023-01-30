.class public Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;
.super Ljava/io/FilterOutputStream;
.source "QuotedPrintableOutputStream.java"


# static fields
.field private static final CR:B = 0xdt

.field private static final DEFAULT_BUFFER_SIZE:I = 0xc00

.field private static final DOT:B = 0x2et

.field private static final EQ:B = 0x3dt

.field private static final HEX_DIGITS:[B

.field private static final LF:B = 0xat

.field private static final QUOTED_PRINTABLE_LAST_PLAIN:B = 0x7et

.field private static final QUOTED_PRINTABLE_MAX_LINE_LENGTH:I = 0x4c

.field private static final QUOTED_PRINTABLE_OCTETS_PER_ESCAPE:I = 0x3

.field private static final SP:B = 0x20t

.field private static final TB:B = 0x9t


# instance fields
.field private final binary:Z

.field private closed:Z

.field private nextSoftBreak:I

.field private final outBuffer:[B

.field private outputIndex:I

.field private pendingCR:Z

.field private pendingSpace:Z

.field private pendingTab:Z

.field private singleByte:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 47
    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->HEX_DIGITS:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
    .end array-data
.end method

.method public constructor <init>(ILjava/io/OutputStream;Z)V
    .locals 1

    .line 64
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p2, 0x0

    .line 59
    iput-boolean p2, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->closed:Z

    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 61
    iput-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->singleByte:[B

    .line 65
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->outBuffer:[B

    .line 66
    iput-boolean p3, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->binary:Z

    .line 67
    iput-boolean p2, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->pendingSpace:Z

    .line 68
    iput-boolean p2, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->pendingTab:Z

    .line 69
    iput-boolean p2, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->pendingCR:Z

    .line 70
    iput p2, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->outputIndex:I

    const/16 p1, 0x4d

    .line 71
    iput p1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->nextSoftBreak:I

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 1

    const/16 v0, 0xc00

    .line 75
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;-><init>(ILjava/io/OutputStream;Z)V

    return-void
.end method

.method private clearPending()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->pendingSpace:Z

    .line 102
    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->pendingTab:Z

    .line 103
    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->pendingCR:Z

    return-void
.end method

.method private completeEncoding()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->writePending()V

    .line 86
    invoke-virtual {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->flushOutput()V

    return-void
.end method

.method private encode(B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x9

    const/16 v1, 0x20

    const/16 v2, 0xa

    if-ne p1, v2, :cond_4

    .line 108
    iget-boolean v2, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->binary:Z

    if-eqz v2, :cond_0

    .line 109
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->writePending()V

    .line 110
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->escape(B)V

    goto/16 :goto_2

    .line 112
    :cond_0
    iget-boolean v2, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->pendingCR:Z

    if-eqz v2, :cond_3

    .line 115
    iget-boolean p1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->pendingSpace:Z

    if-eqz p1, :cond_1

    .line 116
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->escape(B)V

    goto :goto_0

    .line 117
    :cond_1
    iget-boolean p1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->pendingTab:Z

    if-eqz p1, :cond_2

    .line 118
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->escape(B)V

    .line 120
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->lineBreak()V

    .line 121
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->clearPending()V

    goto :goto_2

    .line 123
    :cond_3
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->writePending()V

    .line 124
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->plain(B)V

    goto :goto_2

    :cond_4
    const/16 v2, 0xd

    const/4 v3, 0x1

    if-ne p1, v2, :cond_6

    .line 128
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->binary:Z

    if-eqz v0, :cond_5

    .line 129
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->escape(B)V

    goto :goto_2

    .line 131
    :cond_5
    iput-boolean v3, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->pendingCR:Z

    goto :goto_2

    .line 134
    :cond_6
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->writePending()V

    if-ne p1, v1, :cond_8

    .line 136
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->binary:Z

    if-eqz v0, :cond_7

    .line 137
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->escape(B)V

    goto :goto_2

    .line 139
    :cond_7
    iput-boolean v3, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->pendingSpace:Z

    goto :goto_2

    :cond_8
    if-ne p1, v0, :cond_a

    .line 142
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->binary:Z

    if-eqz v0, :cond_9

    .line 143
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->escape(B)V

    goto :goto_2

    .line 145
    :cond_9
    iput-boolean v3, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->pendingTab:Z

    goto :goto_2

    :cond_a
    if-ge p1, v1, :cond_b

    .line 148
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->escape(B)V

    goto :goto_2

    :cond_b
    const/16 v0, 0x7e

    if-le p1, v0, :cond_c

    .line 150
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->escape(B)V

    goto :goto_2

    :cond_c
    const/16 v0, 0x3d

    if-eq p1, v0, :cond_e

    const/16 v0, 0x2e

    if-ne p1, v0, :cond_d

    goto :goto_1

    .line 154
    :cond_d
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->plain(B)V

    goto :goto_2

    .line 152
    :cond_e
    :goto_1
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->escape(B)V

    :goto_2
    return-void
.end method

.method private encodeChunk([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move v0, p2

    :goto_0
    add-int v1, p3, p2

    if-ge v0, v1, :cond_0

    .line 80
    aget-byte v1, p1, v0

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->encode(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private escape(B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    iget v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->nextSoftBreak:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->nextSoftBreak:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 168
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->softBreak()V

    :cond_0
    and-int/lit16 p1, p1, 0xff

    const/16 v0, 0x3d

    .line 173
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->write(B)V

    .line 174
    iget v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->nextSoftBreak:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->nextSoftBreak:I

    .line 175
    sget-object v0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->HEX_DIGITS:[B

    shr-int/lit8 v1, p1, 0x4

    aget-byte v0, v0, v1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->write(B)V

    .line 176
    iget v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->nextSoftBreak:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->nextSoftBreak:I

    .line 177
    sget-object v0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->HEX_DIGITS:[B

    rem-int/lit8 p1, p1, 0x10

    aget-byte p1, v0, p1

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->write(B)V

    return-void
.end method

.method private lineBreak()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xd

    .line 193
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->write(B)V

    const/16 v0, 0xa

    .line 194
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->write(B)V

    const/16 v0, 0x4c

    .line 195
    iput v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->nextSoftBreak:I

    return-void
.end method

.method private plain(B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    iget v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->nextSoftBreak:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->nextSoftBreak:I

    if-gt v0, v1, :cond_0

    .line 161
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->softBreak()V

    .line 163
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->write(B)V

    return-void
.end method

.method private softBreak()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x3d

    .line 188
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->write(B)V

    .line 189
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->lineBreak()V

    return-void
.end method

.method private write(B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->outBuffer:[B

    iget v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->outputIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->outputIndex:I

    aput-byte p1, v0, v1

    .line 182
    array-length p1, v0

    if-lt v2, p1, :cond_0

    .line 183
    invoke-virtual {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->flushOutput()V

    :cond_0
    return-void
.end method

.method private writePending()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->pendingSpace:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    .line 91
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->plain(B)V

    goto :goto_0

    .line 92
    :cond_0
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->pendingTab:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x9

    .line 93
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->plain(B)V

    goto :goto_0

    .line 94
    :cond_1
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->pendingCR:Z

    if-eqz v0, :cond_2

    const/16 v0, 0xd

    .line 95
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->plain(B)V

    .line 97
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->clearPending()V

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

    .line 209
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 213
    :try_start_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->completeEncoding()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->closed:Z

    return-void

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->closed:Z

    throw v1
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    invoke-virtual {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->flushOutput()V

    return-void
.end method

.method flushOutput()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    iget v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->outputIndex:I

    iget-object v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->outBuffer:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 200
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->outBuffer:[B

    iget v3, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->outputIndex:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 202
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->outBuffer:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 204
    :goto_0
    iput v2, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->outputIndex:I

    return-void
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->singleByte:[B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    .line 228
    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->closed:Z

    if-nez v0, :cond_0

    .line 236
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->encodeChunk([BII)V

    return-void

    .line 234
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream has been closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
