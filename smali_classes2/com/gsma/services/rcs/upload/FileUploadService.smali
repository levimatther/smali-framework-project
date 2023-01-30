.class public final Lcom/gsma/services/rcs/upload/FileUploadService;
.super Lcom/gsma/services/rcs/RcsService;
.source "FileUploadService.java"


# static fields
.field private static sApiCompatible:Z = false


# instance fields
.field private apiConnection:Landroid/content/ServiceConnection;

.field private mApi:Lcom/gsma/services/rcs/upload/IFileUploadService;

.field private final mFileUploadListener:Lcom/gsma/services/rcs/upload/IFileUploadListener;

.field private final mFileUploadListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/gsma/services/rcs/upload/FileUploadListener;",
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

    iput-object p1, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->mFileUploadListeners:Ljava/util/Set;

    .line 130
    new-instance p1, Lcom/gsma/services/rcs/upload/FileUploadService$1;

    invoke-direct {p1, p0}, Lcom/gsma/services/rcs/upload/FileUploadService$1;-><init>(Lcom/gsma/services/rcs/upload/FileUploadService;)V

    iput-object p1, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->apiConnection:Landroid/content/ServiceConnection;

    .line 340
    new-instance p1, Lcom/gsma/services/rcs/upload/FileUploadService$2;

    invoke-direct {p1, p0}, Lcom/gsma/services/rcs/upload/FileUploadService$2;-><init>(Lcom/gsma/services/rcs/upload/FileUploadService;)V

    iput-object p1, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->mFileUploadListener:Lcom/gsma/services/rcs/upload/IFileUploadListener;

    return-void
.end method

