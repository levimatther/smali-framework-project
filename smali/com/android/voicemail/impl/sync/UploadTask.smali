.class public Lcom/android/voicemail/impl/sync/UploadTask;
.super Lcom/android/voicemail/impl/scheduling/BaseTask;
.source "UploadTask.java"


# static fields
.field private static final POSTPONE_MILLIS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "VvmUploadTask"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    .line 41
    invoke-direct {p0, v0}, Lcom/android/voicemail/impl/scheduling/BaseTask;-><init>(I)V

    .line 42
    new-instance v0, Lcom/android/voicemail/impl/scheduling/PostponePolicy;

    const/16 v1, 0x1388

    invoke-direct {v0, v1}, Lcom/android/voicemail/impl/scheduling/PostponePolicy;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/voicemail/impl/sync/UploadTask;->addPolicy(Lcom/android/voicemail/impl/scheduling/Policy;)Lcom/android/voicemail/impl/scheduling/BaseTask;

    return-void
.end method

.method public static start(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V
    .locals 1

    .line 46
    const-class v0, Lcom/android/voicemail/impl/sync/UploadTask;

    invoke-static {p0, v0, p1}, Lcom/android/voicemail/impl/scheduling/BaseTask;->createIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/telecom/PhoneAccountHandle;)Landroid/content/Intent;

    move-result-object p1

    .line 47
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    .line 52
    invoke-super {p0, p1, p2}, Lcom/android/voicemail/impl/scheduling/BaseTask;->onCreate(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method public onExecuteInBackgroundThread()V
    .locals 6

    .line 57
    new-instance v0, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;

    invoke-virtual {p0}, Lcom/android/voicemail/impl/sync/UploadTask;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;-><init>(Landroid/content/Context;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/voicemail/impl/sync/UploadTask;->getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    if-nez v3, :cond_0

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "null phone account for phoneAccountHandle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/voicemail/impl/sync/UploadTask;->getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VvmUploadTask"

    invoke-static {v1, v0}, Lcom/android/voicemail/impl/VvmLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v4, 0x0

    .line 70
    invoke-virtual {p0}, Lcom/android/voicemail/impl/sync/UploadTask;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/android/voicemail/impl/VoicemailStatus;->edit(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    move-result-object v5

    const-string/jumbo v2, "upload_only"

    move-object v1, p0

    .line 65
    invoke-virtual/range {v0 .. v5}, Lcom/android/voicemail/impl/sync/OmtpVvmSyncService;->sync(Lcom/android/voicemail/impl/scheduling/BaseTask;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Lcom/android/voicemail/impl/Voicemail;Lcom/android/voicemail/impl/VoicemailStatus$Editor;)V

    return-void
.end method
