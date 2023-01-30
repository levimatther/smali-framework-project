.class public final Lcom/gsma/services/rcs/sharing/video/VideoSharingService;
.super Lcom/gsma/services/rcs/RcsService;
.source "VideoSharingService.java"


# static fields
.field private static sApiCompatible:Z = false


# instance fields
.field private apiConnection:Landroid/content/ServiceConnection;

.field private mApi:Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

.field private final mVideoSharingListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/gsma/services/rcs/sharing/video/VideoSharingListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mVideoSharingSharing:Lcom/gsma/services/rcs/sharing/video/IVideoSharingListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/gsma/services/rcs/RcsService;-><init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V

    .line 67
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->mVideoSharingListeners:Ljava/util/Set;

    .line 130
    new-instance p1, Lcom/gsma/services/rcs/sharing/video/VideoSharingService$1;

    invoke-direct {p1, p0}, Lcom/gsma/services/rcs/sharing/video/VideoSharingService$1;-><init>(Lcom/gsma/services/rcs/sharing/video/VideoSharingService;)V

    iput-object p1, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->apiConnection:Landroid/content/ServiceConnection;

    .line 339
    new-instance p1, Lcom/gsma/services/rcs/sharing/video/VideoSharingService$2;

    invoke-direct {p1, p0}, Lcom/gsma/services/rcs/sharing/video/VideoSharingService$2;-><init>(Lcom/gsma/services/rcs/sharing/video/VideoSharingService;)V

    iput-object p1, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->mVideoSharingSharing:Lcom/gsma/services/rcs/sharing/video/IVideoSharingListener;

    return-void
.end method

