.class Lcom/android/voicemail/impl/mail/store/ImapStore$ImapMessage;
.super Lcom/android/voicemail/impl/mail/internet/MimeMessage;
.source "ImapStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicemail/impl/mail/store/ImapStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImapMessage"
.end annotation


# instance fields
.field private mFolder:Lcom/android/voicemail/impl/mail/store/ImapFolder;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/android/voicemail/impl/mail/store/ImapFolder;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/android/voicemail/impl/mail/internet/MimeMessage;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/android/voicemail/impl/mail/store/ImapStore$ImapMessage;->mUid:Ljava/lang/String;

    .line 108
    iput-object p2, p0, Lcom/android/voicemail/impl/mail/store/ImapStore$ImapMessage;->mFolder:Lcom/android/voicemail/impl/mail/store/ImapFolder;

    return-void
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/voicemail/impl/mail/MessagingException;,
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .line 117
    invoke-super {p0, p1}, Lcom/android/voicemail/impl/mail/internet/MimeMessage;->parse(Ljava/io/InputStream;)V

    return-void
.end method

.method public setFlag(Ljava/lang/String;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/voicemail/impl/mail/MessagingException;
        }
    .end annotation

    .line 126
    invoke-super {p0, p1, p2}, Lcom/android/voicemail/impl/mail/internet/MimeMessage;->setFlag(Ljava/lang/String;Z)V

    .line 127
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/ImapStore$ImapMessage;->mFolder:Lcom/android/voicemail/impl/mail/store/ImapFolder;

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/android/voicemail/impl/mail/Message;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v3

    invoke-virtual {v0, v2, v1, p2}, Lcom/android/voicemail/impl/mail/store/ImapFolder;->setFlags([Lcom/android/voicemail/impl/mail/Message;[Ljava/lang/String;Z)V

    return-void
.end method

.method public setFlagInternal(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/voicemail/impl/mail/MessagingException;
        }
    .end annotation

    .line 121
    invoke-super {p0, p1, p2}, Lcom/android/voicemail/impl/mail/internet/MimeMessage;->setFlag(Ljava/lang/String;Z)V

    return-void
.end method

.method public setSize(I)V
    .locals 0

    .line 112
    iput p1, p0, Lcom/android/voicemail/impl/mail/store/ImapStore$ImapMessage;->mSize:I

    return-void
.end method
