.class public Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "GreetingRecordActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/widget/MenuBar$MenuBarListener;


# static fields
.field public static final MAX_GREETING_DURATION_MS:I = 0x2bf20

.field public static final MEDIA_INIT:I = 0x1

.field public static final MEDIA_PAUSED:I = 0x5

.field public static final MEDIA_PLAYING:I = 0x4

.field public static final MEDIA_RECORDED:I = 0x3

.field public static final MEDIA_RECORDING:I = 0x2

.field public static final MEDIA_STOPED:I = 0x6

.field public static final RECORD_PERMISSION_CODE:I = 0x11

.field private static final TAG:Ljava/lang/String; = "GreetingRecordActivity"


# instance fields
.field private audioManager:Landroid/media/AudioManager;

.field private dialog:Landroid/app/Dialog;

.field private endTime:J

.field private executor:Ljava/util/concurrent/Executor;

.field private handler:Landroid/os/Handler;

.field private intercept:Z

.field private isSpeaker:Z

.field private ivPlay:Landroid/widget/ImageView;

.field private ivVolume:Landroid/widget/ImageView;

.field private loadingDialogUtil:Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;

.field private mGreetingName:Ljava/lang/String;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private mediaRecorderManager:Lcom/android/dialer/voicemail/settings/MediaRecorderManager;

.field private mediaState:I

.field private menuBar:Landroid/widget/MenuBar;

.field runnable:Ljava/lang/Runnable;

.field private seekBar:Landroid/widget/SeekBar;

.field private startTime:J

.field timeRecordRunnable:Ljava/lang/Runnable;

.field private toolbar:Landroidx/appcompat/widget/Toolbar;

.field private toolbarTX:Landroid/widget/TextView;

.field private tvEndTime:Landroid/widget/TextView;

.field private tvRecord:Landroid/widget/TextView;

.field private tvStartTime:Landroid/widget/TextView;

.field private voicemailGreetingFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, ""

    .line 49
    iput-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->voicemailGreetingFilePath:Ljava/lang/String;

    const/4 v0, 0x1

    .line 58
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->executor:Ljava/util/concurrent/Executor;

    .line 67
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->handler:Landroid/os/Handler;

    .line 68
    iput-boolean v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->intercept:Z

    .line 217
    new-instance v0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity$2;

    invoke-direct {v0, p0}, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity$2;-><init>(Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;)V

    iput-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->runnable:Ljava/lang/Runnable;

    .line 225
    new-instance v0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity$3;

    invoke-direct {v0, p0}, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity$3;-><init>(Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;)V

    iput-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->timeRecordRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->intercept:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->stopRecord()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;)Landroid/os/Handler;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->mediaState:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;)J
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->endTime:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;J)J
    .locals 0

    .line 45
    iput-wide p1, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->endTime:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;)J
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->startTime:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;I)Ljava/lang/String;
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->formatTime(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;)Landroid/widget/TextView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->tvStartTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;)Landroid/widget/SeekBar;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->seekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;)Landroid/media/MediaPlayer;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method private formatTime(I)Ljava/lang/String;
    .locals 3

    .line 246
    div-int/lit8 v0, p1, 0x3c

    .line 247
    rem-int/lit8 p1, p1, 0x3c

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 248
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, v1, v0

    const-string p1, "%02d:%02d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private initMediaPlayer()V
    .locals 3

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 205
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 208
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->voicemailGreetingFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 210
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mediaPlayer setup failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "GreetingRecordActivity"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private initParam()V
    .locals 1

    const/4 v0, 0x1

    .line 148
    iput-boolean v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->isSpeaker:Z

    .line 149
    iput v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->mediaState:I

    return-void
.end method

.method private startRecord()V
    .locals 5

    const-string v0, "GreetingRecordActivity"

    const-string v1, "startRecord"

    .line 158
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android.permission.RECORD_AUDIO"

    .line 159
    invoke-virtual {p0, v1}, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {p0, v0, v1}, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-string v1, "startRecord MEDIA_RECORDING"

    .line 162
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 164
    iput v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->mediaState:I

    .line 165
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->mediaRecorderManager:Lcom/android/dialer/voicemail/settings/MediaRecorderManager;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/settings/MediaRecorderManager;->startRecord()V

    .line 166
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->ivPlay:Landroid/widget/ImageView;

    const v1, 0x7f080126

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 167
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->ivPlay:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 171
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->seekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 174
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->timeRecordRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 175
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 176
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->runnable:Ljava/lang/Runnable;

    const-wide/32 v3, 0x2bf20

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->startTime:J

    .line 178
    iput-boolean v1, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->intercept:Z

    :goto_0
    return-void
.end method

