.class public Lcom/android/voicemail/impl/sms/StatusMessage;
.super Ljava/lang/Object;
.source "StatusMessage.java"


# instance fields
.field private final mClientSmsDestinationNumber:Ljava/lang/String;

.field private final mImapPassword:Ljava/lang/String;

.field private final mImapPort:Ljava/lang/String;

.field private final mImapUserName:Ljava/lang/String;

.field private final mProvisioningStatus:Ljava/lang/String;

.field private final mServerAddress:Ljava/lang/String;

.field private final mSmtpPassword:Ljava/lang/String;

.field private final mSmtpPort:Ljava/lang/String;

.field private final mSmtpUserName:Ljava/lang/String;

.field private final mStatusReturnCode:Ljava/lang/String;

.field private final mSubscriptionUrl:Ljava/lang/String;

.field private final mTuiAccessNumber:Ljava/lang/String;

.field private final mTuiPasswordLength:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "st"

    .line 81
    invoke-static {p1, v0}, Lcom/android/voicemail/impl/sms/StatusMessage;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/voicemail/impl/sms/StatusMessage;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/impl/sms/StatusMessage;->mProvisioningStatus:Ljava/lang/String;

    const-string v0, "rc"

    .line 82
    invoke-static {p1, v0}, Lcom/android/voicemail/impl/sms/StatusMessage;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/impl/sms/StatusMessage;->mStatusReturnCode:Ljava/lang/String;

    const-string v0, "rs"

    .line 83
    invoke-static {p1, v0}, Lcom/android/voicemail/impl/sms/StatusMessage;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/impl/sms/StatusMessage;->mSubscriptionUrl:Ljava/lang/String;

    const-string v0, "srv"

    .line 84
    invoke-static {p1, v0}, Lcom/android/voicemail/impl/sms/StatusMessage;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/impl/sms/StatusMessage;->mServerAddress:Ljava/lang/String;

    const-string/jumbo v0, "tui"

    .line 85
    invoke-static {p1, v0}, Lcom/android/voicemail/impl/sms/StatusMessage;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/impl/sms/StatusMessage;->mTuiAccessNumber:Ljava/lang/String;

    const-string v0, "dn"

    .line 87
    invoke-static {p1, v0}, Lcom/android/voicemail/impl/sms/StatusMessage;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/impl/sms/StatusMessage;->mClientSmsDestinationNumber:Ljava/lang/String;

    const-string v0, "ipt"

    .line 88
    invoke-static {p1, v0}, Lcom/android/voicemail/impl/sms/StatusMessage;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/impl/sms/StatusMessage;->mImapPort:Ljava/lang/String;

    const-string/jumbo v0, "u"

    .line 89
    invoke-static {p1, v0}, Lcom/android/voicemail/impl/sms/StatusMessage;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/impl/sms/StatusMessage;->mImapUserName:Ljava/lang/String;

    const-string v0, "pw"

    .line 90
    invoke-static {p1, v0}, Lcom/android/voicemail/impl/sms/StatusMessage;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/impl/sms/StatusMessage;->mImapPassword:Ljava/lang/String;

    const-string v0, "spt"

    .line 91
    invoke-static {p1, v0}, Lcom/android/voicemail/impl/sms/StatusMessage;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/impl/sms/StatusMessage;->mSmtpPort:Ljava/lang/String;

    const-string v0, "smtp_u"

    .line 92
    invoke-static {p1, v0}, Lcom/android/voicemail/impl/sms/StatusMessage;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/impl/sms/StatusMessage;->mSmtpUserName:Ljava/lang/String;

    const-string v0, "smtp_pw"

    .line 93
    invoke-static {p1, v0}, Lcom/android/voicemail/impl/sms/StatusMessage;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/impl/sms/StatusMessage;->mSmtpPassword:Ljava/lang/String;

    const-string v0, "pw_len"

    .line 94
    invoke-static {p1, v0}, Lcom/android/voicemail/impl/sms/StatusMessage;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/voicemail/impl/sms/StatusMessage;->mTuiPasswordLength:Ljava/lang/String;

    return-void
.end method

