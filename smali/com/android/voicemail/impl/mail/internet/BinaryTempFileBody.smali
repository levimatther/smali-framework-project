.class public Lcom/android/voicemail/impl/mail/internet/BinaryTempFileBody;
.super Ljava/lang/Object;
.source "BinaryTempFileBody.java"

# interfaces
.implements Lcom/android/voicemail/impl/mail/Body;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/voicemail/impl/mail/internet/BinaryTempFileBody$BinaryTempFileBodyInputStream;
    }
.end annotation


# instance fields
.field private mFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/voicemail/impl/mail/internet/BinaryTempFileBody;)Ljava/io/File;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/voicemail/impl/mail/internet/BinaryTempFileBody;->mFile:Ljava/io/File;

    return-object p0
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/voicemail/impl/mail/MessagingException;
        }
    .end annotation

    .line 60
    :try_start_0
    new-instance v0, Lcom/android/voicemail/impl/mail/internet/BinaryTempFileBody$BinaryTempFileBodyInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/android/voicemail/impl/mail/internet/BinaryTempFileBody;->mFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, p0, v1}, Lcom/android/voicemail/impl/mail/internet/BinaryTempFileBody$BinaryTempFileBodyInputStream;-><init>(Lcom/android/voicemail/impl/mail/internet/BinaryTempFileBody;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 62
    new-instance v1, Lcom/android/voicemail/impl/mail/MessagingException;

    const-string v2, "Unable to open body"

    invoke-direct {v1, v2, v0}, Lcom/android/voicemail/impl/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-static {}, Lcom/android/voicemail/impl/mail/TempDirectory;->getTempDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "body"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/impl/mail/internet/BinaryTempFileBody;->mFile:Ljava/io/File;

    .line 53
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 54
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/android/voicemail/impl/mail/internet/BinaryTempFileBody;->mFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 1

    .line 48
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/voicemail/impl/mail/internet/BinaryTempFileBody;->mFile:Ljava/io/File;

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/voicemail/impl/mail/MessagingException;
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Lcom/android/voicemail/impl/mail/internet/BinaryTempFileBody;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 69
    new-instance v1, Landroid/util/Base64OutputStream;

    const/16 v2, 0x14

    invoke-direct {v1, p1, v2}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 70
    invoke-static {v0, v1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 71
    invoke-virtual {v1}, Landroid/util/Base64OutputStream;->close()V

    .line 72
    iget-object p1, p0, Lcom/android/voicemail/impl/mail/internet/BinaryTempFileBody;->mFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 73
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method
