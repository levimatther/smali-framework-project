.class public Lcom/android/voicemail/impl/sync/OmtpVvmDeltaSyncReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OmtpVvmDeltaSyncReceiver.java"


# static fields
.field public static final ACTION_DELTA_SYNC_VOICEMAIL:Ljava/lang/String; = "android.provider.action.SYNC_DELTA_VOICEMAIL"

.field public static final ACTION_DELTA_SYNC_VOICEMAIL_DONE:Ljava/lang/String; = "android.intent.action.DELTA_SYNC_VOICEMAIL_DONE"

.field private static final TAG:Ljava/lang/String; = "OmtpVvmDeltaSyncReceiver"


# instance fields
.field private executor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x1

    .line 59
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/impl/sync/OmtpVvmDeltaSyncReceiver;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic lambda$onReceive$0(Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;Landroid/telecom/PhoneAccountHandle;Lcom/android/voicemail/impl/VoicemailStatus$Editor;Landroid/content/Context;)V
    .locals 9

    const-string v0, "android.intent.action.DELTA_SYNC_VOICEMAIL_DONE"

    .line 88
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/android/voicemail/impl/sync/VvmNetworkRequest;->getNetwork(Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;Landroid/telecom/PhoneAccountHandle;Lcom/android/voicemail/impl/VoicemailStatus$Editor;)Lcom/android/voicemail/impl/sync/VvmNetworkRequest$NetworkWrapper;

    move-result-object v1
    :try_end_0
    .catch Lcom/android/voicemail/impl/sync/VvmNetworkRequest$RequestFailedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/voicemail/impl/imap/ImapHelper$InitializingException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "OmtpVvmDeltaSyncReceiver"

    if-nez v1, :cond_1

    :try_start_1
    const-string/jumbo p1, "unable to acquire network"

    .line 90
    invoke-static {v2, p1}, Lcom/android/voicemail/impl/VvmLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p3, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 115
    :try_start_2
    invoke-virtual {v1}, Lcom/android/voicemail/impl/sync/VvmNetworkRequest$NetworkWrapper;->close()V
    :try_end_2
    .catch Lcom/android/voicemail/impl/sync/VvmNetworkRequest$RequestFailedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/voicemail/impl/imap/ImapHelper$InitializingException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-void

    .line 95
    :cond_1
    :try_start_3
    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/voicemail/impl/sync/VvmNetworkRequest$NetworkWrapper;->get()Landroid/net/Network;

    move-result-object v4

    invoke-virtual {v3, p3, p1, v4, p2}, Lcom/android/operatorutils/IOperatorManager;->getImapHelper(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Landroid/net/Network;Lcom/android/voicemail/impl/VoicemailStatus$Editor;)Lcom/android/voicemail/impl/imap/ImapHelper;

    move-result-object v3

    .line 97
    invoke-virtual {v3}, Lcom/android/voicemail/impl/imap/ImapHelper;->fetchDeltaVoicemails()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 99
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/voicemail/impl/Voicemail;

    .line 100
    invoke-static {p3, v4}, Lcom/android/voicemail/impl/utils/VoicemailDatabaseUtil;->isExsit(Landroid/content/Context;Lcom/android/voicemail/impl/Voicemail;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "insert new voicemail"

    .line 101
    invoke-static {v2, v5}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {p3, v4}, Lcom/android/voicemail/impl/utils/VoicemailDatabaseUtil;->insert(Landroid/content/Context;Lcom/android/voicemail/impl/Voicemail;)Landroid/net/Uri;

    move-result-object v5

    .line 104
    invoke-virtual {v4}, Lcom/android/voicemail/impl/Voicemail;->getTimestampMillis()J

    move-result-wide v6

    invoke-virtual {v4}, Lcom/android/voicemail/impl/Voicemail;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/voicemail/impl/Voicemail;->createForInsertion(JLjava/lang/String;)Lcom/android/voicemail/impl/Voicemail$Builder;

    move-result-object v6

    .line 105
    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/android/voicemail/impl/Voicemail$Builder;->setId(J)Lcom/android/voicemail/impl/Voicemail$Builder;

    move-result-object v6

    .line 106
    invoke-virtual {v6, v5}, Lcom/android/voicemail/impl/Voicemail$Builder;->setUri(Landroid/net/Uri;)Lcom/android/voicemail/impl/Voicemail$Builder;

    move-result-object v5

    .line 107
    invoke-virtual {v5, p1}, Lcom/android/voicemail/impl/Voicemail$Builder;->setPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Lcom/android/voicemail/impl/Voicemail$Builder;

    move-result-object v5

    .line 108
    invoke-virtual {v4}, Lcom/android/voicemail/impl/Voicemail;->getSourceData()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/voicemail/impl/Voicemail$Builder;->setSourceData(Ljava/lang/String;)Lcom/android/voicemail/impl/Voicemail$Builder;

    move-result-object v5

    .line 109
    invoke-virtual {v4}, Lcom/android/voicemail/impl/Voicemail;->getDuration()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/android/voicemail/impl/Voicemail$Builder;->setDuration(J)Lcom/android/voicemail/impl/Voicemail$Builder;

    move-result-object v4

    .line 110
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/voicemail/impl/Voicemail$Builder;->setSourcePackage(Ljava/lang/String;)Lcom/android/voicemail/impl/Voicemail$Builder;

    move-result-object v4

    .line 111
    invoke-virtual {v4}, Lcom/android/voicemail/impl/Voicemail$Builder;->build()Lcom/android/voicemail/impl/Voicemail;

    move-result-object v4

    invoke-static {p3, p1, v4}, Lcom/android/voicemail/impl/sync/SyncOneTask;->start(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Lcom/android/voicemail/impl/Voicemail;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_5

    .line 115
    :try_start_4
    invoke-virtual {v1}, Lcom/android/voicemail/impl/sync/VvmNetworkRequest$NetworkWrapper;->close()V
    :try_end_4
    .catch Lcom/android/voicemail/impl/sync/VvmNetworkRequest$RequestFailedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/android/voicemail/impl/imap/ImapHelper$InitializingException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 88
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v1, :cond_4

    .line 115
    :try_start_6
    invoke-virtual {v1}, Lcom/android/voicemail/impl/sync/VvmNetworkRequest$NetworkWrapper;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v1

    :try_start_7
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v2
    :try_end_7
    .catch Lcom/android/voicemail/impl/sync/VvmNetworkRequest$RequestFailedException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lcom/android/voicemail/impl/imap/ImapHelper$InitializingException; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    move-exception p0

    .line 118
    invoke-virtual {p0}, Lcom/android/voicemail/impl/imap/ImapHelper$InitializingException;->printStackTrace()V

    goto :goto_2

    .line 116
    :catch_1
    sget-object p1, Lcom/android/voicemail/impl/OmtpEvents;->DATA_NO_CONNECTION_CELLULAR_REQUIRED:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {p0, p2, p1}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->handleEvent(Lcom/android/voicemail/impl/VoicemailStatus$Editor;Lcom/android/voicemail/impl/OmtpEvents;)V

    .line 120
    :cond_5
    :goto_2
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p3, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 64
    invoke-static {p1}, Lcom/android/voicemail/VoicemailComponent;->get(Landroid/content/Context;)Lcom/android/voicemail/VoicemailComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/voicemail/VoicemailComponent;->getVoicemailClient()Lcom/android/voicemail/VoicemailClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/voicemail/VoicemailClient;->isVoicemailModuleEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 69
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.provider.action.SYNC_DELTA_VOICEMAIL"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "OmtpVvmDeltaSyncReceiver"

    const-string v0, "Sync Delta VOICEMAIL received"

    .line 70
    invoke-static {p2, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-class p2, Landroid/telecom/TelecomManager;

    .line 73
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telecom/TelecomManager;

    invoke-virtual {p2}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object p2

    .line 74
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 75
    invoke-static {p1, v0}, Lcom/android/voicemail/impl/settings/VisualVoicemailSettingsUtil;->isEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 79
    :cond_1
    new-instance v1, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;

    invoke-direct {v1, p1, v0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    .line 80
    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_SYNC_STARTED:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-static {p1, v2}, Lcom/android/voicemail/impl/utils/LoggerUtils;->logImpressionOnMainThread(Landroid/content/Context;Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 84
    invoke-static {p1, v0}, Lcom/android/voicemail/impl/VoicemailStatus;->edit(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    move-result-object v2

    .line 85
    sget-object v3, Lcom/android/voicemail/impl/OmtpEvents;->DATA_IMAP_OPERATION_STARTED:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {v1, v2, v3}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->handleEvent(Lcom/android/voicemail/impl/VoicemailStatus$Editor;Lcom/android/voicemail/impl/OmtpEvents;)V

    .line 87
    iget-object v3, p0, Lcom/android/voicemail/impl/sync/OmtpVvmDeltaSyncReceiver;->executor:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/android/voicemail/impl/sync/-$$Lambda$OmtpVvmDeltaSyncReceiver$-aBFQ8DdfLoreqUS-PwM9QOY4gY;

    invoke-direct {v4, v1, v0, v2, p1}, Lcom/android/voicemail/impl/sync/-$$Lambda$OmtpVvmDeltaSyncReceiver$-aBFQ8DdfLoreqUS-PwM9QOY4gY;-><init>(Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;Landroid/telecom/PhoneAccountHandle;Lcom/android/voicemail/impl/VoicemailStatus$Editor;Landroid/content/Context;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    return-void
.end method