.method private static getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 185
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method private static unquote(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 98
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-object p0

    :cond_0
    const-string v0, "\""

    .line 101
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public getClientSmsDestinationNumber()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/android/voicemail/impl/sms/StatusMessage;->mClientSmsDestinationNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getImapPassword()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/android/voicemail/impl/sms/StatusMessage;->mImapPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getImapPort()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/android/voicemail/impl/sms/StatusMessage;->mImapPort:Ljava/lang/String;

    return-object v0
.end method

.method public getImapUserName()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/android/voicemail/impl/sms/StatusMessage;->mImapUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getProvisioningStatus()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/android/voicemail/impl/sms/StatusMessage;->mProvisioningStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getReturnCode()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/android/voicemail/impl/sms/StatusMessage;->mStatusReturnCode:Ljava/lang/String;

    return-object v0
.end method

.method public getServerAddress()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/android/voicemail/impl/sms/StatusMessage;->mServerAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getSmtpPassword()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/android/voicemail/impl/sms/StatusMessage;->mSmtpPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getSmtpPort()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/android/voicemail/impl/sms/StatusMessage;->mSmtpPort:Ljava/lang/String;

    return-object v0
.end method

.method public getSmtpUserName()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/android/voicemail/impl/sms/StatusMessage;->mSmtpUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriptionUrl()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/android/voicemail/impl/sms/StatusMessage;->mSubscriptionUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTuiAccessNumber()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/android/voicemail/impl/sms/StatusMessage;->mTuiAccessNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getTuiPasswordLength()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/android/voicemail/impl/sms/StatusMessage;->mTuiPasswordLength:Ljava/lang/String;

    return-object v0
.end method

.method public putStatus(Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;)Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;
    .locals 2

    .line 195
    invoke-virtual {p0}, Lcom/android/voicemail/impl/sms/StatusMessage;->getImapPort()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ipt"

    invoke-virtual {p1, v1, v0}, Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;

    move-result-object p1

    .line 196
    invoke-virtual {p0}, Lcom/android/voicemail/impl/sms/StatusMessage;->getServerAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, "srv"

    invoke-virtual {p1, v1, v0}, Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;

    move-result-object p1

    .line 197
    invoke-virtual {p0}, Lcom/android/voicemail/impl/sms/StatusMessage;->getImapUserName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "u"

    invoke-virtual {p1, v1, v0}, Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;

    move-result-object p1

    .line 198
    invoke-virtual {p0}, Lcom/android/voicemail/impl/sms/StatusMessage;->getImapPassword()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pw"

    invoke-virtual {p1, v1, v0}, Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;

    move-result-object p1

    .line 199
    invoke-virtual {p0}, Lcom/android/voicemail/impl/sms/StatusMessage;->getTuiPasswordLength()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pw_len"

    invoke-virtual {p1, v1, v0}, Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusMessage [mProvisioningStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/voicemail/impl/sms/StatusMessage;->mProvisioningStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mStatusReturnCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/voicemail/impl/sms/StatusMessage;->mStatusReturnCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSubscriptionUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/voicemail/impl/sms/StatusMessage;->mSubscriptionUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mServerAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/voicemail/impl/sms/StatusMessage;->mServerAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mTuiAccessNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/voicemail/impl/sms/StatusMessage;->mTuiAccessNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mClientSmsDestinationNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/voicemail/impl/sms/StatusMessage;->mClientSmsDestinationNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mImapPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/voicemail/impl/sms/StatusMessage;->mImapPort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mImapUserName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/voicemail/impl/sms/StatusMessage;->mImapUserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mImapPassword="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/voicemail/impl/sms/StatusMessage;->mImapPassword:Ljava/lang/String;

    .line 68
    invoke-static {v1}, Lcom/android/voicemail/impl/VvmLog;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSmtpPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/voicemail/impl/sms/StatusMessage;->mSmtpPort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSmtpUserName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/voicemail/impl/sms/StatusMessage;->mSmtpUserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSmtpPassword="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/voicemail/impl/sms/StatusMessage;->mSmtpPassword:Ljava/lang/String;

    .line 74
    invoke-static {v1}, Lcom/android/voicemail/impl/VvmLog;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mTuiPasswordLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/voicemail/impl/sms/StatusMessage;->mTuiPasswordLength:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