.method static synthetic access$000(Lcom/gsma/services/rcs/sharing/video/VideoSharingService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->registerEventListeners()V

    return-void
.end method

.method static synthetic access$100(Lcom/gsma/services/rcs/sharing/video/VideoSharingService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/gsma/services/rcs/sharing/video/VideoSharingService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/gsma/services/rcs/sharing/video/VideoSharingService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->unregisterEventListeners()V

    return-void
.end method

.method static synthetic access$400(Lcom/gsma/services/rcs/sharing/video/VideoSharingService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/gsma/services/rcs/sharing/video/VideoSharingService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/gsma/services/rcs/sharing/video/VideoSharingService;)Ljava/util/Set;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->mVideoSharingListeners:Ljava/util/Set;

    return-object p0
.end method

.method private registerEventListeners()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 389
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->registerRcsServiceRegistrationListener()V

    .line 390
    invoke-direct {p0}, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->registerVideoSharingListener()V

    return-void
.end method

.method private registerVideoSharingListener()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 367
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->mApi:Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    if-eqz v0, :cond_0

    .line 371
    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->mVideoSharingSharing:Lcom/gsma/services/rcs/sharing/video/IVideoSharingListener;

    invoke-interface {v0, v1}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;->addEventListener2(Lcom/gsma/services/rcs/sharing/video/IVideoSharingListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 373
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 368
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

    .line 394
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->unregisterRcsServiceRegistrationListener()V

    .line 395
    invoke-direct {p0}, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->unregisterVideoSharingListener()V

    return-void
.end method

.method private unregisterVideoSharingListener()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->mApi:Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    if-eqz v0, :cond_0

    .line 382
    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->mVideoSharingSharing:Lcom/gsma/services/rcs/sharing/video/IVideoSharingListener;

    invoke-interface {v0, v1}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;->removeEventListener2(Lcom/gsma/services/rcs/sharing/video/IVideoSharingListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 384
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 379
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method


# virtual methods
.method public addEventListener(Lcom/gsma/services/rcs/sharing/video/VideoSharingListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->mVideoSharingListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 251
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 252
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 246
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

    .line 87
    sget-boolean v0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->sApiCompatible:Z

    if-nez v0, :cond_1

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->mRcsServiceControl:Lcom/gsma/services/rcs/RcsServiceControl;

    invoke-virtual {v0, p0}, Lcom/gsma/services/rcs/RcsServiceControl;->isCompatible(Lcom/gsma/services/rcs/RcsService;)Z

    move-result v0

    sput-boolean v0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->sApiCompatible:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsPermissionDeniedException;

    const-string v1, "The TAPI client version of the video sharing service is not compatible with the TAPI service implementation version on this device!"

    invoke-direct {v0, v1}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/gsma/services/rcs/RcsServiceException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 95
    new-instance v1, Lcom/gsma/services/rcs/RcsPermissionDeniedException;

    const-string v2, "The compatibility of TAPI client version with the TAPI service implementation version of this device cannot be checked for the video sharing service!"

    invoke-direct {v1, v2, v0}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 100
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.tct.cs.rcs"

    .line 101
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->mCtx:Landroid/content/Context;

    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->apiConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public deleteVideoSharing(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->mApi:Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    if-eqz v0, :cond_0

    .line 331
    :try_start_0
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;->deleteVideoSharing(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 334
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 335
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 328
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public deleteVideoSharings()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->mApi:Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    if-eqz v0, :cond_0

    .line 288
    :try_start_0
    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;->deleteVideoSharings()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 291
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 285
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public deleteVideoSharings(Lcom/gsma/services/rcs/contact/ContactId;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->mApi:Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    if-eqz v0, :cond_0

    .line 309
    :try_start_0
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;->deleteVideoSharings2(Lcom/gsma/services/rcs/contact/ContactId;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 312
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 313
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 306
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public disconnect()V
    .locals 2

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->mCtx:Landroid/content/Context;

    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->apiConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public getConfiguration()Lcom/gsma/services/rcs/sharing/video/VideoSharingServiceConfiguration;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->mApi:Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    if-eqz v0, :cond_0

    .line 170
    :try_start_0
    new-instance v0, Lcom/gsma/services/rcs/sharing/video/VideoSharingServiceConfiguration;

    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->mApi:Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    invoke-interface {v1}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;->getConfiguration()Lcom/gsma/services/rcs/sharing/video/IVideoSharingServiceConfiguration;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gsma/services/rcs/sharing/video/VideoSharingServiceConfiguration;-><init>(Lcom/gsma/services/rcs/sharing/video/IVideoSharingServiceConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 173
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 167
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getVideoSharing(Ljava/lang/String;)Lcom/gsma/services/rcs/sharing/video/VideoSharing;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->mApi:Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    if-eqz v0, :cond_0

    .line 228
    :try_start_0
    new-instance v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing;

    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->mApi:Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    invoke-interface {v1, p1}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;->getVideoSharing(Ljava/lang/String;)Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/sharing/video/VideoSharing;-><init>(Lcom/gsma/services/rcs/sharing/video/IVideoSharing;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 231
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 232
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 225
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public removeEventListener(Lcom/gsma/services/rcs/sharing/video/VideoSharingListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->mVideoSharingListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 271
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 272
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 266
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsIllegalArgumentException;

    const-string v0, "listener must not be null!"

    invoke-direct {p1, v0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected setApi(Landroid/os/IInterface;)V
    .locals 0

    .line 123
    invoke-super {p0, p1}, Lcom/gsma/services/rcs/RcsService;->setApi(Landroid/os/IInterface;)V

    .line 124
    check-cast p1, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    iput-object p1, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->mApi:Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    return-void
.end method

.method public shareVideo(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/sharing/video/VideoPlayer;)Lcom/gsma/services/rcs/sharing/video/VideoSharing;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->mApi:Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    if-eqz v0, :cond_1

    .line 199
    :try_start_0
    new-instance v0, Lcom/gsma/services/rcs/sharing/video/VideoPlayerImpl;

    invoke-direct {v0, p2}, Lcom/gsma/services/rcs/sharing/video/VideoPlayerImpl;-><init>(Lcom/gsma/services/rcs/sharing/video/VideoPlayer;)V

    .line 200
    iget-object p2, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->mApi:Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    invoke-interface {p2, p1, v0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;->shareVideo(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/sharing/video/IVideoPlayer;)Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 202
    new-instance p2, Lcom/gsma/services/rcs/sharing/video/VideoSharing;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/sharing/video/VideoSharing;-><init>(Lcom/gsma/services/rcs/sharing/video/IVideoSharing;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 207
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 208
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;->assertException(Ljava/lang/Exception;)V

    .line 209
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 210
    new-instance p2, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 196
    :cond_1
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method
