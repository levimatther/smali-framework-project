.class public abstract Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "VvmNetworkRequestCallback.java"


# static fields
.field public static final NETWORK_REQUEST_FAILED_LOST:Ljava/lang/String; = "lost"

.field public static final NETWORK_REQUEST_FAILED_TIMEOUT:Ljava/lang/String; = "timeout"

.field private static final NETWORK_REQUEST_TIMEOUT_MILLIS:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "VvmNetworkRequest"


# instance fields
.field private final mCarrierConfigHelper:Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field protected mContext:Landroid/content/Context;

.field protected mNetworkRequest:Landroid/net/NetworkRequest;

.field protected mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

.field private mRequestSent:Z

.field private mResultReceived:Z

.field private final mStatus:Lcom/android/voicemail/impl/VoicemailStatus$Editor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Lcom/android/voicemail/impl/VoicemailStatus$Editor;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;->mRequestSent:Z

    .line 58
    iput-boolean v0, p0, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;->mResultReceived:Z

    .line 62
    iput-object p1, p0, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;->mContext:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    .line 64
    iput-object p3, p0, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;->mStatus:Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    .line 65
    new-instance p2, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;

    iget-object p3, p0, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-direct {p2, p1, p3}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    iput-object p2, p0, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;->mCarrierConfigHelper:Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;

    .line 66
    invoke-direct {p0}, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;->createNetworkRequest()Landroid/net/NetworkRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;->mNetworkRequest:Landroid/net/NetworkRequest;

    return-void
.end method

.method public constructor <init>(Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;Landroid/telecom/PhoneAccountHandle;Lcom/android/voicemail/impl/VoicemailStatus$Editor;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;->mRequestSent:Z

    .line 58
    iput-boolean v0, p0, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;->mResultReceived:Z

    .line 73
    invoke-virtual {p1}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;->mContext:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    .line 75
    iput-object p3, p0, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;->mStatus:Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    .line 76
    iput-object p1, p0, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;->mCarrierConfigHelper:Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;

    .line 77
    invoke-direct {p0}, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;->createNetworkRequest()Landroid/net/NetworkRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;->mNetworkRequest:Landroid/net/NetworkRequest;

    return-void
.end method

.method static synthetic access$000(Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;->mResultReceived:Z

    return p0
.end method

.method private createNetworkRequest()Landroid/net/NetworkRequest;
    .locals 4

    .line 90
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xc

    .line 91
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/TelephonyManager;

    .line 95
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    .line 96
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->createForPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 98
    invoke-static {v1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v2, p0, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;->mCarrierConfigHelper:Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;

    invoke-virtual {v2}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->isCellularDataRequired()Z

    move-result v2

    const-string v3, "VvmNetworkRequest"

    if-eqz v2, :cond_0

    const-string v2, "Transport type: CELLULAR"

    .line 100
    invoke-static {v3, v2}, Lcom/android/voicemail/impl/VvmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 102
    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    .line 103
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkSpecifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;

    goto :goto_0

    :cond_0
    const-string v1, "Transport type: ANY"

    .line 105
    invoke-static {v3, v1}, Lcom/android/voicemail/impl/VvmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :goto_0
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 168
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public getNetworkRequest()Landroid/net/NetworkRequest;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;->mNetworkRequest:Landroid/net/NetworkRequest;

    return-object v0
.end method

.method public getVoicemailStatusEditor()Lcom/android/voicemail/impl/VoicemailStatus$Editor;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;->mStatus:Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    return-object v0
.end method

.method public onAvailable(Landroid/net/Network;)V
    .locals 0

    .line 125
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    const/4 p1, 0x1

    .line 126
    iput-boolean p1, p0, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;->mResultReceived:Z

    return-void
.end method

.method public onFailed(Ljava/lang/String;)V
    .locals 2

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VvmNetworkRequest"

    invoke-static {v0, p1}, Lcom/android/voicemail/impl/VvmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object p1, p0, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;->mCarrierConfigHelper:Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;

    invoke-virtual {p1}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->isCellularDataRequired()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 177
    iget-object p1, p0, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;->mCarrierConfigHelper:Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;

    iget-object v0, p0, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;->mStatus:Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    sget-object v1, Lcom/android/voicemail/impl/OmtpEvents;->DATA_NO_CONNECTION_CELLULAR_REQUIRED:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {p1, v0, v1}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->handleEvent(Lcom/android/voicemail/impl/VoicemailStatus$Editor;Lcom/android/voicemail/impl/OmtpEvents;)V

    goto :goto_0

    .line 179
    :cond_0
    iget-object p1, p0, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;->mCarrierConfigHelper:Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;

    iget-object v0, p0, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;->mStatus:Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    sget-object v1, Lcom/android/voicemail/impl/OmtpEvents;->DATA_NO_CONNECTION:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {p1, v0, v1}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->handleEvent(Lcom/android/voicemail/impl/VoicemailStatus$Editor;Lcom/android/voicemail/impl/OmtpEvents;)V

    .line 181
    :goto_0
    invoke-virtual {p0}, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;->releaseNetwork()V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    const-string p1, "VvmNetworkRequest"

    const-string v0, "onLost"

    .line 117
    invoke-static {p1, v0}, Lcom/android/voicemail/impl/VvmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 118
    iput-boolean p1, p0, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;->mResultReceived:Z

    const-string p1, "lost"

    .line 119
    invoke-virtual {p0, p1}, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;->onFailed(Ljava/lang/String;)V

    return-void
.end method

.method public onUnavailable()V
    .locals 1

    const/4 v0, 0x1

    .line 132
    iput-boolean v0, p0, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;->mResultReceived:Z

    const-string v0, "timeout"

    .line 133
    invoke-virtual {p0, v0}, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;->onFailed(Ljava/lang/String;)V

    return-void
.end method

.method public releaseNetwork()V
    .locals 2

    const-string v0, "VvmNetworkRequest"

    const-string v1, "releaseNetwork"

    .line 161
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public requestNetwork()V
    .locals 4

    .line 137
    iget-boolean v0, p0, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;->mRequestSent:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "VvmNetworkRequest"

    const-string v1, "requestNetwork() called twice"

    .line 138
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 141
    :cond_0
    iput-boolean v1, p0, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;->mRequestSent:Z

    .line 142
    invoke-virtual {p0}, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;->getNetworkRequest()Landroid/net/NetworkRequest;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 147
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 148
    new-instance v1, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback$1;

    invoke-direct {v1, p0}, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback$1;-><init>(Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
