.class public Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;
.super Landroid/app/Activity;
.source "GreetingPlayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/widget/MenuBar$MenuBarListener;


# static fields
.field public static final MEDIA_INIT:I = 0x1

.field public static final MEDIA_PAUSED:I = 0x3

.field public static final MEDIA_PLAYING:I = 0x2

.field public static final MEDIA_STOPED:I = 0x4

.field public static final REQUEST_CODE:I = 0x11


# instance fields
.field private final TAG:Ljava/lang/String;

.field private audioManager:Landroid/media/AudioManager;

.field private defaultGreetingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private executor:Ljava/util/concurrent/Executor;

.field private greeting:Lcom/android/voicemail/impl/Greeting;

.field handler:Landroid/os/Handler;

.field iHandler:Landroid/os/Handler;

.field private isReady:Z

.field private isSpeaker:Z

.field private ivBack:Landroid/widget/ImageView;

.field private ivGreetPlay:Landroid/widget/ImageView;

.field private linearLayoutMedia:Landroid/widget/LinearLayout;

.field private loadingDialogUtil:Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;

.field private mediaData:[B

.field private mediaPlayer:Landroid/media/MediaPlayer;

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

.field runnable:Ljava/lang/Runnable;

.field private seekBarGreet:Landroid/widget/SeekBar;

.field private timePanel:Landroid/widget/LinearLayout;

.field private toolbar:Landroidx/appcompat/widget/Toolbar;

.field private toolbarTX:Landroid/widget/TextView;

.field private tvCurrentTime:Landroid/widget/TextView;

.field private tvTotalTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "GreetingPlayActivity"

    .line 67
    iput-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->TAG:Ljava/lang/String;

    .line 81
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x1

    .line 82
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->executor:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->isReady:Z

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->menu:Ljava/util/ArrayList;

    .line 175
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->handler:Landroid/os/Handler;

    .line 176
    new-instance v0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity$1;-><init>(Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;)V

    iput-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->runnable:Ljava/lang/Runnable;

    .line 291
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->iHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->isReady:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;)Landroid/media/MediaPlayer;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;I)Ljava/lang/String;
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->formatTime(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;)Landroid/widget/TextView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->tvCurrentTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;)Landroid/widget/TextView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->tvTotalTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;)Landroid/widget/SeekBar;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->seekBarGreet:Landroid/widget/SeekBar;

    return-object p0
.end method

.method private formatTime(I)Ljava/lang/String;
    .locals 3

    .line 193
    div-int/lit8 v0, p1, 0x3c

    .line 194
    rem-int/lit8 p1, p1, 0x3c

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 195
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

