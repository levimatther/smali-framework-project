.class public Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;
.super Lcom/android/voicemail/impl/mail/store/imap/ImapList;
.source "ImapResponse.java"


# instance fields
.field private final mIsContinuationRequest:Z

.field private final mTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->mTag:Ljava/lang/String;

    .line 26
    iput-boolean p2, p0, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->mIsContinuationRequest:Z

    return-void
.end method

.method static isStatusResponse(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "OK"

    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "NO"

    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "BAD"

    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "PREAUTH"

    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "BYE"

    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public equalsForTest(Lcom/android/voicemail/impl/mail/store/imap/ImapElement;)Z
    .locals 3

    .line 124
    invoke-super {p0, p1}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->equalsForTest(Lcom/android/voicemail/impl/mail/store/imap/ImapElement;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 127
    :cond_0
    check-cast p1, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;

    .line 128
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->mTag:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 129
    iget-object v0, p1, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->mTag:Ljava/lang/String;

    if-eqz v0, :cond_2

    return v1

    .line 133
    :cond_1
    iget-object v2, p1, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 137
    :cond_2
    iget-boolean v0, p0, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->mIsContinuationRequest:Z

    iget-boolean p1, p1, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->mIsContinuationRequest:Z

    if-eq v0, p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public getAlertTextOrEmpty()Lcom/android/voicemail/impl/mail/store/imap/ImapString;
    .locals 2

    .line 91
    invoke-virtual {p0}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->getResponseCodeOrEmpty()Lcom/android/voicemail/impl/mail/store/imap/ImapString;

    move-result-object v0

    const-string v1, "ALERT"

    invoke-virtual {v0, v1}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    sget-object v0, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->EMPTY:Lcom/android/voicemail/impl/mail/store/imap/ImapString;

    return-object v0

    :cond_0
    const/4 v0, 0x2

    .line 95
    invoke-virtual {p0, v0}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/voicemail/impl/mail/store/imap/ImapString;

    move-result-object v0

    return-object v0
.end method

.method public getResponseCodeOrEmpty()Lcom/android/voicemail/impl/mail/store/imap/ImapString;
    .locals 2

    .line 80
    invoke-virtual {p0}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->isStatusResponse()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    sget-object v0, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->EMPTY:Lcom/android/voicemail/impl/mail/store/imap/ImapString;

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 83
    invoke-virtual {p0, v0}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->getListOrEmpty(I)Lcom/android/voicemail/impl/mail/store/imap/ImapList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/voicemail/impl/mail/store/imap/ImapString;

    move-result-object v0

    return-object v0
.end method

.method public getStatusOrEmpty()Lcom/android/voicemail/impl/mail/store/imap/ImapString;
    .locals 1

    .line 107
    invoke-virtual {p0}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->isStatusResponse()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    sget-object v0, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->EMPTY:Lcom/android/voicemail/impl/mail/store/imap/ImapString;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 110
    invoke-virtual {p0, v0}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/voicemail/impl/mail/store/imap/ImapString;

    move-result-object v0

    return-object v0
.end method

.method public getStatusResponseTextOrEmpty()Lcom/android/voicemail/impl/mail/store/imap/ImapString;
    .locals 2

    .line 100
    invoke-virtual {p0}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->isStatusResponse()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    sget-object v0, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->EMPTY:Lcom/android/voicemail/impl/mail/store/imap/ImapString;

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 103
    invoke-virtual {p0, v0}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->getElementOrNone(I)Lcom/android/voicemail/impl/mail/store/imap/ImapElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/voicemail/impl/mail/store/imap/ImapElement;->isList()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/voicemail/impl/mail/store/imap/ImapString;

    move-result-object v0

    return-object v0
.end method

.method public isBad()Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "BAD"

    .line 58
    invoke-virtual {p0, v0, v1}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->is(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isContinuationRequest()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->mIsContinuationRequest:Z

    return v0
.end method

.method public final isDataResponse(ILjava/lang/String;)Z
    .locals 1

    .line 72
    invoke-virtual {p0}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/voicemail/impl/mail/store/imap/ImapString;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isNo()Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "NO"

    .line 63
    invoke-virtual {p0, v0, v1}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->is(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isOk()Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "OK"

    .line 53
    invoke-virtual {p0, v0, v1}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->is(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isStatusResponse()Z
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, v0}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/voicemail/impl/mail/store/imap/ImapString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->isStatusResponse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isTagged()Z
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->mTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->mTag:Ljava/lang/String;

    .line 116
    invoke-virtual {p0}, Lcom/android/voicemail/impl/mail/store/imap/ImapResponse;->isContinuationRequest()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "+"

    .line 119
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "# "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
