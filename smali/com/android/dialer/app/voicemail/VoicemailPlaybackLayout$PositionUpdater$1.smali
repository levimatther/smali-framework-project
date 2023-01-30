.class Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater$1;
.super Ljava/lang/Object;
.source "VoicemailPlaybackLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater;)V
    .locals 0

    .line 502
    iput-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater$1;->this$1:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 506
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater$1;->this$1:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater;

    invoke-static {v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater;->access$600(Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 507
    :try_start_0
    iget-object v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater$1;->this$1:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater;

    invoke-static {v1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater;->access$700(Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater$1;->this$1:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater;

    iget-object v1, v1, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater;->this$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;

    invoke-static {v1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->access$200(Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;)Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 511
    :cond_0
    iget-object v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater$1;->this$1:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater;

    iget-object v1, v1, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater;->this$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;

    invoke-static {v1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->access$200(Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;)Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->getMediaPlayerPosition()I

    move-result v1

    .line 512
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater$1;->this$1:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater;

    iget-object v0, v0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater;->this$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;

    iget-object v2, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater$1;->this$1:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater;

    invoke-static {v2}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater;->access$800(Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->setClipPosition(II)V

    return-void

    .line 509
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 512
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
