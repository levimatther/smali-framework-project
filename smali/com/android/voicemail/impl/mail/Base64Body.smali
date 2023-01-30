.class public Lcom/android/voicemail/impl/mail/Base64Body;
.super Ljava/lang/Object;
.source "Base64Body.java"

# interfaces
.implements Lcom/android/voicemail/impl/mail/Body;


# instance fields
.field private mAlreadyWritten:Z

.field private final mSource:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/voicemail/impl/mail/Base64Body;->mSource:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/voicemail/impl/mail/MessagingException;
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/Base64Body;->mSource:Ljava/io/InputStream;

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;,
            Lcom/android/voicemail/impl/mail/MessagingException;
        }
    .end annotation

    .line 50
    iget-boolean v0, p0, Lcom/android/voicemail/impl/mail/Base64Body;->mAlreadyWritten:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/android/voicemail/impl/mail/Base64Body;->mAlreadyWritten:Z

    .line 55
    :try_start_0
    new-instance v0, Landroid/util/Base64OutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 56
    iget-object p1, p0, Lcom/android/voicemail/impl/mail/Base64Body;->mSource:Ljava/io/InputStream;

    invoke-static {p1, v0}, Lorg/apache/commons/io/IOUtils;->copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    iget-object p1, p0, Lcom/android/voicemail/impl/mail/Base64Body;->mSource:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/android/voicemail/impl/mail/Base64Body;->mSource:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 59
    throw p1

    .line 51
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Base64Body can only be written once"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
