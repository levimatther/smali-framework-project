.class public final Lcom/gsma/services/rcs/filetransfer/FileTransferService;
.super Lcom/gsma/services/rcs/RcsService;
.source "FileTransferService.java"


# static fields
.field private static sApiCompatible:Z = false


# instance fields
.field private apiConnection:Landroid/content/ServiceConnection;

.field private mApi:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

.field private final mGroupFileTransferListener:Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;

.field private final mGroupFileTransferListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/gsma/services/rcs/filetransfer/GroupFileTransferListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOneToOneFileTransferListener:Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;

.field private final mOneToOneFileTransferListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/gsma/services/rcs/filetransfer/OneToOneFileTransferListener;",
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

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/gsma/services/rcs/RcsService;-><init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V

    .line 75
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mOneToOneFileTransferListeners:Ljava/util/Set;

    .line 77
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mGroupFileTransferListeners:Ljava/util/Set;

    .line 140
    new-instance p1, Lcom/gsma/services/rcs/filetransfer/FileTransferService$1;

    invoke-direct {p1, p0}, Lcom/gsma/services/rcs/filetransfer/FileTransferService$1;-><init>(Lcom/gsma/services/rcs/filetransfer/FileTransferService;)V

    iput-object p1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->apiConnection:Landroid/content/ServiceConnection;

    .line 985
    new-instance p1, Lcom/gsma/services/rcs/filetransfer/FileTransferService$2;

    invoke-direct {p1, p0}, Lcom/gsma/services/rcs/filetransfer/FileTransferService$2;-><init>(Lcom/gsma/services/rcs/filetransfer/FileTransferService;)V

    iput-object p1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mOneToOneFileTransferListener:Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;

    .line 1024
    new-instance p1, Lcom/gsma/services/rcs/filetransfer/FileTransferService$3;

    invoke-direct {p1, p0}, Lcom/gsma/services/rcs/filetransfer/FileTransferService$3;-><init>(Lcom/gsma/services/rcs/filetransfer/FileTransferService;)V

    iput-object p1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mGroupFileTransferListener:Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;

    return-void
.end method

