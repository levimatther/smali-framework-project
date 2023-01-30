.class Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;
.super Landroid/database/ContentObserver;
.source "VoicemailPlaybackPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchResultHandler"
.end annotation


# instance fields
.field private final mFetchResultHandler:Landroid/os/Handler;

.field private mIsWaitingForResult:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mVoicemailUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;


# direct methods
.method public constructor <init>(Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;Landroid/os/Handler;Landroid/net/Uri;I)V
    .locals 1

    .line 1072
    iput-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->this$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    .line 1073
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1070
    new-instance p4, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {p4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p4, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->mIsWaitingForResult:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1074
    iput-object p2, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->mFetchResultHandler:Landroid/os/Handler;

    .line 1075
    iput-object p3, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->mVoicemailUri:Landroid/net/Uri;

    .line 1076
    iget-object p2, p1, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_1

    .line 1077
    iget-object p2, p1, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/dialer/util/PermissionsUtil;->hasReadVoicemailPermissions(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1078
    iget-object p1, p1, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->mVoicemailUri:Landroid/net/Uri;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1080
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->mFetchResultHandler:Landroid/os/Handler;

    const-wide/16 p2, 0x4e20

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method static synthetic access$700(Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;)Landroid/net/Uri;
    .locals 0

    .line 1066
    iget-object p0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->mVoicemailUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1066
    iget-object p0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->mIsWaitingForResult:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 1096
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->mIsWaitingForResult:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->this$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    iget-object v0, v0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1097
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->this$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    iget-object v0, v0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1098
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->mFetchResultHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onChange(Z)V
    .locals 3

    .line 1104
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->this$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    iget-object p1, p1, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mAsyncTaskExecutor:Lcom/android/dialer/common/concurrent/AsyncTaskExecutor;

    sget-object v0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$Tasks;->CHECK_CONTENT_AFTER_CHANGE:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$Tasks;

    new-instance v1, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler$1;

    invoke-direct {v1, p0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler$1;-><init>(Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-interface {p1, v0, v1, v2}, Lcom/android/dialer/common/concurrent/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public run()V
    .locals 2

    .line 1087
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->mIsWaitingForResult:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->this$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    iget-object v0, v0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1088
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->this$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    iget-object v0, v0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1089
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->this$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    invoke-static {v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->access$600(Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;)Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1090
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->this$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    invoke-static {v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->access$600(Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;)Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setFetchContentTimeout()V

    :cond_0
    return-void
.end method
