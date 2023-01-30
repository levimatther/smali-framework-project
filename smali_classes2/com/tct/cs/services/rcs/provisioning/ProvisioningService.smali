.class public Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;
.super Lcom/gsma/services/rcs/RcsService;
.source "ProvisioningService.java"


# static fields
.field private static sApiCompatible:Z

.field private static final sLogger:Lcom/gsma/rcs/utils/logger/Logger;


# instance fields
.field private apiConnection:Landroid/content/ServiceConnection;

.field private mApi:Lcom/tct/cs/services/rcs/provisioning/IProvisioningService;

.field private final mProvisioningListener:Lcom/tct/cs/services/rcs/provisioning/IProvisioningListener;

.field private final mProvisioningListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/tct/cs/services/rcs/provisioning/ProvisioningListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gsma/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/gsma/rcs/utils/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    const/4 v0, 0x0

    .line 41
    sput-boolean v0, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;->sApiCompatible:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/gsma/services/rcs/RcsService;-><init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V

    .line 48
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;->mProvisioningListeners:Ljava/util/Set;

    .line 112
    new-instance p1, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService$1;

    invoke-direct {p1, p0}, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService$1;-><init>(Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;)V

    iput-object p1, p0, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;->apiConnection:Landroid/content/ServiceConnection;

    .line 321
    new-instance p1, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService$2;

    invoke-direct {p1, p0}, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService$2;-><init>(Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;)V

    iput-object p1, p0, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;->mProvisioningListener:Lcom/tct/cs/services/rcs/provisioning/IProvisioningListener;

    return-void
.end method

