.class public Lcom/android/voicemail/impl/sync/SyncOneTask;
.super Lcom/android/voicemail/impl/scheduling/BaseTask;
.source "SyncOneTask.java"


# static fields
.field private static final EXTRA_PHONE_ACCOUNT_HANDLE:Ljava/lang/String; = "extra_phone_account_handle"

.field private static final EXTRA_SYNC_TYPE:Ljava/lang/String; = "extra_sync_type"

.field private static final EXTRA_VOICEMAIL:Ljava/lang/String; = "extra_voicemail"

.field private static final RETRY_INTERVAL_MILLIS:I = 0x1388

.field private static final RETRY_TIMES:I = 0x2


# instance fields
.field private mPhone:Landroid/telecom/PhoneAccountHandle;

.field private mSyncType:Ljava/lang/String;

.field private mVoicemail:Lcom/android/voicemail/impl/Voicemail;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, -0x2

    .line 58
    invoke-direct {p0, v0}, Lcom/android/voicemail/impl/scheduling/BaseTask;-><init>(I)V

    .line 59
    new-instance v0, Lcom/android/voicemail/impl/scheduling/RetryPolicy;

    const/4 v1, 0x2

    const/16 v2, 0x1388

    invoke-direct {v0, v1, v2}, Lcom/android/voicemail/impl/scheduling/RetryPolicy;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/voicemail/impl/sync/SyncOneTask;->addPolicy(Lcom/android/voicemail/impl/scheduling/Policy;)Lcom/android/voicemail/impl/scheduling/BaseTask;

    return-void
.end method

.method public static start(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Lcom/android/voicemail/impl/Voicemail;)V
    .locals 2

    .line 50
    const-class v0, Lcom/android/voicemail/impl/sync/SyncOneTask;

    invoke-static {p0, v0, p1}, Lcom/android/voicemail/impl/scheduling/BaseTask;->createIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/telecom/PhoneAccountHandle;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_phone_account_handle"

    .line 51
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "extra_sync_type"

    const-string v1, "download_one_transcription"

    .line 52
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "extra_voicemail"

    .line 53
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 54
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public createRestartIntent()Landroid/content/Intent;
    .locals 3

    .line 78
    invoke-virtual {p0}, Lcom/android/voicemail/impl/sync/SyncOneTask;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_AUTO_RETRY_SYNC:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-static {v0, v1}, Lcom/android/voicemail/impl/utils/LoggerUtils;->logImpressionOnMainThread(Landroid/content/Context;Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 79
    invoke-super {p0}, Lcom/android/voicemail/impl/scheduling/BaseTask;->createRestartIntent()Landroid/content/Intent;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/android/voicemail/impl/sync/SyncOneTask;->mPhone:Landroid/telecom/PhoneAccountHandle;

    const-string v2, "extra_phone_account_handle"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 81
    iget-object v1, p0, Lcom/android/voicemail/impl/sync/SyncOneTask;->mSyncType:Ljava/lang/String;

    const-string v2, "extra_sync_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    iget-object v1, p0, Lcom/android/voicemail/impl/sync/SyncOneTask;->mVoicemail:Lcom/android/voicemail/impl/Voicemail;

    const-string v2, "extra_voicemail"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method public onCreate(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    .line 64
    invoke-super {p0, p1, p2}, Lcom/android/voicemail/impl/scheduling/BaseTask;->onCreate(Landroid/content/Context;Landroid/os/Bundle;)V

    const-string p1, "extra_phone_account_handle"

    .line 65
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/telecom/PhoneAccountHandle;

    iput-object p1, p0, Lcom/android/voicemail/impl/sync/SyncOneTask;->mPhone:Landroid/telecom/PhoneAccountHandle;

    const-string p1, "extra_sync_type"

    .line 66
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/voicemail/impl/sync/SyncOneTask;->mSyncType:Ljava/lang/String;

    const-string p1, "extra_voicemail"

    .line 67
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/voicemail/impl/Voicemail;

    iput-object p1, p0, Lcom/android/voicemail/impl/sync/SyncOneTask;->mVoicemail:Lcom/android/voicemail/impl/Voicemail;

    return-void
.end method

.method public onExecuteInBackgroundThread()V
    .locals 6

    .line 72
    new-instance v0, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;

    invoke-virtual {p0}, Lcom/android/voicemail/impl/sync/SyncOneTask;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;-><init>(Landroid/content/Context;)V

    .line 73
    iget-object v2, p0, Lcom/android/voicemail/impl/sync/SyncOneTask;->mSyncType:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/voicemail/impl/sync/SyncOneTask;->mPhone:Landroid/telecom/PhoneAccountHandle;

    iget-object v4, p0, Lcom/android/voicemail/impl/sync/SyncOneTask;->mVoicemail:Lcom/android/voicemail/impl/Voicemail;

    invoke-virtual {p0}, Lcom/android/voicemail/impl/sync/SyncOneTask;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Lcom/android/voicemail/impl/sync/SyncOneTask;->mPhone:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v1, v5}, Lcom/android/voicemail/impl/VoicemailStatus;->edit(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    move-result-object v5

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->sync(Lcom/android/voicemail/impl/scheduling/BaseTask;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Lcom/android/voicemail/impl/Voicemail;Lcom/android/voicemail/impl/VoicemailStatus$Editor;)V

    return-void
.end method
