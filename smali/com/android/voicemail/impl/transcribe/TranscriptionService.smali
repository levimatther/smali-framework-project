.class public Lcom/android/voicemail/impl/transcribe/TranscriptionService;
.super Landroid/app/job/JobService;
.source "TranscriptionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/voicemail/impl/transcribe/TranscriptionService$Callback;,
        Lcom/android/voicemail/impl/transcribe/TranscriptionService$JobCallback;
    }
.end annotation


# static fields
.field static final EXTRA_VOICEMAIL_URI:Ljava/lang/String; = "extra_voicemail_uri"


# instance fields
.field private clientFactory:Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory;

.field private configProvider:Lcom/android/voicemail/impl/transcribe/TranscriptionConfigProvider;

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private jobParameters:Landroid/app/job/JobParameters;

.field private originalPolicy:Landroid/os/StrictMode$VmPolicy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 87
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory;Lcom/android/voicemail/impl/transcribe/TranscriptionConfigProvider;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionService;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 96
    iput-object p2, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionService;->clientFactory:Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory;

    .line 97
    iput-object p3, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionService;->configProvider:Lcom/android/voicemail/impl/transcribe/TranscriptionConfigProvider;

    return-void
.end method

.method static synthetic access$100(Lcom/android/voicemail/impl/transcribe/TranscriptionService;)Landroid/app/job/JobParameters;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionService;->jobParameters:Landroid/app/job/JobParameters;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/voicemail/impl/transcribe/TranscriptionService;)Z
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/voicemail/impl/transcribe/TranscriptionService;->checkForWork()Z

    move-result p0

    return p0
.end method

.method public static cancelTranscriptions(Landroid/content/Context;)V
    .locals 1

    .line 80
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    const-string v0, "TranscriptionService.cancelTranscriptions"

    .line 81
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 82
    const-class v0, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    const/16 v0, 0xcb

    .line 83
    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->cancel(I)V

    return-void
.end method

