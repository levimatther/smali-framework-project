.class Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver$fetchVoicemailNetworkRequestCallback;
.super Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;
.source "FetchVoicemailReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "fetchVoicemailNetworkRequestCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;


# direct methods
.method public constructor <init>(Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver$fetchVoicemailNetworkRequestCallback;->this$0:Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;

    .line 192
    invoke-static {p2, p3}, Lcom/android/voicemail/impl/VoicemailStatus;->edit(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    move-result-object p1

    invoke-direct {p0, p2, p3, p1}, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Lcom/android/voicemail/impl/VoicemailStatus$Editor;)V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2

    .line 197
    invoke-super {p0, p1}, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;->onAvailable(Landroid/net/Network;)V

    .line 198
    iget-object v0, p0, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver$fetchVoicemailNetworkRequestCallback;->this$0:Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;

    invoke-virtual {p0}, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver$fetchVoicemailNetworkRequestCallback;->getVoicemailStatusEditor()Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;->access$000(Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;Landroid/net/Network;Lcom/android/voicemail/impl/VoicemailStatus$Editor;)V

    return-void
.end method