.method static synthetic access$000(Lcom/gsma/services/rcs/filetransfer/FileTransferService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->registerEventListeners()V

    return-void
.end method

.method static synthetic access$100(Lcom/gsma/services/rcs/filetransfer/FileTransferService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/gsma/services/rcs/filetransfer/FileTransferService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/gsma/services/rcs/filetransfer/FileTransferService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->unregisterEventListeners()V

    return-void
.end method

.method static synthetic access$400(Lcom/gsma/services/rcs/filetransfer/FileTransferService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/gsma/services/rcs/filetransfer/FileTransferService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/gsma/services/rcs/filetransfer/FileTransferService;)Ljava/util/Set;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mOneToOneFileTransferListeners:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$700(Lcom/gsma/services/rcs/filetransfer/FileTransferService;)Ljava/util/Set;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mGroupFileTransferListeners:Ljava/util/Set;

    return-object p0
.end method

.method private registerEventListeners()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 1120
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->registerRcsServiceRegistrationListener()V

    .line 1121
    invoke-direct {p0}, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->registerOneToOneFileTransferListenerListener()V

    .line 1122
    invoke-direct {p0}, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->registerGroupFileTransferListener()V

    return-void
.end method

.method private registerGroupFileTransferListener()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 1076
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mApi:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_0

    .line 1080
    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mGroupFileTransferListener:Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;

    invoke-interface {v0, v1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->addEventListener3(Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1082
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 1077
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method private registerOneToOneFileTransferListenerListener()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 1098
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mApi:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_0

    .line 1102
    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mOneToOneFileTransferListener:Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;

    invoke-interface {v0, v1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->addEventListener2(Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1104
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 1099
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method private tryToGrantUriPermissionToStackServices(Landroid/net/Uri;)V
    .locals 4

    .line 173
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 176
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 179
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 180
    iget-object v2, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mCtx:Landroid/content/Context;

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

    .line 1126
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->unregisterRcsServiceRegistrationListener()V

    .line 1127
    invoke-direct {p0}, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->unregisterOneToOneFileTransferListenerListener()V

    .line 1128
    invoke-direct {p0}, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->unregisterGroupFileTransferListener()V

    return-void
.end method

.method private unregisterGroupFileTransferListener()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 1087
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mApi:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_0

    .line 1091
    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mGroupFileTransferListener:Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;

    invoke-interface {v0, v1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->removeEventListener3(Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1093
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 1088
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method private unregisterOneToOneFileTransferListenerListener()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 1109
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mApi:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_0

    .line 1113
    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mOneToOneFileTransferListener:Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;

    invoke-interface {v0, v1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->removeEventListener2(Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1115
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 1110
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method


# virtual methods
.method public addEventListener(Lcom/gsma/services/rcs/filetransfer/GroupFileTransferListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 489
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mGroupFileTransferListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 491
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 492
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 486
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsIllegalArgumentException;

    const-string v0, "listener must not be null!"

    invoke-direct {p1, v0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addEventListener(Lcom/gsma/services/rcs/filetransfer/OneToOneFileTransferListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 449
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mOneToOneFileTransferListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 451
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 452
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 446
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsIllegalArgumentException;

    const-string v0, "listener must not be null!"

    invoke-direct {p1, v0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clearFileTransferDeliveryExpiration(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 631
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mApi:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_0

    .line 635
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->clearFileTransferDeliveryExpiration(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 637
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 638
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 639
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 632
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public final connect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPermissionDeniedException;
        }
    .end annotation

    .line 97
    sget-boolean v0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->sApiCompatible:Z

    if-nez v0, :cond_1

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mRcsServiceControl:Lcom/gsma/services/rcs/RcsServiceControl;

    invoke-virtual {v0, p0}, Lcom/gsma/services/rcs/RcsServiceControl;->isCompatible(Lcom/gsma/services/rcs/RcsService;)Z

    move-result v0

    sput-boolean v0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->sApiCompatible:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsPermissionDeniedException;

    const-string v1, "The TAPI client version of the file transfer service is not compatible with the TAPI service implementation version on this device!"

    invoke-direct {v0, v1}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/gsma/services/rcs/RcsServiceException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 105
    new-instance v1, Lcom/gsma/services/rcs/RcsPermissionDeniedException;

    const-string v2, "The compatibility of TAPI client version with the TAPI service implementation version of this device cannot be checked for the file transfer service!"

    invoke-direct {v1, v2, v0}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 110
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.tct.cs.rcs"

    .line 111
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mCtx:Landroid/content/Context;

    iget-object v2, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->apiConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public deleteFileTransfer(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 607
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mApi:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_0

    .line 611
    :try_start_0
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->deleteFileTransfer(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 613
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 614
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 615
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 608
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public deleteGroupFileTransfers()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 544
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mApi:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_0

    .line 548
    :try_start_0
    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->deleteGroupFileTransfers()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 550
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 545
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public deleteGroupFileTransfers(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 585
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mApi:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_0

    .line 589
    :try_start_0
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->deleteGroupFileTransfers2(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 591
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 592
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 586
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public deleteOneToOneFileTransfers()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 525
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mApi:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_0

    .line 529
    :try_start_0
    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->deleteOneToOneFileTransfers()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 531
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 526
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public deleteOneToOneFileTransfers(Lcom/gsma/services/rcs/contact/ContactId;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 564
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mApi:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_0

    .line 568
    :try_start_0
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->deleteOneToOneFileTransfers2(Lcom/gsma/services/rcs/contact/ContactId;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 570
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 571
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 565
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public disconnect()V
    .locals 2

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mCtx:Landroid/content/Context;

    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->apiConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public downloadFileSmsFallBack(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;J)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 950
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mApi:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_0

    .line 954
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->downloadFileSmsFallBack(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;J)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 956
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 957
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 958
    new-instance p2, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 951
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public getConfiguration()Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mApi:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_0

    .line 198
    :try_start_0
    new-instance v0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;

    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mApi:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    invoke-interface {v1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->getConfiguration()Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;-><init>(Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 201
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 195
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getFileTransfer(Ljava/lang/String;)Lcom/gsma/services/rcs/filetransfer/FileTransfer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 418
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mApi:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_1

    .line 422
    :try_start_0
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->getFileTransfer(Ljava/lang/String;)Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 424
    new-instance v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/filetransfer/FileTransfer;-><init>(Lcom/gsma/services/rcs/filetransfer/IFileTransfer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 430
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 431
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 432
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 419
    :cond_1
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public getFileTransferMode(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 898
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mApi:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_0

    .line 902
    :try_start_0
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->getFileTransferMode(Ljava/util/List;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 904
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 905
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 906
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 899
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public getFtFallbackSMSCoverNote()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 922
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mApi:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_0

    .line 926
    :try_start_0
    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->getFtFallbackSMSCoverNote()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 928
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 929
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 930
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 923
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getGroupFileTransferMaxSize(Ljava/util/List;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            ">;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 868
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mApi:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_0

    .line 872
    :try_start_0
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->getGroupFileTransferMaxSize(Ljava/util/List;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 874
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 875
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 876
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 869
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public getOneToOneFileTransferMaxSize(Lcom/gsma/services/rcs/contact/ContactId;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 799
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mApi:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_0

    .line 803
    :try_start_0
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->getOneToOneFileTransferMaxSize(Lcom/gsma/services/rcs/contact/ContactId;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 805
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 806
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 807
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 800
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public isAllowedToRealTimeHttpTransferFile(Lcom/gsma/services/rcs/contact/ContactId;)Lcom/gsma/services/rcs/RcsService$RealTimeOperate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 973
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mApi:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_0

    .line 977
    :try_start_0
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->isAllowedToRealTimeHttpTransferFile(Lcom/gsma/services/rcs/contact/ContactId;)I

    move-result p1

    invoke-static {p1}, Lcom/gsma/services/rcs/RcsService$RealTimeOperate;->valueOf(I)Lcom/gsma/services/rcs/RcsService$RealTimeOperate;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 979
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 980
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 981
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 974
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public isAllowedToTransferFile(Lcom/gsma/services/rcs/contact/ContactId;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mApi:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_0

    .line 221
    :try_start_0
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->isAllowedToTransferFile(Lcom/gsma/services/rcs/contact/ContactId;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 224
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 225
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 226
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 218
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public isAllowedToTransferFileToGroupChat(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mApi:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_0

    .line 312
    :try_start_0
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->isAllowedToTransferFileToGroupChat(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 315
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 316
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 317
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 309
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public isSupportUP(Lcom/gsma/services/rcs/contact/ContactId;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 822
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mApi:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_0

    .line 826
    :try_start_0
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->isSupportUP(Lcom/gsma/services/rcs/contact/ContactId;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 828
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 829
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 830
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 823
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public isSupportUP(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 844
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mApi:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_0

    .line 848
    :try_start_0
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->isSupportUP2(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 850
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 851
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 852
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 845
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public markFileTransferAsRead(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 395
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mApi:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_0

    .line 399
    :try_start_0
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->markFileTransferAsRead(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 401
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 402
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 403
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 396
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public removeEventListener(Lcom/gsma/services/rcs/filetransfer/GroupFileTransferListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 509
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mGroupFileTransferListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 511
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 512
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 506
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsIllegalArgumentException;

    const-string v0, "listener must not be null!"

    invoke-direct {p1, v0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeEventListener(Lcom/gsma/services/rcs/filetransfer/OneToOneFileTransferListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 469
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mOneToOneFileTransferListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 471
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 472
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 466
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsIllegalArgumentException;

    const-string v0, "listener must not be null!"

    invoke-direct {p1, v0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected setApi(Landroid/os/IInterface;)V
    .locals 0

    .line 133
    invoke-super {p0, p1}, Lcom/gsma/services/rcs/RcsService;->setApi(Landroid/os/IInterface;)V

    .line 134
    check-cast p1, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    iput-object p1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mApi:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    return-void
.end method

.method public setFileTransferStateAndReasonCode(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 658
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mApi:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_0

    .line 662
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->setFileTransferStateAndReasonCode(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 664
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 665
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 666
    new-instance p2, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 659
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public transferFile(Lcom/gsma/services/rcs/contact/ContactId;Landroid/net/Uri;Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;Z)Lcom/gsma/services/rcs/filetransfer/FileTransfer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mApi:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_1

    .line 281
    :try_start_0
    invoke-direct {p0, p2}, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->tryToGrantUriPermissionToStackServices(Landroid/net/Uri;)V

    .line 282
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mApi:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    invoke-virtual {p3}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->toInt()I

    move-result p3

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->transferFile2(Lcom/gsma/services/rcs/contact/ContactId;Landroid/net/Uri;IZ)Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 285
    new-instance p2, Lcom/gsma/services/rcs/filetransfer/FileTransfer;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/filetransfer/FileTransfer;-><init>(Lcom/gsma/services/rcs/filetransfer/IFileTransfer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 289
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 290
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 291
    new-instance p2, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 277
    :cond_1
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public transferFile(Lcom/gsma/services/rcs/contact/ContactId;Landroid/net/Uri;Z)Lcom/gsma/services/rcs/filetransfer/FileTransfer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 253
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->ATTACH:Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->transferFile(Lcom/gsma/services/rcs/contact/ContactId;Landroid/net/Uri;Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;Z)Lcom/gsma/services/rcs/filetransfer/FileTransfer;

    move-result-object p1

    return-object p1
.end method

.method public transferFile(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Landroid/net/Uri;Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;Z)Lcom/gsma/services/rcs/filetransfer/FileTransfer;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 765
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mApi:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_1

    .line 770
    :try_start_0
    invoke-direct {p0, p3}, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->tryToGrantUriPermissionToStackServices(Landroid/net/Uri;)V

    .line 771
    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mApi:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    invoke-virtual {p4}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->toInt()I

    move-result v5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->transferFile3(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Landroid/net/Uri;IZ)Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 774
    new-instance p2, Lcom/gsma/services/rcs/filetransfer/FileTransfer;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/filetransfer/FileTransfer;-><init>(Lcom/gsma/services/rcs/filetransfer/IFileTransfer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 778
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 779
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 780
    new-instance p2, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 766
    :cond_1
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public transferFileToGroupChat(Ljava/lang/String;Landroid/net/Uri;Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;Z)Lcom/gsma/services/rcs/filetransfer/FileTransfer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPermissionDeniedException;,
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 362
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mApi:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_1

    .line 367
    :try_start_0
    invoke-direct {p0, p2}, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->tryToGrantUriPermissionToStackServices(Landroid/net/Uri;)V

    .line 368
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mApi:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    invoke-virtual {p3}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->toInt()I

    move-result p3

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->transferFileToGroupChat2(Ljava/lang/String;Landroid/net/Uri;IZ)Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 371
    new-instance p2, Lcom/gsma/services/rcs/filetransfer/FileTransfer;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/filetransfer/FileTransfer;-><init>(Lcom/gsma/services/rcs/filetransfer/IFileTransfer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 377
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 378
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;->assertException(Ljava/lang/Exception;)V

    .line 379
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 380
    new-instance p2, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 363
    :cond_1
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public transferFileToGroupChat(Ljava/lang/String;Landroid/net/Uri;Z)Lcom/gsma/services/rcs/filetransfer/FileTransfer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPermissionDeniedException;,
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 341
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->ATTACH:Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->transferFileToGroupChat(Ljava/lang/String;Landroid/net/Uri;Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;Z)Lcom/gsma/services/rcs/filetransfer/FileTransfer;

    move-result-object p1

    return-object p1
.end method

.method public transferGeoloc(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/Geoloc;)Lcom/gsma/services/rcs/filetransfer/FileTransfer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 676
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mApi:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_1

    .line 681
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->transferGeoloc(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/Geoloc;)Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 683
    new-instance p2, Lcom/gsma/services/rcs/filetransfer/FileTransfer;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/filetransfer/FileTransfer;-><init>(Lcom/gsma/services/rcs/filetransfer/IFileTransfer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 689
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 690
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 691
    new-instance p2, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 677
    :cond_1
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public transferGeoloc(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/Geoloc;)Lcom/gsma/services/rcs/filetransfer/FileTransfer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 724
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mApi:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_1

    .line 729
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->transferGeoloc2(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/Geoloc;)Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 731
    new-instance p2, Lcom/gsma/services/rcs/filetransfer/FileTransfer;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/filetransfer/FileTransfer;-><init>(Lcom/gsma/services/rcs/filetransfer/IFileTransfer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 737
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 738
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 739
    new-instance p2, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 725
    :cond_1
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public transferGroupGeoloc(Ljava/lang/String;Lcom/gsma/services/rcs/Geoloc;)Lcom/gsma/services/rcs/filetransfer/FileTransfer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 699
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->mApi:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v0, :cond_1

    .line 704
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;->transferGroupGeoloc(Ljava/lang/String;Lcom/gsma/services/rcs/Geoloc;)Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 706
    new-instance p2, Lcom/gsma/services/rcs/filetransfer/FileTransfer;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/filetransfer/FileTransfer;-><init>(Lcom/gsma/services/rcs/filetransfer/IFileTransfer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 712
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 713
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 714
    new-instance p2, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 700
    :cond_1
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method
