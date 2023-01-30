.class public final Lcom/gsma/services/rcs/sharing/image/ImageSharingService;
.super Lcom/gsma/services/rcs/RcsService;
.source "ImageSharingService.java"


# static fields
.field private static sApiCompatible:Z = false


# instance fields
.field private apiConnection:Landroid/content/ServiceConnection;

.field private mApi:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

.field private final mImageSharingListener:Lcom/gsma/services/rcs/sharing/image/IImageSharingListener;

.field private final mImageSharingListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/gsma/services/rcs/sharing/image/ImageSharingListener;",
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

    .line 70
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mImageSharingListeners:Ljava/util/Set;

    .line 133
    new-instance p1, Lcom/gsma/services/rcs/sharing/image/ImageSharingService$1;

    invoke-direct {p1, p0}, Lcom/gsma/services/rcs/sharing/image/ImageSharingService$1;-><init>(Lcom/gsma/services/rcs/sharing/image/ImageSharingService;)V

    iput-object p1, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->apiConnection:Landroid/content/ServiceConnection;

    .line 359
    new-instance p1, Lcom/gsma/services/rcs/sharing/image/ImageSharingService$2;

    invoke-direct {p1, p0}, Lcom/gsma/services/rcs/sharing/image/ImageSharingService$2;-><init>(Lcom/gsma/services/rcs/sharing/image/ImageSharingService;)V

    iput-object p1, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mImageSharingListener:Lcom/gsma/services/rcs/sharing/image/IImageSharingListener;

    return-void
.end method

