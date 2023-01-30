.class public Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessageCreator;
.super Ljava/lang/Object;
.source "VoicemailErrorMessageCreator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Lcom/android/dialer/app/voicemail/error/VoicemailStatus;Lcom/android/dialer/app/voicemail/error/VoicemailStatusReader;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;
    .locals 4

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 39
    :cond_0
    iget-object v0, p2, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->type:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x5821a607

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "vvm_type_vvm3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 43
    invoke-static {p1, p2, p3}, Lcom/android/dialer/app/voicemail/error/OmtpVoicemailMessageCreator;->create(Landroid/content/Context;Lcom/android/dialer/app/voicemail/error/VoicemailStatus;Lcom/android/dialer/app/voicemail/error/VoicemailStatusReader;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;

    move-result-object p1

    return-object p1

    .line 41
    :cond_3
    invoke-static {p1, p2, p3}, Lcom/android/dialer/app/voicemail/error/Vvm3VoicemailMessageCreator;->create(Landroid/content/Context;Lcom/android/dialer/app/voicemail/error/VoicemailStatus;Lcom/android/dialer/app/voicemail/error/VoicemailStatusReader;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;

    move-result-object p1

    return-object p1
.end method

.method public isSyncBlockingError(Lcom/android/dialer/app/voicemail/error/VoicemailStatus;)Z
    .locals 3

    .line 49
    iget-object v0, p1, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x5821a607

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "vvm_type_vvm3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 53
    invoke-static {p1}, Lcom/android/dialer/app/voicemail/error/OmtpVoicemailMessageCreator;->isSyncBlockingError(Lcom/android/dialer/app/voicemail/error/VoicemailStatus;)Z

    move-result p1

    return p1

    .line 51
    :cond_2
    invoke-static {p1}, Lcom/android/dialer/app/voicemail/error/Vvm3VoicemailMessageCreator;->isSyncBlockingError(Lcom/android/dialer/app/voicemail/error/VoicemailStatus;)Z

    move-result p1

    return p1
.end method
