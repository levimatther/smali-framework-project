.class public Lcom/android/voicemail/impl/transcribe/TranscriptionConfigProvider;
.super Ljava/lang/Object;
.source "TranscriptionConfigProvider.java"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionConfigProvider;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getApiKey()Ljava/lang/String;
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionConfigProvider;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/configprovider/ConfigProviderBindings;->get(Landroid/content/Context;)Lcom/android/dialer/configprovider/ConfigProvider;

    move-result-object v0

    const-string/jumbo v1, "voicemail_transcription_client_api_key"

    const-string v2, "AIzaSyAXdDnif6B7sBYxU8hzw9qAp3pRPVHs060"

    .line 43
    invoke-interface {v0, v1, v2}, Lcom/android/dialer/configprovider/ConfigProvider;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getServerAddress()Ljava/lang/String;
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionConfigProvider;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/configprovider/ConfigProviderBindings;->get(Landroid/content/Context;)Lcom/android/dialer/configprovider/ConfigProvider;

    move-result-object v0

    const-string/jumbo v1, "voicemail_transcription_server_address"

    const-string/jumbo v2, "voicemailtranscription-pa.googleapis.com"

    .line 36
    invoke-interface {v0, v1, v2}, Lcom/android/dialer/configprovider/ConfigProvider;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isVoicemailTranscriptionEnabled()Z
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionConfigProvider;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/configprovider/ConfigProviderBindings;->get(Landroid/content/Context;)Lcom/android/dialer/configprovider/ConfigProvider;

    move-result-object v0

    const-string/jumbo v1, "voicemail_transcription_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/dialer/configprovider/ConfigProvider;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public shouldUsePlaintext()Z
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionConfigProvider;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/configprovider/ConfigProviderBindings;->get(Landroid/content/Context;)Lcom/android/dialer/configprovider/ConfigProvider;

    move-result-object v0

    const-string/jumbo v1, "voicemail_transcription_server_use_plaintext"

    const/4 v2, 0x0

    .line 53
    invoke-interface {v0, v1, v2}, Lcom/android/dialer/configprovider/ConfigProvider;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 60
    invoke-virtual {p0}, Lcom/android/voicemail/impl/transcribe/TranscriptionConfigProvider;->getServerAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/android/voicemail/impl/transcribe/TranscriptionConfigProvider;->getApiKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/android/voicemail/impl/transcribe/TranscriptionConfigProvider;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/android/voicemail/impl/transcribe/TranscriptionConfigProvider;->shouldUsePlaintext()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "{ address: %s, api key: %s, auth token: %s, plaintext: %b }"

    .line 58
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
