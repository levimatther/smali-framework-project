.class Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$2;
.super Landroid/os/AsyncTask;
.source "VoicemailPlaybackPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->requestContent(I)Z
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;)V
    .locals 0

    .line 464
    iput-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$2;->this$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 464
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    .line 468
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$2;->this$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    iget-object p1, p1, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mContext:Landroid/content/Context;

    .line 470
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$2;->this$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    iget-object v1, p1, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    const-string p1, "source_package"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 471
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 478
    :try_start_0
    invoke-static {p1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->access$200(Landroid/database/Cursor;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const-string v2, "VoicemailPlaybackPresenter.requestContent"

    const/4 v3, 0x0

    if-nez v0, :cond_0

    :try_start_1
    const-string v0, "mVoicemailUri does not return a SOURCE_PACKAGE"

    new-array v4, v3, [Ljava/lang/Object;

    .line 479
    invoke-static {v2, v0, v4}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    .line 484
    :cond_0
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 487
    :goto_0
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.FETCH_VOICEMAIL"

    iget-object v6, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$2;->this$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    iget-object v6, v6, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 488
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 489
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending ACTION_FETCH_VOICEMAIL to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 492
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$2;->this$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    iget-object v0, v0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 493
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v1

    :catchall_0
    move-exception v0

    .line 468
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p1, :cond_2

    .line 493
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1
.end method
