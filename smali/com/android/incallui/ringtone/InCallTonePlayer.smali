.class public Lcom/android/incallui/ringtone/InCallTonePlayer;
.super Ljava/lang/Object;
.source "InCallTonePlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;
    }
.end annotation


# static fields
.field public static final TONE_CALL_WAITING:I = 0x4

.field public static final VOLUME_RELATIVE_HIGH_PRIORITY:I = 0x50


# instance fields
.field private final mExecutor:Lcom/android/incallui/async/PausableExecutor;

.field private mNumPlayingTones:Ljava/util/concurrent/CountDownLatch;

.field private final mToneGeneratorFactory:Lcom/android/incallui/ringtone/ToneGeneratorFactory;


# direct methods
.method public constructor <init>(Lcom/android/incallui/ringtone/ToneGeneratorFactory;Lcom/android/incallui/async/PausableExecutor;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/ringtone/ToneGeneratorFactory;

    iput-object p1, p0, Lcom/android/incallui/ringtone/InCallTonePlayer;->mToneGeneratorFactory:Lcom/android/incallui/ringtone/ToneGeneratorFactory;

    .line 55
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/async/PausableExecutor;

    iput-object p1, p0, Lcom/android/incallui/ringtone/InCallTonePlayer;->mExecutor:Lcom/android/incallui/async/PausableExecutor;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/ringtone/InCallTonePlayer;Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/android/incallui/ringtone/InCallTonePlayer;->playOnBackgroundThread(Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;)V

    return-void
.end method

.method private getToneGeneratorInfo(I)Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;
    .locals 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 95
    new-instance p1, Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;

    const/16 v0, 0x16

    const/16 v1, 0x50

    const v2, 0x7fffffff

    const/4 v3, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;-><init>(IIII)V

    return-object p1

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad tone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private playOnBackgroundThread(Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;)V
    .locals 4

    const/4 v0, 0x0

    .line 108
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting tone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/android/incallui/ringtone/InCallTonePlayer;->mToneGeneratorFactory:Lcom/android/incallui/ringtone/ToneGeneratorFactory;

    iget v2, p1, Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;->stream:I

    iget v3, p1, Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;->volume:I

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/ringtone/ToneGeneratorFactory;->newInCallToneGenerator(II)Landroid/media/ToneGenerator;

    move-result-object v0

    .line 110
    iget v1, p1, Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;->tone:I

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 115
    iget-object v1, p0, Lcom/android/incallui/ringtone/InCallTonePlayer;->mExecutor:Lcom/android/incallui/async/PausableExecutor;

    invoke-interface {v1}, Lcom/android/incallui/async/PausableExecutor;->milestone()V

    .line 116
    iget-object v1, p0, Lcom/android/incallui/ringtone/InCallTonePlayer;->mNumPlayingTones:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/android/incallui/ringtone/InCallTonePlayer;->mNumPlayingTones:Ljava/util/concurrent/CountDownLatch;

    iget p1, p1, Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;->toneLengthMillis:I

    int-to-long v2, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 119
    iget-object p1, p0, Lcom/android/incallui/ringtone/InCallTonePlayer;->mExecutor:Lcom/android/incallui/async/PausableExecutor;

    invoke-interface {p1}, Lcom/android/incallui/async/PausableExecutor;->milestone()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 127
    :cond_1
    iget-object p1, p0, Lcom/android/incallui/ringtone/InCallTonePlayer;->mNumPlayingTones:Ljava/util/concurrent/CountDownLatch;

    if-eqz p1, :cond_3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    :try_start_1
    const-string p1, "Interrupted while playing in-call tone."

    .line 122
    invoke-static {p0, p1}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 125
    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 127
    :cond_2
    iget-object p1, p0, Lcom/android/incallui/ringtone/InCallTonePlayer;->mNumPlayingTones:Ljava/util/concurrent/CountDownLatch;

    if-eqz p1, :cond_3

    .line 128
    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 131
    :cond_3
    iget-object p1, p0, Lcom/android/incallui/ringtone/InCallTonePlayer;->mExecutor:Lcom/android/incallui/async/PausableExecutor;

    invoke-interface {p1}, Lcom/android/incallui/async/PausableExecutor;->milestone()V

    return-void

    :goto_1
    if-eqz v0, :cond_4

    .line 125
    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 127
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/ringtone/InCallTonePlayer;->mNumPlayingTones:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_5

    .line 128
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 131
    :cond_5
    iget-object v0, p0, Lcom/android/incallui/ringtone/InCallTonePlayer;->mExecutor:Lcom/android/incallui/async/PausableExecutor;

    invoke-interface {v0}, Lcom/android/incallui/async/PausableExecutor;->milestone()V

    .line 132
    throw p1
.end method


# virtual methods
.method public isPlayingTone()Z
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/android/incallui/ringtone/InCallTonePlayer;->mNumPlayingTones:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public play(I)V
    .locals 2

    .line 71
    invoke-virtual {p0}, Lcom/android/incallui/ringtone/InCallTonePlayer;->isPlayingTone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    invoke-direct {p0, p1}, Lcom/android/incallui/ringtone/InCallTonePlayer;->getToneGeneratorInfo(I)Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;

    move-result-object p1

    .line 75
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/incallui/ringtone/InCallTonePlayer;->mNumPlayingTones:Ljava/util/concurrent/CountDownLatch;

    .line 76
    iget-object v0, p0, Lcom/android/incallui/ringtone/InCallTonePlayer;->mExecutor:Lcom/android/incallui/async/PausableExecutor;

    new-instance v1, Lcom/android/incallui/ringtone/InCallTonePlayer$1;

    invoke-direct {v1, p0, p1}, Lcom/android/incallui/ringtone/InCallTonePlayer$1;-><init>(Lcom/android/incallui/ringtone/InCallTonePlayer;Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;)V

    invoke-interface {v0, v1}, Lcom/android/incallui/async/PausableExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 72
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Tone already playing"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public stop()V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/android/incallui/ringtone/InCallTonePlayer;->mNumPlayingTones:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method
