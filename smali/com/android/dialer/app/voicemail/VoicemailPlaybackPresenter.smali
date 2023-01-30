.class public Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;
.super Ljava/lang/Object;
.source "VoicemailPlaybackPresenter.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;,
        Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$OnContentCheckedListener;,
        Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$OnVoicemailDeletedListener;,
        Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$PlaybackView;,
        Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$Tasks;,
        Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$ShareVoicemailWorker;
    }
.end annotation


# static fields
.field private static final CLIP_POSITION_KEY:Ljava/lang/String;

.field private static final CONFIG_SHARE_VOICEMAIL_ALLOWED:Ljava/lang/String; = "share_voicemail_allowed"

.field private static final FETCH_CONTENT_TIMEOUT_MS:J = 0x4e20L

.field private static final IS_PLAYING_STATE_KEY:Ljava/lang/String;

.field private static final IS_PREPARED_KEY:Ljava/lang/String;

.field private static final IS_SPEAKERPHONE_ON_KEY:Ljava/lang/String;

.field private static final NUMBER_OF_THREADS_IN_POOL:I = 0x2

.field public static final PLAYBACK_REQUEST:I = 0x0

.field private static final VOICEMAIL_SHARE_FILE_NAME_DATE_FORMAT:Ljava/lang/String; = "MM-dd-yy_hhmmaa"

.field private static final VOICEMAIL_URI_KEY:Ljava/lang/String;

.field private static mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private static sInstance:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field protected mAsyncTaskExecutor:Lcom/android/dialer/common/concurrent/AsyncTaskExecutor;

.field protected mContext:Landroid/content/Context;

.field private final mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mFetchResultHandler:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

.field private mIsPlaying:Z

.field private mIsPrepared:Z

.field private mIsSpeakerphoneOn:Z

.field protected mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOnVoicemailDeletedListener:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$OnVoicemailDeletedListener;

.field private mPosition:I

.field private mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mRowId:J

.field private mShouldResumePlaybackAfterSeeking:Z

.field private mView:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$PlaybackView;

.field private mVoicemailAudioManager:Lcom/android/dialer/app/voicemail/VoicemailAudioManager;

.field protected mVoicemailUri:Landroid/net/Uri;

.field private shareVoicemailButtonView:Landroid/view/View;