.method private checkForWork()Z
    .locals 5

    .line 153
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    .line 154
    iget-object v0, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionService;->jobParameters:Landroid/app/job/JobParameters;

    invoke-virtual {v0}, Landroid/app/job/JobParameters;->dequeueWork()Landroid/app/job/JobWorkItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    invoke-direct {p0}, Lcom/android/voicemail/impl/transcribe/TranscriptionService;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/android/voicemail/impl/transcribe/TranscriptionTask;

    new-instance v3, Lcom/android/voicemail/impl/transcribe/TranscriptionService$Callback;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/voicemail/impl/transcribe/TranscriptionService$Callback;-><init>(Lcom/android/voicemail/impl/transcribe/TranscriptionService;Lcom/android/voicemail/impl/transcribe/TranscriptionService$1;)V

    .line 157
    invoke-direct {p0}, Lcom/android/voicemail/impl/transcribe/TranscriptionService;->getClientFactory()Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory;

    move-result-object v4

    invoke-direct {v2, p0, v3, v0, v4}, Lcom/android/voicemail/impl/transcribe/TranscriptionTask;-><init>(Landroid/content/Context;Lcom/android/voicemail/impl/transcribe/TranscriptionService$JobCallback;Landroid/app/job/JobWorkItem;Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private cleanup()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionService;->clientFactory:Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory;->shutdown()V

    .line 139
    iput-object v1, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionService;->clientFactory:Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory;

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionService;->executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    .line 142
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 143
    iput-object v1, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionService;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionService;->originalPolicy:Landroid/os/StrictMode$VmPolicy;

    if-eqz v0, :cond_2

    .line 146
    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 147
    iput-object v1, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionService;->originalPolicy:Landroid/os/StrictMode$VmPolicy;

    :cond_2
    return-void
.end method

.method private getClientFactory()Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory;
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionService;->clientFactory:Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory;

    invoke-direct {p0}, Lcom/android/voicemail/impl/transcribe/TranscriptionService;->getConfigProvider()Lcom/android/voicemail/impl/transcribe/TranscriptionConfigProvider;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory;-><init>(Landroid/content/Context;Lcom/android/voicemail/impl/transcribe/TranscriptionConfigProvider;)V

    iput-object v0, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionService;->clientFactory:Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory;

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionService;->clientFactory:Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory;

    return-object v0
.end method

.method private getConfigProvider()Lcom/android/voicemail/impl/transcribe/TranscriptionConfigProvider;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionService;->configProvider:Lcom/android/voicemail/impl/transcribe/TranscriptionConfigProvider;

    if-nez v0, :cond_0

    .line 192
    new-instance v0, Lcom/android/voicemail/impl/transcribe/TranscriptionConfigProvider;

    invoke-direct {v0, p0}, Lcom/android/voicemail/impl/transcribe/TranscriptionConfigProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionService;->configProvider:Lcom/android/voicemail/impl/transcribe/TranscriptionConfigProvider;

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionService;->configProvider:Lcom/android/voicemail/impl/transcribe/TranscriptionConfigProvider;

    return-object v0
.end method

.method private getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionService;->executorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 169
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionService;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionService;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private static makeWorkItem(Landroid/net/Uri;)Landroid/app/job/JobWorkItem;
    .locals 2

    .line 185
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "extra_voicemail_uri"

    .line 186
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 187
    new-instance p0, Landroid/app/job/JobWorkItem;

    invoke-direct {p0, v0}, Landroid/app/job/JobWorkItem;-><init>(Landroid/content/Intent;)V

    return-object p0
.end method

.method public static transcribeVoicemail(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 5

    .line 61
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    .line 62
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastO()Z

    move-result v0

    const-string v1, "TranscriptionService.transcribeVoicemail"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "scheduling transcription"

    .line 63
    invoke-static {v1, v3, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/voicemail/impl/transcribe/TranscriptionService;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    const/16 v3, 0xcb

    invoke-direct {v1, v3, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const-wide/16 v3, 0x0

    .line 67
    invoke-virtual {v1, v3, v4}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 68
    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 69
    const-class v3, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    .line 70
    invoke-static {p1}, Lcom/android/voicemail/impl/transcribe/TranscriptionService;->makeWorkItem(Landroid/net/Uri;)Landroid/app/job/JobWorkItem;

    move-result-object p1

    .line 71
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/app/job/JobScheduler;->enqueue(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;)I

    move-result p0

    if-ne p0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2

    :cond_1
    new-array p0, v2, [Ljava/lang/Object;

    const-string p1, "not supported"

    .line 73
    invoke-static {v1, p1, p0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .line 131
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    const-string v0, "TranscriptionService.onDestroy"

    .line 132
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 133
    invoke-direct {p0}, Lcom/android/voicemail/impl/transcribe/TranscriptionService;->cleanup()V

    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 4

    .line 102
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    const-string v0, "TranscriptionService.onStartJob"

    .line 103
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 104
    invoke-direct {p0}, Lcom/android/voicemail/impl/transcribe/TranscriptionService;->getConfigProvider()Lcom/android/voicemail/impl/transcribe/TranscriptionConfigProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/voicemail/impl/transcribe/TranscriptionConfigProvider;->isVoicemailTranscriptionEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string/jumbo v1, "transcription not enabled, exiting."

    .line 105
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 107
    :cond_0
    invoke-direct {p0}, Lcom/android/voicemail/impl/transcribe/TranscriptionService;->getConfigProvider()Lcom/android/voicemail/impl/transcribe/TranscriptionConfigProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/voicemail/impl/transcribe/TranscriptionConfigProvider;->getServerAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    const-string/jumbo v1, "transcription server not configured, exiting."

    .line 108
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 111
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "transcription server address: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionService;->configProvider:Lcom/android/voicemail/impl/transcribe/TranscriptionConfigProvider;

    .line 113
    invoke-virtual {v3}, Lcom/android/voicemail/impl/transcribe/TranscriptionConfigProvider;->getServerAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    .line 111
    invoke-static {v0, v1, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    invoke-static {}, Landroid/os/StrictMode;->getVmPolicy()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionService;->originalPolicy:Landroid/os/StrictMode$VmPolicy;

    .line 115
    invoke-static {}, Landroid/os/StrictMode;->enableDefaults()V

    .line 116
    iput-object p1, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionService;->jobParameters:Landroid/app/job/JobParameters;

    .line 117
    invoke-direct {p0}, Lcom/android/voicemail/impl/transcribe/TranscriptionService;->checkForWork()Z

    move-result p1

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    .line 123
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    const-string p1, "TranscriptionService.onStopJob"

    .line 124
    invoke-static {p1}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 125
    invoke-direct {p0}, Lcom/android/voicemail/impl/transcribe/TranscriptionService;->cleanup()V

    const/4 p1, 0x1

    return p1
.end method
