.class public Lcom/android/voicemail/impl/mail/store/ImapStore;
.super Ljava/lang/Object;
.source "ImapStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/voicemail/impl/mail/store/ImapStore$ImapException;,
        Lcom/android/voicemail/impl/mail/store/ImapStore$ImapMessage;
    }
.end annotation


# static fields
.field public static final FETCH_BODY_SANE_SUGGESTED_SIZE:I = 0x1f400

.field public static final FLAG_AUTHENTICATE:I = 0x4

.field public static final FLAG_NONE:I = 0x0

.field public static final FLAG_OAUTH:I = 0x10

.field public static final FLAG_SSL:I = 0x1

.field public static final FLAG_TLS:I = 0x2

.field public static final FLAG_TRUST_ALL:I = 0x8


# instance fields
.field private mConnection:Lcom/android/voicemail/impl/mail/store/ImapConnection;

.field private final mContext:Landroid/content/Context;

.field private final mHelper:Lcom/android/voicemail/impl/imap/ImapHelper;

.field private final mPassword:Ljava/lang/String;

.field private final mTransport:Lcom/android/voicemail/impl/mail/MailTransport;

.field private final mUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/voicemail/impl/imap/ImapHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILandroid/net/Network;)V
    .locals 7

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/voicemail/impl/mail/store/ImapStore;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/android/voicemail/impl/mail/store/ImapStore;->mHelper:Lcom/android/voicemail/impl/imap/ImapHelper;

    .line 63
    iput-object p3, p0, Lcom/android/voicemail/impl/mail/store/ImapStore;->mUsername:Ljava/lang/String;

    .line 64
    iput-object p4, p0, Lcom/android/voicemail/impl/mail/store/ImapStore;->mPassword:Ljava/lang/String;

    .line 65
    new-instance p2, Lcom/android/voicemail/impl/mail/MailTransport;

    invoke-virtual {p0}, Lcom/android/voicemail/impl/mail/store/ImapStore;->getImapHelper()Lcom/android/voicemail/impl/imap/ImapHelper;

    move-result-object v2

    move-object v0, p2

    move-object v1, p1

    move-object v3, p8

    move-object v4, p6

    move v5, p5

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/voicemail/impl/mail/MailTransport;-><init>(Landroid/content/Context;Lcom/android/voicemail/impl/imap/ImapHelper;Landroid/net/Network;Ljava/lang/String;II)V

    iput-object p2, p0, Lcom/android/voicemail/impl/mail/store/ImapStore;->mTransport:Lcom/android/voicemail/impl/mail/MailTransport;

    return-void
.end method

.method static joinMessageUids([Lcom/android/voicemail/impl/mail/Message;)Ljava/lang/String;
    .locals 5

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, p0, v2

    if-eqz v3, :cond_0

    const/16 v3, 0x2c

    .line 95
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    :cond_0
    invoke-virtual {v4}, Lcom/android/voicemail/impl/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method cloneTransport()Lcom/android/voicemail/impl/mail/MailTransport;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/ImapStore;->mTransport:Lcom/android/voicemail/impl/mail/MailTransport;

    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/MailTransport;->clone()Lcom/android/voicemail/impl/mail/MailTransport;

    move-result-object v0

    return-object v0
.end method

.method public closeConnection()V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/ImapStore;->mConnection:Lcom/android/voicemail/impl/mail/store/ImapConnection;

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/store/ImapConnection;->close()V

    const/4 v0, 0x0

    .line 172
    iput-object v0, p0, Lcom/android/voicemail/impl/mail/store/ImapStore;->mConnection:Lcom/android/voicemail/impl/mail/store/ImapConnection;

    :cond_0
    return-void
.end method

.method public getConnection()Lcom/android/voicemail/impl/mail/store/ImapConnection;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/ImapStore;->mConnection:Lcom/android/voicemail/impl/mail/store/ImapConnection;

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Lcom/android/voicemail/impl/mail/store/ImapConnection;

    invoke-direct {v0, p0}, Lcom/android/voicemail/impl/mail/store/ImapConnection;-><init>(Lcom/android/voicemail/impl/mail/store/ImapStore;)V

    iput-object v0, p0, Lcom/android/voicemail/impl/mail/store/ImapStore;->mConnection:Lcom/android/voicemail/impl/mail/store/ImapConnection;

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/ImapStore;->mConnection:Lcom/android/voicemail/impl/mail/store/ImapConnection;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/ImapStore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getImapHelper()Lcom/android/voicemail/impl/imap/ImapHelper;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/ImapStore;->mHelper:Lcom/android/voicemail/impl/imap/ImapHelper;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/ImapStore;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/ImapStore;->mUsername:Ljava/lang/String;

    return-object v0
.end method
