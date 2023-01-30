.class Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$8;
.super Ljava/lang/Object;
.source "VoicemailPlaybackLayout.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$8;->this$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$8;->this$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    invoke-virtual {v0, p2, p1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->setClipPosition(II)V

    if-eqz p3, :cond_0

    .line 261
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$8;->this$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;

    invoke-static {p1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->access$200(Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;)Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->seek(I)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 243
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$8;->this$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;

    invoke-static {p1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->access$200(Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;)Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 244
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$8;->this$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;

    invoke-static {p1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->access$200(Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;)Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->pausePlaybackForSeeking()V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$8;->this$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;

    invoke-static {v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->access$200(Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;)Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$8;->this$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;

    invoke-static {v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->access$200(Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;)Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->resumePlaybackAfterSeeking(I)V

    :cond_0
    return-void
.end method
