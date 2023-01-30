.class public Lcom/android/voicemail/impl/sync/SyncTask;
.super Lcom/android/voicemail/impl/scheduling/BaseTask;
.source "SyncTask.java"


# static fields
.field private static final EXTRA_PHONE_ACCOUNT_HANDLE:Ljava/lang/String; = "extra_phone_account_handle"

.field private static final EXTRA_SYNC_TYPE:Ljava/lang/String; = "extra_sync_type"

.field private static final MINIMAL_INTERVAL_MILLIS:I = 0x2bf20

.field private static final RETRY_INTERVAL_MILLIS:I = 0x1388

.field private static final RETRY_TIMES:I = 0x4


# instance fields
.field private mPhone:Landroid/telecom/PhoneAccountHandle;

.field private final mRetryPolicy:Lcom/android/voicemail/impl/scheduling/RetryPolicy;

.field private mSyncType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x2

    .line 55
    invoke-direct {p0, v0}, Lcom/android/voicemail/impl/scheduling/BaseTask;-><init>(I)V

    .line 56
    new-instance v0, Lcom/android/voicemail/impl/scheduling/RetryPolicy;

    const/4 v1, 0x4

    const/16 v2, 0x1388

    invoke-direct {v0, v1, v2}, Lcom/android/voicemail/impl/scheduling/RetryPolicy;-><init>(II)V

    iput-object v0, p0, Lcom/android/voicemail/impl/sync/SyncTask;->mRetryPolicy:Lcom/android/voicemail/impl/scheduling/RetryPolicy;

    .line 57
    invoke-virtual {p0, v0}, Lcom/android/voicemail/impl/sync/SyncTask;->addPolicy(Lcom/android/voicemail/impl/scheduling/Policy;)Lcom/android/voicemail/impl/scheduling/BaseTask;

    .line 58
    new-instance v0, Lcom/android/voicemail/impl/scheduling/MinimalIntervalPolicy;

    const v1, 0x2bf20

    invoke-direct {v0, v1}, Lcom/android/voicemail/impl/scheduling/MinimalIntervalPolicy;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/voicemail/impl/sync/SyncTask;->addPolicy(Lcom/android/voicemail/impl/scheduling/Policy;)Lcom/android/voicemail/impl/scheduling/BaseTask;

    return-void
.end method

.method public static start(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)V
    .locals 2

    .line 48
    const-class v0, Lcom/android/voicemail/impl/sync/SyncTask;

    invoke-static {p0, v0, p1}, Lcom/android/voicemail/impl/scheduling/BaseTask;->createIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/telecom/PhoneAccountHandle;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_phone_account_handle"

    .line 49
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "extra_sync_type"

    .line 50
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public createRestartIntent()Landroid/content/Intent;
    .locals 3

    .line 76
    invoke-virtual {p0}, Lcom/android/voicemail/impl/sync/SyncTask;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_AUTO_RETRY_SYNC:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-static {v0, v1}, Lcom/android/voicemail/impl/utils/LoggerUtils;->logImpressionOnMainThread(Landroid/content/Context;Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 77
    invoke-super {p0}, Lcom/android/voicemail/impl/scheduling/BaseTask;->createRestartIntent()Landroid/content/Intent;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/android/voicemail/impl/sync/SyncTask;->mPhone:Landroid/telecom/PhoneAccountHandle;

    const-string v2, "extra_phone_account_handle"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 79
    iget-object v1, p0, Lcom/android/voicemail/impl/sync/SyncTask;->mSyncType:Ljava/lang/String;

    const-string v2, "extra_sync_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public onCreate(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    .line 63
    invoke-super {p0, p1, p2}, Lcom/android/voicemail/impl/scheduling/BaseTask;->onCreate(Landroid/content/Context;Landroid/os/Bundle;)V

    const-string p1, "extra_phone_account_handle"

    .line 64
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/telecom/PhoneAccountHandle;

    iput-object p1, p0, Lcom/android/voicemail/impl/sync/SyncTask;->mPhone:Landroid/telecom/PhoneAccountHandle;

    const-string p1, "extra_sync_type"

    .line 65
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/voicemail/impl/sync/SyncTask;->mSyncType:Ljava/lang/String;

    return-void
.end method

.method public onExecuteInBackgroundThread()V
    .locals 6

    .line 70
    new-instance v0, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;

    invoke-virtual {p0}, Lcom/android/voicemail/impl/sync/SyncTask;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;-><init>(Landroid/content/Context;)V

    .line 71
    iget-object v2, p0, Lcom/android/voicemail/impl/sync/SyncTask;->mSyncType:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/voicemail/impl/sync/SyncTask;->mPhone:Landroid/telecom/PhoneAccountHandle;

    iget-object v1, p0, Lcom/android/voicemail/impl/sync/SyncTask;->mRetryPolicy:Lcom/android/voicemail/impl/scheduling/RetryPolicy;

    invoke-virtual {v1}, Lcom/android/voicemail/impl/scheduling/RetryPolicy;->getVoicemailStatusEditor()Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    move-result-object v5

    const/4 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->sync(Lcom/android/voicemail/impl/scheduling/BaseTask;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Lcom/android/voicemail/impl/Voicemail;Lcom/android/voicemail/impl/VoicemailStatus$Editor;)V

    return-void
.end method