.method static synthetic access$000(Lcom/gsma/services/rcs/upload/FileUploadService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Lcom/gsma/services/rcs/upload/FileUploadService;->registerEventListeners()V

    return-void
.end method

.method static synthetic access$100(Lcom/gsma/services/rcs/upload/FileUploadService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/gsma/services/rcs/upload/FileUploadService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/gsma/services/rcs/upload/FileUploadService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Lcom/gsma/services/rcs/upload/FileUploadService;->unregisterEventListeners()V

    return-void
.end method

.method static synthetic access$400(Lcom/gsma/services/rcs/upload/FileUploadService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/gsma/services/rcs/upload/FileUploadService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/gsma/services/rcs/upload/FileUploadService;)Ljava/util/Set;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->mFileUploadListeners:Ljava/util/Set;

    return-object p0
.end method

.method private registerEventListeners()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 401
    invoke-virtual {p0}, Lcom/gsma/services/rcs/upload/FileUploadService;->registerRcsServiceRegistrationListener()V

    .line 402
    invoke-direct {p0}, Lcom/gsma/services/rcs/upload/FileUploadService;->registerFileUploadListener()V

    return-void
.end method

.method private registerFileUploadListener()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 379
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->mApi:Lcom/gsma/services/rcs/upload/IFileUploadService;

    if-eqz v0, :cond_0

    .line 383
    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->mFileUploadListener:Lcom/gsma/services/rcs/upload/IFileUploadListener;

    invoke-interface {v0, v1}, Lcom/gsma/services/rcs/upload/IFileUploadService;->addEventListener(Lcom/gsma/services/rcs/upload/IFileUploadListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 385
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 380
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method private tryToGrantUriPermissionToStackServices(Landroid/net/Uri;)V
    .locals 4

    .line 163
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 166
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gsma/services/rcs/upload/IFileUploadService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    iget-object v1, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 169
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 170
    iget-object v2, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->mCtx:Landroid/content/Context;

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

    .line 406
    invoke-virtual {p0}, Lcom/gsma/services/rcs/upload/FileUploadService;->unregisterRcsServiceRegistrationListener()V

    .line 407
    invoke-direct {p0}, Lcom/gsma/services/rcs/upload/FileUploadService;->unregisterFileUploadListener()V

    return-void
.end method

.method private unregisterFileUploadListener()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 390
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->mApi:Lcom/gsma/services/rcs/upload/IFileUploadService;

    if-eqz v0, :cond_0

    .line 394
    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->mFileUploadListener:Lcom/gsma/services/rcs/upload/IFileUploadListener;

    invoke-interface {v0, v1}, Lcom/gsma/services/rcs/upload/IFileUploadService;->removeEventListener(Lcom/gsma/services/rcs/upload/IFileUploadListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 396
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 391
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method


# virtual methods
.method public addEventListener(Lcom/gsma/services/rcs/upload/FileUploadListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->mFileUploadListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 315
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 316
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 310
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsIllegalArgumentException;

    const-string v0, "listener must not be null!"

    invoke-direct {p1, v0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public canUploadFile()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->mApi:Lcom/gsma/services/rcs/upload/IFileUploadService;

    if-eqz v0, :cond_0

    .line 187
    :try_start_0
    invoke-interface {v0}, Lcom/gsma/services/rcs/upload/IFileUploadService;->canUploadFile()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 190
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 184
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public final connect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPermissionDeniedException;
        }
    .end annotation

    .line 87
    sget-boolean v0, Lcom/gsma/services/rcs/upload/FileUploadService;->sApiCompatible:Z

    if-nez v0, :cond_1

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->mRcsServiceControl:Lcom/gsma/services/rcs/RcsServiceControl;

    invoke-virtual {v0, p0}, Lcom/gsma/services/rcs/RcsServiceControl;->isCompatible(Lcom/gsma/services/rcs/RcsService;)Z

    move-result v0

    sput-boolean v0, Lcom/gsma/services/rcs/upload/FileUploadService;->sApiCompatible:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsPermissionDeniedException;

    const-string v1, "The TAPI client version of the file upload service is not compatible with the TAPI service implementation version on this device!"

    invoke-direct {v0, v1}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/gsma/services/rcs/RcsServiceException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 95
    new-instance v1, Lcom/gsma/services/rcs/RcsPermissionDeniedException;

    const-string v2, "The compatibility of TAPI client version with the TAPI service implementation version of this device cannot be checked for the file upload service!"

    invoke-direct {v1, v2, v0}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 100
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gsma/services/rcs/upload/IFileUploadService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.tct.cs.rcs"

    .line 101
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    iget-object v1, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->mCtx:Landroid/content/Context;

    iget-object v2, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->apiConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public disconnect()V
    .locals 2

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->mCtx:Landroid/content/Context;

    iget-object v1, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->apiConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public getConfiguration()Lcom/gsma/services/rcs/upload/FileUploadServiceConfiguration;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->mApi:Lcom/gsma/services/rcs/upload/IFileUploadService;

    if-eqz v0, :cond_0

    .line 207
    :try_start_0
    new-instance v0, Lcom/gsma/services/rcs/upload/FileUploadServiceConfiguration;

    iget-object v1, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->mApi:Lcom/gsma/services/rcs/upload/IFileUploadService;

    invoke-interface {v1}, Lcom/gsma/services/rcs/upload/IFileUploadService;->getConfiguration()Lcom/gsma/services/rcs/upload/IFileUploadServiceConfiguration;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gsma/services/rcs/upload/FileUploadServiceConfiguration;-><init>(Lcom/gsma/services/rcs/upload/IFileUploadServiceConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 210
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 204
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getFileUpload(Ljava/lang/String;)Lcom/gsma/services/rcs/upload/FileUpload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->mApi:Lcom/gsma/services/rcs/upload/IFileUploadService;

    if-eqz v0, :cond_1

    .line 288
    :try_start_0
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/upload/IFileUploadService;->getFileUpload(Ljava/lang/String;)Lcom/gsma/services/rcs/upload/IFileUpload;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 290
    new-instance v0, Lcom/gsma/services/rcs/upload/FileUpload;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/upload/FileUpload;-><init>(Lcom/gsma/services/rcs/upload/IFileUpload;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 295
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 296
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 285
    :cond_1
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public getFileUploads()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/gsma/services/rcs/upload/FileUpload;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->mApi:Lcom/gsma/services/rcs/upload/IFileUploadService;

    if-eqz v0, :cond_1

    .line 261
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 262
    iget-object v1, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->mApi:Lcom/gsma/services/rcs/upload/IFileUploadService;

    invoke-interface {v1}, Lcom/gsma/services/rcs/upload/IFileUploadService;->getFileUploads()Ljava/util/List;

    move-result-object v1

    .line 263
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 264
    new-instance v3, Lcom/gsma/services/rcs/upload/FileUpload;

    invoke-static {v2}, Lcom/gsma/services/rcs/upload/IFileUpload$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/upload/IFileUpload;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/gsma/services/rcs/upload/FileUpload;-><init>(Lcom/gsma/services/rcs/upload/IFileUpload;)V

    .line 265
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    .line 270
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 258
    :cond_1
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public removeEventListener(Lcom/gsma/services/rcs/upload/FileUploadListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 333
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->mFileUploadListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 335
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 336
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 330
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
    check-cast p1, Lcom/gsma/services/rcs/upload/IFileUploadService;

    iput-object p1, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->mApi:Lcom/gsma/services/rcs/upload/IFileUploadService;

    return-void
.end method

.method public uploadFile(Landroid/net/Uri;Z)Lcom/gsma/services/rcs/upload/FileUpload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsMaxAllowedSessionLimitReachedException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->mApi:Lcom/gsma/services/rcs/upload/IFileUploadService;

    if-eqz v0, :cond_1

    .line 234
    :try_start_0
    invoke-direct {p0, p1}, Lcom/gsma/services/rcs/upload/FileUploadService;->tryToGrantUriPermissionToStackServices(Landroid/net/Uri;)V

    .line 235
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->mApi:Lcom/gsma/services/rcs/upload/IFileUploadService;

    invoke-interface {v0, p1, p2}, Lcom/gsma/services/rcs/upload/IFileUploadService;->uploadFile(Landroid/net/Uri;Z)Lcom/gsma/services/rcs/upload/IFileUpload;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 237
    new-instance p2, Lcom/gsma/services/rcs/upload/FileUpload;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/upload/FileUpload;-><init>(Lcom/gsma/services/rcs/upload/IFileUpload;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 242
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 243
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsMaxAllowedSessionLimitReachedException;->assertException(Ljava/lang/Exception;)V

    .line 244
    new-instance p2, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 230
    :cond_1
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method
