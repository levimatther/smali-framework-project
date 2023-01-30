.class public final Lcom/gsma/services/rcs/extension/MultimediaSessionService;
.super Lcom/gsma/services/rcs/RcsService;
.source "MultimediaSessionService.java"


# static fields
.field private static sApiCompatible:Z = false


# instance fields
.field private apiConnection:Landroid/content/ServiceConnection;

.field private mApi:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

.field private final mMultimediaMessagingSessionListener:Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;

.field private final mMultimediaMessagingSessionListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMultimediaStreamingSessionListener:Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;

.field private final mMultimediaStreamingSessionListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/gsma/services/rcs/extension/MultimediaStreamingSessionListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/gsma/services/rcs/RcsService;-><init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V

    .line 68
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mMultimediaMessagingSessionListeners:Ljava/util/Set;

    .line 70
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mMultimediaStreamingSessionListeners:Ljava/util/Set;

    .line 133
    new-instance p1, Lcom/gsma/services/rcs/extension/MultimediaSessionService$1;

    invoke-direct {p1, p0}, Lcom/gsma/services/rcs/extension/MultimediaSessionService$1;-><init>(Lcom/gsma/services/rcs/extension/MultimediaSessionService;)V

    iput-object p1, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->apiConnection:Landroid/content/ServiceConnection;

    .line 796
    new-instance p1, Lcom/gsma/services/rcs/extension/MultimediaSessionService$2;

    invoke-direct {p1, p0}, Lcom/gsma/services/rcs/extension/MultimediaSessionService$2;-><init>(Lcom/gsma/services/rcs/extension/MultimediaSessionService;)V

    iput-object p1, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mMultimediaMessagingSessionListener:Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;

    .line 860
    new-instance p1, Lcom/gsma/services/rcs/extension/MultimediaSessionService$3;

    invoke-direct {p1, p0}, Lcom/gsma/services/rcs/extension/MultimediaSessionService$3;-><init>(Lcom/gsma/services/rcs/extension/MultimediaSessionService;)V

    iput-object p1, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mMultimediaStreamingSessionListener:Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;

    return-void
.end method

