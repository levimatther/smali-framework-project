.class public Lcom/android/dialer/voicemail/settings/MediaPlayerManager;
.super Ljava/lang/Object;
.source "MediaPlayerManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field private filePath:Ljava/lang/String;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/MediaPlayerManager;->filePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/MediaPlayerManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method protected handleError(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "MediaPlayerManager.handlerError"

    const-string v1, "could not play the record sound"

    .line 74
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    iget-object p1, p0, Lcom/android/dialer/voicemail/settings/MediaPlayerManager;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    const/4 p1, 0x0

    .line 77
    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/MediaPlayerManager;->mediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/MediaPlayerManager;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_0

    .line 84
    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 90
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MediaPlayer error listener invoked: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/dialer/voicemail/settings/MediaPlayerManager;->handleError(Ljava/lang/Exception;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 96
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/MediaPlayerManager;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method public startPlay()V
    .locals 2

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/MediaPlayerManager;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/voicemail/settings/MediaPlayerManager;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/MediaPlayerManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 50
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/MediaPlayerManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 51
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/MediaPlayerManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 53
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/MediaPlayerManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 54
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/MediaPlayerManager;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/android/dialer/voicemail/settings/MediaPlayerManager;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/MediaPlayerManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 57
    invoke-virtual {p0, v0}, Lcom/android/dialer/voicemail/settings/MediaPlayerManager;->handleError(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public stopPlay()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/MediaPlayerManager;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 68
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/MediaPlayerManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/android/dialer/voicemail/settings/MediaPlayerManager;->mediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method