.field private shareVoicemailExecutor:Lcom/android/dialer/common/concurrent/DialerExecutor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/dialer/common/concurrent/DialerExecutor<",
            "Landroid/util/Pair<",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 102
    const-class v0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".VOICEMAIL_URI"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->VOICEMAIL_URI_KEY:Ljava/lang/String;

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".IS_PREPARED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->IS_PREPARED_KEY:Ljava/lang/String;

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".IS_PLAYING_STATE_KEY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->IS_PLAYING_STATE_KEY:Ljava/lang/String;

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".CLIP_POSITION_KEY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->CLIP_POSITION_KEY:Ljava/lang/String;

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".IS_SPEAKER_PHONE_ON"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->IS_SPEAKERPHONE_ON_KEY:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const-class v0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->TAG:Ljava/lang/String;

    .line 124
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 158
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 159
    invoke-static {}, Lcom/android/dialer/common/concurrent/AsyncTaskExecutors;->createAsyncTaskExecutor()Lcom/android/dialer/common/concurrent/AsyncTaskExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mAsyncTaskExecutor:Lcom/android/dialer/common/concurrent/AsyncTaskExecutor;

    .line 160
    new-instance v0, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;

    invoke-direct {v0, p1, p0}, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;-><init>(Landroid/content/Context;Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;)V

    iput-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mVoicemailAudioManager:Lcom/android/dialer/app/voicemail/VoicemailAudioManager;

    const-string v0, "power"

    .line 161
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/16 v0, 0x20

    .line 162
    invoke-virtual {p1, v0}, Landroid/os/PowerManager;->isWakeLockLevelSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "VoicemailPlaybackPresenter"

    .line 164
    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;Landroid/net/Uri;)Z
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->queryHasContent(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Landroid/database/Cursor;)Z
    .locals 0

    .line 93
    invoke-static {p0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->hasContent(Landroid/database/Cursor;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 0

    .line 93
    invoke-static {p0, p1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->getCallLogInfoCursor(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 0

    .line 93
    invoke-static {p0, p1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->getContentInfoCursor(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 0

    .line 93
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->getFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;)Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;Z)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->showShareVoicemailButton(Z)V

    return-void
.end method

.method private disableProximitySensor(Z)V
    .locals 3

    .line 773
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    return-void

    .line 776
    :cond_0
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "VoicemailPlaybackPresenter.disableProximitySensor"

    if-eqz v0, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "releasing proximity wake lock"

    .line 777
    invoke-static {v2, v1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 780
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager$WakeLock;->release(I)V

    goto :goto_0

    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "proximity wake lock already released"

    .line 782
    invoke-static {v2, v0, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private enableProximitySensor()V
    .locals 3

    .line 753
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mIsSpeakerphoneOn:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mIsPrepared:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 757
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 761
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "VoicemailPlaybackPresenter.enableProximitySensor"

    if-nez v0, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "acquiring proximity wake lock"

    .line 762
    invoke-static {v2, v1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 764
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "proximity wake lock already acquired"

    .line 766
    invoke-static {v2, v1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static getCallLogInfoCursor(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 9

    .line 988
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    .line 990
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 989
    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 991
    invoke-static {}, Lcom/android/dialer/phonenumbercache/CallLogQuery;->getProjection()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    .line 988
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method private static getContentInfoCursor(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 11

    const-string v0, "_id"

    const-string v1, "number"

    const-string v2, "date"

    const-string v3, "mime_type"

    const-string/jumbo v4, "transcription"

    .line 999
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method private static getFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 2

    .line 951
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p0, p1

    .line 952
    :cond_0
    new-instance p1, Ljava/text/SimpleDateFormat;

    .line 953
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "MM-dd-yy_hhmmaa"

    invoke-direct {p1, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 955
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, p3, p4}, Ljava/util/Date;-><init>(J)V

    .line 959
    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, ""

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;
    .locals 1

    .line 181
    sget-object v0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->sInstance:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    invoke-direct {v0, p0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->sInstance:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    .line 185
    :cond_0
    sget-object v0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->sInstance:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v0, p0, p1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->init(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 186
    sget-object p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->sInstance:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    return-object p0
.end method

.method private static declared-synchronized getScheduledExecutorServiceInstance()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    const-class v0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    monitor-enter v0

    .line 190
    :try_start_0
    sget-object v1, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_0

    const/4 v1, 0x2

    .line 191
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    sput-object v1, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 193
    :cond_0
    sget-object v1, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getShareIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 5

    .line 965
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 966
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "android.intent.extra.STREAM"

    const-string v4, "android.intent.action.SEND"

    if-eqz v1, :cond_0

    .line 967
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 968
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 969
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 970
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 972
    :cond_0
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 973
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p0, "android.intent.extra.TEXT"

    .line 974
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 975
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p0, "*/*"

    .line 976
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    return-object v0
.end method

.method private static hasContent(Landroid/database/Cursor;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 983
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isShareVoicemailAllowed(Landroid/content/Context;)Z
    .locals 2

    .line 877
    invoke-static {p0}, Lcom/android/dialer/configprovider/ConfigProviderBindings;->get(Landroid/content/Context;)Lcom/android/dialer/configprovider/ConfigProvider;

    move-result-object p0

    const-string v0, "share_voicemail_allowed"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/android/dialer/configprovider/ConfigProvider;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private pausePlayback(Z)V
    .locals 4

    .line 697
    iget-boolean v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mIsPrepared:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 701
    iput-boolean v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mIsPlaying:Z

    .line 703
    iget-object v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 704
    iget-object v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 707
    :cond_1
    iget-object v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mPosition:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 709
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v0, "VoicemailPlaybackPresenter.pausePlayback"

    const-string v1, "paused playback at %d."

    invoke-static {v0, v1, v3}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 711
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    if-eqz v0, :cond_3

    .line 712
    invoke-interface {v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$PlaybackView;->onPlaybackStopped()V

    :cond_3
    if-nez p1, :cond_4

    .line 716
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mVoicemailAudioManager:Lcom/android/dialer/app/voicemail/VoicemailAudioManager;

    invoke-virtual {p1}, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;->abandonAudioFocus()V

    .line 718
    :cond_4
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_5

    .line 719
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 721
    :cond_5
    invoke-direct {p0, v2}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->disableProximitySensor(Z)V

    return-void
.end method

.method private queryHasContent(Landroid/net/Uri;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 411
    iget-object v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    goto :goto_1

    .line 415
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    .line 416
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 418
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "duration"

    .line 419
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 421
    iget-object v2, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    if-lez v1, :cond_1

    mul-int/lit16 v1, v1, 0x3e8

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string v1, "has_content"

    .line 422
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    move v0, v2

    .line 425
    :cond_2
    invoke-static {p1}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    return v0

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    .line 426
    throw v0

    .line 425
    :cond_3
    invoke-static {p1}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    :cond_4
    :goto_1
    return v0
.end method

.method private showShareVoicemailButton(Z)V
    .locals 4

    .line 864
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 867
    :cond_0
    invoke-static {v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->isShareVoicemailAllowed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->shareVoicemailButtonView:Landroid/view/View;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_1

    .line 869
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_SHARE_VISIBLE:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {v0, v1}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 871
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "VoicemailPlaybackPresenter.showShareVoicemailButton"

    const-string v3, "show: %b"

    invoke-static {v1, v3, v0}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 872
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->shareVoicemailButtonView:Landroid/view/View;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method protected checkForContent(Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$OnContentCheckedListener;)V
    .locals 3

    .line 395
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mAsyncTaskExecutor:Lcom/android/dialer/common/concurrent/AsyncTaskExecutor;

    sget-object v1, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$Tasks;->CHECK_FOR_CONTENT:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$Tasks;

    new-instance v2, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$1;

    invoke-direct {v2, p0, p1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$1;-><init>(Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$OnContentCheckedListener;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, p1}, Lcom/android/dialer/common/concurrent/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public clearInstance()V
    .locals 1

    const/4 v0, 0x0

    .line 860
    sput-object v0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->sInstance:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    return-void
.end method

.method public getMediaPlayerPosition()I
    .locals 1

    .line 799
    iget-boolean v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mIsPrepared:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected handleError(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "VoicemailPlaybackPresenter.handlerError"

    const-string v1, "could not play voicemail"

    .line 582
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 584
    iget-boolean p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mIsPrepared:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 585
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    const/4 p1, 0x0

    .line 586
    iput-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 587
    iput-boolean v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mIsPrepared:Z

    .line 590
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    if-eqz p1, :cond_1

    .line 591
    invoke-interface {p1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$PlaybackView;->onPlaybackError()V

    .line 594
    :cond_1
    iput v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mPosition:I

    .line 595
    iput-boolean v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mIsPlaying:Z

    .line 596
    invoke-direct {p0, v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->showShareVoicemailButton(Z)V

    return-void
.end method

.method protected init(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    .line 199
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    .line 200
    iput-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mActivity:Landroid/app/Activity;

    .line 201
    iput-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mContext:Landroid/content/Context;

    .line 203
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init:savedInstanceState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 206
    sget-object v0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->VOICEMAIL_URI_KEY:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    .line 207
    sget-object v0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->IS_PREPARED_KEY:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mIsPrepared:Z

    .line 208
    sget-object v0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->CLIP_POSITION_KEY:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mPosition:I

    .line 209
    sget-object v0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->IS_PLAYING_STATE_KEY:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mIsPlaying:Z

    .line 210
    sget-object v0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->IS_SPEAKERPHONE_ON_KEY:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mIsSpeakerphoneOn:Z

    .line 212
    :cond_0
    iget-object p2, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init:mVoicemailUri:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object p2, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez p2, :cond_1

    .line 214
    iput-boolean p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mIsPrepared:Z

    .line 215
    iput-boolean p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mIsPlaying:Z

    .line 218
    :cond_1
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_3

    .line 219
    invoke-virtual {p0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->isPlaying()Z

    move-result p1

    const/16 p2, 0x80

    if-eqz p1, :cond_2

    .line 220
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 222
    :cond_2
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/Window;->clearFlags(I)V

    .line 224
    :goto_0
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mActivity:Landroid/app/Activity;

    .line 226
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    new-instance p2, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$ShareVoicemailWorker;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$ShareVoicemailWorker;-><init>(Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$1;)V

    const-string v0, "test"

    .line 225
    invoke-static {p1, v0, p2}, Lcom/android/dialer/common/concurrent/DialerExecutors;->createUiTaskBuilder(Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/dialer/common/concurrent/DialerExecutor$Worker;)Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;

    move-result-object p1

    new-instance p2, Lcom/android/dialer/app/voicemail/-$$Lambda$VoicemailPlaybackPresenter$0nx0zHPi9kWtA_fW1m5L5sQ3VTo;

    invoke-direct {p2, p0}, Lcom/android/dialer/app/voicemail/-$$Lambda$VoicemailPlaybackPresenter$0nx0zHPi9kWtA_fW1m5L5sQ3VTo;-><init>(Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;)V

    .line 227
    invoke-interface {p1, p2}, Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;->onSuccess(Lcom/android/dialer/common/concurrent/DialerExecutor$SuccessListener;)Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;

    move-result-object p1

    .line 240
    invoke-interface {p1}, Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;->build()Lcom/android/dialer/common/concurrent/DialerExecutor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->shareVoicemailExecutor:Lcom/android/dialer/common/concurrent/DialerExecutor;

    :cond_3
    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .line 824
    iget-boolean v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mIsPlaying:Z

    return v0
.end method

.method public isSpeakerphoneOn()Z
    .locals 1

    .line 829
    iget-boolean v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mIsSpeakerphoneOn:Z

    return v0
.end method

.method public synthetic lambda$init$0$VoicemailPlaybackPresenter(Landroid/util/Pair;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "VoicemailAsyncTaskUtil.shareVoicemail"

    const-string v1, "failed to get voicemail"

    .line 230
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mContext:Landroid/content/Context;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 235
    invoke-static {v0, v1, p1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->getShareIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mContext:Landroid/content/Context;

    .line 237
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1100c6

    .line 238
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 234
    invoke-static {p1, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    .line 233
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$resumePlayback$2$VoicemailPlaybackPresenter(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 654
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->requestContent(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mIsPlaying:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 656
    invoke-direct {p0, p1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->showShareVoicemailButton(Z)V

    .line 658
    iput-boolean p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mIsPlaying:Z

    .line 659
    invoke-virtual {p0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->prepareContent()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$setPlaybackView$1$VoicemailPlaybackPresenter(ZZ)V
    .locals 1

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 293
    invoke-direct {p0, p1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->showShareVoicemailButton(Z)V

    .line 294
    invoke-virtual {p0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->prepareContent()V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 297
    invoke-virtual {p0, p2}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->requestContent(I)Z

    .line 299
    :cond_1
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    if-eqz p1, :cond_2

    .line 300
    invoke-interface {p1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$PlaybackView;->resetSeekBar()V

    .line 301
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-interface {p1, p2, v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setClipPosition(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onAudioFocusChange(Z)V
    .locals 1

    .line 622
    iget-boolean v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mIsPlaying:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 628
    invoke-virtual {p0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->resumePlayback()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 630
    invoke-direct {p0, p1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->pausePlayback(Z)V

    :goto_0
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 602
    invoke-virtual {p0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->pausePlayback()V

    const/4 v0, 0x0

    .line 605
    iput v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mPosition:I

    .line 606
    iget-object v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    if-eqz v1, :cond_0

    .line 607
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 608
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    iget-object v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setClipPosition(II)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x0

    .line 379
    iput-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mActivity:Landroid/app/Activity;

    .line 380
    iput-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mContext:Landroid/content/Context;

    .line 382
    sget-object v1, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_0

    .line 383
    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 384
    sput-object v0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 387
    :cond_0
    iget-object v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    if-eqz v1, :cond_1

    .line 388
    invoke-virtual {v1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->destroy()V

    .line 389
    iput-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    :cond_1
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 577
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MediaPlayer error listener invoked: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->handleError(Ljava/lang/Exception;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onPause()V
    .locals 3

    .line 364
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mVoicemailAudioManager:Lcom/android/dialer/app/voicemail/VoicemailAudioManager;

    invoke-virtual {v0}, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;->unregisterReceivers()V

    .line 366
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mIsPrepared:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "VoicemailPlaybackPresenter.onPause"

    const-string v2, "configuration changed."

    .line 368
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 373
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->pausePresenter(Z)V

    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4

    .line 548
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "VoicemailPlaybackPresenter.onPrepared"

    .line 551
    invoke-static {v3, v0, v2}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 552
    iput-boolean v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mIsPrepared:Z

    .line 554
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPosition="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mPosition:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 557
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    iget v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mPosition:I

    iget-object v2, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setClipPosition(II)V

    .line 558
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$PlaybackView;->enableUiElements()V

    .line 559
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setSuccess()V

    .line 560
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_1

    .line 561
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mPosition:I

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 564
    :cond_1
    iget-boolean p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mIsPlaying:Z

    if-eqz p1, :cond_2

    .line 565
    invoke-virtual {p0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->resumePlayback()V

    goto :goto_0

    .line 567
    :cond_2
    invoke-virtual {p0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->pausePlayback()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mVoicemailAudioManager:Lcom/android/dialer/app/voicemail/VoicemailAudioManager;

    invoke-virtual {v0}, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;->registerReceivers()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    if-eqz v0, :cond_0

    .line 247
    sget-object v0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->VOICEMAIL_URI_KEY:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 248
    sget-object v0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->IS_PREPARED_KEY:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mIsPrepared:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 249
    sget-object v0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->CLIP_POSITION_KEY:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$PlaybackView;->getDesiredClipPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 250
    sget-object v0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->IS_PLAYING_STATE_KEY:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mIsPlaying:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 251
    sget-object v0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->IS_SPEAKERPHONE_ON_KEY:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mIsSpeakerphoneOn:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method onVoicemailDeleteUndo(I)V
    .locals 4

    .line 811
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mOnVoicemailDeletedListener:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$OnVoicemailDeletedListener;

    if-eqz v0, :cond_0

    .line 812
    iget-wide v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mRowId:J

    iget-object v3, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$OnVoicemailDeletedListener;->onVoicemailDeleteUndo(JILandroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public onVoicemailDeleted(Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;)V
    .locals 2

    .line 804
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mOnVoicemailDeletedListener:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$OnVoicemailDeletedListener;

    if-eqz v0, :cond_0

    .line 805
    iget-object v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    invoke-interface {v0, p1, v1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$OnVoicemailDeletedListener;->onVoicemailDeleted(Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method onVoicemailDeletedInDatabase()V
    .locals 4

    .line 817
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mOnVoicemailDeletedListener:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$OnVoicemailDeletedListener;

    if-eqz v0, :cond_0

    .line 818
    iget-wide v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mRowId:J

    iget-object v3, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$OnVoicemailDeletedListener;->onVoicemailDeletedInDatabase(JLandroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public pausePlayback()V
    .locals 1

    const/4 v0, 0x0

    .line 693
    invoke-direct {p0, v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->pausePlayback(Z)V

    return-void
.end method

.method public pausePlaybackForSeeking()V
    .locals 1

    .line 729
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 730
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mShouldResumePlaybackAfterSeeking:Z

    :cond_0
    const/4 v0, 0x1

    .line 732
    invoke-direct {p0, v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->pausePlayback(Z)V

    return-void
.end method

.method public pausePresenter(Z)V
    .locals 2

    .line 331
    invoke-virtual {p0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->pausePlayback()V

    .line 332
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 334
    iput-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    const/4 v0, 0x0

    .line 337
    invoke-direct {p0, v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->disableProximitySensor(Z)V

    .line 339
    iput-boolean v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mIsPrepared:Z

    .line 340
    iput-boolean v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mIsPlaying:Z

    if-eqz p1, :cond_1

    .line 344
    iput v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mPosition:I

    .line 347
    :cond_1
    iget-object v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    if-eqz v1, :cond_3

    .line 348
    invoke-interface {v1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$PlaybackView;->onPlaybackStopped()V

    if-eqz p1, :cond_2

    .line 350
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    iget-object v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setClipPosition(II)V

    goto :goto_0

    .line 352
    :cond_2
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {p1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$PlaybackView;->getDesiredClipPosition()I

    move-result p1

    iput p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mPosition:I

    :cond_3
    :goto_0
    return-void
.end method

.method protected prepareContent()V
    .locals 4

    .line 509
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "VoicemailPlaybackPresenter.prepareContent"

    const/4 v3, 0x0

    .line 512
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 515
    iget-object v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 516
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 517
    iput-object v3, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 520
    :cond_1
    iget-object v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$PlaybackView;->disableUiElements()V

    .line 521
    iput-boolean v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mIsPrepared:Z

    .line 523
    iget-object v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/android/dialer/telecom/TelecomUtil;->isInCall(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 524
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot play voicemail when call is in progress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->handleError(Ljava/lang/Exception;)V

    return-void

    .line 529
    :cond_2
    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 530
    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 531
    iget-object v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 532
    iget-object v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 534
    iget-object v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 535
    iget-object v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 536
    iget-object v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 537
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 539
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->handleError(Ljava/lang/Exception;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected requestContent(I)Z
    .locals 4

    .line 445
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    goto :goto_0

    .line 449
    :cond_0
    new-instance v0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iget-object v3, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    invoke-direct {v0, p0, v2, v3, p1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;-><init>(Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;Landroid/os/Handler;Landroid/net/Uri;I)V

    .line 454
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    if-eqz p1, :cond_1

    .line 455
    invoke-virtual {p1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->destroy()V

    .line 457
    :cond_1
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {p1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setIsFetchingContent()V

    .line 458
    iput-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    .line 462
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mAsyncTaskExecutor:Lcom/android/dialer/common/concurrent/AsyncTaskExecutor;

    sget-object v0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$Tasks;->SEND_FETCH_REQUEST:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$Tasks;

    new-instance v2, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$2;

    invoke-direct {v2, p0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$2;-><init>(Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-interface {p1, v0, v2, v1}, Lcom/android/dialer/common/concurrent/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public resetAll()V
    .locals 1

    const/4 v0, 0x1

    .line 317
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->pausePresenter(Z)V

    const/4 v0, 0x0

    .line 319
    iput-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    .line 320
    iput-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    return-void
.end method

.method public resumePlayback()V
    .locals 4

    .line 639
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    if-nez v0, :cond_0

    return-void

    .line 643
    :cond_0
    iget-boolean v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mIsPrepared:Z

    if-nez v0, :cond_1

    .line 649
    new-instance v0, Lcom/android/dialer/app/voicemail/-$$Lambda$VoicemailPlaybackPresenter$F2Dsyc_vSt5AMPq6DJrxN3sgc8w;

    invoke-direct {v0, p0}, Lcom/android/dialer/app/voicemail/-$$Lambda$VoicemailPlaybackPresenter$F2Dsyc_vSt5AMPq6DJrxN3sgc8w;-><init>(Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;)V

    invoke-virtual {p0, v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->checkForContent(Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$OnContentCheckedListener;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 665
    iput-boolean v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mIsPlaying:Z

    .line 667
    iget-object v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 669
    iget-object v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_2

    .line 671
    iget v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mPosition:I

    iget-object v3, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mPosition:I

    .line 673
    iget-object v3, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 678
    :try_start_0
    iget-object v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mVoicemailAudioManager:Lcom/android/dialer/app/voicemail/VoicemailAudioManager;

    invoke-virtual {v1}, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;->requestAudioFocus()V

    .line 679
    iget-object v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 680
    iget-boolean v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mIsSpeakerphoneOn:Z

    invoke-virtual {p0, v1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->setSpeakerphoneOn(Z)V

    .line 681
    iget-object v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mVoicemailAudioManager:Lcom/android/dialer/app/voicemail/VoicemailAudioManager;

    iget-boolean v3, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mIsSpeakerphoneOn:Z

    invoke-virtual {v1, v3}, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;->setSpeakerphoneOn(Z)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 683
    invoke-virtual {p0, v1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->handleError(Ljava/lang/Exception;)V

    :cond_2
    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    .line 687
    iget v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mPosition:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "VoicemailPlaybackPresenter.resumePlayback"

    const-string v2, "resumed playback at %d."

    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 688
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    iget-object v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->getScheduledExecutorServiceInstance()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$PlaybackView;->onPlaybackStarted(ILjava/util/concurrent/ScheduledExecutorService;)V

    return-void
.end method

.method public resumePlaybackAfterSeeking(I)V
    .locals 0

    .line 736
    iput p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mPosition:I

    .line 737
    iget-boolean p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mShouldResumePlaybackAfterSeeking:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 738
    iput-boolean p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mShouldResumePlaybackAfterSeeking:Z

    .line 739
    invoke-virtual {p0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->resumePlayback()V

    :cond_0
    return-void
.end method

.method public seek(I)V
    .locals 1

    .line 748
    iput p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mPosition:I

    .line 749
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void
.end method

.method public setOnVoicemailDeletedListener(Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$OnVoicemailDeletedListener;)V
    .locals 0

    .line 795
    iput-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mOnVoicemailDeletedListener:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$OnVoicemailDeletedListener;

    return-void
.end method

.method public setPlaybackView(Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$PlaybackView;JLandroid/net/Uri;ZLandroid/view/View;)V
    .locals 0

    .line 262
    iput-wide p2, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mRowId:J

    .line 263
    iput-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    .line 264
    invoke-interface {p1, p0, p4}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setPresenter(Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;Landroid/net/Uri;)V

    .line 265
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    iget-boolean p2, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mIsSpeakerphoneOn:Z

    invoke-interface {p1, p2}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$PlaybackView;->onSpeakerphoneOn(Z)V

    .line 266
    iput-object p6, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->shareVoicemailButtonView:Landroid/view/View;

    const/4 p1, 0x0

    .line 267
    invoke-direct {p0, p1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->showShareVoicemailButton(Z)V

    .line 271
    iget-object p2, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mIsPrepared:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    invoke-virtual {p4, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 275
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p1

    iput p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mPosition:I

    .line 276
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, p1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->onPrepared(Landroid/media/MediaPlayer;)V

    const/4 p1, 0x1

    .line 277
    invoke-direct {p0, p1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->showShareVoicemailButton(Z)V

    goto :goto_0

    .line 279
    :cond_0
    iget-object p2, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->TAG:Ljava/lang/String;

    const-string p3, "setPlaybackView"

    invoke-static {p2, p3}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object p2, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    invoke-virtual {p4, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 281
    iget-object p2, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "setPlaybackView:mVoicemailUri:"

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iput-object p4, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    .line 283
    iput p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mPosition:I

    .line 290
    :cond_1
    new-instance p1, Lcom/android/dialer/app/voicemail/-$$Lambda$VoicemailPlaybackPresenter$PiJVsN-3BGfdafQYbsZZ2d0DBbg;

    invoke-direct {p1, p0, p5}, Lcom/android/dialer/app/voicemail/-$$Lambda$VoicemailPlaybackPresenter$PiJVsN-3BGfdafQYbsZZ2d0DBbg;-><init>(Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;Z)V

    invoke-virtual {p0, p1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->checkForContent(Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$OnContentCheckedListener;)V

    if-eqz p5, :cond_2

    .line 310
    iput-boolean p5, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mIsPlaying:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public setSpeakerphoneOn(Z)V
    .locals 1

    .line 838
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    if-nez v0, :cond_0

    return-void

    .line 842
    :cond_0
    invoke-interface {v0, p1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$PlaybackView;->onSpeakerphoneOn(Z)V

    .line 844
    iput-boolean p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mIsSpeakerphoneOn:Z

    .line 849
    iget-boolean v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mIsPlaying:Z

    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    .line 850
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mVoicemailAudioManager:Lcom/android/dialer/app/voicemail/VoicemailAudioManager;

    invoke-virtual {p1}, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;->isWiredHeadsetPluggedIn()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 853
    :cond_1
    invoke-direct {p0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->enableProximitySensor()V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 851
    invoke-direct {p0, p1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->disableProximitySensor(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public shareVoicemail()V
    .locals 4

    .line 938
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->shareVoicemailExecutor:Lcom/android/dialer/common/concurrent/DialerExecutor;

    new-instance v1, Landroid/util/Pair;

    iget-object v2, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/android/dialer/common/concurrent/DialerExecutor;->executeParallel(Ljava/lang/Object;)V

    return-void
.end method

.method public shareVoicemail(Landroid/net/Uri;)V
    .locals 3

    .line 946
    iput-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    .line 947
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->shareVoicemailExecutor:Lcom/android/dialer/common/concurrent/DialerExecutor;

    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lcom/android/dialer/common/concurrent/DialerExecutor;->executeParallel(Ljava/lang/Object;)V

    return-void
.end method

.method public toggleSpeakerphone()V
    .locals 2

    .line 790
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mVoicemailAudioManager:Lcom/android/dialer/app/voicemail/VoicemailAudioManager;

    iget-boolean v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mIsSpeakerphoneOn:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;->setSpeakerphoneOn(Z)V

    .line 791
    iget-boolean v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->mIsSpeakerphoneOn:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->setSpeakerphoneOn(Z)V

    return-void
.end method
