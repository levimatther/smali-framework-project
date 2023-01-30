.class Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$1;
.super Landroid/os/AsyncTask;
.source "VoicemailPlaybackPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->checkForContent(Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$OnContentCheckedListener;)V
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
.field final synthetic this$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

.field final synthetic val$callback:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$OnContentCheckedListener;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$OnContentCheckedListener;)V
    .locals 0

    .line 397
    iput-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$1;->this$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    iput-object p2, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$1;->val$callback:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$OnContentCheckedListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    .line 400
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$1;->this$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    iget-object v0, p1, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    invoke-static {p1, v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->access$100(Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;Landroid/net/Uri;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 397
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$1;->val$callback:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$OnContentCheckedListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$OnContentCheckedListener;->onContentChecked(Z)V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 397
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
