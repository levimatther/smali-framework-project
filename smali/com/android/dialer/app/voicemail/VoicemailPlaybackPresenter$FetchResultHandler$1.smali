.class Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler$1;
.super Landroid/os/AsyncTask;
.source "VoicemailPlaybackPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;)V
    .locals 0

    .line 1106
    iput-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler$1;->this$1:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    .line 1110
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler$1;->this$1:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    iget-object p1, p1, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->this$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler$1;->this$1:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    invoke-static {v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->access$700(Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->access$100(Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;Landroid/net/Uri;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1106
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    .line 1115
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler$1;->this$1:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    iget-object p1, p1, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->this$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    iget-object p1, p1, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler$1;->this$1:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    invoke-static {p1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->access$800(Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1116
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler$1;->this$1:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    iget-object p1, p1, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->this$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    iget-object p1, p1, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler$1;->this$1:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1117
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler$1;->this$1:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    iget-object p1, p1, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->this$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->access$900(Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;Z)V

    .line 1118
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler$1;->this$1:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    iget-object p1, p1, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->this$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {p1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->prepareContent()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1106
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
