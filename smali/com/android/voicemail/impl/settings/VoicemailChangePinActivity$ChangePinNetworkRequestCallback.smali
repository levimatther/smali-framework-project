.class Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$ChangePinNetworkRequestCallback;
.super Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;
.source "VoicemailChangePinActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangePinNetworkRequestCallback"
.end annotation


# instance fields
.field private final mNewPin:Ljava/lang/String;

.field private final mOldPin:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;


# direct methods
.method public constructor <init>(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 584
    iput-object p1, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$ChangePinNetworkRequestCallback;->this$0:Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;

    .line 586
    invoke-static {p1}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->access$2300(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;

    move-result-object v0

    invoke-static {p1}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->access$1500(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    invoke-static {p1}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->access$2400(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    move-result-object p1

    .line 585
    invoke-direct {p0, v0, v1, p1}, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;-><init>(Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;Landroid/telecom/PhoneAccountHandle;Lcom/android/voicemail/impl/VoicemailStatus$Editor;)V

    .line 587
    iput-object p2, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$ChangePinNetworkRequestCallback;->mOldPin:Ljava/lang/String;

    .line 588
    iput-object p3, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$ChangePinNetworkRequestCallback;->mNewPin:Ljava/lang/String;

    return-void
.end method

.method private sendResult(I)V
    .locals 3

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Change PIN result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VmChangePinActivity"

    invoke-static {v1, v0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$ChangePinNetworkRequestCallback;->this$0:Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;

    invoke-static {v0}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->access$2500(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$ChangePinNetworkRequestCallback;->this$0:Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;

    .line 618
    invoke-virtual {v0}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$ChangePinNetworkRequestCallback;->this$0:Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;

    .line 619
    invoke-virtual {v0}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$ChangePinNetworkRequestCallback;->this$0:Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;

    invoke-static {v0}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->access$2500(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    :cond_0
    const-string v0, "Dialog not visible, not dismissing"

    .line 622
    invoke-static {v1, v0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    :goto_0
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$ChangePinNetworkRequestCallback;->this$0:Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;

    invoke-static {v0}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->access$2600(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 625
    invoke-virtual {p0}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$ChangePinNetworkRequestCallback;->releaseNetwork()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 4

    .line 593
    invoke-super {p0, p1}, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;->onAvailable(Landroid/net/Network;)V

    .line 594
    :try_start_0
    new-instance v0, Lcom/android/voicemail/impl/imap/ImapHelper;

    iget-object v1, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$ChangePinNetworkRequestCallback;->this$0:Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;

    iget-object v2, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$ChangePinNetworkRequestCallback;->this$0:Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;

    .line 597
    invoke-static {v2}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->access$1500(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    .line 599
    invoke-virtual {p0}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$ChangePinNetworkRequestCallback;->getVoicemailStatusEditor()Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    move-result-object v3

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/android/voicemail/impl/imap/ImapHelper;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Landroid/net/Network;Lcom/android/voicemail/impl/VoicemailStatus$Editor;)V
    :try_end_0
    .catch Lcom/android/voicemail/impl/imap/ImapHelper$InitializingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/voicemail/impl/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    :try_start_1
    iget-object p1, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$ChangePinNetworkRequestCallback;->mOldPin:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$ChangePinNetworkRequestCallback;->mNewPin:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/android/voicemail/impl/imap/ImapHelper;->changePin(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 602
    invoke-direct {p0, p1}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$ChangePinNetworkRequestCallback;->sendResult(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 603
    :try_start_2
    invoke-virtual {v0}, Lcom/android/voicemail/impl/imap/ImapHelper;->close()V
    :try_end_2
    .catch Lcom/android/voicemail/impl/imap/ImapHelper$InitializingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/voicemail/impl/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 594
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    .line 603
    :try_start_4
    invoke-virtual {v0}, Lcom/android/voicemail/impl/imap/ImapHelper;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_5
    .catch Lcom/android/voicemail/impl/imap/ImapHelper$InitializingException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/android/voicemail/impl/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    const-string v0, "VmChangePinActivity"

    const-string v1, "ChangePinNetworkRequestCallback: onAvailable: "

    .line 604
    invoke-static {v0, v1, p1}, Lcom/android/voicemail/impl/VvmLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x6

    .line 605
    invoke-direct {p0, p1}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$ChangePinNetworkRequestCallback;->sendResult(I)V

    :goto_2
    return-void
.end method

.method public onFailed(Ljava/lang/String;)V
    .locals 0

    .line 611
    invoke-super {p0, p1}, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;->onFailed(Ljava/lang/String;)V

    const/4 p1, 0x6

    .line 612
    invoke-direct {p0, p1}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$ChangePinNetworkRequestCallback;->sendResult(I)V

    return-void
.end method
