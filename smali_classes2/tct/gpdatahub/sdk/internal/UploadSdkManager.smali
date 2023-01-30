.class public Ltct/gpdatahub/sdk/internal/UploadSdkManager;
.super Ljava/lang/Object;
.source "UploadSdkManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sDataHubService:Lcom/tct/internal/gpdatahub/IDataHubManager;

.field private static final sObject:Ljava/lang/Object;

.field private static sUploadSdkManager:Ltct/gpdatahub/sdk/internal/UploadSdkManager;


# instance fields
.field private isTrackEnableFromServer:Z

.field private mContext:Landroid/content/Context;

.field private mDataHubStatusListener:Lcom/tct/internal/gpdatahub/IDataHubStatusListener$Stub;

.field private mProcessor:Ltct/gpdatahub/sdk/Processor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->TAG:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->sObject:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 36
    sput-object v0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->sDataHubService:Lcom/tct/internal/gpdatahub/IDataHubManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->isTrackEnableFromServer:Z

    .line 46
    new-instance v0, Ltct/gpdatahub/sdk/internal/UploadSdkManager$1;

    invoke-direct {v0, p0}, Ltct/gpdatahub/sdk/internal/UploadSdkManager$1;-><init>(Ltct/gpdatahub/sdk/internal/UploadSdkManager;)V

    iput-object v0, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mDataHubStatusListener:Lcom/tct/internal/gpdatahub/IDataHubStatusListener$Stub;

    if-nez p1, :cond_0

    .line 88
    sget-object p1, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->TAG:Ljava/lang/String;

    const-string v0, "Context is null,quit init UploadSdkManager!"

    invoke-static {p1, v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 91
    :cond_0
    new-instance v0, Ltct/gpdatahub/sdk/Processor;

    invoke-direct {v0, p1}, Ltct/gpdatahub/sdk/Processor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mProcessor:Ltct/gpdatahub/sdk/Processor;

    .line 92
    iput-object p1, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mContext:Landroid/content/Context;

    .line 93
    invoke-static {p1}, Ltct/gpdatahub/sdk/gpupload/DataHubManagerChooser;->getDataHubManagerInstance(Landroid/content/Context;)Lcom/tct/internal/gpdatahub/IDataHubManager;

    move-result-object p1

    sput-object p1, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->sDataHubService:Lcom/tct/internal/gpdatahub/IDataHubManager;

    .line 94
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->isGPVersion()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 95
    invoke-direct {p0}, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->initLocalDataHubService()V

    :cond_1
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/internal/UploadSdkManager;
    .locals 2

    .line 103
    sget-object v0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->sUploadSdkManager:Ltct/gpdatahub/sdk/internal/UploadSdkManager;

    if-eqz v0, :cond_0

    return-object v0

    .line 106
    :cond_0
    sget-object v0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->sObject:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    :try_start_0
    sget-object v1, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->sUploadSdkManager:Ltct/gpdatahub/sdk/internal/UploadSdkManager;

    if-nez v1, :cond_1

    .line 108
    new-instance v1, Ltct/gpdatahub/sdk/internal/UploadSdkManager;

    invoke-direct {v1, p0}, Ltct/gpdatahub/sdk/internal/UploadSdkManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->sUploadSdkManager:Ltct/gpdatahub/sdk/internal/UploadSdkManager;

    .line 110
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    sget-object p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->sUploadSdkManager:Ltct/gpdatahub/sdk/internal/UploadSdkManager;

    return-object p0

    :catchall_0
    move-exception p0

    .line 110
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private initLocalDataHubService()V
    .locals 1

    .line 76
    sget-object v0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->sDataHubService:Lcom/tct/internal/gpdatahub/IDataHubManager;

    if-eqz v0, :cond_0

    check-cast v0, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->isEnableDataHub()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->enableTrackFromServer()V

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->disableTrackFromServer()V

    :goto_0
    return-void
.end method

.method private declared-synchronized registerRemoteDataHubStatusListener()V
    .locals 3

    monitor-enter p0

    .line 65
    :try_start_0
    sget-object v0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->sDataHubService:Lcom/tct/internal/gpdatahub/IDataHubManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 67
    :try_start_1
    sget-object v0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->sDataHubService:Lcom/tct/internal/gpdatahub/IDataHubManager;

    iget-object v1, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mDataHubStatusListener:Lcom/tct/internal/gpdatahub/IDataHubStatusListener$Stub;

    iget-object v2, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tct/internal/gpdatahub/IDataHubManager;->registerListener(Lcom/tct/internal/gpdatahub/IDataHubStatusListener;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 69
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public deleteMobileEventByDay(Ljava/lang/String;)V
    .locals 1

    .line 612
    :try_start_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 615
    :cond_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mProcessor:Ltct/gpdatahub/sdk/Processor;

    invoke-virtual {v0, p1}, Ltct/gpdatahub/sdk/Processor;->deleteMobileEventByDay(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 617
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public deleteMobileEventById(JJ)V
    .locals 1

    .line 598
    :try_start_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 601
    :cond_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mProcessor:Ltct/gpdatahub/sdk/Processor;

    invoke-virtual {v0, p1, p2, p3, p4}, Ltct/gpdatahub/sdk/Processor;->deleteMobileEventById(JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 603
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public disableTrackFromServer()V
    .locals 3

    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->isTrackEnableFromServer:Z

    .line 127
    sget-object v0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableTrackFromServer, isTrackEnableFromServer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->isTrackEnableFromServer:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public enableTrackFromServer()V
    .locals 3

    const/4 v0, 0x1

    .line 118
    iput-boolean v0, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->isTrackEnableFromServer:Z

    .line 119
    sget-object v0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableTrackFromServer, isTrackEnableFromServer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->isTrackEnableFromServer:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getDataHubService()Lcom/tct/internal/gpdatahub/IDataHubManager;
    .locals 1

    .line 40
    sget-object v0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->sDataHubService:Lcom/tct/internal/gpdatahub/IDataHubManager;

    if-eqz v0, :cond_0

    return-object v0

    .line 43
    :cond_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/DataHubManagerChooser;->getDataHubManagerInstance(Landroid/content/Context;)Lcom/tct/internal/gpdatahub/IDataHubManager;

    move-result-object v0

    return-object v0
.end method

.method public getTrackFromServer()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->isTrackEnableFromServer:Z

    return v0
.end method

.method public insertSystem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 471
    :try_start_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 474
    :cond_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mProcessor:Ltct/gpdatahub/sdk/Processor;

    invoke-virtual {v0, p1, p2}, Ltct/gpdatahub/sdk/Processor;->trackSystemInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 476
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public insertUnique(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;II)V
    .locals 11

    move-object v1, p0

    .line 505
    :try_start_0
    iget-object v0, v1, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 508
    :cond_0
    iget-object v2, v1, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mProcessor:Ltct/gpdatahub/sdk/Processor;

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Ltct/gpdatahub/sdk/Processor;->insertUnique(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 510
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public insertUnique(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;IILjava/lang/String;)V
    .locals 12

    move-object v1, p0

    .line 570
    :try_start_0
    iget-object v0, v1, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 573
    :cond_0
    iget-object v2, v1, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mProcessor:Ltct/gpdatahub/sdk/Processor;

    move-object v3, p1

    move-wide v4, p2

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    invoke-virtual/range {v2 .. v11}, Ltct/gpdatahub/sdk/Processor;->insertUnique(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 575
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public insertUpload(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;II)V
    .locals 11

    move-object v1, p0

    .line 488
    :try_start_0
    iget-object v0, v1, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 491
    :cond_0
    iget-object v2, v1, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mProcessor:Ltct/gpdatahub/sdk/Processor;

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Ltct/gpdatahub/sdk/Processor;->insertUpload(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 493
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public insertUpload(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;IILjava/lang/String;)V
    .locals 12

    move-object v1, p0

    .line 553
    :try_start_0
    iget-object v0, v1, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 556
    :cond_0
    iget-object v2, v1, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mProcessor:Ltct/gpdatahub/sdk/Processor;

    move-object v3, p1

    move-wide v4, p2

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    invoke-virtual/range {v2 .. v11}, Ltct/gpdatahub/sdk/Processor;->insertUpload(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 558
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public insertUploadRecordByStartId(JIIZ)V
    .locals 7

    .line 457
    :try_start_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 460
    :cond_0
    iget-object v1, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mProcessor:Ltct/gpdatahub/sdk/Processor;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Ltct/gpdatahub/sdk/Processor;->insertUploadRecordByStartId(JIIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 462
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public insertUploadRecordByStartId(JIIZLjava/lang/String;)V
    .locals 8

    .line 536
    :try_start_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 539
    :cond_0
    iget-object v1, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mProcessor:Ltct/gpdatahub/sdk/Processor;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Ltct/gpdatahub/sdk/Processor;->insertUploadRecordByStartId(JIIZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 541
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public isGPVersion()Z
    .locals 1

    .line 622
    iget-object v0, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;

    move-result-object v0

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->isGPVersion()Z

    move-result v0

    return v0
.end method

.method public queryFailedUpload()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltct/gpdatahub/sdk/models/UploadModel;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 331
    :try_start_0
    iget-object v1, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    return-object v0

    .line 334
    :cond_0
    iget-object v1, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mProcessor:Ltct/gpdatahub/sdk/Processor;

    invoke-virtual {v1}, Ltct/gpdatahub/sdk/Processor;->queryFailedUpload()Ljava/util/List;

    move-result-object v1

    .line 335
    sget-object v2, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryFailedUpload:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 338
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    return-object v0
.end method

.method public queryFailedUploadByDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ltct/gpdatahub/sdk/models/UploadModel;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 349
    :try_start_0
    iget-object v1, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    return-object v0

    .line 352
    :cond_0
    iget-object v1, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mProcessor:Ltct/gpdatahub/sdk/Processor;

    invoke-virtual {v1, p1, p2}, Ltct/gpdatahub/sdk/Processor;->queryFailedUploadByDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 353
    sget-object p2, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryFailedUploadByDate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 356
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    return-object v0
.end method

.method public queryLatestUpload()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltct/gpdatahub/sdk/models/UploadModel;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 314
    :try_start_0
    iget-object v1, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    return-object v0

    .line 317
    :cond_0
    iget-object v1, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mProcessor:Ltct/gpdatahub/sdk/Processor;

    invoke-virtual {v1}, Ltct/gpdatahub/sdk/Processor;->queryLatestUpload()Ljava/util/List;

    move-result-object v1

    .line 318
    sget-object v2, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryLatestUpload:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 321
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    return-object v0
.end method

.method public queryMobileEvent()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 142
    :try_start_0
    iget-object v1, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    return-object v0

    .line 145
    :cond_0
    iget-object v1, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mProcessor:Ltct/gpdatahub/sdk/Processor;

    invoke-virtual {v1}, Ltct/gpdatahub/sdk/Processor;->queryMobileEvent()Ljava/lang/String;

    move-result-object v1

    .line 146
    sget-object v2, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryMobileEvent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 149
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    return-object v0
.end method

.method public queryMobileEventByDay(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 178
    :try_start_0
    iget-object v1, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    return-object v0

    .line 181
    :cond_0
    iget-object v1, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mProcessor:Ltct/gpdatahub/sdk/Processor;

    invoke-virtual {v1, p1}, Ltct/gpdatahub/sdk/Processor;->queryMobileEventByDay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 182
    sget-object v1, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryMobileEventByDay:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 185
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    return-object v0
.end method

.method public queryMobileEventById(JJ)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 195
    :try_start_0
    iget-object v1, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    return-object v0

    .line 198
    :cond_0
    iget-object v1, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mProcessor:Ltct/gpdatahub/sdk/Processor;

    invoke-virtual {v1, p1, p2, p3, p4}, Ltct/gpdatahub/sdk/Processor;->queryMobileEventById(JJ)Ljava/lang/String;

    move-result-object p1

    .line 199
    sget-object p2, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "queryMobileEventById:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 202
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    return-object v0
.end method

.method public queryNeedToUploadByDateAndFailTimes(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ltct/gpdatahub/sdk/models/UploadModel;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 368
    :try_start_0
    iget-object v1, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    return-object v0

    .line 371
    :cond_0
    iget-object v1, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mProcessor:Ltct/gpdatahub/sdk/Processor;

    invoke-virtual {v1, p1, p2, p3}, Ltct/gpdatahub/sdk/Processor;->queryNeedToUploadByDateAndFailTimes(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    .line 372
    sget-object p2, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryNeedToUploadByDateAndFailTimes:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 375
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    return-object v0
.end method

.method public queryNewestMobileEventId()J
    .locals 5

    .line 229
    :try_start_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 232
    :cond_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mProcessor:Ltct/gpdatahub/sdk/Processor;

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/Processor;->queryNewestMobileEventId()J

    move-result-wide v0

    .line 233
    sget-object v2, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryNewestMobileEventId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 236
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public queryRecordDateMobileEvent()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 161
    :try_start_0
    iget-object v1, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    return-object v0

    .line 164
    :cond_0
    iget-object v1, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mProcessor:Ltct/gpdatahub/sdk/Processor;

    invoke-virtual {v1}, Ltct/gpdatahub/sdk/Processor;->queryRecordDateMobileEvent()Ljava/lang/String;

    move-result-object v1

    .line 165
    sget-object v2, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryRecordDateMobileEvent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 168
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    return-object v0
.end method

.method public queryRecordDateMobileEventByIdSet(Ljava/util/Set;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 212
    :try_start_0
    iget-object v1, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    return-object v0

    .line 215
    :cond_0
    iget-object v1, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mProcessor:Ltct/gpdatahub/sdk/Processor;

    invoke-virtual {v1, p1}, Ltct/gpdatahub/sdk/Processor;->queryRecordDateMobileEventByIdSet(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    .line 216
    sget-object v1, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryRecordDateMobileEventByIdSet:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 219
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    return-object v0
.end method

.method public querySuccessUpload()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltct/gpdatahub/sdk/models/UploadModel;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 385
    :try_start_0
    iget-object v1, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    return-object v0

    .line 388
    :cond_0
    iget-object v1, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mProcessor:Ltct/gpdatahub/sdk/Processor;

    invoke-virtual {v1}, Ltct/gpdatahub/sdk/Processor;->querySuccessUpload()Ljava/util/List;

    move-result-object v1

    .line 389
    sget-object v2, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "querySuccessUpload:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 392
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    return-object v0
.end method

.method public querySuccessUploadByDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ltct/gpdatahub/sdk/models/UploadModel;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 403
    :try_start_0
    iget-object v1, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    return-object v0

    .line 406
    :cond_0
    iget-object v1, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mProcessor:Ltct/gpdatahub/sdk/Processor;

    invoke-virtual {v1, p1, p2}, Ltct/gpdatahub/sdk/Processor;->querySuccessUploadByDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 407
    sget-object p2, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "querySuccessUploadByDate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 410
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    return-object v0
.end method

.method public queryTaskFlagByStartId(J)I
    .locals 3

    const/4 v0, 0x0

    .line 263
    :try_start_0
    iget-object v1, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    return v0

    .line 266
    :cond_0
    iget-object v1, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mProcessor:Ltct/gpdatahub/sdk/Processor;

    invoke-virtual {v1, p1, p2}, Ltct/gpdatahub/sdk/Processor;->queryTaskFlagByStartId(J)I

    move-result p1

    .line 267
    sget-object p2, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryTaskFlagByStartId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 270
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    return v0
.end method

.method public queryUpload()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltct/gpdatahub/sdk/models/UploadModel;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 246
    :try_start_0
    iget-object v1, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    return-object v0

    .line 249
    :cond_0
    iget-object v1, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mProcessor:Ltct/gpdatahub/sdk/Processor;

    invoke-virtual {v1}, Ltct/gpdatahub/sdk/Processor;->queryUpload()Ljava/util/List;

    move-result-object v1

    .line 250
    sget-object v2, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryUpload:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 253
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    return-object v0
.end method

.method public queryUploadByDay(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ltct/gpdatahub/sdk/models/UploadModel;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 297
    :try_start_0
    iget-object v1, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    return-object v0

    .line 300
    :cond_0
    iget-object v1, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mProcessor:Ltct/gpdatahub/sdk/Processor;

    invoke-virtual {v1, p1}, Ltct/gpdatahub/sdk/Processor;->queryUploadByDay(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 301
    sget-object v1, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryUploadByDay:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 304
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    return-object v0
.end method

.method public queryUploadByStartId(J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Ltct/gpdatahub/sdk/models/UploadModel;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 280
    :try_start_0
    iget-object v1, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    return-object v0

    .line 283
    :cond_0
    iget-object v1, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mProcessor:Ltct/gpdatahub/sdk/Processor;

    invoke-virtual {v1, p1, p2}, Ltct/gpdatahub/sdk/Processor;->queryUploadByStartId(J)Ljava/util/List;

    move-result-object p1

    .line 284
    sget-object p2, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryUploadByStartId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 287
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    return-object v0
.end method

.method public queryUploadFlagByDate(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    .line 420
    :try_start_0
    iget-object v1, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    return v0

    .line 423
    :cond_0
    iget-object v1, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mProcessor:Ltct/gpdatahub/sdk/Processor;

    invoke-virtual {v1, p1}, Ltct/gpdatahub/sdk/Processor;->queryUploadFlagByDate(Ljava/lang/String;)I

    move-result p1

    .line 424
    sget-object v1, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryUploadFlagByDate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 427
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    return v0
.end method

.method public queryUploadProcessByDate(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    .line 437
    :try_start_0
    iget-object v1, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    return v0

    .line 440
    :cond_0
    iget-object v1, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mProcessor:Ltct/gpdatahub/sdk/Processor;

    invoke-virtual {v1, p1}, Ltct/gpdatahub/sdk/Processor;->queryUploadProcessByDate(Ljava/lang/String;)I

    move-result p1

    .line 441
    sget-object v1, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryUploadProcessByDate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 444
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    return v0
.end method

.method public updateUpload(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;II)V
    .locals 11

    move-object v1, p0

    .line 519
    :try_start_0
    iget-object v0, v1, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 522
    :cond_0
    iget-object v2, v1, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mProcessor:Ltct/gpdatahub/sdk/Processor;

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Ltct/gpdatahub/sdk/Processor;->updateUpload(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 524
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public updateUpload(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;IILjava/lang/String;)V
    .locals 12

    move-object v1, p0

    .line 584
    :try_start_0
    iget-object v0, v1, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 587
    :cond_0
    iget-object v2, v1, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->mProcessor:Ltct/gpdatahub/sdk/Processor;

    move-object v3, p1

    move-wide v4, p2

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    invoke-virtual/range {v2 .. v11}, Ltct/gpdatahub/sdk/Processor;->updateUpload(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 589
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
