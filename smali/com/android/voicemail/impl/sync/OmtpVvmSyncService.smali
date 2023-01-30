.class public Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;
.super Ljava/lang/Object;
.source "OmtpVvmSyncService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/voicemail/impl/sync/OmtpVvmSyncService$TranscriptionFetchedCallback;
    }
.end annotation


# static fields
.field private static final AUTO_DELETE_ARCHIVE_VM_THRESHOLD:F = 0.75f

.field public static final SYNC_DOWNLOAD_ONE_TRANSCRIPTION:Ljava/lang/String; = "download_one_transcription"

.field public static final SYNC_DOWNLOAD_ONLY:Ljava/lang/String; = "download_only"

.field public static final SYNC_FULL_SYNC:Ljava/lang/String; = "full_sync"

.field public static final SYNC_UPLOAD_ONLY:Ljava/lang/String; = "upload_only"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mQueryHelper:Lcom/android/voicemail/impl/sync/VoicemailsQueryHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    const-class v0, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->mContext:Landroid/content/Context;

    .line 80
    new-instance p1, Lcom/android/voicemail/impl/sync/VoicemailsQueryHelper;

    iget-object v0, p0, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/voicemail/impl/sync/VoicemailsQueryHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->mQueryHelper:Lcom/android/voicemail/impl/sync/VoicemailsQueryHelper;

    return-void
.end method

