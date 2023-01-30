.class Lcom/android/dialer/voicemail/settings/GreetingRecordActivity$3;
.super Ljava/lang/Object;
.source "GreetingRecordActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;


# direct methods
.method constructor <init>(Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity$3;->this$0:Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 228
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity$3;->this$0:Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;

    invoke-static {v0}, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->access$300(Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;)I

    move-result v0

    const-wide/16 v1, 0x3e8

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity$3;->this$0:Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->access$402(Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;J)J

    .line 230
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity$3;->this$0:Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;

    invoke-static {v0}, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->access$400(Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;)J

    move-result-wide v3

    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity$3;->this$0:Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;

    invoke-static {v0}, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->access$500(Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    div-long/2addr v3, v1

    long-to-int v0, v3

    .line 231
    iget-object v3, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity$3;->this$0:Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;

    invoke-static {v3}, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->access$700(Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity$3;->this$0:Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;

    invoke-static {v4, v0}, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->access$600(Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v3, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity$3;->this$0:Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;

    invoke-static {v3}, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->access$800(Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;)Landroid/widget/SeekBar;

    move-result-object v3

    const/16 v4, 0xb4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 234
    iget-object v3, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity$3;->this$0:Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;

    invoke-static {v3}, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->access$800(Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity$3;->this$0:Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;

    invoke-static {v0}, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->access$300(Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;)I

    move-result v0

    const/4 v3, 0x3

    if-lt v0, v3, :cond_1

    .line 236
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity$3;->this$0:Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;

    invoke-static {v0}, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->access$700(Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity$3;->this$0:Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;

    invoke-static {v3}, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->access$900(Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v4

    div-int/lit16 v4, v4, 0x3e8

    invoke-static {v3, v4}, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->access$600(Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity$3;->this$0:Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;

    invoke-static {v0}, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->access$800(Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v3, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity$3;->this$0:Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;

    invoke-static {v3}, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->access$900(Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 239
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity$3;->this$0:Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;

    invoke-static {v0}, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->access$800(Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v3, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity$3;->this$0:Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;

    invoke-static {v3}, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->access$900(Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 241
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity$3;->this$0:Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;

    invoke-static {v0}, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->access$200(Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
