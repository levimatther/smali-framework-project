.class public final Lcom/gsma/rcs/service/ipcalldraft/IPCallService;
.super Lcom/gsma/services/rcs/RcsService;
.source "IPCallService.java"


# static fields
.field private static sApiCompatible:Z = false


# instance fields
.field private apiConnection:Landroid/content/ServiceConnection;

.field private mApi:Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;

.field private final mIPCallListener:Lcom/gsma/rcs/service/ipcalldraft/IIPCallListener;

.field private final mIPCallListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/gsma/rcs/service/ipcalldraft/IPCallListener;",
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

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/gsma/services/rcs/RcsService;-><init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V

    .line 65
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCallService;->mIPCallListeners:Ljava/util/Set;

    .line 127
    new-instance p1, Lcom/gsma/rcs/service/ipcalldraft/IPCallService$1;

    invoke-direct {p1, p0}, Lcom/gsma/rcs/service/ipcalldraft/IPCallService$1;-><init>(Lcom/gsma/rcs/service/ipcalldraft/IPCallService;)V

    iput-object p1, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCallService;->apiConnection:Landroid/content/ServiceConnection;

    .line 334
    new-instance p1, Lcom/gsma/rcs/service/ipcalldraft/IPCallService$2;

    invoke-direct {p1, p0}, Lcom/gsma/rcs/service/ipcalldraft/IPCallService$2;-><init>(Lcom/gsma/rcs/service/ipcalldraft/IPCallService;)V

    iput-object p1, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCallService;->mIPCallListener:Lcom/gsma/rcs/service/ipcalldraft/IIPCallListener;

    return-void
.end method

