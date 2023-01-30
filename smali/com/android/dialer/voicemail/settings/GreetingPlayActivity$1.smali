.class Lcom/android/dialer/voicemail/settings/GreetingPlayActivity$1;
.super Ljava/lang/Object;
.source "GreetingPlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;


# direct methods
.method constructor <init>(Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity$1;->this$0:Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity$1;->this$0:Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;

    invoke-static {v0}, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->access$000(Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity$1;->this$0:Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;

    invoke-static {v0}, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->access$300(Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity$1;->this$0:Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;

    invoke-static {v1}, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->access$100(Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    invoke-static {v1, v2}, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->access$200(Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity$1;->this$0:Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;

    invoke-static {v0}, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->access$400(Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity$1;->this$0:Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;

    invoke-static {v1}, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->access$100(Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    invoke-static {v1, v2}, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->access$200(Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity$1;->this$0:Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;

    invoke-static {v0}, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->access$500(Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity$1;->this$0:Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;

    invoke-static {v1}, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->access$100(Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 183
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity$1;->this$0:Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;

    invoke-static {v0}, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->access$500(Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity$1;->this$0:Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;

    invoke-static {v1}, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->access$100(Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 184
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity$1;->this$0:Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;

    invoke-static {v0}, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->access$500(Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_0

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity$1;->this$0:Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;

    invoke-static {v0}, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->access$500(Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 188
    :goto_0
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity$1;->this$0:Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;

    iget-object v0, v0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
