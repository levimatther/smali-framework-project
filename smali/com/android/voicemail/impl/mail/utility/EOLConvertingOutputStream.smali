.class public Lcom/android/voicemail/impl/mail/utility/EOLConvertingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "EOLConvertingOutputStream.java"


# instance fields
.field lastChar:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    iget v0, p0, Lcom/android/voicemail/impl/mail/utility/EOLConvertingOutputStream;->lastChar:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/16 v0, 0xa

    .line 43
    invoke-super {p0, v0}, Ljava/io/FilterOutputStream;->write(I)V

    .line 44
    iput v0, p0, Lcom/android/voicemail/impl/mail/utility/EOLConvertingOutputStream;->lastChar:I

    .line 46
    :cond_0
    invoke-super {p0}, Ljava/io/FilterOutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 32
    iget v0, p0, Lcom/android/voicemail/impl/mail/utility/EOLConvertingOutputStream;->lastChar:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    .line 33
    invoke-super {p0, v1}, Ljava/io/FilterOutputStream;->write(I)V

    .line 36
    :cond_0
    invoke-super {p0, p1}, Ljava/io/FilterOutputStream;->write(I)V

    .line 37
    iput p1, p0, Lcom/android/voicemail/impl/mail/utility/EOLConvertingOutputStream;->lastChar:I

    return-void
.end method
