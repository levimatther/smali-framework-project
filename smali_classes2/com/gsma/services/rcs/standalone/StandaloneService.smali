.class public Lcom/gsma/services/rcs/standalone/StandaloneService;
.super Lcom/gsma/services/rcs/RcsService;
.source "StandaloneService.java"


# static fields
.field private static sApiCompatible:Z = false


# instance fields
.field private apiConnection:Landroid/content/ServiceConnection;

.field private mApi:Lcom/gsma/services/rcs/standalone/IStandaloneService;

.field private final mStandaloneListener:Lcom/gsma/services/rcs/standalone/IStandaloneListener;

.field private final mStandaloneNotifiers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/gsma/services/rcs/standalone/StandaloneListener;",
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

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/gsma/services/rcs/RcsService;-><init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V

    .line 48
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/gsma/services/rcs/standalone/StandaloneService;->mStandaloneNotifiers:Ljava/util/Set;

    .line 111
    new-instance p1, Lcom/gsma/services/rcs/standalone/StandaloneService$1;

    invoke-direct {p1, p0}, Lcom/gsma/services/rcs/standalone/StandaloneService$1;-><init>(Lcom/gsma/services/rcs/standalone/StandaloneService;)V

    iput-object p1, p0, Lcom/gsma/services/rcs/standalone/StandaloneService;->apiConnection:Landroid/content/ServiceConnection;

    .line 378
    new-instance p1, Lcom/gsma/services/rcs/standalone/StandaloneService$2;

    invoke-direct {p1, p0}, Lcom/gsma/services/rcs/standalone/StandaloneService$2;-><init>(Lcom/gsma/services/rcs/standalone/StandaloneService;)V

    iput-object p1, p0, Lcom/gsma/services/rcs/standalone/StandaloneService;->mStandaloneListener:Lcom/gsma/services/rcs/standalone/IStandaloneListener;

    return-void
.end method