.method private initMediaPlay([B)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    const-string v2, "tempFile"

    const-string v3, ".amr"

    .line 208
    invoke-static {v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 209
    invoke-virtual {v2}, Ljava/io/File;->deleteOnExit()V

    .line 210
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 211
    invoke-virtual {v3, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 212
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 216
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 217
    iget-object v2, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 218
    iget-object p1, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 219
    iget-object p1, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 220
    iput-boolean v1, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->isReady:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 222
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return v0
.end method

.method private initParam()V
    .locals 2

    const/4 v0, 0x1

    .line 134
    iput-boolean v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->isSpeaker:Z

    .line 135
    iput v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->mediaState:I

    .line 139
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->greeting:Lcom/android/voicemail/impl/Greeting;

    invoke-virtual {v0}, Lcom/android/voicemail/impl/Greeting;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->linearLayoutMedia:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$null$0$GreetingPlayActivity()V
    .locals 3

    .line 305
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->menuBar:Landroid/widget/MenuBar;

    const/4 v1, 0x1

    const v2, 0x7f11025a

    invoke-virtual {v0, v1, v2}, Landroid/widget/MenuBar;->setSoftKeyName(II)V

    .line 306
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->timePanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$onClickCSK$1$GreetingPlayActivity()V
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->greeting:Lcom/android/voicemail/impl/Greeting;

    invoke-virtual {v0}, Lcom/android/voicemail/impl/Greeting;->getMediaContent()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->mediaData:[B

    if-nez v0, :cond_0

    .line 301
    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->greeting:Lcom/android/voicemail/impl/Greeting;

    invoke-virtual {v1}, Lcom/android/voicemail/impl/Greeting;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/operatorutils/IOperatorManager;->fetchGreetMediaContent(Landroid/net/Uri;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->mediaData:[B

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->mediaData:[B

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->iHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/dialer/voicemail/settings/-$$Lambda$GreetingPlayActivity$egqPJxasbPn8KUolvLHbvc3QZmc;

    invoke-direct {v1, p0}, Lcom/android/dialer/voicemail/settings/-$$Lambda$GreetingPlayActivity$egqPJxasbPn8KUolvLHbvc3QZmc;-><init>(Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 308
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->greeting:Lcom/android/voicemail/impl/Greeting;

    iget-object v1, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->mediaData:[B

    invoke-virtual {v0, v1}, Lcom/android/voicemail/impl/Greeting;->setMediaContent([B)V

    .line 309
    invoke-static {p0}, Lcom/android/dialer/voicemail/settings/GreetingListUtil;->getInstance(Landroid/content/Context;)Lcom/android/dialer/voicemail/settings/GreetingListUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->greeting:Lcom/android/voicemail/impl/Greeting;

    invoke-virtual {v0, v1}, Lcom/android/dialer/voicemail/settings/GreetingListUtil;->updateGreeting(Lcom/android/voicemail/impl/Greeting;)V

    const/4 v0, 0x2

    .line 310
    iput v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->mediaState:I

    .line 311
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->mediaData:[B

    invoke-direct {p0, v0}, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->initMediaPlay([B)Z

    .line 312
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->loadingDialogUtil:Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;->dismiss()V

    return-void
.end method

.method public synthetic lambda$onClickRSK$2$GreetingPlayActivity()V
    .locals 2

    .line 343
    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->greeting:Lcom/android/voicemail/impl/Greeting;

    invoke-virtual {v1}, Lcom/android/voicemail/impl/Greeting;->getSourceData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/operatorutils/IOperatorManager;->deleteObject(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    invoke-static {p0}, Lcom/android/dialer/voicemail/settings/GreetingListUtil;->getInstance(Landroid/content/Context;)Lcom/android/dialer/voicemail/settings/GreetingListUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->greeting:Lcom/android/voicemail/impl/Greeting;

    invoke-virtual {v1}, Lcom/android/voicemail/impl/Greeting;->getSourceData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/voicemail/settings/GreetingListUtil;->deleteGreeting(Ljava/lang/String;)V

    .line 347
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->finish()V

    .line 348
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->loadingDialogUtil:Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;->dismiss()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 252
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x11

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    if-eqz p3, :cond_0

    const-string p1, "objectId"

    .line 255
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 256
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 257
    invoke-static {p0}, Lcom/android/dialer/voicemail/settings/GreetingListUtil;->getInstance(Landroid/content/Context;)Lcom/android/dialer/voicemail/settings/GreetingListUtil;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/dialer/voicemail/settings/GreetingListUtil;->getGreeting(Ljava/lang/String;)Lcom/android/voicemail/impl/Greeting;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->greeting:Lcom/android/voicemail/impl/Greeting;

    .line 258
    iget-object p2, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->toolbarTX:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/voicemail/impl/Greeting;->getGreetName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "view id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GreetingPlayActivity"

    invoke-static {v0, p1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onClickCSK()Z
    .locals 4

    const-string v0, "GreetingPlayActivity"

    const-string v1, "onClickCSK"

    .line 294
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->mediaState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 330
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->ivGreetPlay:Landroid/widget/ImageView;

    const v2, 0x7f08011d

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 331
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->menuBar:Landroid/widget/MenuBar;

    const v2, 0x7f11025a

    invoke-virtual {v0, v1, v2}, Landroid/widget/MenuBar;->setSoftKeyName(II)V

    .line 332
    iput v3, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->mediaState:I

    goto :goto_0

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 323
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->ivGreetPlay:Landroid/widget/ImageView;

    const v3, 0x7f080126

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 324
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->menuBar:Landroid/widget/MenuBar;

    const v3, 0x7f110312

    invoke-virtual {v0, v1, v3}, Landroid/widget/MenuBar;->setSoftKeyName(II)V

    .line 325
    iput v2, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->mediaState:I

    goto :goto_0

    .line 297
    :cond_2
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->loadingDialogUtil:Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;->show()V

    .line 298
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/dialer/voicemail/settings/-$$Lambda$GreetingPlayActivity$tCVkBXralLgvx9HG3HwS865_Clk;

    invoke-direct {v1, p0}, Lcom/android/dialer/voicemail/settings/-$$Lambda$GreetingPlayActivity$tCVkBXralLgvx9HG3HwS865_Clk;-><init>(Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public onClickLSK()Z
    .locals 4

    const-string v0, "GreetingPlayActivity"

    const-string v1, "onClickLSK:rename"

    .line 283
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "greeting:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->greeting:Lcom/android/voicemail/impl/Greeting;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->greeting:Lcom/android/voicemail/impl/Greeting;

    const-string v2, "greeting"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v0, 0x11

    .line 287
    invoke-virtual {p0, v1, v0}, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v0, 0x0

    return v0
.end method

.method public onClickRSK()Z
    .locals 2

    const-string v0, "GreetingPlayActivity"

    const-string v1, "onClickRSK"

    .line 340
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->loadingDialogUtil:Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;->show()V

    .line 342
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/dialer/voicemail/settings/-$$Lambda$GreetingPlayActivity$ta0HCBN6Iohov6phNNzhjHwHWew;

    invoke-direct {v1, p0}, Lcom/android/dialer/voicemail/settings/-$$Lambda$GreetingPlayActivity$ta0HCBN6Iohov6phNNzhjHwHWew;-><init>(Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    const-string p1, "GreetingPlayActivity"

    const-string v0, "onCompletion"

    .line 230
    invoke-static {p1, v0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object p1, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 232
    iget-object p1, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->ivGreetPlay:Landroid/widget/ImageView;

    const v0, 0x7f080126

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 233
    iget-object p1, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->menuBar:Landroid/widget/MenuBar;

    const/4 v0, 0x1

    const v1, 0x7f110312

    invoke-virtual {p1, v0, v1}, Landroid/widget/MenuBar;->setSoftKeyName(II)V

    const/4 p1, 0x4

    .line 234
    iput p1, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->mediaState:I

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 103
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0xe

    .line 105
    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    const p1, 0x7f0c0023

    .line 107
    invoke-virtual {p0, p1}, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->setContentView(I)V

    .line 108
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "greeting"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/voicemail/impl/Greeting;

    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->greeting:Lcom/android/voicemail/impl/Greeting;

    const p1, 0x7f0902fd

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->timePanel:Landroid/widget/LinearLayout;

    const p1, 0x7f090303

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f090304

    .line 111
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->toolbarTX:Landroid/widget/TextView;

    .line 112
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->greeting:Lcom/android/voicemail/impl/Greeting;

    invoke-virtual {v0}, Lcom/android/voicemail/impl/Greeting;->getGreetName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "defaultGreetingList"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->defaultGreetingList:Ljava/util/ArrayList;

    const-string p1, "audio"

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->audioManager:Landroid/media/AudioManager;

    .line 116
    new-instance p1, Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;

    invoke-direct {p1, p0}, Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->loadingDialogUtil:Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;

    const p1, 0x7f090310

    .line 118
    invoke-virtual {p0, p1}, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->tvCurrentTime:Landroid/widget/TextView;

    const p1, 0x7f090315

    .line 119
    invoke-virtual {p0, p1}, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->tvTotalTime:Landroid/widget/TextView;

    const p1, 0x7f0901bb

    .line 120
    invoke-virtual {p0, p1}, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->ivGreetPlay:Landroid/widget/ImageView;

    const/4 v0, 0x0

    .line 121
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setFocusable(Z)V

    const p1, 0x7f0902a0

    .line 122
    invoke-virtual {p0, p1}, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->seekBarGreet:Landroid/widget/SeekBar;

    const p1, 0x7f0901d4

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->linearLayoutMedia:Landroid/widget/LinearLayout;

    .line 125
    iget-object p1, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->ivGreetPlay:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object p1, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->seekBarGreet:Landroid/widget/SeekBar;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->getMenuBar()Landroid/widget/MenuBar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->menuBar:Landroid/widget/MenuBar;

    const v0, 0x7f1103e5

    const v1, 0x7f110312

    const v2, 0x7f1102fc

    const/4 v3, 0x0

    .line 128
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 129
    iget-object p1, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->menuBar:Landroid/widget/MenuBar;

    invoke-virtual {p1, p0}, Landroid/widget/MenuBar;->setMenuBarListener(Landroid/widget/MenuBar$MenuBarListener;)V

    .line 130
    invoke-direct {p0}, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->initParam()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 239
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 240
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 375
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->finish()V

    .line 377
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->menuBar:Landroid/widget/MenuBar;

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

.method protected onPause()V
    .locals 2

    .line 161
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 162
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 165
    :cond_0
    iget v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->mediaState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 166
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->ivGreetPlay:Landroid/widget/ImageView;

    const v1, 0x7f080126

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x3

    .line 167
    iput v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->mediaState:I

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 170
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 267
    iget-object p1, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    .line 268
    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 148
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 149
    iget-boolean v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->isSpeaker:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 151
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 154
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 156
    :goto_0
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/dialer/voicemail/settings/GreetingPlayActivity;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

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
