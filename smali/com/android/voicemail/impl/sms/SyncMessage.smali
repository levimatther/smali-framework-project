.class public Lcom/android/voicemail/impl/sms/SyncMessage;
.super Ljava/lang/Object;
.source "SyncMessage.java"


# instance fields
.field private final mContentType:Ljava/lang/String;

.field private final mMessageId:Ljava/lang/String;

.field private final mMessageLength:I

.field private final mMsgTimeMillis:J

.field private final mNewMessageCount:I

.field private final mSender:Ljava/lang/String;

.field private final mSyncTriggerEvent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ev"

    .line 68
    invoke-static {p1, v0}, Lcom/android/voicemail/impl/sms/SyncMessage;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/impl/sms/SyncMessage;->mSyncTriggerEvent:Ljava/lang/String;

    const-string v0, "id"

    .line 69
    invoke-static {p1, v0}, Lcom/android/voicemail/impl/sms/SyncMessage;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/impl/sms/SyncMessage;->mMessageId:Ljava/lang/String;

    const-string v0, "l"

    .line 70
    invoke-static {p1, v0}, Lcom/android/voicemail/impl/sms/SyncMessage;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/voicemail/impl/sms/SyncMessage;->mMessageLength:I

    const-string v0, "t"

    .line 71
    invoke-static {p1, v0}, Lcom/android/voicemail/impl/sms/SyncMessage;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/impl/sms/SyncMessage;->mContentType:Ljava/lang/String;

    const-string v0, "s"

    .line 72
    invoke-static {p1, v0}, Lcom/android/voicemail/impl/sms/SyncMessage;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/impl/sms/SyncMessage;->mSender:Ljava/lang/String;

    const-string v0, "c"

    .line 73
    invoke-static {p1, v0}, Lcom/android/voicemail/impl/sms/SyncMessage;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/voicemail/impl/sms/SyncMessage;->mNewMessageCount:I

    const-string v0, "dt"

    .line 74
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/voicemail/impl/sms/SyncMessage;->parseTime(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/voicemail/impl/sms/SyncMessage;->mMsgTimeMillis:J

    return-void
.end method

.method private static getInt(Landroid/os/Bundle;Ljava/lang/String;)I
    .locals 0

    .line 143
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    .line 148
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p1
.end method

.method private static getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 155
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method private static parseTime(Ljava/lang/String;)J
    .locals 5

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    .line 82
    :cond_0
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "dd/MM/yyyy HH:mm Z"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-wide v0
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/android/voicemail/impl/sms/SyncMessage;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/android/voicemail/impl/sms/SyncMessage;->mMessageId:Ljava/lang/String;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .line 123
    iget v0, p0, Lcom/android/voicemail/impl/sms/SyncMessage;->mMessageLength:I

    return v0
.end method

.method public getNewMessageCount()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/android/voicemail/impl/sms/SyncMessage;->mNewMessageCount:I

    return v0
.end method

.method public getSender()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/android/voicemail/impl/sms/SyncMessage;->mSender:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncTriggerEvent()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/android/voicemail/impl/sms/SyncMessage;->mSyncTriggerEvent:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestampMillis()J
    .locals 2

    .line 139
    iget-wide v0, p0, Lcom/android/voicemail/impl/sms/SyncMessage;->mMsgTimeMillis:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SyncMessage [mSyncTriggerEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/voicemail/impl/sms/SyncMessage;->mSyncTriggerEvent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mNewMessageCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/voicemail/impl/sms/SyncMessage;->mNewMessageCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMessageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/voicemail/impl/sms/SyncMessage;->mMessageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mMessageLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/voicemail/impl/sms/SyncMessage;->mMessageLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mContentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/voicemail/impl/sms/SyncMessage;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/voicemail/impl/sms/SyncMessage;->mSender:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mMsgTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/voicemail/impl/sms/SyncMessage;->mMsgTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