.method private stopRecord()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->mediaRecorderManager:Lcom/android/dialer/voicemail/settings/MediaRecorderManager;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/settings/MediaRecorderManager;->stopRecord()V

    .line 187
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->ivPlay:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 188
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setFocusable(Z)V

    .line 189
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->seekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 197
    invoke-direct {p0}, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->initMediaPlayer()V

    .line 198
    iput-boolean v1, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->intercept:Z

    const/4 v0, 0x3

    .line 199
    iput v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->mediaState:I

    return-void
.end method


# virtual methods
.method public synthetic lambda$null$0$GreetingRecordActivity()V
    .locals 2

    const v0, 0x7f110259

    .line 339
    invoke-virtual {p0, v0}, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public synthetic lambda$null$1$GreetingRecordActivity()V
    .locals 2

    const v0, 0x7f110258

    .line 354
    invoke-virtual {p0, v0}, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public synthetic lambda$onClickRSK$2$GreetingRecordActivity()V
    .locals 6

    .line 328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v3, v2, v4}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    move-result-object v1

    .line 330
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "B64string is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "GreetingRecordActivity"

    invoke-static {v4, v2}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@email.android.com>"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message-id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->mediaRecorderManager:Lcom/android/dialer/voicemail/settings/MediaRecorderManager;

    invoke-virtual {v2}, Lcom/android/dialer/voicemail/settings/MediaRecorderManager;->getDuration()I

    move-result v2

    iget-object v4, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->mGreetingName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->mediaRecorderManager:Lcom/android/dialer/voicemail/settings/MediaRecorderManager;

    invoke-virtual {v5}, Lcom/android/dialer/voicemail/settings/MediaRecorderManager;->getData()[B

    move-result-object v5

    invoke-virtual {v1, v0, v2, v4, v5}, Lcom/android/operatorutils/IOperatorManager;->uploadGreetingMessage(Ljava/lang/String;ILjava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    .line 336
    iget-object v1, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->loadingDialogUtil:Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;

    invoke-virtual {v1}, Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;->dismiss()V

    if-eqz v0, :cond_1

    .line 338
    iget-object v1, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/android/dialer/voicemail/settings/-$$Lambda$GreetingRecordActivity$Kjb_AG2A-iODKOJa3ktHt9H-RQA;

    invoke-direct {v2, p0}, Lcom/android/dialer/voicemail/settings/-$$Lambda$GreetingRecordActivity$Kjb_AG2A-iODKOJa3ktHt9H-RQA;-><init>(Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 341
    new-instance v1, Lcom/android/voicemail/impl/Greeting$Builder;

    invoke-direct {v1}, Lcom/android/voicemail/impl/Greeting$Builder;-><init>()V

    .line 342
    iget-object v2, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->mediaRecorderManager:Lcom/android/dialer/voicemail/settings/MediaRecorderManager;

    invoke-virtual {v2}, Lcom/android/dialer/voicemail/settings/MediaRecorderManager;->getDuration()I

    move-result v2

    int-to-long v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/voicemail/impl/Greeting$Builder;->setBuildDuration(Ljava/lang/Long;)V

    .line 343
    invoke-virtual {v1, v0}, Lcom/android/voicemail/impl/Greeting$Builder;->setBuildSourceData(Ljava/lang/String;)V

    const-string v0, "tempUri"

    .line 344
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/voicemail/impl/Greeting$Builder;->setBuildUri(Landroid/net/Uri;)V

    .line 345
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->mGreetingName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/voicemail/impl/Greeting$Builder;->setBuildGreetName(Ljava/lang/String;)V

    .line 346
    invoke-virtual {v1, v3}, Lcom/android/voicemail/impl/Greeting$Builder;->setBuildDefaultGreeting(Z)V

    .line 347
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->mediaRecorderManager:Lcom/android/dialer/voicemail/settings/MediaRecorderManager;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/settings/MediaRecorderManager;->getData()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/voicemail/impl/Greeting$Builder;->setBuildMediaContent([B)V

    .line 348
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 351
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->finish()V

    goto :goto_0

    .line 353
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/dialer/voicemail/settings/-$$Lambda$GreetingRecordActivity$uqdaQtrtABRqVsVIKN4MAk8WLwk;

    invoke-direct {v1, p0}, Lcom/android/dialer/voicemail/settings/-$$Lambda$GreetingRecordActivity$uqdaQtrtABRqVsVIKN4MAk8WLwk;-><init>(Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 356
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x12

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const-string p1, "rename"

    .line 395
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->mGreetingName:Ljava/lang/String;

    .line 396
    iget-object p2, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->toolbarTX:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onActivityResult:mGreetingName:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->mGreetingName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GreetingRecordActivity"

    invoke-static {p2, p1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GreetingRecordActivity"

    invoke-static {v0, p1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onClickCSK()Z
    .locals 4

    .line 293
    iget v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->mediaState:I

    const v1, 0x7f08011d

    const v2, 0x7f11025a

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 308
    :pswitch_0
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->ivPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 312
    invoke-direct {p0}, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->startRecord()V

    .line 313
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->menuBar:Landroid/widget/MenuBar;

    invoke-virtual {v0, v3, v2}, Landroid/widget/MenuBar;->setSoftKeyName(II)V

    goto :goto_0

    .line 301
    :pswitch_1
    invoke-direct {p0}, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->stopRecord()V

    .line 302
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->menuBar:Landroid/widget/MenuBar;

    const v1, 0x7f1103df

    invoke-virtual {v0, v3, v1}, Landroid/widget/MenuBar;->setSoftKeyName(II)V

    .line 303
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->ivPlay:Landroid/widget/ImageView;

    const v1, 0x7f080126

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 296
    :pswitch_2
    invoke-direct {p0}, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->startRecord()V

    .line 297
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->menuBar:Landroid/widget/MenuBar;

    invoke-virtual {v0, v3, v2}, Landroid/widget/MenuBar;->setSoftKeyName(II)V

    .line 298
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->ivPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onClickLSK()Z
    .locals 3

    .line 284
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "new_greeting"

    const/4 v2, 0x1

    .line 285
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x12

    .line 286
    invoke-virtual {p0, v0, v1}, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v0, 0x0

    return v0
.end method

.method public onClickRSK()Z
    .locals 3

    .line 321
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->mGreetingName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x7f110255

    .line 322
    invoke-virtual {p0, v0}, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v1

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->loadingDialogUtil:Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;->show()V

    .line 326
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->executor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/dialer/voicemail/settings/-$$Lambda$GreetingRecordActivity$-INWkM8Qo7_bfUabE5OMlQ-LcZY;

    invoke-direct {v2, p0}, Lcom/android/dialer/voicemail/settings/-$$Lambda$GreetingRecordActivity$-INWkM8Qo7_bfUabE5OMlQ-LcZY;-><init>(Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v1
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    const/4 v0, 0x0

    .line 253
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 254
    iget-object p1, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->ivPlay:Landroid/widget/ImageView;

    const v0, 0x7f080126

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, 0x6

    .line 255
    iput p1, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->mediaState:I

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 86
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0xe

    .line 88
    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    const p1, 0x7f0c0068

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->setContentView(I)V

    .line 90
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->getMenuBar()Landroid/widget/MenuBar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->menuBar:Landroid/widget/MenuBar;

    .line 91
    invoke-direct {p0}, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->initParam()V

    const p1, 0x7f110257

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->mGreetingName:Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->getDataDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "a.amr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->voicemailGreetingFilePath:Ljava/lang/String;

    .line 94
    new-instance v0, Lcom/android/dialer/voicemail/settings/MediaRecorderManager;

    iget-object v1, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->voicemailGreetingFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/dialer/voicemail/settings/MediaRecorderManager;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->mediaRecorderManager:Lcom/android/dialer/voicemail/settings/MediaRecorderManager;

    const-string v0, "audio"

    .line 95
    invoke-virtual {p0, v0}, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->audioManager:Landroid/media/AudioManager;

    .line 97
    new-instance v0, Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;

    invoke-direct {v0, p0}, Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->loadingDialogUtil:Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;

    const v0, 0x7f0901bb

    .line 98
    invoke-virtual {p0, v0}, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->ivPlay:Landroid/widget/ImageView;

    const v0, 0x7f090313

    .line 102
    invoke-virtual {p0, v0}, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->tvStartTime:Landroid/widget/TextView;

    const v0, 0x7f09029f

    .line 104
    invoke-virtual {p0, v0}, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->seekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    .line 105
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 106
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->seekBar:Landroid/widget/SeekBar;

    new-instance v2, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity$1;

    invoke-direct {v2, p0}, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity$1;-><init>(Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 112
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 116
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->ivPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    const v0, 0x7f090303

    .line 120
    invoke-virtual {p0, v0}, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f090304

    .line 121
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->toolbarTX:Landroid/widget/TextView;

    .line 122
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 123
    iget-object p1, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->menuBar:Landroid/widget/MenuBar;

    const v0, 0x7f1103e5

    const v1, 0x7f1103df

    const v2, 0x7f110256

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 124
    iget-object p1, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->menuBar:Landroid/widget/MenuBar;

    invoke-virtual {p1, p0}, Landroid/widget/MenuBar;->setMenuBarListener(Landroid/widget/MenuBar$MenuBarListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 143
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 144
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->mediaRecorderManager:Lcom/android/dialer/voicemail/settings/MediaRecorderManager;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/settings/MediaRecorderManager;->stopRecord()V

    .line 387
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->finish()V

    .line 389
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->menuBar:Landroid/widget/MenuBar;

    invoke-virtual {v0, p1, p2}, Landroid/widget/MenuBar;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onOptionMenuClick(I)V
    .locals 0

    return-void
.end method

.method public onOptionMenuDismiss()V
    .locals 0

    return-void
.end method

.method public onOptionMenuShow()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 136
    iput-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 138
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method public onPointerCaptureChanged(Z)V
    .locals 0

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 261
    iget-object p1, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    .line 262
    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 129
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
