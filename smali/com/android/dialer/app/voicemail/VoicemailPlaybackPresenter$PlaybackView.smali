.class public interface abstract Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$PlaybackView;
.super Ljava/lang/Object;
.source "VoicemailPlaybackPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlaybackView"
.end annotation


# virtual methods
.method public abstract disableUiElements()V
.end method

.method public abstract enableUiElements()V
.end method

.method public abstract getDesiredClipPosition()I
.end method

.method public abstract onPlaybackError()V
.end method

.method public abstract onPlaybackStarted(ILjava/util/concurrent/ScheduledExecutorService;)V
.end method

.method public abstract onPlaybackStopped()V
.end method

.method public abstract onSpeakerphoneOn(Z)V
.end method

.method public abstract resetSeekBar()V
.end method

.method public abstract setClipPosition(II)V
.end method

.method public abstract setFetchContentTimeout()V
.end method

.method public abstract setIsFetchingContent()V
.end method

.method public abstract setPresenter(Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;Landroid/net/Uri;)V
.end method

.method public abstract setSuccess()V
.end method