.method static synthetic access$000(Lcom/gsma/services/rcs/standalone/StandaloneService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lcom/gsma/services/rcs/standalone/StandaloneService;->registerEventListeners()V

    return-void
.end method

.method static synthetic access$100(Lcom/gsma/services/rcs/standalone/StandaloneService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/gsma/services/rcs/standalone/StandaloneService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/gsma/services/rcs/standalone/StandaloneService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/gsma/services/rcs/standalone/StandaloneService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/gsma/services/rcs/standalone/StandaloneService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lcom/gsma/services/rcs/standalone/StandaloneService;->unregisterEventListeners()V

    return-void
.end method

.method static synthetic access$400(Lcom/gsma/services/rcs/standalone/StandaloneService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/gsma/services/rcs/standalone/StandaloneService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/gsma/services/rcs/standalone/StandaloneService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/gsma/services/rcs/standalone/StandaloneService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/gsma/services/rcs/standalone/StandaloneService;)Ljava/util/Set;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/gsma/services/rcs/standalone/StandaloneService;->mStandaloneNotifiers:Ljava/util/Set;

    return-object p0
.end method

.method private registerEventListeners()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 464
    invoke-virtual {p0}, Lcom/gsma/services/rcs/standalone/StandaloneService;->registerRcsServiceRegistrationListener()V

    .line 465
    invoke-direct {p0}, Lcom/gsma/services/rcs/standalone/StandaloneService;->registerStandaloneListener()V

    return-void
.end method

.method private registerStandaloneListener()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 442
    iget-object v0, p0, Lcom/gsma/services/rcs/standalone/StandaloneService;->mApi:Lcom/gsma/services/rcs/standalone/IStandaloneService;

    if-eqz v0, :cond_0

    .line 446
    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/standalone/StandaloneService;->mStandaloneListener:Lcom/gsma/services/rcs/standalone/IStandaloneListener;

    invoke-interface {v0, v1}, Lcom/gsma/services/rcs/standalone/IStandaloneService;->addStandaloneEventListener(Lcom/gsma/services/rcs/standalone/IStandaloneListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 448
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 443
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method private tryToGrantStandalonePermissionToStackServices(Lcom/gsma/services/rcs/standalone/StandaloneMessageEntity;)V
    .locals 2

    .line 369
    invoke-virtual {p1}, Lcom/gsma/services/rcs/standalone/StandaloneMessageEntity;->getMessage()Ljava/util/List;

    move-result-object p1

    .line 370
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/standalone/entity/Entity;

    .line 371
    instance-of v1, v0, Lcom/gsma/services/rcs/standalone/entity/FileEntity;

    if-eqz v1, :cond_0

    .line 372
    check-cast v0, Lcom/gsma/services/rcs/standalone/entity/FileEntity;

    invoke-virtual {v0}, Lcom/gsma/services/rcs/standalone/entity/FileEntity;->getFile()Landroid/net/Uri;

    move-result-object v0

    .line 373
    invoke-direct {p0, v0}, Lcom/gsma/services/rcs/standalone/StandaloneService;->tryToGrantUriPermissionToStackServices(Landroid/net/Uri;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private tryToGrantUriPermissionToStackServices(Landroid/net/Uri;)V
    .locals 4

    .line 356
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 359
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 360
    iget-object v1, p0, Lcom/gsma/services/rcs/standalone/StandaloneService;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 362
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 363
    iget-object v2, p0, Lcom/gsma/services/rcs/standalone/StandaloneService;->mCtx:Landroid/content/Context;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, p1, v3}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private unregisterEventListeners()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 469
    invoke-virtual {p0}, Lcom/gsma/services/rcs/standalone/StandaloneService;->unregisterRcsServiceRegistrationListener()V

    .line 470
    invoke-direct {p0}, Lcom/gsma/services/rcs/standalone/StandaloneService;->unregisterStandaloneListener()V

    return-void
.end method

.method private unregisterStandaloneListener()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 453
    iget-object v0, p0, Lcom/gsma/services/rcs/standalone/StandaloneService;->mApi:Lcom/gsma/services/rcs/standalone/IStandaloneService;

    if-eqz v0, :cond_0

    .line 457
    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/standalone/StandaloneService;->mStandaloneListener:Lcom/gsma/services/rcs/standalone/IStandaloneListener;

    invoke-interface {v0, v1}, Lcom/gsma/services/rcs/standalone/IStandaloneService;->removeStandaloneEventListener(Lcom/gsma/services/rcs/standalone/IStandaloneListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 459
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 454
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method


# virtual methods
.method public addStandaloneEventListener(Lcom/gsma/services/rcs/standalone/StandaloneListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/standalone/StandaloneService;->mStandaloneNotifiers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 266
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 267
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 261
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsIllegalArgumentException;

    const-string v0, "listener must not be null!"

    invoke-direct {p1, v0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public connect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPermissionDeniedException;
        }
    .end annotation

    .line 68
    sget-boolean v0, Lcom/gsma/services/rcs/standalone/StandaloneService;->sApiCompatible:Z

    if-nez v0, :cond_1

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/standalone/StandaloneService;->mRcsServiceControl:Lcom/gsma/services/rcs/RcsServiceControl;

    invoke-virtual {v0, p0}, Lcom/gsma/services/rcs/RcsServiceControl;->isCompatible(Lcom/gsma/services/rcs/RcsService;)Z

    move-result v0

    sput-boolean v0, Lcom/gsma/services/rcs/standalone/StandaloneService;->sApiCompatible:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsPermissionDeniedException;

    const-string v1, "The TAPI client version of the chat service is not compatible with the TAPI service implementation version on this device!"

    invoke-direct {v0, v1}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/gsma/services/rcs/RcsServiceException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 76
    new-instance v1, Lcom/gsma/services/rcs/RcsPermissionDeniedException;

    const-string v2, "The compatibility of TAPI client version with the TAPI service implementation version of this device cannot be checked for the chat service!"

    invoke-direct {v1, v2, v0}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 81
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gsma/services/rcs/standalone/IStandaloneService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.tct.cs.rcs"

    .line 82
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    iget-object v1, p0, Lcom/gsma/services/rcs/standalone/StandaloneService;->mCtx:Landroid/content/Context;

    iget-object v2, p0, Lcom/gsma/services/rcs/standalone/StandaloneService;->apiConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public deleteMessage(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 339
    iget-object v0, p0, Lcom/gsma/services/rcs/standalone/StandaloneService;->mApi:Lcom/gsma/services/rcs/standalone/IStandaloneService;

    if-eqz v0, :cond_0

    .line 343
    :try_start_0
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/standalone/IStandaloneService;->deleteMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 345
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 346
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public disconnect()V
    .locals 2

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/standalone/StandaloneService;->mCtx:Landroid/content/Context;

    iget-object v1, p0, Lcom/gsma/services/rcs/standalone/StandaloneService;->apiConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public getStandaloneMessage(Ljava/lang/String;)Lcom/gsma/services/rcs/standalone/StandaloneMessage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/gsma/services/rcs/standalone/StandaloneService;->mApi:Lcom/gsma/services/rcs/standalone/IStandaloneService;

    if-eqz v0, :cond_0

    .line 324
    :try_start_0
    new-instance v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage;

    iget-object v1, p0, Lcom/gsma/services/rcs/standalone/StandaloneService;->mApi:Lcom/gsma/services/rcs/standalone/IStandaloneService;

    invoke-interface {v1, p1}, Lcom/gsma/services/rcs/standalone/IStandaloneService;->getStandaloneMessage(Ljava/lang/String;)Lcom/gsma/services/rcs/standalone/IStandaloneMessage;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/standalone/StandaloneMessage;-><init>(Lcom/gsma/services/rcs/standalone/IStandaloneMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 326
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 327
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public isAllowedToSendStandaloneMessage()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/gsma/services/rcs/standalone/StandaloneService;->mApi:Lcom/gsma/services/rcs/standalone/IStandaloneService;

    if-eqz v0, :cond_0

    .line 304
    :try_start_0
    invoke-interface {v0}, Lcom/gsma/services/rcs/standalone/IStandaloneService;->isAllowedToSendStandaloneMessage()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 306
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 307
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 301
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public markMessageAsRead(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/gsma/services/rcs/standalone/StandaloneService;->mApi:Lcom/gsma/services/rcs/standalone/IStandaloneService;

    if-eqz v0, :cond_0

    .line 243
    :try_start_0
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/standalone/IStandaloneService;->markMessageAsRead(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 245
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 246
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public reSendStandaloneMessage(Ljava/lang/String;)Lcom/gsma/services/rcs/standalone/StandaloneMessage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/gsma/services/rcs/standalone/StandaloneService;->mApi:Lcom/gsma/services/rcs/standalone/IStandaloneService;

    if-eqz v0, :cond_1

    .line 193
    :try_start_0
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/standalone/IStandaloneService;->getStandaloneMessage(Ljava/lang/String;)Lcom/gsma/services/rcs/standalone/IStandaloneMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    new-instance v1, Lcom/gsma/services/rcs/standalone/StandaloneMessage;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/standalone/StandaloneMessage;-><init>(Lcom/gsma/services/rcs/standalone/IStandaloneMessage;)V

    invoke-virtual {v1}, Lcom/gsma/services/rcs/standalone/StandaloneMessage;->getContent()Lcom/gsma/services/rcs/standalone/StandaloneMessageEntity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/gsma/services/rcs/standalone/StandaloneService;->tryToGrantStandalonePermissionToStackServices(Lcom/gsma/services/rcs/standalone/StandaloneMessageEntity;)V

    .line 198
    iget-object v0, p0, Lcom/gsma/services/rcs/standalone/StandaloneService;->mApi:Lcom/gsma/services/rcs/standalone/IStandaloneService;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/standalone/IStandaloneService;->reSendStandaloneMessage(Ljava/lang/String;)Lcom/gsma/services/rcs/standalone/IStandaloneMessage;

    move-result-object p1

    .line 199
    new-instance v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/standalone/StandaloneMessage;-><init>(Lcom/gsma/services/rcs/standalone/IStandaloneMessage;)V

    return-object v0

    .line 195
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 201
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 202
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_1
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public removeStandaloneEventListener(Lcom/gsma/services/rcs/standalone/StandaloneListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/standalone/StandaloneService;->mStandaloneNotifiers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 287
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 288
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 282
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsIllegalArgumentException;

    const-string v0, "listener must not be null!"

    invoke-direct {p1, v0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sendStandaloneMessage(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/standalone/StandaloneMessageEntity;)Lcom/gsma/services/rcs/standalone/StandaloneMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/gsma/services/rcs/standalone/StandaloneService;->mApi:Lcom/gsma/services/rcs/standalone/IStandaloneService;

    if-eqz v0, :cond_0

    .line 152
    :try_start_0
    invoke-direct {p0, p2}, Lcom/gsma/services/rcs/standalone/StandaloneService;->tryToGrantStandalonePermissionToStackServices(Lcom/gsma/services/rcs/standalone/StandaloneMessageEntity;)V

    .line 153
    iget-object v0, p0, Lcom/gsma/services/rcs/standalone/StandaloneService;->mApi:Lcom/gsma/services/rcs/standalone/IStandaloneService;

    invoke-interface {v0, p1, p2}, Lcom/gsma/services/rcs/standalone/IStandaloneService;->sendStandaloneMessage(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/standalone/StandaloneMessageEntity;)Lcom/gsma/services/rcs/standalone/IStandaloneMessage;

    move-result-object p1

    .line 154
    new-instance p2, Lcom/gsma/services/rcs/standalone/StandaloneMessage;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/standalone/StandaloneMessage;-><init>(Lcom/gsma/services/rcs/standalone/IStandaloneMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 156
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 157
    new-instance p2, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 149
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public sendStandaloneMessage(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/standalone/StandaloneMessageEntity;)Lcom/gsma/services/rcs/standalone/StandaloneMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/gsma/services/rcs/standalone/StandaloneService;->mApi:Lcom/gsma/services/rcs/standalone/IStandaloneService;

    if-eqz v0, :cond_0

    .line 177
    :try_start_0
    invoke-direct {p0, p3}, Lcom/gsma/services/rcs/standalone/StandaloneService;->tryToGrantStandalonePermissionToStackServices(Lcom/gsma/services/rcs/standalone/StandaloneMessageEntity;)V

    .line 178
    iget-object v0, p0, Lcom/gsma/services/rcs/standalone/StandaloneService;->mApi:Lcom/gsma/services/rcs/standalone/IStandaloneService;

    invoke-interface {v0, p1, p2, p3}, Lcom/gsma/services/rcs/standalone/IStandaloneService;->sendStandaloneMessage2(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/standalone/StandaloneMessageEntity;)Lcom/gsma/services/rcs/standalone/IStandaloneMessage;

    move-result-object p1

    .line 179
    new-instance p2, Lcom/gsma/services/rcs/standalone/StandaloneMessage;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/standalone/StandaloneMessage;-><init>(Lcom/gsma/services/rcs/standalone/IStandaloneMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 181
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 182
    new-instance p2, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 174
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public sendStandaloneMessageToGroup(Ljava/lang/String;Lcom/gsma/services/rcs/standalone/StandaloneMessageEntity;)Lcom/gsma/services/rcs/standalone/StandaloneMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/gsma/services/rcs/standalone/StandaloneService;->mApi:Lcom/gsma/services/rcs/standalone/IStandaloneService;

    if-eqz v0, :cond_0

    .line 221
    :try_start_0
    invoke-direct {p0, p2}, Lcom/gsma/services/rcs/standalone/StandaloneService;->tryToGrantStandalonePermissionToStackServices(Lcom/gsma/services/rcs/standalone/StandaloneMessageEntity;)V

    .line 222
    iget-object v0, p0, Lcom/gsma/services/rcs/standalone/StandaloneService;->mApi:Lcom/gsma/services/rcs/standalone/IStandaloneService;

    invoke-interface {v0, p1, p2}, Lcom/gsma/services/rcs/standalone/IStandaloneService;->sendStandaloneMessageToGroup(Ljava/lang/String;Lcom/gsma/services/rcs/standalone/StandaloneMessageEntity;)Lcom/gsma/services/rcs/standalone/IStandaloneMessage;

    move-result-object p1

    .line 223
    new-instance p2, Lcom/gsma/services/rcs/standalone/StandaloneMessage;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/standalone/StandaloneMessage;-><init>(Lcom/gsma/services/rcs/standalone/IStandaloneMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 225
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 226
    new-instance p2, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 218
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method protected setApi(Landroid/os/IInterface;)V
    .locals 0

    .line 104
    invoke-super {p0, p1}, Lcom/gsma/services/rcs/RcsService;->setApi(Landroid/os/IInterface;)V

    .line 105
    check-cast p1, Lcom/gsma/services/rcs/standalone/IStandaloneService;

    iput-object p1, p0, Lcom/gsma/services/rcs/standalone/StandaloneService;->mApi:Lcom/gsma/services/rcs/standalone/IStandaloneService;

    return-void
.end method
