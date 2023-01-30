.class public Lcom/android/voicemail/impl/mail/utility/CountingOutputStream;
.super Ljava/io/OutputStream;
.source "CountingOutputStream.java"


# instance fields
.field private mCount:J

.field private final mOutputStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/voicemail/impl/mail/utility/CountingOutputStream;->mOutputStream:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public getCount()J
    .locals 2

    .line 34
    iget-wide v0, p0, Lcom/android/voicemail/impl/mail/utility/CountingOutputStream;->mCount:J

    return-wide v0
.end method

.method public write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/utility/CountingOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 46
    iget-wide v0, p0, Lcom/android/voicemail/impl/mail/utility/CountingOutputStream;->mCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/voicemail/impl/mail/utility/CountingOutputStream;->mCount:J

    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/utility/CountingOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 40
    iget-wide p1, p0, Lcom/android/voicemail/impl/mail/utility/CountingOutputStream;->mCount:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/voicemail/impl/mail/utility/CountingOutputStream;->mCount:J

    return-void
.end method
