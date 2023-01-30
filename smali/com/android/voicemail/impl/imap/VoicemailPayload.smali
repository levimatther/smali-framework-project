.class public Lcom/android/voicemail/impl/imap/VoicemailPayload;
.super Ljava/lang/Object;
.source "VoicemailPayload.java"


# instance fields
.field private final mBytes:[B

.field private final mMimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/voicemail/impl/imap/VoicemailPayload;->mMimeType:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/android/voicemail/impl/imap/VoicemailPayload;->mBytes:[B

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/android/voicemail/impl/imap/VoicemailPayload;->mBytes:[B

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/android/voicemail/impl/imap/VoicemailPayload;->mMimeType:Ljava/lang/String;

    return-object v0
.end method
