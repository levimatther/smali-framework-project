.class public Lcom/android/voicemail/impl/mail/FixedLengthInputStream;
.super Ljava/io/InputStream;
.source "FixedLengthInputStream.java"


# instance fields
.field private mCount:I

.field private final mIn:Ljava/io/InputStream;

.field private final mLength:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/voicemail/impl/mail/FixedLengthInputStream;->mIn:Ljava/io/InputStream;

    .line 33
    iput p2, p0, Lcom/android/voicemail/impl/mail/FixedLengthInputStream;->mLength:I

    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    iget v0, p0, Lcom/android/voicemail/impl/mail/FixedLengthInputStream;->mLength:I

    iget v1, p0, Lcom/android/voicemail/impl/mail/FixedLengthInputStream;->mCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getLength()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/android/voicemail/impl/mail/FixedLengthInputStream;->mLength:I

    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    iget v0, p0, Lcom/android/voicemail/impl/mail/FixedLengthInputStream;->mCount:I

    iget v1, p0, Lcom/android/voicemail/impl/mail/FixedLengthInputStream;->mLength:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 44
    iput v0, p0, Lcom/android/voicemail/impl/mail/FixedLengthInputStream;->mCount:I

    .line 45
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/FixedLengthInputStream;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/voicemail/impl/mail/FixedLengthInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    iget v0, p0, Lcom/android/voicemail/impl/mail/FixedLengthInputStream;->mCount:I

    iget v1, p0, Lcom/android/voicemail/impl/mail/FixedLengthInputStream;->mLength:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_1

    .line 54
    iget-object v3, p0, Lcom/android/voicemail/impl/mail/FixedLengthInputStream;->mIn:Ljava/io/InputStream;

    sub-int/2addr v1, v0

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-virtual {v3, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ne p1, v2, :cond_0

    return v2

    .line 58
    :cond_0
    iget p2, p0, Lcom/android/voicemail/impl/mail/FixedLengthInputStream;->mCount:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/android/voicemail/impl/mail/FixedLengthInputStream;->mCount:I

    return p1

    :cond_1
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 77
    iget-object v1, p0, Lcom/android/voicemail/impl/mail/FixedLengthInputStream;->mIn:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/voicemail/impl/mail/FixedLengthInputStream;->mLength:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "FixedLengthInputStream(in=%s, length=%d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