.method static synthetic access$000(Lcom/gsma/services/rcs/extension/MultimediaSessionService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->registerEventListeners()V

    return-void
.end method

.method static synthetic access$100(Lcom/gsma/services/rcs/extension/MultimediaSessionService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/gsma/services/rcs/extension/MultimediaSessionService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/gsma/services/rcs/extension/MultimediaSessionService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->unregisterEventListeners()V

    return-void
.end method

.method static synthetic access$400(Lcom/gsma/services/rcs/extension/MultimediaSessionService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/gsma/services/rcs/extension/MultimediaSessionService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/gsma/services/rcs/extension/MultimediaSessionService;)Ljava/util/Set;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mMultimediaMessagingSessionListeners:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$700(Lcom/gsma/services/rcs/extension/MultimediaSessionService;)Ljava/util/Set;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mMultimediaStreamingSessionListeners:Ljava/util/Set;

    return-object p0
.end method

.method private registerEventListeners()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 933
    invoke-virtual {p0}, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->registerRcsServiceRegistrationListener()V

    .line 934
    invoke-direct {p0}, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->registerMultimediaMessagingListener()V

    .line 935
    invoke-direct {p0}, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->registerMultimediaStreamingListener()V

    return-void
.end method

.method private registerMultimediaMessagingListener()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 911
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mApi:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    if-eqz v0, :cond_0

    .line 915
    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mMultimediaMessagingSessionListener:Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;

    invoke-interface {v0, v1}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;->addEventListener2(Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 917
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 912
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method private registerMultimediaStreamingListener()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 889
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mApi:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    if-eqz v0, :cond_0

    .line 893
    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mMultimediaStreamingSessionListener:Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;

    invoke-interface {v0, v1}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;->addEventListener3(Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 895
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 890
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method private unregisterEventListeners()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 939
    invoke-virtual {p0}, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->unregisterRcsServiceRegistrationListener()V

    .line 940
    invoke-direct {p0}, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->unregisterMultimediaMessagingListener()V

    .line 941
    invoke-direct {p0}, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->unregisterMultimediaStreamingListener()V

    return-void
.end method

.method private unregisterMultimediaMessagingListener()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 922
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mApi:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    if-eqz v0, :cond_0

    .line 926
    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mMultimediaMessagingSessionListener:Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;

    invoke-interface {v0, v1}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;->removeEventListener2(Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 928
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 923
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method private unregisterMultimediaStreamingListener()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 900
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mApi:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    if-eqz v0, :cond_0

    .line 904
    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mMultimediaStreamingSessionListener:Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;

    invoke-interface {v0, v1}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;->removeEventListener3(Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 906
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 901
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method


# virtual methods
.method public addEventListener(Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 461
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mMultimediaMessagingSessionListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 463
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 464
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 458
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsIllegalArgumentException;

    const-string v0, "listener must not be null!"

    invoke-direct {p1, v0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addEventListener(Lcom/gsma/services/rcs/extension/MultimediaStreamingSessionListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 501
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mMultimediaStreamingSessionListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 503
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 504
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 498
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsIllegalArgumentException;

    const-string v0, "listener must not be null!"

    invoke-direct {p1, v0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final connect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPermissionDeniedException;
        }
    .end annotation

    .line 90
    sget-boolean v0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->sApiCompatible:Z

    if-nez v0, :cond_1

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mRcsServiceControl:Lcom/gsma/services/rcs/RcsServiceControl;

    invoke-virtual {v0, p0}, Lcom/gsma/services/rcs/RcsServiceControl;->isCompatible(Lcom/gsma/services/rcs/RcsService;)Z

    move-result v0

    sput-boolean v0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->sApiCompatible:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsPermissionDeniedException;

    const-string v1, "The TAPI client version of the multimedia service is not compatible with the TAPI service implementation version on this device!"

    invoke-direct {v0, v1}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/gsma/services/rcs/RcsServiceException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 98
    new-instance v1, Lcom/gsma/services/rcs/RcsPermissionDeniedException;

    const-string v2, "The compatibility of TAPI client version with the TAPI service implementation version of this device cannot be checked for the multimedia service!"

    invoke-direct {v1, v2, v0}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 103
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.tct.cs.rcs"

    .line 104
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    iget-object v1, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mCtx:Landroid/content/Context;

    iget-object v2, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->apiConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public deleteMessage(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 596
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mApi:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    if-eqz v0, :cond_0

    .line 600
    :try_start_0
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;->deleteMsg(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 602
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 603
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 604
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 597
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public deleteMessages([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 617
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mApi:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    if-eqz v0, :cond_0

    .line 621
    :try_start_0
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;->deleteMsgs([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 623
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 624
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 625
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 618
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public deleteMsgByCallSessionId(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 638
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mApi:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    if-eqz v0, :cond_0

    .line 642
    :try_start_0
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;->deleteMsgByCallSessionId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 644
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 645
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 646
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 639
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public disconnect()V
    .locals 2

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mCtx:Landroid/content/Context;

    iget-object v1, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->apiConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public getCallComposerMode(Lcom/gsma/services/rcs/contact/ContactId;)Lcom/tct/cs/services/rcs/enrichedcall/CallComposerMode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;,
            Lcom/gsma/services/rcs/RcsPermissionDeniedException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 573
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mApi:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    if-eqz v0, :cond_0

    .line 577
    :try_start_0
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;->getCallComposerMode(Lcom/gsma/services/rcs/contact/ContactId;)I

    move-result p1

    .line 578
    invoke-static {p1}, Lcom/tct/cs/services/rcs/enrichedcall/CallComposerMode;->valueOf(I)Lcom/tct/cs/services/rcs/enrichedcall/CallComposerMode;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 580
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 581
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;->assertException(Ljava/lang/Exception;)V

    .line 582
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;->assertException(Ljava/lang/Exception;)V

    .line 583
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 574
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public getConfiguration()Lcom/gsma/services/rcs/extension/MultimediaSessionServiceConfiguration;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mApi:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    if-eqz v0, :cond_0

    .line 173
    :try_start_0
    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaSessionServiceConfiguration;

    iget-object v1, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mApi:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    invoke-interface {v1}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;->getConfiguration()Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gsma/services/rcs/extension/MultimediaSessionServiceConfiguration;-><init>(Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 176
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 170
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getECMsgesByCallSessionId(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;,
            Lcom/gsma/services/rcs/RcsPermissionDeniedException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 782
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mApi:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    if-eqz v0, :cond_0

    .line 786
    :try_start_0
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;->getECMsgesByCallSessionId(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 788
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 789
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 790
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;->assertException(Ljava/lang/Exception;)V

    .line 791
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;->assertException(Ljava/lang/Exception;)V

    .line 792
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 783
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public getMaskType(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 699
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mApi:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    if-eqz v0, :cond_0

    .line 703
    :try_start_0
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;->getMaskValue(Ljava/lang/String;)I

    move-result p1

    .line 704
    invoke-static {p1}, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;->convertMaskType(I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 706
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 700
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public getMessagingSession(Ljava/lang/String;)Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mApi:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    if-eqz v0, :cond_1

    .line 301
    :try_start_0
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;->getMessagingSession(Ljava/lang/String;)Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 303
    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;-><init>(Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 308
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 309
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 298
    :cond_1
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public getMessagingSessions(Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mApi:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    if-eqz v0, :cond_1

    .line 272
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 273
    iget-object v1, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mApi:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    invoke-interface {v1, p1}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;->getMessagingSessions(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 274
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 275
    new-instance v2, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;

    .line 276
    invoke-static {v1}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;-><init>(Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;)V

    .line 277
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p1

    .line 282
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 283
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 269
    :cond_1
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public getStreamingSession(Ljava/lang/String;)Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 432
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mApi:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    if-eqz v0, :cond_1

    .line 436
    :try_start_0
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;->getStreamingSession(Ljava/lang/String;)Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 438
    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;-><init>(Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 443
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 444
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 433
    :cond_1
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public getStreamingSessions(Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 403
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mApi:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    if-eqz v0, :cond_1

    .line 407
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 408
    iget-object v1, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mApi:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    invoke-interface {v1, p1}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;->getStreamingSessions(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 409
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 410
    new-instance v2, Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;

    .line 411
    invoke-static {v1}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;-><init>(Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;)V

    .line 412
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p1

    .line 417
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 418
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 404
    :cond_1
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public initiateMessagingSession(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;)Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;,
            Lcom/gsma/services/rcs/RcsPermissionDeniedException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mApi:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    if-eqz v0, :cond_1

    .line 202
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;->initiateMessagingSession(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;)Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 205
    new-instance p2, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;-><init>(Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 210
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 211
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;->assertException(Ljava/lang/Exception;)V

    .line 212
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;->assertException(Ljava/lang/Exception;)V

    .line 213
    new-instance p2, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 199
    :cond_1
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public initiateMessagingSession(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;[Ljava/lang/String;[Ljava/lang/String;)Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;,
            Lcom/gsma/services/rcs/RcsPermissionDeniedException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mApi:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    if-eqz v0, :cond_1

    .line 243
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;->initiateMessagingSession2(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;[Ljava/lang/String;[Ljava/lang/String;)Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 246
    new-instance p2, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;-><init>(Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 251
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 252
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;->assertException(Ljava/lang/Exception;)V

    .line 253
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;->assertException(Ljava/lang/Exception;)V

    .line 254
    new-instance p2, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 240
    :cond_1
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public initiateStreamingSession(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;)Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;,
            Lcom/gsma/services/rcs/RcsPermissionDeniedException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 335
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mApi:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    if-eqz v0, :cond_1

    .line 339
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;->initiateStreamingSession(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;)Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 342
    new-instance p2, Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;-><init>(Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 347
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 348
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;->assertException(Ljava/lang/Exception;)V

    .line 349
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;->assertException(Ljava/lang/Exception;)V

    .line 350
    new-instance p2, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 336
    :cond_1
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public initiateStreamingSession(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;)Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;,
            Lcom/gsma/services/rcs/RcsPermissionDeniedException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 374
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mApi:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    if-eqz v0, :cond_1

    .line 378
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;->initiateStreamingSession2(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;)Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 381
    new-instance p2, Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/extension/MultimediaStreamingSession;-><init>(Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 386
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 387
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;->assertException(Ljava/lang/Exception;)V

    .line 388
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;->assertException(Ljava/lang/Exception;)V

    .line 389
    new-instance p2, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 375
    :cond_1
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public removeEventListener(Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 481
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mMultimediaMessagingSessionListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 483
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 484
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 478
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsIllegalArgumentException;

    const-string v0, "listener must not be null!"

    invoke-direct {p1, v0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeEventListener(Lcom/gsma/services/rcs/extension/MultimediaStreamingSessionListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 521
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mMultimediaStreamingSessionListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 523
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 524
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 518
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsIllegalArgumentException;

    const-string v0, "listener must not be null!"

    invoke-direct {p1, v0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public saveFileUri(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;,
            Lcom/gsma/services/rcs/RcsPermissionDeniedException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 723
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mApi:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    if-eqz v0, :cond_0

    .line 727
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;->saveFileUri(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 730
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 731
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;->assertException(Ljava/lang/Exception;)V

    .line 732
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;->assertException(Ljava/lang/Exception;)V

    .line 733
    new-instance p2, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 724
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public sendInstantMultimediaMessage(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;[BLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;,
            Lcom/gsma/services/rcs/RcsPermissionDeniedException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 547
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mApi:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    if-eqz v0, :cond_0

    .line 551
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;->sendInstantMultimediaMessage(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;[BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 554
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 555
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;->assertException(Ljava/lang/Exception;)V

    .line 556
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;->assertException(Ljava/lang/Exception;)V

    .line 557
    new-instance p2, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 548
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method protected setApi(Landroid/os/IInterface;)V
    .locals 0

    .line 126
    invoke-super {p0, p1}, Lcom/gsma/services/rcs/RcsService;->setApi(Landroid/os/IInterface;)V

    .line 127
    check-cast p1, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    iput-object p1, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mApi:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    return-void
.end method

.method public setCallLogId(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;,
            Lcom/gsma/services/rcs/RcsPermissionDeniedException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 684
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mApi:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    if-eqz v0, :cond_0

    .line 688
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;->setCallLogId(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 690
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 691
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;->assertException(Ljava/lang/Exception;)V

    .line 692
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;->assertException(Ljava/lang/Exception;)V

    .line 693
    new-instance p2, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 685
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public setOrUpdateCallSession(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;,
            Lcom/gsma/services/rcs/RcsPermissionDeniedException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 668
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mApi:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    if-eqz v0, :cond_0

    .line 672
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;->setOrUpdateCallSession(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 675
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 676
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;->assertException(Ljava/lang/Exception;)V

    .line 677
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;->assertException(Ljava/lang/Exception;)V

    .line 678
    new-instance p2, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 669
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public setPreCallInfo(ILcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;,
            Lcom/gsma/services/rcs/RcsPermissionDeniedException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    move-object v1, p0

    .line 752
    iget-object v0, v1, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->mApi:Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    if-eqz v0, :cond_1

    move-object v4, p2

    .line 756
    :try_start_0
    invoke-interface {v0, p2}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;->initiateMultimediaTelephony(Lcom/gsma/services/rcs/contact/ContactId;)Lcom/gsma/services/rcs/extension/IMultimediaTelephony;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 759
    new-instance v2, Lcom/gsma/services/rcs/extension/MultimediaTelephony;

    invoke-direct {v2, v0}, Lcom/gsma/services/rcs/extension/MultimediaTelephony;-><init>(Lcom/gsma/services/rcs/extension/IMultimediaTelephony;)V

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    .line 760
    invoke-virtual/range {v2 .. v11}, Lcom/gsma/services/rcs/extension/MultimediaTelephony;->setPreCallMsg(ILcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 763
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 764
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;->assertException(Ljava/lang/Exception;)V

    .line 765
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;->assertException(Ljava/lang/Exception;)V

    .line 766
    new-instance v2, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v2, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 753
    :cond_1
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method