.method static synthetic access$000(Lcom/gsma/rcs/service/ipcalldraft/IPCallService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Lcom/gsma/rcs/service/ipcalldraft/IPCallService;->registerEventListeners()V

    return-void
.end method

.method static synthetic access$100(Lcom/gsma/rcs/service/ipcalldraft/IPCallService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCallService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/gsma/rcs/service/ipcalldraft/IPCallService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCallService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/gsma/rcs/service/ipcalldraft/IPCallService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Lcom/gsma/rcs/service/ipcalldraft/IPCallService;->unregisterEventListeners()V

    return-void
.end method

.method static synthetic access$400(Lcom/gsma/rcs/service/ipcalldraft/IPCallService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCallService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/gsma/rcs/service/ipcalldraft/IPCallService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCallService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/gsma/rcs/service/ipcalldraft/IPCallService;)Ljava/util/Set;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCallService;->mIPCallListeners:Ljava/util/Set;

    return-object p0
.end method

.method private registerEventListeners()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 371
    invoke-virtual {p0}, Lcom/gsma/rcs/service/ipcalldraft/IPCallService;->registerRcsServiceRegistrationListener()V

    .line 372
    invoke-direct {p0}, Lcom/gsma/rcs/service/ipcalldraft/IPCallService;->registerIPCallListener()V

    return-void
.end method

.method private registerIPCallListener()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCallService;->mApi:Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;

    if-eqz v0, :cond_0

    .line 353
    :try_start_0
    iget-object v1, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCallService;->mIPCallListener:Lcom/gsma/rcs/service/ipcalldraft/IIPCallListener;

    invoke-interface {v0, v1}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;->addEventListener2(Lcom/gsma/rcs/service/ipcalldraft/IIPCallListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 355
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 350
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

    .line 376
    invoke-virtual {p0}, Lcom/gsma/rcs/service/ipcalldraft/IPCallService;->unregisterRcsServiceRegistrationListener()V

    .line 377
    invoke-direct {p0}, Lcom/gsma/rcs/service/ipcalldraft/IPCallService;->unregisterIPCallListener()V

    return-void
.end method

.method private unregisterIPCallListener()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCallService;->mApi:Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;

    if-eqz v0, :cond_0

    .line 364
    :try_start_0
    iget-object v1, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCallService;->mIPCallListener:Lcom/gsma/rcs/service/ipcalldraft/IIPCallListener;

    invoke-interface {v0, v1}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;->removeEventListener2(Lcom/gsma/rcs/service/ipcalldraft/IIPCallListener;)V
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


# virtual methods
.method public addEventListener(Lcom/gsma/rcs/service/ipcalldraft/IPCallListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsIllegalArgumentException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCallService;->mIPCallListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 307
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 308
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 302
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsIllegalArgumentException;

    const-string v0, "listener must not be null or empty!"

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

    .line 85
    sget-boolean v0, Lcom/gsma/rcs/service/ipcalldraft/IPCallService;->sApiCompatible:Z

    if-nez v0, :cond_1

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCallService;->mRcsServiceControl:Lcom/gsma/services/rcs/RcsServiceControl;

    invoke-virtual {v0, p0}, Lcom/gsma/services/rcs/RcsServiceControl;->isCompatible(Lcom/gsma/services/rcs/RcsService;)Z

    move-result v0

    sput-boolean v0, Lcom/gsma/rcs/service/ipcalldraft/IPCallService;->sApiCompatible:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsPermissionDeniedException;

    const-string v1, "The TAPI client version of the ip call service is not compatible with the TAPI service implementation version on this device!"

    invoke-direct {v0, v1}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/gsma/services/rcs/RcsServiceException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 93
    new-instance v1, Lcom/gsma/services/rcs/RcsPermissionDeniedException;

    const-string v2, "The compatibility of TAPI client version with the TAPI service implementation version of this device cannot be checked for the ip call service!"

    invoke-direct {v1, v2, v0}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 98
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.tct.cs.rcs"

    .line 99
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    iget-object v1, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCallService;->mCtx:Landroid/content/Context;

    iget-object v2, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCallService;->apiConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public disconnect()V
    .locals 2

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCallService;->mCtx:Landroid/content/Context;

    iget-object v1, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCallService;->apiConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public getConfiguration()Lcom/gsma/rcs/service/ipcalldraft/IPCallServiceConfiguration;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCallService;->mApi:Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;

    if-eqz v0, :cond_0

    .line 167
    :try_start_0
    new-instance v0, Lcom/gsma/rcs/service/ipcalldraft/IPCallServiceConfiguration;

    iget-object v1, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCallService;->mApi:Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;

    invoke-interface {v1}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;->getConfiguration()Lcom/gsma/rcs/service/ipcalldraft/IIPCallServiceConfiguration;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gsma/rcs/service/ipcalldraft/IPCallServiceConfiguration;-><init>(Lcom/gsma/rcs/service/ipcalldraft/IIPCallServiceConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 170
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 164
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getIPCall(Ljava/lang/String;)Lcom/gsma/rcs/service/ipcalldraft/IPCall;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsIllegalArgumentException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCallService;->mApi:Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;

    if-eqz v0, :cond_0

    .line 284
    :try_start_0
    new-instance v0, Lcom/gsma/rcs/service/ipcalldraft/IPCall;

    iget-object v1, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCallService;->mApi:Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;

    invoke-interface {v1, p1}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;->getIPCall(Ljava/lang/String;)Lcom/gsma/rcs/service/ipcalldraft/IIPCall;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/gsma/rcs/service/ipcalldraft/IPCall;-><init>(Lcom/gsma/rcs/service/ipcalldraft/IIPCall;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 287
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 288
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 281
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public getIPCalls()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/gsma/rcs/service/ipcalldraft/IPCall;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCallService;->mApi:Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;

    if-eqz v0, :cond_1

    .line 258
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 259
    iget-object v1, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCallService;->mApi:Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;

    invoke-interface {v1}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;->getIPCalls()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 260
    new-instance v3, Lcom/gsma/rcs/service/ipcalldraft/IPCall;

    invoke-static {v2}, Lcom/gsma/rcs/service/ipcalldraft/IIPCall$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/rcs/service/ipcalldraft/IIPCall;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/gsma/rcs/service/ipcalldraft/IPCall;-><init>(Lcom/gsma/rcs/service/ipcalldraft/IIPCall;)V

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    .line 265
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 255
    :cond_1
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public initiateCall(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/rcs/service/ipcalldraft/IPCallPlayer;Lcom/gsma/rcs/service/ipcalldraft/IPCallRenderer;)Lcom/gsma/rcs/service/ipcalldraft/IPCall;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCallService;->mApi:Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;

    if-eqz v0, :cond_1

    .line 195
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;->initiateCall(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;Lcom/gsma/rcs/service/ipcalldraft/IIPCallRenderer;)Lcom/gsma/rcs/service/ipcalldraft/IIPCall;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 197
    new-instance p2, Lcom/gsma/rcs/service/ipcalldraft/IPCall;

    invoke-direct {p2, p1}, Lcom/gsma/rcs/service/ipcalldraft/IPCall;-><init>(Lcom/gsma/rcs/service/ipcalldraft/IIPCall;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 203
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 204
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;->assertException(Ljava/lang/Exception;)V

    .line 205
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 206
    new-instance p2, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 192
    :cond_1
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public initiateVisioCall(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/rcs/service/ipcalldraft/IPCallPlayer;Lcom/gsma/rcs/service/ipcalldraft/IPCallRenderer;)Lcom/gsma/rcs/service/ipcalldraft/IPCall;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCallService;->mApi:Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;

    if-eqz v0, :cond_1

    .line 231
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;->initiateVisioCall(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;Lcom/gsma/rcs/service/ipcalldraft/IIPCallRenderer;)Lcom/gsma/rcs/service/ipcalldraft/IIPCall;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 233
    new-instance p2, Lcom/gsma/rcs/service/ipcalldraft/IPCall;

    invoke-direct {p2, p1}, Lcom/gsma/rcs/service/ipcalldraft/IPCall;-><init>(Lcom/gsma/rcs/service/ipcalldraft/IIPCall;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 239
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 240
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;->assertException(Ljava/lang/Exception;)V

    .line 241
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 242
    new-instance p2, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 228
    :cond_1
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public removeEventListener(Lcom/gsma/rcs/service/ipcalldraft/IPCallListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsIllegalArgumentException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 327
    :try_start_0
    iget-object v0, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCallService;->mIPCallListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 329
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 330
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 324
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsIllegalArgumentException;

    const-string v0, "listener must not be null or empty!"

    invoke-direct {p1, v0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected setApi(Landroid/os/IInterface;)V
    .locals 0

    .line 120
    invoke-super {p0, p1}, Lcom/gsma/services/rcs/RcsService;->setApi(Landroid/os/IInterface;)V

    .line 121
    check-cast p1, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;

    iput-object p1, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCallService;->mApi:Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;

    return-void
.end method
