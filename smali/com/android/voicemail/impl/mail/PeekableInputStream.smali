.class public Lcom/android/voicemail/impl/mail/PeekableInputStream;
.super Ljava/io/InputStream;
.source "PeekableInputStream.java"


# instance fields
.field private final mIn:Ljava/io/InputStream;

.field private mPeeked:Z

.field private mPeekedByte:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/voicemail/impl/mail/PeekableInputStream;->mIn:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public peek()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    iget-boolean v0, p0, Lcom/android/voicemail/impl/mail/PeekableInputStream;->mPeeked:Z

    if-nez v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/android/voicemail/impl/mail/PeekableInputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/android/voicemail/impl/mail/PeekableInputStream;->mPeekedByte:I

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/android/voicemail/impl/mail/PeekableInputStream;->mPeeked:Z

    .line 51
    :cond_0
    iget v0, p0, Lcom/android/voicemail/impl/mail/PeekableInputStream;->mPeekedByte:I

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    iget-boolean v0, p0, Lcom/android/voicemail/impl/mail/PeekableInputStream;->mPeeked:Z

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/PeekableInputStream;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/android/voicemail/impl/mail/PeekableInputStream;->mPeeked:Z

    .line 42
    iget v0, p0, Lcom/android/voicemail/impl/mail/PeekableInputStream;->mPeekedByte:I

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/voicemail/impl/mail/PeekableInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    iget-boolean v0, p0, Lcom/android/voicemail/impl/mail/PeekableInputStream;->mPeeked:Z

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/PeekableInputStream;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1

    .line 59
    :cond_0
    iget v0, p0, Lcom/android/voicemail/impl/mail/PeekableInputStream;->mPeekedByte:I

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, p1, v1

    .line 60
    iput-boolean v1, p0, Lcom/android/voicemail/impl/mail/PeekableInputStream;->mPeeked:Z

    .line 61
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/PeekableInputStream;->mIn:Ljava/io/InputStream;

    const/4 v1, 0x1

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    return v1

    :cond_1
    add-int/2addr p1, v1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 77
    iget-object v1, p0, Lcom/android/voicemail/impl/mail/PeekableInputStream;->mIn:Ljava/io/InputStream;

    .line 79
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/voicemail/impl/mail/PeekableInputStream;->mPeeked:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/voicemail/impl/mail/PeekableInputStream;->mPeekedByte:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "PeekableInputStream(in=%s, peeked=%b, peekedByte=%d)"

    .line 77
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