.method static synthetic access$000(Lcom/gsma/services/rcs/sharing/image/ImageSharingService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->registerEventListeners()V

    return-void
.end method

.method static synthetic access$100(Lcom/gsma/services/rcs/sharing/image/ImageSharingService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/gsma/services/rcs/sharing/image/ImageSharingService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/gsma/services/rcs/sharing/image/ImageSharingService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->unregisterEventListeners()V

    return-void
.end method

.method static synthetic access$400(Lcom/gsma/services/rcs/sharing/image/ImageSharingService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/gsma/services/rcs/sharing/image/ImageSharingService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/gsma/services/rcs/sharing/image/ImageSharingService;)Ljava/util/Set;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mImageSharingListeners:Ljava/util/Set;

    return-object p0
.end method

.method private registerEventListeners()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 420
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->registerRcsServiceRegistrationListener()V

    .line 421
    invoke-direct {p0}, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->registerImageSharingListener()V

    return-void
.end method

.method private registerImageSharingListener()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 398
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mApi:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    if-eqz v0, :cond_0

    .line 402
    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mImageSharingListener:Lcom/gsma/services/rcs/sharing/image/IImageSharingListener;

    invoke-interface {v0, v1}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService;->addEventListener2(Lcom/gsma/services/rcs/sharing/image/IImageSharingListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 404
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 399
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method private tryToGrantUriPermissionToStackServices(Landroid/net/Uri;)V
    .locals 4

    .line 166
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 169
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 172
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 173
    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mCtx:Landroid/content/Context;

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

    .line 425
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->unregisterRcsServiceRegistrationListener()V

    .line 426
    invoke-direct {p0}, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->unregisterImageSharingListener()V

    return-void
.end method

.method private unregisterImageSharingListener()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 409
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mApi:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    if-eqz v0, :cond_0

    .line 413
    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mImageSharingListener:Lcom/gsma/services/rcs/sharing/image/IImageSharingListener;

    invoke-interface {v0, v1}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService;->removeEventListener2(Lcom/gsma/services/rcs/sharing/image/IImageSharingListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 415
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 410
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method


# virtual methods
.method public addEventListener(Lcom/gsma/services/rcs/sharing/image/ImageSharingListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mImageSharingListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 274
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 275
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 269
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
    sget-boolean v0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->sApiCompatible:Z

    if-nez v0, :cond_1

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mRcsServiceControl:Lcom/gsma/services/rcs/RcsServiceControl;

    invoke-virtual {v0, p0}, Lcom/gsma/services/rcs/RcsServiceControl;->isCompatible(Lcom/gsma/services/rcs/RcsService;)Z

    move-result v0

    sput-boolean v0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->sApiCompatible:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsPermissionDeniedException;

    const-string v1, "The TAPI client version of the image sharing service is not compatible with the TAPI service implementation version on this device!"

    invoke-direct {v0, v1}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/gsma/services/rcs/RcsServiceException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 98
    new-instance v1, Lcom/gsma/services/rcs/RcsPermissionDeniedException;

    const-string v2, "The compatibility of TAPI client version with the TAPI service implementation version of this device cannot be checked for the image sharing service!"

    invoke-direct {v1, v2, v0}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 103
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.tct.cs.rcs"

    .line 104
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mCtx:Landroid/content/Context;

    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->apiConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public deleteImageSharing(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mApi:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    if-eqz v0, :cond_0

    .line 352
    :try_start_0
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService;->deleteImageSharing(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 354
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 355
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 349
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public deleteImageSharings()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mApi:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    if-eqz v0, :cond_0

    .line 311
    :try_start_0
    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService;->deleteImageSharings()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 313
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 308
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public deleteImageSharings(Lcom/gsma/services/rcs/contact/ContactId;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mApi:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    if-eqz v0, :cond_0

    .line 331
    :try_start_0
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService;->deleteImageSharings2(Lcom/gsma/services/rcs/contact/ContactId;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 333
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 334
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 328
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public disconnect()V
    .locals 2

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mCtx:Landroid/content/Context;

    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->apiConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public getConfiguration()Lcom/gsma/services/rcs/sharing/image/ImageSharingServiceConfiguration;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mApi:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    if-eqz v0, :cond_0

    .line 191
    :try_start_0
    new-instance v0, Lcom/gsma/services/rcs/sharing/image/ImageSharingServiceConfiguration;

    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mApi:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    invoke-interface {v1}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService;->getConfiguration()Lcom/gsma/services/rcs/sharing/image/IImageSharingServiceConfiguration;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gsma/services/rcs/sharing/image/ImageSharingServiceConfiguration;-><init>(Lcom/gsma/services/rcs/sharing/image/IImageSharingServiceConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 194
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 188
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getImageSharing(Ljava/lang/String;)Lcom/gsma/services/rcs/sharing/image/ImageSharing;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mApi:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    if-eqz v0, :cond_0

    .line 251
    :try_start_0
    new-instance v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing;

    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mApi:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    invoke-interface {v1, p1}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService;->getImageSharing(Ljava/lang/String;)Lcom/gsma/services/rcs/sharing/image/IImageSharing;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/sharing/image/ImageSharing;-><init>(Lcom/gsma/services/rcs/sharing/image/IImageSharing;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 254
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 255
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 248
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public removeEventListener(Lcom/gsma/services/rcs/sharing/image/ImageSharingListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 292
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mImageSharingListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 294
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 295
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 289
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsIllegalArgumentException;

    const-string v0, "listener must not be null!"

    invoke-direct {p1, v0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected setApi(Landroid/os/IInterface;)V
    .locals 0

    .line 126
    invoke-super {p0, p1}, Lcom/gsma/services/rcs/RcsService;->setApi(Landroid/os/IInterface;)V

    .line 127
    check-cast p1, Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    iput-object p1, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mApi:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    return-void
.end method

.method public shareImage(Lcom/gsma/services/rcs/contact/ContactId;Landroid/net/Uri;)Lcom/gsma/services/rcs/sharing/image/ImageSharing;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;,
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mApi:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    if-eqz v0, :cond_1

    .line 221
    :try_start_0
    invoke-direct {p0, p2}, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->tryToGrantUriPermissionToStackServices(Landroid/net/Uri;)V

    .line 222
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mApi:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    invoke-interface {v0, p1, p2}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService;->shareImage(Lcom/gsma/services/rcs/contact/ContactId;Landroid/net/Uri;)Lcom/gsma/services/rcs/sharing/image/IImageSharing;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 224
    new-instance p2, Lcom/gsma/services/rcs/sharing/image/ImageSharing;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/sharing/image/ImageSharing;-><init>(Lcom/gsma/services/rcs/sharing/image/IImageSharing;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 230
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 231
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;->assertException(Ljava/lang/Exception;)V

    .line 232
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 233
    new-instance p2, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 217
    :cond_1
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method
