.class Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver$1;
.super Ljava/lang/Object;
.source "FetchVoicemailReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;->fetchVoicemail(Landroid/net/Network;Lcom/android/voicemail/impl/VoicemailStatus$Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;

.field final synthetic val$network:Landroid/net/Network;

.field final synthetic val$status:Lcom/android/voicemail/impl/VoicemailStatus$Editor;


# direct methods
.method constructor <init>(Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;Landroid/net/Network;Lcom/android/voicemail/impl/VoicemailStatus$Editor;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver$1;->this$0:Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;

    iput-object p2, p0, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver$1;->val$network:Landroid/net/Network;

    iput-object p3, p0, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver$1;->val$status:Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "FetchVoicemailReceiver"

    .line 209
    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver$1;->this$0:Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;

    invoke-static {v1}, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;->access$100(Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;)I

    move-result v1

    if-lez v1, :cond_6

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetching voicemail, retry count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver$1;->this$0:Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;

    invoke-static {v2}, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;->access$100(Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 212
    :try_start_1
    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver$1;->this$0:Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;

    invoke-static {v2}, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;->access$200(Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver$1;->this$0:Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;

    invoke-static {v3}, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;->access$300(Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    iget-object v4, p0, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver$1;->val$network:Landroid/net/Network;

    iget-object v5, p0, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver$1;->val$status:Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/operatorutils/IOperatorManager;->getImapHelper(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Landroid/net/Network;Lcom/android/voicemail/impl/VoicemailStatus$Editor;)Lcom/android/voicemail/impl/imap/ImapHelper;

    move-result-object v1
    :try_end_1
    .catch Lcom/android/voicemail/impl/imap/ImapHelper$InitializingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 213
    :try_start_2
    new-instance v2, Lcom/android/voicemail/impl/fetch/VoicemailFetchedCallback;

    iget-object v3, p0, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver$1;->this$0:Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;

    .line 215
    invoke-static {v3}, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;->access$200(Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver$1;->this$0:Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;

    invoke-static {v4}, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;->access$400(Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver$1;->this$0:Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;

    invoke-static {v5}, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;->access$300(Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/voicemail/impl/fetch/VoicemailFetchedCallback;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/telecom/PhoneAccountHandle;)V

    iget-object v3, p0, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver$1;->this$0:Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;

    invoke-static {v3}, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;->access$500(Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;)Ljava/lang/String;

    move-result-object v3

    .line 214
    invoke-virtual {v1, v2, v3}, Lcom/android/voicemail/impl/imap/ImapHelper;->fetchVoicemailPayload(Lcom/android/voicemail/impl/fetch/VoicemailFetchedCallback;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 216
    iget-object v2, p0, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver$1;->this$0:Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;

    invoke-static {v2}, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;->access$100(Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;)I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, "fetch voicemail failed, retrying"

    .line 217
    invoke-static {v0, v2}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v2, p0, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver$1;->this$0:Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;

    invoke-static {v2}, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;->access$110(Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    .line 222
    :try_start_3
    invoke-virtual {v1}, Lcom/android/voicemail/impl/imap/ImapHelper;->close()V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/voicemail/impl/imap/ImapHelper;->close()V
    :try_end_3
    .catch Lcom/android/voicemail/impl/imap/ImapHelper$InitializingException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver$1;->this$0:Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;

    invoke-static {v0}, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;->access$600(Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;)Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 229
    iget-object v0, p0, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver$1;->this$0:Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;

    invoke-static {v0}, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;->access$600(Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;)Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;->releaseNetwork()V

    :cond_3
    return-void

    :catchall_0
    move-exception v2

    .line 211
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v3

    if-eqz v1, :cond_4

    .line 222
    :try_start_5
    invoke-virtual {v1}, Lcom/android/voicemail/impl/imap/ImapHelper;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v1

    :try_start_6
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v3
    :try_end_6
    .catch Lcom/android/voicemail/impl/imap/ImapHelper$InitializingException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catch_0
    move-exception v1

    :try_start_7
    const-string v2, "Can\'t retrieve Imap credentials "

    .line 223
    invoke-static {v0, v2, v1}, Lcom/android/voicemail/impl/VvmLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 228
    iget-object v0, p0, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver$1;->this$0:Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;

    invoke-static {v0}, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;->access$600(Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;)Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 229
    iget-object v0, p0, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver$1;->this$0:Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;

    invoke-static {v0}, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;->access$600(Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;)Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;->releaseNetwork()V

    :cond_5
    return-void

    .line 228
    :cond_6
    iget-object v0, p0, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver$1;->this$0:Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;

    invoke-static {v0}, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;->access$600(Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;)Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 229
    iget-object v0, p0, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver$1;->this$0:Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;

    invoke-static {v0}, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;->access$600(Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;)Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;->releaseNetwork()V

    :cond_7
    return-void

    :catchall_3
    move-exception v0

    .line 228
    iget-object v1, p0, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver$1;->this$0:Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;

    invoke-static {v1}, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;->access$600(Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;)Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 229
    iget-object v1, p0, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver$1;->this$0:Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;

    invoke-static {v1}, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;->access$600(Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;)Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;->releaseNetwork()V

    .line 231
    :cond_8
    throw v0
.end method
