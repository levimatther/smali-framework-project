.class public Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "VoicemailGreetingActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
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

.field private static final REQUEST_RECORD_AUDIO_PERMISSION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "CurrentVoicemailGreetingActivity"

.field private static final menu_set_as_activity:I = 0x1


# instance fields
.field private audioManager:Landroid/media/AudioManager;

.field private dialog:Landroid/app/Dialog;

.field private endTime:J

.field private etGreetName:Landroid/widget/EditText;

.field private executor:Ljava/util/concurrent/Executor;

.field private flag:Z

.field private greetingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/voicemail/impl/Greeting;",
            ">;"
        }
    .end annotation
.end field

.field private greetingListView:Landroid/widget/ListView;

.field private greetingListViewAdapter:Lcom/android/dialer/voicemail/settings/GreetingListViewAdapter;

.field private handler:Landroid/os/Handler;

.field private intercept:Z

.field private isSpeaker:Z

.field private ivPlay:Landroid/widget/ImageView;

.field private ivRecord:Landroid/widget/ImageView;

.field private ivVolume:Landroid/widget/ImageView;

.field private loadingDialogUtil:Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private mediaRecorderManager:Lcom/android/dialer/voicemail/settings/MediaRecorderManager;

.field private mediaState:I

.field private menu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private menuBar:Landroid/widget/MenuBar;

.field private permissionToRecordAccepted:Z

.field runnable:Ljava/lang/Runnable;

.field private seekBar:Landroid/widget/SeekBar;

.field private startTime:J

.field timeRecordRunnable:Ljava/lang/Runnable;

.field private tvEndTime:Landroid/widget/TextView;

.field private tvRecord:Landroid/widget/TextView;

.field private tvSave:Landroid/widget/TextView;

.field private tvStartTime:Landroid/widget/TextView;

.field private voicemailGreetingFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 75
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->permissionToRecordAccepted:Z

    const-string v0, ""

    .line 87
    iput-object v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->voicemailGreetingFilePath:Ljava/lang/String;

    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->flag:Z

    .line 99
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->executor:Ljava/util/concurrent/Executor;

    .line 120
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->handler:Landroid/os/Handler;

    .line 121
    iput-boolean v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->intercept:Z

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->menu:Ljava/util/ArrayList;

    .line 453
    new-instance v0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity$1;-><init>(Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;)V

    iput-object v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->runnable:Ljava/lang/Runnable;

    .line 461
    new-instance v0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity$2;

    invoke-direct {v0, p0}, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity$2;-><init>(Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;)V

    iput-object v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->timeRecordRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->stopRecord()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;)Landroid/os/Handler;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;)I
    .locals 0

    .line 75
    iget p0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->mediaState:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;)J
    .locals 2

    .line 75
    iget-wide v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->endTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;J)J
    .locals 0

    .line 75
    iput-wide p1, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->endTime:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;)J
    .locals 2

    .line 75
    iget-wide v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->startTime:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;I)Ljava/lang/String;
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->formatTime(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;)Landroid/widget/TextView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->tvStartTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;)Landroid/widget/TextView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->tvEndTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;)Landroid/widget/SeekBar;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->seekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;)Landroid/media/MediaPlayer;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method private formatTime(I)Ljava/lang/String;
    .locals 3

    .line 482
    div-int/lit8 v0, p1, 0x3c

    .line 483
    rem-int/lit8 p1, p1, 0x3c

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 484
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

    .line 399
    :try_start_0
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 400
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 403
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->voicemailGreetingFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 405
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 407
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

    const-string v2, "CurrentVoicemailGreetingActivity"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private initParam()V
    .locals 1

    const/4 v0, 0x1

    .line 170
    iput-boolean v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->isSpeaker:Z

    .line 171
    iput v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->mediaState:I

    return-void
.end method