.method static synthetic access$000(Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;->registerEventListeners()V

    return-void
.end method

.method static synthetic access$100(Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;->unregisterEventListeners()V

    return-void
.end method

.method static synthetic access$400(Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;)Ljava/util/Set;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;->mProvisioningListeners:Ljava/util/Set;

    return-object p0
.end method

.method private registerEventListeners()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 382
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;->registerRcsServiceRegistrationListener()V

    .line 383
    invoke-direct {p0}, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;->registerProvisioningListener()V

    return-void
.end method

.method private registerProvisioningListener()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;->mApi:Lcom/tct/cs/services/rcs/provisioning/IProvisioningService;

    if-eqz v0, :cond_0

    .line 364
    :try_start_0
    iget-object v1, p0, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;->mProvisioningListener:Lcom/tct/cs/services/rcs/provisioning/IProvisioningListener;

    invoke-interface {v0, v1}, Lcom/tct/cs/services/rcs/provisioning/IProvisioningService;->addProvisioningListerer(Lcom/tct/cs/services/rcs/provisioning/IProvisioningListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 366
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 361
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

    .line 387
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;->unregisterRcsServiceRegistrationListener()V

    .line 388
    invoke-direct {p0}, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;->unregisterProvisioningListener()V

    return-void
.end method

.method private unregisterProvisioningListener()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 371
    iget-object v0, p0, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;->mApi:Lcom/tct/cs/services/rcs/provisioning/IProvisioningService;

    if-eqz v0, :cond_0

    .line 375
    :try_start_0
    iget-object v1, p0, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;->mProvisioningListener:Lcom/tct/cs/services/rcs/provisioning/IProvisioningListener;

    invoke-interface {v0, v1}, Lcom/tct/cs/services/rcs/provisioning/IProvisioningService;->removeProvisioningListener(Lcom/tct/cs/services/rcs/provisioning/IProvisioningListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 377
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 372
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method


# virtual methods
.method public addProvisioningListener(Lcom/tct/cs/services/rcs/provisioning/ProvisioningListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;,
            Lcom/gsma/services/rcs/RcsIllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 154
    :try_start_0
    sget-object v0, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    const-string v1, "add provisioning listener"

    invoke-virtual {v0, v1}, Lcom/gsma/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;->mProvisioningListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 157
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 158
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 151
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

    .line 68
    sget-boolean v0, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;->sApiCompatible:Z

    if-nez v0, :cond_1

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;->mRcsServiceControl:Lcom/gsma/services/rcs/RcsServiceControl;

    invoke-virtual {v0, p0}, Lcom/gsma/services/rcs/RcsServiceControl;->isCompatible(Lcom/gsma/services/rcs/RcsService;)Z

    move-result v0

    sput-boolean v0, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;->sApiCompatible:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsPermissionDeniedException;

    const-string v1, "The TAPI client version of the ProvisioningService service is not compatible with the TAPI service implementation version on this device!"

    invoke-direct {v0, v1}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/gsma/services/rcs/RcsServiceException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 76
    new-instance v1, Lcom/gsma/services/rcs/RcsPermissionDeniedException;

    const-string v2, "The ProvisioningService of TAPI client version with the TAPI service implementation version of this device cannot be checked for the ProvisioningService service!"

    invoke-direct {v1, v2, v0}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 81
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tct/cs/services/rcs/provisioning/IProvisioningService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.tct.cs.rcs"

    .line 82
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    iget-object v1, p0, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;->mCtx:Landroid/content/Context;

    iget-object v2, p0, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;->apiConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public disconnect()V
    .locals 2

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;->mCtx:Landroid/content/Context;

    iget-object v1, p0, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;->apiConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public getProvisioningState()Lcom/tct/cs/services/rcs/provisioning/State;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;->mApi:Lcom/tct/cs/services/rcs/provisioning/IProvisioningService;

    if-eqz v0, :cond_0

    .line 290
    :try_start_0
    invoke-interface {v0}, Lcom/tct/cs/services/rcs/provisioning/IProvisioningService;->getProvisioningState()I

    move-result v0

    .line 291
    invoke-static {v0}, Lcom/tct/cs/services/rcs/provisioning/State;->valueOf(I)Lcom/tct/cs/services/rcs/provisioning/State;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 293
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 294
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 287
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getUserMessages()Lcom/tct/cs/services/rcs/provisioning/UserMessages;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;->mApi:Lcom/tct/cs/services/rcs/provisioning/IProvisioningService;

    if-eqz v0, :cond_0

    .line 268
    :try_start_0
    invoke-interface {v0}, Lcom/tct/cs/services/rcs/provisioning/IProvisioningService;->getUserMessages()Lcom/tct/cs/services/rcs/provisioning/UserMessages;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 270
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 271
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 265
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public isShowConidtionMsg()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;->mApi:Lcom/tct/cs/services/rcs/provisioning/IProvisioningService;

    if-eqz v0, :cond_0

    .line 246
    :try_start_0
    invoke-interface {v0}, Lcom/tct/cs/services/rcs/provisioning/IProvisioningService;->isShowConidtionMsg()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 248
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 249
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 243
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public onSendAcceptConfirmationResponse(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;->mApi:Lcom/tct/cs/services/rcs/provisioning/IProvisioningService;

    if-eqz v0, :cond_0

    .line 200
    :try_start_0
    sget-object v0, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    const-string v1, "Send a accept confirmation response in API"

    invoke-virtual {v0, v1}, Lcom/gsma/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;->mApi:Lcom/tct/cs/services/rcs/provisioning/IProvisioningService;

    invoke-interface {v0, p1, p2, p3}, Lcom/tct/cs/services/rcs/provisioning/IProvisioningService;->onSendAcceptConfirmationResponse(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 203
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 204
    new-instance p2, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 197
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public onSendRejectConfirmationResponse(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;->mApi:Lcom/tct/cs/services/rcs/provisioning/IProvisioningService;

    if-eqz v0, :cond_0

    .line 223
    :try_start_0
    sget-object v0, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    const-string v1, "Send a reject confirmation response in API"

    invoke-virtual {v0, v1}, Lcom/gsma/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;->mApi:Lcom/tct/cs/services/rcs/provisioning/IProvisioningService;

    invoke-interface {v0, p1, p2, p3}, Lcom/tct/cs/services/rcs/provisioning/IProvisioningService;->onSendRejectConfirmationResponse(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 226
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 227
    new-instance p2, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 220
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public removeProvisioningListener(Lcom/tct/cs/services/rcs/provisioning/ProvisioningListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;,
            Lcom/gsma/services/rcs/RcsIllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 177
    :try_start_0
    sget-object v0, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    const-string v1, "remove end user conformation request listener"

    invoke-virtual {v0, v1}, Lcom/gsma/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;->mProvisioningListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 180
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 181
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 174
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsIllegalArgumentException;

    const-string v0, "listener must not be null!"

    invoke-direct {p1, v0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected setApi(Landroid/os/IInterface;)V
    .locals 0

    .line 105
    invoke-super {p0, p1}, Lcom/gsma/services/rcs/RcsService;->setApi(Landroid/os/IInterface;)V

    .line 106
    check-cast p1, Lcom/tct/cs/services/rcs/provisioning/IProvisioningService;

    iput-object p1, p0, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;->mApi:Lcom/tct/cs/services/rcs/provisioning/IProvisioningService;

    return-void
.end method

.method public setEndUserReceiverComponent(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 309
    iget-object v0, p0, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;->mApi:Lcom/tct/cs/services/rcs/provisioning/IProvisioningService;

    if-eqz v0, :cond_0

    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;->mCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 314
    iget-object v1, p0, Lcom/tct/cs/services/rcs/provisioning/ProvisioningService;->mApi:Lcom/tct/cs/services/rcs/provisioning/IProvisioningService;

    invoke-interface {v1, v0, p1}, Lcom/tct/cs/services/rcs/provisioning/IProvisioningService;->setEndUserReceiverComponent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 316
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 317
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 310
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method
