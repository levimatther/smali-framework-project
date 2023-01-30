.class final Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater;
.super Ljava/lang/Object;
.source "VoicemailPlaybackLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PositionUpdater"
.end annotation


# static fields
.field private static final SLIDER_UPDATE_PERIOD_MILLIS:I = 0x21


# instance fields
.field private mDurationMs:I

.field private final mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final mLock:Ljava/lang/Object;

.field private mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private mUpdateClipPositionRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;


# direct methods
.method public constructor <init>(Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;ILjava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    .line 517
    iput-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater;->this$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 495
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater;->mLock:Ljava/lang/Object;

    .line 501
    new-instance p1, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater$1;

    invoke-direct {p1, p0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater$1;-><init>(Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater;)V

    iput-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater;->mUpdateClipPositionRunnable:Ljava/lang/Runnable;

    .line 518
    iput p2, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater;->mDurationMs:I

    .line 519
    iput-object p3, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method static synthetic access$600(Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater;)Ljava/lang/Object;
    .locals 0

    .line 489
    iget-object p0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 489
    iget-object p0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater;)I
    .locals 0

    .line 489
    iget p0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater;->mDurationMs:I

    return p0
.end method

.method private cancelPendingRunnables()V
    .locals 2

    .line 544
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 545
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 546
    iput-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater;->this$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;

    iget-object v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater;->mUpdateClipPositionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 524
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater;->this$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;

    iget-object v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater;->mUpdateClipPositionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startUpdating()V
    .locals 8

    .line 528
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 529
    :try_start_0
    invoke-direct {p0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater;->cancelPendingRunnables()V

    .line 530
    iget-object v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x21

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v2, p0

    .line 531
    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 533
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopUpdating()V
    .locals 2

    .line 537
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 538
    :try_start_0
    invoke-direct {p0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater;->cancelPendingRunnables()V

    .line 539
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