.method private autoDeleteAndArchiveVM(Lcom/android/voicemail/impl/imap/ImapHelper;Landroid/telecom/PhoneAccountHandle;)V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->isArchiveAllowedAndEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 164
    sget-object p1, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->TAG:Ljava/lang/String;

    const-string p2, "autoDeleteAndArchiveVM is turned off"

    invoke-static {p1, p2}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object p1, p0, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->mContext:Landroid/content/Context;

    sget-object p2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_ARCHIVE_AUTO_DELETE_TURNED_OFF:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-static {p1, p2}, Lcom/android/voicemail/impl/utils/LoggerUtils;->logImpressionOnMainThread(Landroid/content/Context;Lcom/android/dialer/logging/DialerImpression$Type;)V

    return-void

    .line 169
    :cond_0
    invoke-virtual {p1}, Lcom/android/voicemail/impl/imap/ImapHelper;->getQuota()Lcom/android/voicemail/impl/mail/store/ImapFolder$Quota;

    move-result-object p2

    if-nez p2, :cond_1

    .line 171
    iget-object p1, p0, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->mContext:Landroid/content/Context;

    sget-object p2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_ARCHIVE_AUTO_DELETE_FAILED_DUE_TO_FAILED_QUOTA_CHECK:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-static {p1, p2}, Lcom/android/voicemail/impl/utils/LoggerUtils;->logImpressionOnMainThread(Landroid/content/Context;Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 173
    sget-object p1, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->TAG:Ljava/lang/String;

    const-string p2, "autoDeleteAndArchiveVM failed - Can\'t retrieve Imap quota."

    invoke-static {p1, p2}, Lcom/android/voicemail/impl/VvmLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 177
    :cond_1
    iget v0, p2, Lcom/android/voicemail/impl/mail/store/ImapFolder$Quota;->occupied:I

    int-to-float v0, v0

    iget v1, p2, Lcom/android/voicemail/impl/mail/store/ImapFolder$Quota;->total:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f400000    # 0.75f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 179
    invoke-direct {p0, p1, p2}, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->deleteAndArchiveVM(Lcom/android/voicemail/impl/imap/ImapHelper;Lcom/android/voicemail/impl/mail/store/ImapFolder$Quota;)V

    .line 180
    invoke-virtual {p1}, Lcom/android/voicemail/impl/imap/ImapHelper;->updateQuota()V

    .line 181
    iget-object p1, p0, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->mContext:Landroid/content/Context;

    sget-object p2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_ARCHIVE_AUTO_DELETED_VM_FROM_SERVER:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-static {p1, p2}, Lcom/android/voicemail/impl/utils/LoggerUtils;->logImpressionOnMainThread(Landroid/content/Context;Lcom/android/dialer/logging/DialerImpression$Type;)V

    goto :goto_0

    .line 184
    :cond_2
    sget-object p1, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->TAG:Ljava/lang/String;

    const-string p2, "no need to archive and auto delete VM, quota below threshold"

    invoke-static {p1, p2}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private buildMap(Ljava/util/List;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/voicemail/impl/Voicemail;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/voicemail/impl/Voicemail;",
            ">;"
        }
    .end annotation

    .line 481
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 482
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/voicemail/impl/Voicemail;

    .line 483
    invoke-virtual {v1}, Lcom/android/voicemail/impl/Voicemail;->getSourceData()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private deleteAndArchiveVM(Lcom/android/voicemail/impl/imap/ImapHelper;Lcom/android/voicemail/impl/mail/store/ImapFolder$Quota;)V
    .locals 4

    .line 210
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastO()Z

    move-result v0

    invoke-static {v0}, Lcom/android/voicemail/impl/Assert;->isTrue(Z)V

    .line 213
    iget v0, p2, Lcom/android/voicemail/impl/mail/store/ImapFolder$Quota;->occupied:I

    iget p2, p2, Lcom/android/voicemail/impl/mail/store/ImapFolder$Quota;->total:I

    int-to-float p2, p2

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr p2, v1

    float-to-int p2, p2

    sub-int/2addr v0, p2

    .line 215
    iget-object p2, p0, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->mQueryHelper:Lcom/android/voicemail/impl/sync/VoicemailsQueryHelper;

    invoke-virtual {p2, v0}, Lcom/android/voicemail/impl/sync/VoicemailsQueryHelper;->oldestVoicemailsOnServer(I)Ljava/util/List;

    move-result-object p2

    .line 216
    sget-object v1, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "number of voicemails to delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/voicemail/impl/VvmLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->mQueryHelper:Lcom/android/voicemail/impl/sync/VoicemailsQueryHelper;

    invoke-virtual {v0, p2}, Lcom/android/voicemail/impl/sync/VoicemailsQueryHelper;->markArchivedInDatabase(Ljava/util/List;)V

    .line 219
    invoke-virtual {p1, p2}, Lcom/android/voicemail/impl/imap/ImapHelper;->markMessagesAsDeleted(Ljava/util/List;)Z

    .line 220
    sget-object p1, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 223
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    const-string p2, "successfully archived and deleted %d voicemails"

    .line 222
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 220
    invoke-static {p1, p2}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :cond_0
    sget-object p1, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->TAG:Ljava/lang/String;

    const-string p2, "remote voicemail server is empty"

    invoke-static {p1, p2}, Lcom/android/voicemail/impl/VvmLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private doSync(Lcom/android/voicemail/impl/scheduling/BaseTask;Landroid/net/Network;Landroid/telecom/PhoneAccountHandle;Lcom/android/voicemail/impl/Voicemail;Ljava/lang/String;Lcom/android/voicemail/impl/VoicemailStatus$Editor;)V
    .locals 1

    .line 135
    :try_start_0
    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object p5

    iget-object v0, p0, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {p5, v0, p3, p2, p6}, Lcom/android/operatorutils/IOperatorManager;->getImapHelper(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Landroid/net/Network;Lcom/android/voicemail/impl/VoicemailStatus$Editor;)Lcom/android/voicemail/impl/imap/ImapHelper;

    move-result-object p2
    :try_end_0
    .catch Lcom/android/voicemail/impl/imap/ImapHelper$InitializingException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p4, :cond_0

    .line 138
    :try_start_1
    invoke-direct {p0, p2, p3}, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->syncAll(Lcom/android/voicemail/impl/imap/ImapHelper;Landroid/telecom/PhoneAccountHandle;)Z

    move-result p4

    goto :goto_0

    .line 140
    :cond_0
    invoke-direct {p0, p2, p4, p3}, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->syncOne(Lcom/android/voicemail/impl/imap/ImapHelper;Lcom/android/voicemail/impl/Voicemail;Landroid/telecom/PhoneAccountHandle;)Z

    move-result p4

    :goto_0
    if-eqz p4, :cond_1

    .line 144
    invoke-virtual {p2}, Lcom/android/voicemail/impl/imap/ImapHelper;->updateQuota()V

    .line 145
    invoke-direct {p0, p2, p3}, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->autoDeleteAndArchiveVM(Lcom/android/voicemail/impl/imap/ImapHelper;Landroid/telecom/PhoneAccountHandle;)V

    .line 146
    sget-object p1, Lcom/android/voicemail/impl/OmtpEvents;->DATA_IMAP_OPERATION_COMPLETED:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {p2, p1}, Lcom/android/voicemail/impl/imap/ImapHelper;->handleEvent(Lcom/android/voicemail/impl/OmtpEvents;)V

    .line 147
    iget-object p1, p0, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->mContext:Landroid/content/Context;

    sget-object p3, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_SYNC_COMPLETED:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-static {p1, p3}, Lcom/android/voicemail/impl/utils/LoggerUtils;->logImpressionOnMainThread(Landroid/content/Context;Lcom/android/dialer/logging/DialerImpression$Type;)V

    goto :goto_1

    .line 149
    :cond_1
    invoke-virtual {p1}, Lcom/android/voicemail/impl/scheduling/BaseTask;->fail()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz p2, :cond_2

    .line 151
    :try_start_2
    invoke-virtual {p2}, Lcom/android/voicemail/impl/imap/ImapHelper;->close()V
    :try_end_2
    .catch Lcom/android/voicemail/impl/imap/ImapHelper$InitializingException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 135
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p3

    if-eqz p2, :cond_3

    .line 151
    :try_start_4
    invoke-virtual {p2}, Lcom/android/voicemail/impl/imap/ImapHelper;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p2

    :try_start_5
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw p3
    :try_end_5
    .catch Lcom/android/voicemail/impl/imap/ImapHelper$InitializingException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 152
    sget-object p2, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->TAG:Ljava/lang/String;

    const-string p3, "Can\'t retrieve Imap credentials."

    invoke-static {p2, p3, p1}, Lcom/android/voicemail/impl/VvmLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static isArchiveAllowedAndEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z
    .locals 3

    .line 191
    invoke-static {p0}, Lcom/android/voicemail/VoicemailComponent;->get(Landroid/content/Context;)Lcom/android/voicemail/VoicemailComponent;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Lcom/android/voicemail/VoicemailComponent;->getVoicemailClient()Lcom/android/voicemail/VoicemailClient;

    move-result-object v0

    .line 193
    invoke-interface {v0, p0}, Lcom/android/voicemail/VoicemailClient;->isVoicemailArchiveAvailable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "isArchiveAllowedAndEnabled"

    if-nez v0, :cond_0

    const-string/jumbo p0, "voicemail archive is not available"

    .line 194
    invoke-static {v2, p0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 197
    :cond_0
    invoke-static {p0, p1}, Lcom/android/voicemail/impl/settings/VisualVoicemailSettingsUtil;->isArchiveEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo p0, "voicemail archive is turned off"

    .line 198
    invoke-static {v2, p0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 201
    :cond_1
    invoke-static {p0, p1}, Lcom/android/voicemail/impl/settings/VisualVoicemailSettingsUtil;->isEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string/jumbo p0, "voicemail is turned off"

    .line 202
    invoke-static {v2, p0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private setupAndSendRequest(Lcom/android/voicemail/impl/scheduling/BaseTask;Landroid/telecom/PhoneAccountHandle;Lcom/android/voicemail/impl/Voicemail;Ljava/lang/String;Lcom/android/voicemail/impl/VoicemailStatus$Editor;)V
    .locals 9

    .line 99
    iget-object v0, p0, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/voicemail/impl/settings/VisualVoicemailSettingsUtil;->isEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    sget-object p1, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->TAG:Ljava/lang/String;

    const-string p2, "Sync requested for disabled account"

    invoke-static {p1, p2}, Lcom/android/voicemail/impl/VvmLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/voicemail/impl/sync/VvmAccountManager;->isAccountActivated(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    iget-object p1, p0, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->mContext:Landroid/content/Context;

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/android/voicemail/impl/ActivationTask;->start(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V

    return-void

    .line 108
    :cond_1
    new-instance v0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;

    iget-object v1, p0, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    .line 109
    iget-object v1, p0, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_SYNC_STARTED:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-static {v1, v2}, Lcom/android/voicemail/impl/utils/LoggerUtils;->logImpressionOnMainThread(Landroid/content/Context;Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 113
    iget-object v1, p0, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->mContext:Landroid/content/Context;

    .line 114
    invoke-static {v1, p2}, Lcom/android/voicemail/impl/VoicemailStatus;->edit(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    move-result-object v1

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->DATA_IMAP_OPERATION_STARTED:Lcom/android/voicemail/impl/OmtpEvents;

    .line 113
    invoke-virtual {v0, v1, v2}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->handleEvent(Lcom/android/voicemail/impl/VoicemailStatus$Editor;Lcom/android/voicemail/impl/OmtpEvents;)V

    .line 115
    :try_start_0
    invoke-static {v0, p2, p5}, Lcom/android/voicemail/impl/sync/VvmNetworkRequest;->getNetwork(Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;Landroid/telecom/PhoneAccountHandle;Lcom/android/voicemail/impl/VoicemailStatus$Editor;)Lcom/android/voicemail/impl/sync/VvmNetworkRequest$NetworkWrapper;

    move-result-object v1
    :try_end_0
    .catch Lcom/android/voicemail/impl/sync/VvmNetworkRequest$RequestFailedException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_3

    .line 117
    :try_start_1
    sget-object p2, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->TAG:Ljava/lang/String;

    const-string/jumbo p3, "unable to acquire network"

    invoke-static {p2, p3}, Lcom/android/voicemail/impl/VvmLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p1}, Lcom/android/voicemail/impl/scheduling/BaseTask;->fail()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 122
    :try_start_2
    invoke-virtual {v1}, Lcom/android/voicemail/impl/sync/VvmNetworkRequest$NetworkWrapper;->close()V
    :try_end_2
    .catch Lcom/android/voicemail/impl/sync/VvmNetworkRequest$RequestFailedException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    return-void

    .line 121
    :cond_3
    :try_start_3
    invoke-virtual {v1}, Lcom/android/voicemail/impl/sync/VvmNetworkRequest$NetworkWrapper;->get()Landroid/net/Network;

    move-result-object v4

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->doSync(Lcom/android/voicemail/impl/scheduling/BaseTask;Landroid/net/Network;Landroid/telecom/PhoneAccountHandle;Lcom/android/voicemail/impl/Voicemail;Ljava/lang/String;Lcom/android/voicemail/impl/VoicemailStatus$Editor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_5

    .line 122
    :try_start_4
    invoke-virtual {v1}, Lcom/android/voicemail/impl/sync/VvmNetworkRequest$NetworkWrapper;->close()V
    :try_end_4
    .catch Lcom/android/voicemail/impl/sync/VvmNetworkRequest$RequestFailedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 115
    :try_start_5
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p3

    if-eqz v1, :cond_4

    .line 122
    :try_start_6
    invoke-virtual {v1}, Lcom/android/voicemail/impl/sync/VvmNetworkRequest$NetworkWrapper;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p4

    :try_start_7
    invoke-virtual {p2, p4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw p3
    :try_end_7
    .catch Lcom/android/voicemail/impl/sync/VvmNetworkRequest$RequestFailedException; {:try_start_7 .. :try_end_7} :catch_0

    .line 123
    :catch_0
    sget-object p2, Lcom/android/voicemail/impl/OmtpEvents;->DATA_NO_CONNECTION_CELLULAR_REQUIRED:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {v0, p5, p2}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->handleEvent(Lcom/android/voicemail/impl/VoicemailStatus$Editor;Lcom/android/voicemail/impl/OmtpEvents;)V

    .line 124
    invoke-virtual {p1}, Lcom/android/voicemail/impl/scheduling/BaseTask;->fail()V

    :cond_5
    :goto_1
    return-void
.end method

.method private shouldPerformPrefetch(Landroid/telecom/PhoneAccountHandle;Lcom/android/voicemail/impl/imap/ImapHelper;)Z
    .locals 6

    .line 465
    new-instance v0, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;

    iget-object v1, p0, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    .line 468
    sget-object v1, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shouldPerformPrefetch="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->isPrefetchEnabled()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->mContext:Landroid/content/Context;

    .line 469
    invoke-static {v3, p1}, Lcom/android/voicemail/impl/settings/VisualVoicemailSettingsUtil;->isNativeVoicemailAutomaticallyDownloadEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p2}, Lcom/android/voicemail/impl/imap/ImapHelper;->isMobile()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    .line 468
    invoke-static {v1, v2, v3}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 470
    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/operatorutils/IOperatorManager;->isTmoActivate()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 471
    invoke-virtual {v0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->isPrefetchEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->mContext:Landroid/content/Context;

    .line 472
    invoke-static {v0, p1}, Lcom/android/voicemail/impl/settings/VisualVoicemailSettingsUtil;->isNativeVoicemailAutomaticallyDownloadEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p2}, Lcom/android/voicemail/impl/imap/ImapHelper;->isMobile()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move v4, v5

    :cond_3
    :goto_1
    return v4

    .line 474
    :cond_4
    invoke-virtual {v0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->isPrefetchEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Lcom/android/voicemail/impl/imap/ImapHelper;->isRoaming()Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    move v4, v5

    :goto_2
    return v4
.end method

.method private syncAll(Lcom/android/voicemail/impl/imap/ImapHelper;Landroid/telecom/PhoneAccountHandle;)Z
    .locals 11

    .line 231
    invoke-virtual {p1}, Lcom/android/voicemail/impl/imap/ImapHelper;->fetchAllVoicemails()Ljava/util/List;

    move-result-object v0

    .line 232
    iget-object v1, p0, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->mQueryHelper:Lcom/android/voicemail/impl/sync/VoicemailsQueryHelper;

    invoke-virtual {v1, p2}, Lcom/android/voicemail/impl/sync/VoicemailsQueryHelper;->getAllVoicemails(Landroid/telecom/PhoneAccountHandle;)Ljava/util/List;

    move-result-object v1

    .line 233
    iget-object v2, p0, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->mQueryHelper:Lcom/android/voicemail/impl/sync/VoicemailsQueryHelper;

    invoke-virtual {v2, p2}, Lcom/android/voicemail/impl/sync/VoicemailsQueryHelper;->getDeletedVoicemails(Landroid/telecom/PhoneAccountHandle;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v1, :cond_10

    if-nez v0, :cond_0

    goto/16 :goto_8

    .line 242
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 243
    invoke-virtual {p1, v2}, Lcom/android/voicemail/impl/imap/ImapHelper;->markMessagesAsDeleted(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 246
    iget-object v4, p0, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->mQueryHelper:Lcom/android/voicemail/impl/sync/VoicemailsQueryHelper;

    invoke-virtual {v4, v2}, Lcom/android/voicemail/impl/sync/VoicemailsQueryHelper;->deleteFromDatabase(Ljava/util/List;)I

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    .line 252
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->buildMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 254
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 255
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v6, v3

    .line 265
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_8

    .line 266
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/voicemail/impl/Voicemail;

    .line 267
    invoke-virtual {v7}, Lcom/android/voicemail/impl/Voicemail;->getSourceData()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/voicemail/impl/Voicemail;

    if-nez v8, :cond_3

    .line 272
    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/operatorutils/IOperatorManager;->isTmoActivate()Z

    move-result v8

    if-nez v8, :cond_7

    .line 273
    iget-object v8, p0, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->mQueryHelper:Lcom/android/voicemail/impl/sync/VoicemailsQueryHelper;

    invoke-virtual {v8, v7}, Lcom/android/voicemail/impl/sync/VoicemailsQueryHelper;->deleteNonArchivedFromDatabase(Lcom/android/voicemail/impl/Voicemail;)V

    goto :goto_4

    .line 277
    :cond_3
    invoke-virtual {v8}, Lcom/android/voicemail/impl/Voicemail;->isRead()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v7}, Lcom/android/voicemail/impl/Voicemail;->isRead()Z

    move-result v9

    if-nez v9, :cond_5

    .line 279
    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/operatorutils/IOperatorManager;->isTmoActivate()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 280
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 282
    :cond_4
    iget-object v9, p0, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->mQueryHelper:Lcom/android/voicemail/impl/sync/VoicemailsQueryHelper;

    invoke-virtual {v9, v7}, Lcom/android/voicemail/impl/sync/VoicemailsQueryHelper;->markReadInDatabase(Lcom/android/voicemail/impl/Voicemail;)V

    goto :goto_3

    .line 285
    :cond_5
    invoke-virtual {v7}, Lcom/android/voicemail/impl/Voicemail;->isRead()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v8}, Lcom/android/voicemail/impl/Voicemail;->isRead()Z

    move-result v9

    if-nez v9, :cond_6

    .line 286
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    :cond_6
    :goto_3
    invoke-virtual {v8}, Lcom/android/voicemail/impl/Voicemail;->getTranscription()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 290
    invoke-virtual {v7}, Lcom/android/voicemail/impl/Voicemail;->getTranscription()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 291
    iget-object v9, p0, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->mContext:Landroid/content/Context;

    sget-object v10, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_TRANSCRIPTION_DOWNLOADED:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-static {v9, v10}, Lcom/android/voicemail/impl/utils/LoggerUtils;->logImpressionOnMainThread(Landroid/content/Context;Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 293
    iget-object v9, p0, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->mQueryHelper:Lcom/android/voicemail/impl/sync/VoicemailsQueryHelper;

    invoke-virtual {v8}, Lcom/android/voicemail/impl/Voicemail;->getTranscription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v7, v8}, Lcom/android/voicemail/impl/sync/VoicemailsQueryHelper;->updateWithTranscription(Lcom/android/voicemail/impl/Voicemail;Ljava/lang/String;)V

    :cond_7
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 298
    :cond_8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    const-string v6, "Marking voicemails as clean"

    if-lez v1, :cond_a

    .line 299
    sget-object v1, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->TAG:Ljava/lang/String;

    const-string v7, "Marking voicemails as read"

    invoke-static {v1, v7}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-virtual {p1, v4}, Lcom/android/voicemail/impl/imap/ImapHelper;->markMessagesAsRead(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 301
    sget-object v1, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->TAG:Ljava/lang/String;

    invoke-static {v1, v6}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v1, p0, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->mQueryHelper:Lcom/android/voicemail/impl/sync/VoicemailsQueryHelper;

    invoke-virtual {v1, v4}, Lcom/android/voicemail/impl/sync/VoicemailsQueryHelper;->markCleanInDatabase(Ljava/util/List;)I

    goto :goto_5

    :cond_9
    return v3

    .line 309
    :cond_a
    :goto_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_c

    .line 310
    sget-object v1, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->TAG:Ljava/lang/String;

    const-string v4, "Marking voicemails as unread"

    invoke-static {v1, v4}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-virtual {p1, v5}, Lcom/android/voicemail/impl/imap/ImapHelper;->markMessagesAsUnread(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 312
    sget-object v1, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->TAG:Ljava/lang/String;

    invoke-static {v1, v6}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v1, p0, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->mQueryHelper:Lcom/android/voicemail/impl/sync/VoicemailsQueryHelper;

    invoke-virtual {v1, v5}, Lcom/android/voicemail/impl/sync/VoicemailsQueryHelper;->markCleanInDatabase(Ljava/util/List;)I

    goto :goto_6

    :cond_b
    return v3

    .line 321
    :cond_c
    :goto_6
    invoke-direct {p0, p2, p1}, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->shouldPerformPrefetch(Landroid/telecom/PhoneAccountHandle;Lcom/android/voicemail/impl/imap/ImapHelper;)Z

    move-result v1

    .line 322
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/voicemail/impl/Voicemail;

    .line 323
    invoke-virtual {v3}, Lcom/android/voicemail/impl/Voicemail;->getTranscription()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 324
    iget-object v4, p0, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_TRANSCRIPTION_DOWNLOADED:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-static {v4, v5}, Lcom/android/voicemail/impl/utils/LoggerUtils;->logImpressionOnMainThread(Landroid/content/Context;Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 328
    :cond_e
    sget-object v4, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/voicemail/impl/Voicemail;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v4, p0, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/android/voicemail/impl/utils/VoicemailDatabaseUtil;->isExsit(Landroid/content/Context;Lcom/android/voicemail/impl/Voicemail;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 330
    sget-object v4, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->TAG:Ljava/lang/String;

    const-string v5, "insert new voicemail"

    invoke-static {v4, v5}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v4, p0, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/android/voicemail/impl/utils/VoicemailDatabaseUtil;->insert(Landroid/content/Context;Lcom/android/voicemail/impl/Voicemail;)Landroid/net/Uri;

    move-result-object v4

    if-eqz v1, :cond_d

    .line 333
    new-instance v5, Lcom/android/voicemail/impl/fetch/VoicemailFetchedCallback;

    iget-object v6, p0, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v4, p2}, Lcom/android/voicemail/impl/fetch/VoicemailFetchedCallback;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/telecom/PhoneAccountHandle;)V

    .line 335
    invoke-virtual {v3}, Lcom/android/voicemail/impl/Voicemail;->getSourceData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v5, v3}, Lcom/android/voicemail/impl/imap/ImapHelper;->fetchVoicemailPayload(Lcom/android/voicemail/impl/fetch/VoicemailFetchedCallback;Ljava/lang/String;)Z

    goto :goto_7

    :cond_f
    return v2

    .line 238
    :cond_10
    :goto_8
    sget-object p1, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->TAG:Ljava/lang/String;

    const-string p2, "syncAll: query failed"

    invoke-static {p1, p2}, Lcom/android/voicemail/impl/VvmLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method private syncOne(Lcom/android/voicemail/impl/imap/ImapHelper;Lcom/android/voicemail/impl/Voicemail;Landroid/telecom/PhoneAccountHandle;)Z
    .locals 3

    .line 367
    invoke-direct {p0, p3, p1}, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->shouldPerformPrefetch(Landroid/telecom/PhoneAccountHandle;Lcom/android/voicemail/impl/imap/ImapHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    new-instance v0, Lcom/android/voicemail/impl/fetch/VoicemailFetchedCallback;

    iget-object v1, p0, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->mContext:Landroid/content/Context;

    .line 369
    invoke-virtual {p2}, Lcom/android/voicemail/impl/Voicemail;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2, p3}, Lcom/android/voicemail/impl/fetch/VoicemailFetchedCallback;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/telecom/PhoneAccountHandle;)V

    .line 370
    invoke-virtual {p2}, Lcom/android/voicemail/impl/Voicemail;->getSourceData()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v0, p3}, Lcom/android/voicemail/impl/imap/ImapHelper;->fetchVoicemailPayload(Lcom/android/voicemail/impl/fetch/VoicemailFetchedCallback;Ljava/lang/String;)Z

    .line 373
    :cond_0
    new-instance p3, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService$TranscriptionFetchedCallback;

    iget-object v0, p0, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->mContext:Landroid/content/Context;

    invoke-direct {p3, v0, p2}, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService$TranscriptionFetchedCallback;-><init>(Landroid/content/Context;Lcom/android/voicemail/impl/Voicemail;)V

    .line 374
    invoke-virtual {p2}, Lcom/android/voicemail/impl/Voicemail;->getSourceData()Ljava/lang/String;

    move-result-object p2

    .line 373
    invoke-virtual {p1, p3, p2}, Lcom/android/voicemail/impl/imap/ImapHelper;->fetchTranscription(Lcom/android/voicemail/impl/sync/OmtpVvmSyncService$TranscriptionFetchedCallback;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public sync(Lcom/android/voicemail/impl/scheduling/BaseTask;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Lcom/android/voicemail/impl/Voicemail;Lcom/android/voicemail/impl/VoicemailStatus$Editor;)V
    .locals 6

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 89
    :goto_0
    invoke-static {v0}, Lcom/android/voicemail/impl/Assert;->isTrue(Z)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p2

    move-object v5, p5

    .line 90
    invoke-direct/range {v0 .. v5}, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->setupAndSendRequest(Lcom/android/voicemail/impl/scheduling/BaseTask;Landroid/telecom/PhoneAccountHandle;Lcom/android/voicemail/impl/Voicemail;Ljava/lang/String;Lcom/android/voicemail/impl/VoicemailStatus$Editor;)V

    return-void
.end method
