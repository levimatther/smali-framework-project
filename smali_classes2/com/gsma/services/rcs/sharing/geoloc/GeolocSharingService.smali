.class public final Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;
.super Lcom/gsma/services/rcs/RcsService;
.source "GeolocSharingService.java"


# static fields
.field private static sApiCompatible:Z = false


# instance fields
.field private apiConnection:Landroid/content/ServiceConnection;

.field private mApi:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;

.field private final mGeolocSharingListener:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener;

.field private final mGeolocSharingListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingListener;",
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

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/gsma/services/rcs/RcsService;-><init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V

    .line 67
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mGeolocSharingListeners:Ljava/util/Set;

    .line 130
    new-instance p1, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService$1;

    invoke-direct {p1, p0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService$1;-><init>(Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;)V

    iput-object p1, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->apiConnection:Landroid/content/ServiceConnection;

    .line 316
    new-instance p1, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService$2;

    invoke-direct {p1, p0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService$2;-><init>(Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;)V

    iput-object p1, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mGeolocSharingListener:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener;

    return-void
.end method

.method static synthetic access$000(Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->registerEventListeners()V

    return-void
.end method

.method static synthetic access$100(Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->unregisterEventListeners()V

    return-void
.end method

.method static synthetic access$400(Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;)Ljava/util/Set;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mGeolocSharingListeners:Ljava/util/Set;

    return-object p0
.end method

.method private registerEventListeners()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 378
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->registerRcsServiceRegistrationListener()V

    .line 379
    invoke-direct {p0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->registerGellocSharingListener()V

    return-void
.end method

.method private registerGellocSharingListener()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 356
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mApi:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;

    if-eqz v0, :cond_0

    .line 360
    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mGeolocSharingListener:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener;

    invoke-interface {v0, v1}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;->addEventListener2(Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 362
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 357
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

    .line 383
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->unregisterRcsServiceRegistrationListener()V

    .line 384
    invoke-direct {p0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->unregisterGellocSharingListener()V

    return-void
.end method

.method private unregisterGellocSharingListener()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 367
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mApi:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;

    if-eqz v0, :cond_0

    .line 371
    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mGeolocSharingListener:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener;

    invoke-interface {v0, v1}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;->removeEventListener2(Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener;)V
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


# virtual methods
.method public addEventListener(Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mGeolocSharingListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 291
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 292
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 286
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
    sget-boolean v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->sApiCompatible:Z

    if-nez v0, :cond_1

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mRcsServiceControl:Lcom/gsma/services/rcs/RcsServiceControl;

    invoke-virtual {v0, p0}, Lcom/gsma/services/rcs/RcsServiceControl;->isCompatible(Lcom/gsma/services/rcs/RcsService;)Z

    move-result v0

    sput-boolean v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->sApiCompatible:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsPermissionDeniedException;

    const-string v1, "The TAPI client version of the geoloc sharing service is not compatible with the TAPI service implementation version on this device!"

    invoke-direct {v0, v1}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/gsma/services/rcs/RcsServiceException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 95
    new-instance v1, Lcom/gsma/services/rcs/RcsPermissionDeniedException;

    const-string v2, "The compatibility of TAPI client version with the TAPI service implementation version of this device cannot be checked for the geoloc sharing service!"

    invoke-direct {v1, v2, v0}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 100
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.tct.cs.rcs"

    .line 101
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mCtx:Landroid/content/Context;

    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->apiConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public deleteGeolocSharing(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mApi:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;

    if-eqz v0, :cond_0

    .line 269
    :try_start_0
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;->deleteGeolocSharing(Ljava/lang/String;)V
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
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public deleteGeolocSharings()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mApi:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;

    if-eqz v0, :cond_0

    .line 228
    :try_start_0
    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;->deleteGeolocSharings()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 230
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 225
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public deleteGeolocSharings(Lcom/gsma/services/rcs/contact/ContactId;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mApi:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;

    if-eqz v0, :cond_0

    .line 248
    :try_start_0
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;->deleteGeolocSharings2(Lcom/gsma/services/rcs/contact/ContactId;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 250
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 251
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 245
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public disconnect()V
    .locals 2

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mCtx:Landroid/content/Context;

    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->apiConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public getGeolocSharing(Ljava/lang/String;)Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mApi:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;

    if-eqz v0, :cond_0

    .line 208
    :try_start_0
    new-instance v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;

    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mApi:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;

    invoke-interface {v1, p1}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;->getGeolocSharing(Ljava/lang/String;)Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;-><init>(Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 211
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 212
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 205
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public removeEventListener(Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 309
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mGeolocSharingListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 311
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 312
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 306
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
    check-cast p1, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;

    iput-object p1, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mApi:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;

    return-void
.end method

.method public shareGeoloc(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/Geoloc;)Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;,
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mApi:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;

    if-eqz v0, :cond_1

    .line 179
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;->shareGeoloc(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/Geoloc;)Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 181
    new-instance p2, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;-><init>(Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 187
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 188
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;->assertException(Ljava/lang/Exception;)V

    .line 189
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 190
    new-instance p2, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 176
    :cond_1
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method