.method private refreshGreetingList()V
    .locals 2

    .line 181
    invoke-static {p0}, Lcom/android/dialer/voicemail/settings/GreetingListUtil;->getInstance(Landroid/content/Context;)Lcom/android/dialer/voicemail/settings/GreetingListUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/settings/GreetingListUtil;->getGreetingList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->greetingList:Ljava/util/ArrayList;

    .line 182
    iget-object v1, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->greetingListViewAdapter:Lcom/android/dialer/voicemail/settings/GreetingListViewAdapter;

    invoke-virtual {v1, v0}, Lcom/android/dialer/voicemail/settings/GreetingListViewAdapter;->setGreetingList(Ljava/util/List;)V

    .line 183
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/dialer/voicemail/settings/-$$Lambda$VoicemailGreetingActivity$L8rin7SmNheolektF0XU7fneDi0;

    invoke-direct {v1, p0}, Lcom/android/dialer/voicemail/settings/-$$Lambda$VoicemailGreetingActivity$L8rin7SmNheolektF0XU7fneDi0;-><init>(Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 186
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/dialer/voicemail/settings/-$$Lambda$VoicemailGreetingActivity$6u9qOZjwkFNJaNOXkc3OmOeIYgc;

    invoke-direct {v1, p0}, Lcom/android/dialer/voicemail/settings/-$$Lambda$VoicemailGreetingActivity$6u9qOZjwkFNJaNOXkc3OmOeIYgc;-><init>(Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setActive()V
    .locals 5

    .line 567
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->greetingListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    .line 568
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 569
    move-object v2, v0

    check-cast v2, Lcom/android/voicemail/impl/Greeting;

    .line 570
    instance-of v0, v0, Lcom/android/voicemail/impl/Greeting;

    if-eqz v0, :cond_1

    .line 571
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->greetingList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 572
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/voicemail/impl/Greeting;

    .line 573
    invoke-virtual {v3}, Lcom/android/voicemail/impl/Greeting;->isDefaultGreeting()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 574
    invoke-virtual {v3}, Lcom/android/voicemail/impl/Greeting;->getSourceData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 580
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->loadingDialogUtil:Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;->show()V

    .line 581
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->executor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/dialer/voicemail/settings/-$$Lambda$VoicemailGreetingActivity$GczRINlZ670B4HJO3MOawul0sek;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/dialer/voicemail/settings/-$$Lambda$VoicemailGreetingActivity$GczRINlZ670B4HJO3MOawul0sek;-><init>(Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;Ljava/util/ArrayList;Lcom/android/voicemail/impl/Greeting;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method private startRecord()V
    .locals 5

    const-string v0, "android.permission.RECORD_AUDIO"

    .line 412
    invoke-virtual {p0, v0}, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {p0, v0, v1}, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 415
    iput v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->mediaState:I

    .line 416
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->mediaRecorderManager:Lcom/android/dialer/voicemail/settings/MediaRecorderManager;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/settings/MediaRecorderManager;->startRecord()V

    .line 417
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->ivPlay:Landroid/widget/ImageView;

    const v1, 0x7f080126

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 418
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->ivPlay:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 419
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->ivRecord:Landroid/widget/ImageView;

    const v2, 0x7f080139

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 420
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->tvRecord:Landroid/widget/TextView;

    const v2, 0x7f11048a

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 421
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->tvSave:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 422
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->seekBar:Landroid/widget/SeekBar;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 423
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->ivVolume:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 424
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->ivVolume:Landroid/widget/ImageView;

    const v1, 0x7f080147

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 425
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->timeRecordRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 426
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 427
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->runnable:Ljava/lang/Runnable;

    const-wide/32 v3, 0x2bf20

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 428
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->startTime:J

    .line 429
    iput-boolean v2, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->intercept:Z

    :goto_0
    return-void
.end method

.method private stopRecord()V
    .locals 3

    .line 435
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->mediaRecorderManager:Lcom/android/dialer/voicemail/settings/MediaRecorderManager;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/settings/MediaRecorderManager;->stopRecord()V

    .line 437
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->ivVolume:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 438
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->ivPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 439
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setFocusable(Z)V

    .line 440
    iget-boolean v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->isSpeaker:Z

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->ivVolume:Landroid/widget/ImageView;

    const v2, 0x7f080149

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->ivVolume:Landroid/widget/ImageView;

    const v2, 0x7f080145

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 445
    :goto_0
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->tvSave:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 446
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->tvRecord:Landroid/widget/TextView;

    const v1, 0x7f1103df

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 447
    invoke-direct {p0}, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->initMediaPlayer()V

    const/4 v0, 0x0

    .line 448
    iput-boolean v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->intercept:Z

    const/4 v0, 0x3

    .line 449
    iput v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->mediaState:I

    return-void
.end method

.method private swapMediaContent(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/voicemail/impl/Greeting;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/voicemail/impl/Greeting;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/voicemail/impl/Greeting;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p2

    .line 208
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/voicemail/impl/Greeting;

    .line 209
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/voicemail/impl/Greeting;

    .line 210
    invoke-virtual {v1}, Lcom/android/voicemail/impl/Greeting;->getSourceData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/voicemail/impl/Greeting;->getSourceData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/android/voicemail/impl/Greeting;->getMediaContent()[B

    move-result-object v4

    if-eqz v4, :cond_2

    .line 211
    invoke-virtual {v3}, Lcom/android/voicemail/impl/Greeting;->getMediaContent()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/voicemail/impl/Greeting;->setMediaContent([B)V

    goto :goto_0

    :cond_3
    return-object p2
.end method


# virtual methods
.method public synthetic lambda$null$1$VoicemailGreetingActivity()V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->greetingListViewAdapter:Lcom/android/dialer/voicemail/settings/GreetingListViewAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/settings/GreetingListViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public synthetic lambda$refreshGreetingList$0$VoicemailGreetingActivity()V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->greetingListViewAdapter:Lcom/android/dialer/voicemail/settings/GreetingListViewAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/settings/GreetingListViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public synthetic lambda$refreshGreetingList$2$VoicemailGreetingActivity()V
    .locals 2

    .line 187
    iget-boolean v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->flag:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 188
    iput-boolean v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->flag:Z

    .line 189
    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/operatorutils/IOperatorManager;->fetchGreetings(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v1, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->greetingList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v0}, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->swapMediaContent(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->greetingList:Ljava/util/ArrayList;

    .line 192
    invoke-static {p0}, Lcom/android/dialer/voicemail/settings/GreetingListUtil;->getInstance(Landroid/content/Context;)Lcom/android/dialer/voicemail/settings/GreetingListUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->greetingList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/dialer/voicemail/settings/GreetingListUtil;->saveGreetingList(Ljava/util/ArrayList;)V

    .line 193
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->greetingListViewAdapter:Lcom/android/dialer/voicemail/settings/GreetingListViewAdapter;

    iget-object v1, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->greetingList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/dialer/voicemail/settings/GreetingListViewAdapter;->setGreetingList(Ljava/util/List;)V

    .line 194
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/dialer/voicemail/settings/-$$Lambda$VoicemailGreetingActivity$Eep4MvYv8lykugJF-LLpeg4jLqE;

    invoke-direct {v1, p0}, Lcom/android/dialer/voicemail/settings/-$$Lambda$VoicemailGreetingActivity$Eep4MvYv8lykugJF-LLpeg4jLqE;-><init>(Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x1

    .line 198
    iput-boolean v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->flag:Z

    :cond_1
    return-void
.end method

.method public synthetic lambda$setActive$3$VoicemailGreetingActivity(Ljava/util/ArrayList;Lcom/android/voicemail/impl/Greeting;)V
    .locals 3

    .line 583
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 585
    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object v2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/operatorutils/IOperatorManager;->deactiveGreeting(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    if-eqz p1, :cond_3

    .line 594
    invoke-virtual {p2}, Lcom/android/voicemail/impl/Greeting;->getSourceData()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 595
    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/voicemail/impl/Greeting;->getSourceData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/operatorutils/IOperatorManager;->activeGreeting(Ljava/lang/String;)Z

    move-result v1

    :cond_2
    if-eqz v1, :cond_3

    .line 598
    invoke-static {p0}, Lcom/android/dialer/voicemail/settings/GreetingListUtil;->getInstance(Landroid/content/Context;)Lcom/android/dialer/voicemail/settings/GreetingListUtil;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/voicemail/impl/Greeting;->getSourceData()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/dialer/voicemail/settings/GreetingListUtil;->setDefaultGreeting(Ljava/lang/String;)V

    .line 599
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->finish()V

    .line 602
    :cond_3
    iget-object p1, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->loadingDialogUtil:Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;

    invoke-virtual {p1}, Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;->dismiss()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 310
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0901bb

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 312
    :cond_0
    iget p1, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->mediaState:I

    const/4 v0, 0x3

    const v1, 0x7f08011d

    const/4 v2, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v2, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 325
    :cond_1
    iget-object p1, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 326
    iget-object p1, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->ivPlay:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 327
    iput v2, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->mediaState:I

    goto :goto_0

    .line 319
    :cond_2
    iget-object p1, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    .line 320
    iget-object p1, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->ivPlay:Landroid/widget/ImageView;

    const v1, 0x7f080126

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 321
    iput v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->mediaState:I

    goto :goto_0

    .line 314
    :cond_3
    iget-object p1, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 315
    iput v2, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->mediaState:I

    .line 316
    iget-object p1, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->ivPlay:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public onClickCSK()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClickLSK()Z
    .locals 2

    const-string v0, "CurrentVoicemailGreetingActivity"

    const-string v1, "onClickLSK"

    .line 520
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 522
    invoke-virtual {p0, v0}, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    return v0
.end method

.method public onClickRSK()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    const/4 v0, 0x0

    .line 489
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 490
    iget-object p1, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->ivPlay:Landroid/widget/ImageView;

    const v0, 0x7f080126

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, 0x6

    .line 491
    iput p1, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->mediaState:I

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 129
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 130
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0xe

    .line 131
    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    const p1, 0x7f0c0028

    .line 134
    invoke-virtual {p0, p1}, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->setContentView(I)V

    .line 135
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->getMenuBar()Landroid/widget/MenuBar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->menuBar:Landroid/widget/MenuBar;

    .line 136
    iget-object p1, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->menu:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f11042f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object p1, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->menuBar:Landroid/widget/MenuBar;

    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->menu:Ljava/util/ArrayList;

    const v1, 0x7f11054c

    const v2, 0x7f11055b

    const v3, 0x7f11000c

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 138
    iget-object p1, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->menuBar:Landroid/widget/MenuBar;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    .line 139
    iget-object p1, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->menuBar:Landroid/widget/MenuBar;

    invoke-virtual {p1, p0}, Landroid/widget/MenuBar;->setMenuBarListener(Landroid/widget/MenuBar$MenuBarListener;)V

    .line 141
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->getDataDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "a.amr"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->voicemailGreetingFilePath:Ljava/lang/String;

    .line 142
    new-instance p1, Lcom/android/dialer/voicemail/settings/MediaRecorderManager;

    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->voicemailGreetingFilePath:Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/android/dialer/voicemail/settings/MediaRecorderManager;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->mediaRecorderManager:Lcom/android/dialer/voicemail/settings/MediaRecorderManager;

    const-string p1, "audio"

    .line 143
    invoke-virtual {p0, p1}, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->audioManager:Landroid/media/AudioManager;

    .line 144
    new-instance p1, Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;

    invoke-direct {p1, p0}, Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->loadingDialogUtil:Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;

    const p1, 0x7f090350

    .line 146
    invoke-virtual {p0, p1}, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->greetingListView:Landroid/widget/ListView;

    const/4 v0, 0x0

    .line 147
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 148
    iget-object p1, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->greetingListView:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 149
    new-instance p1, Lcom/android/dialer/voicemail/settings/GreetingListViewAdapter;

    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->greetingList:Ljava/util/ArrayList;

    invoke-direct {p1, p0, v0}, Lcom/android/dialer/voicemail/settings/GreetingListViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->greetingListViewAdapter:Lcom/android/dialer/voicemail/settings/GreetingListViewAdapter;

    .line 150
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->greetingListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 220
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 221
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 289
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    .line 290
    instance-of p2, p1, Lcom/android/voicemail/impl/Greeting;

    if-eqz p2, :cond_2

    .line 291
    check-cast p1, Lcom/android/voicemail/impl/Greeting;

    .line 292
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 293
    iget-object p3, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->greetingList:Ljava/util/ArrayList;

    if-eqz p3, :cond_1

    .line 294
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/voicemail/impl/Greeting;

    .line 295
    invoke-virtual {p4}, Lcom/android/voicemail/impl/Greeting;->isDefaultGreeting()Z

    move-result p5

    if-eqz p5, :cond_0

    .line 296
    invoke-virtual {p4}, Lcom/android/voicemail/impl/Greeting;->getSourceData()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 300
    :cond_1
    new-instance p3, Landroid/content/Intent;

    const-class p4, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;

    invoke-direct {p3, p0, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p4, "greeting"

    .line 301
    invoke-virtual {p3, p4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "defaultGreetingList"

    .line 302
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putCharSequenceArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 303
    invoke-virtual {p0, p3}, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 558
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->finish()V

    .line 560
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->menuBar:Landroid/widget/MenuBar;

    invoke-virtual {v0, p1, p2}, Landroid/widget/MenuBar;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onOptionMenuClick(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 545
    :cond_0
    invoke-direct {p0}, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->setActive()V

    :goto_0
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

    .line 259
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 261
    iput-object v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 263
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 497
    iget-object p1, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    .line 498
    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 269
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 p2, 0x0

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    .line 272
    aget p1, p3, p2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    iput-boolean p1, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->permissionToRecordAccepted:Z

    .line 274
    :cond_1
    iget-boolean p1, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->permissionToRecordAccepted:Z

    if-nez p1, :cond_2

    new-array p1, p2, [Ljava/lang/Object;

    const-string p2, "CurrentVoicemailGreetingActivity.onRequestPermissionsResult"

    const-string p3, "permissionToRecordAccepted = false."

    .line 275
    invoke-static {p2, p3, p1}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 280
    :cond_2
    iget-object p1, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->mediaRecorderManager:Lcom/android/dialer/voicemail/settings/MediaRecorderManager;

    invoke-virtual {p1}, Lcom/android/dialer/voicemail/settings/MediaRecorderManager;->startRecord()V

    .line 281
    iget-object p1, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 282
    iget-object p1, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->runnable:Ljava/lang/Runnable;

    const-wide/32 v0, 0x2bf20

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 176
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 177
    invoke-direct {p0}, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->refreshGreetingList()V

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
