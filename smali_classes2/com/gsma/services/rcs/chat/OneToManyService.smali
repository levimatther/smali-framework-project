.class public Lcom/gsma/services/rcs/chat/OneToManyService;
.super Lcom/gsma/services/rcs/RcsService;
.source "OneToManyService.java"


# static fields
.field private static sApiCompatible:Z = false


# instance fields
.field private apiConnection:Landroid/content/ServiceConnection;

.field private mApi:Lcom/gsma/services/rcs/chat/IOneToManyService;

.field private final mOneToManyListener:Lcom/gsma/services/rcs/chat/IOneToManyListener;

.field private final mOneToManyNotifiers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/gsma/services/rcs/chat/OneToManyListener;",
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

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/gsma/services/rcs/RcsService;-><init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V

    .line 46
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/gsma/services/rcs/chat/OneToManyService;->mOneToManyNotifiers:Ljava/util/Set;

    .line 107
    new-instance p1, Lcom/gsma/services/rcs/chat/OneToManyService$1;

    invoke-direct {p1, p0}, Lcom/gsma/services/rcs/chat/OneToManyService$1;-><init>(Lcom/gsma/services/rcs/chat/OneToManyService;)V

    iput-object p1, p0, Lcom/gsma/services/rcs/chat/OneToManyService;->apiConnection:Landroid/content/ServiceConnection;

    .line 581
    new-instance p1, Lcom/gsma/services/rcs/chat/OneToManyService$2;

    invoke-direct {p1, p0}, Lcom/gsma/services/rcs/chat/OneToManyService$2;-><init>(Lcom/gsma/services/rcs/chat/OneToManyService;)V

    iput-object p1, p0, Lcom/gsma/services/rcs/chat/OneToManyService;->mOneToManyListener:Lcom/gsma/services/rcs/chat/IOneToManyListener;

    return-void
.end method

.method static synthetic access$000(Lcom/gsma/services/rcs/chat/OneToManyService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lcom/gsma/services/rcs/chat/OneToManyService;->registerEventListeners()V

    return-void
.end method

.method static synthetic access$100(Lcom/gsma/services/rcs/chat/OneToManyService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/gsma/services/rcs/chat/OneToManyService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/gsma/services/rcs/chat/OneToManyService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/gsma/services/rcs/chat/OneToManyService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/gsma/services/rcs/chat/OneToManyService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lcom/gsma/services/rcs/chat/OneToManyService;->unregisterEventListeners()V

    return-void
.end method

.method static synthetic access$400(Lcom/gsma/services/rcs/chat/OneToManyService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/gsma/services/rcs/chat/OneToManyService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/gsma/services/rcs/chat/OneToManyService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/gsma/services/rcs/chat/OneToManyService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/gsma/services/rcs/chat/OneToManyService;)Ljava/util/Set;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/gsma/services/rcs/chat/OneToManyService;->mOneToManyNotifiers:Ljava/util/Set;

    return-object p0
.end method

.method private registerEventListeners()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 643
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/OneToManyService;->registerRcsServiceRegistrationListener()V

    .line 644
    invoke-direct {p0}, Lcom/gsma/services/rcs/chat/OneToManyService;->registerOneToManyListener()V

    return-void
.end method

.method private registerOneToManyListener()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 621
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToManyService;->mApi:Lcom/gsma/services/rcs/chat/IOneToManyService;

    if-eqz v0, :cond_0

    .line 625
    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/chat/OneToManyService;->mOneToManyListener:Lcom/gsma/services/rcs/chat/IOneToManyListener;

    invoke-interface {v0, v1}, Lcom/gsma/services/rcs/chat/IOneToManyService;->addOneToManyEventListener(Lcom/gsma/services/rcs/chat/IOneToManyListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 627
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 622
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method private tryToGrantUriPermissionToStackServices(Landroid/net/Uri;)V
    .locals 4

    .line 569
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 572
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gsma/services/rcs/chat/IOneToManyService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 573
    iget-object v1, p0, Lcom/gsma/services/rcs/chat/OneToManyService;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 575
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 576
    iget-object v2, p0, Lcom/gsma/services/rcs/chat/OneToManyService;->mCtx:Landroid/content/Context;

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

    .line 648
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/OneToManyService;->unregisterRcsServiceRegistrationListener()V

    .line 649
    invoke-direct {p0}, Lcom/gsma/services/rcs/chat/OneToManyService;->unregisterOneToManyListener()V

    return-void
.end method

.method private unregisterOneToManyListener()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 632
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToManyService;->mApi:Lcom/gsma/services/rcs/chat/IOneToManyService;

    if-eqz v0, :cond_0

    .line 636
    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/chat/OneToManyService;->mOneToManyListener:Lcom/gsma/services/rcs/chat/IOneToManyListener;

    invoke-interface {v0, v1}, Lcom/gsma/services/rcs/chat/IOneToManyService;->removeOneToManyEventListener(Lcom/gsma/services/rcs/chat/IOneToManyListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 638
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 633
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method


# virtual methods
.method public addOneToManyEventListener(Lcom/gsma/services/rcs/chat/OneToManyListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 524
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToManyService;->mOneToManyNotifiers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 526
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 527
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 521
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsIllegalArgumentException;

    const-string v0, "listener must not be null!"

    invoke-direct {p1, v0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addRecipients(Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToManyService;->mApi:Lcom/gsma/services/rcs/chat/IOneToManyService;

    if-eqz v0, :cond_0

    .line 147
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/gsma/services/rcs/chat/IOneToManyService;->addRecipients(Ljava/lang/String;Ljava/util/List;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 149
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 150
    new-instance p2, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 144
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public connect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPermissionDeniedException;
        }
    .end annotation

    .line 64
    sget-boolean v0, Lcom/gsma/services/rcs/chat/OneToManyService;->sApiCompatible:Z

    if-nez v0, :cond_1

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToManyService;->mRcsServiceControl:Lcom/gsma/services/rcs/RcsServiceControl;

    invoke-virtual {v0, p0}, Lcom/gsma/services/rcs/RcsServiceControl;->isCompatible(Lcom/gsma/services/rcs/RcsService;)Z

    move-result v0

    sput-boolean v0, Lcom/gsma/services/rcs/chat/OneToManyService;->sApiCompatible:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsPermissionDeniedException;

    const-string v1, "The TAPI client version of the chat service is not compatible with the TAPI service implementation version on this device!"

    invoke-direct {v0, v1}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/gsma/services/rcs/RcsServiceException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 72
    new-instance v1, Lcom/gsma/services/rcs/RcsPermissionDeniedException;

    const-string v2, "The compatibility of TAPI client version with the TAPI service implementation version of this device cannot be checked for the chat service!"

    invoke-direct {v1, v2, v0}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 77
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gsma/services/rcs/chat/IOneToManyService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.tct.cs.rcs"

    .line 78
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    iget-object v1, p0, Lcom/gsma/services/rcs/chat/OneToManyService;->mCtx:Landroid/content/Context;

    iget-object v2, p0, Lcom/gsma/services/rcs/chat/OneToManyService;->apiConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public deleteConversation(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToManyService;->mApi:Lcom/gsma/services/rcs/chat/IOneToManyService;

    if-eqz v0, :cond_0

    .line 338
    :try_start_0
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/chat/IOneToManyService;->deleteConversation(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 340
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 341
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public deleteMessage(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToManyService;->mApi:Lcom/gsma/services/rcs/chat/IOneToManyService;

    if-eqz v0, :cond_0

    .line 320
    :try_start_0
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/chat/IOneToManyService;->deleteMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 322
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 323
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public disconnect()V
    .locals 2

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToManyService;->mCtx:Landroid/content/Context;

    iget-object v1, p0, Lcom/gsma/services/rcs/chat/OneToManyService;->apiConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public get1ToManyRecipients(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToManyService;->mApi:Lcom/gsma/services/rcs/chat/IOneToManyService;

    if-eqz v0, :cond_0

    .line 242
    :try_start_0
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/chat/IOneToManyService;->get1ToManyRecipients(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 244
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 245
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public getChatMax1toManyRecipients()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToManyService;->mApi:Lcom/gsma/services/rcs/chat/IOneToManyService;

    if-eqz v0, :cond_0

    .line 209
    :try_start_0
    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IOneToManyService;->getChatMax1toManyRecipients()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 211
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 212
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 206
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getFTMax1ToManyRecipients()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToManyService;->mApi:Lcom/gsma/services/rcs/chat/IOneToManyService;

    if-eqz v0, :cond_0

    .line 264
    :try_start_0
    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IOneToManyService;->getFTMax1ToManyRecipients()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 266
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 267
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 261
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getIcon(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 501
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToManyService;->mApi:Lcom/gsma/services/rcs/chat/IOneToManyService;

    if-eqz v0, :cond_0

    .line 505
    :try_start_0
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/chat/IOneToManyService;->getIcon(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 507
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 508
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 502
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public getOneToManyMessageDetails(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/OneToManyMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 371
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToManyService;->mApi:Lcom/gsma/services/rcs/chat/IOneToManyService;

    if-eqz v0, :cond_0

    .line 375
    :try_start_0
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/chat/IOneToManyService;->getOneToManyMessageDetails(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/OneToManyMessage;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 377
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 378
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public getRecipientsSize(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToManyService;->mApi:Lcom/gsma/services/rcs/chat/IOneToManyService;

    if-eqz v0, :cond_0

    .line 186
    :try_start_0
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/chat/IOneToManyService;->getRecipientsSize(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 188
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 189
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public getSubject(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 483
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToManyService;->mApi:Lcom/gsma/services/rcs/chat/IOneToManyService;

    if-eqz v0, :cond_0

    .line 487
    :try_start_0
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/chat/IOneToManyService;->getSubject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 489
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 490
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 484
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public getUsedTechnology(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 552
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToManyService;->mApi:Lcom/gsma/services/rcs/chat/IOneToManyService;

    if-eqz v0, :cond_0

    .line 556
    :try_start_0
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/chat/IOneToManyService;->getUsedTechnology(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 558
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 559
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 553
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public isAllowedToOneToManyMessage()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToManyService;->mApi:Lcom/gsma/services/rcs/chat/IOneToManyService;

    if-eqz v0, :cond_0

    .line 222
    :try_start_0
    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IOneToManyService;->isAllowedToOneToManyMessage()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 224
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 225
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 219
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public reSend(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToManyService;->mApi:Lcom/gsma/services/rcs/chat/IOneToManyService;

    if-eqz v0, :cond_0

    .line 356
    :try_start_0
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/chat/IOneToManyService;->reSend(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 358
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 359
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public removeOneToManyEventListener(Lcom/gsma/services/rcs/chat/OneToManyListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 537
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToManyService;->mOneToManyNotifiers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 539
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 540
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 534
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsIllegalArgumentException;

    const-string v0, "listener must not be null!"

    invoke-direct {p1, v0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeRecipients(Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToManyService;->mApi:Lcom/gsma/services/rcs/chat/IOneToManyService;

    if-eqz v0, :cond_0

    .line 167
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/gsma/services/rcs/chat/IOneToManyService;->removeRecipients(Ljava/lang/String;Ljava/util/List;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 169
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 170
    new-instance p2, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 164
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public sendOneToManyChat(Ljava/lang/String;Ljava/lang/String;)Lcom/gsma/services/rcs/chat/OneToManyMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 416
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToManyService;->mApi:Lcom/gsma/services/rcs/chat/IOneToManyService;

    if-eqz v0, :cond_0

    .line 420
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/gsma/services/rcs/chat/IOneToManyService;->sendOneToManyChat2(Ljava/lang/String;Ljava/lang/String;)Lcom/gsma/services/rcs/chat/OneToManyMessage;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 422
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 423
    new-instance p2, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 417
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public sendOneToManyChat(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/gsma/services/rcs/chat/OneToManyMessage;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/gsma/services/rcs/chat/OneToManyMessage;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 392
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToManyService;->mApi:Lcom/gsma/services/rcs/chat/IOneToManyService;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    .line 398
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 401
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToManyService;->mApi:Lcom/gsma/services/rcs/chat/IOneToManyService;

    invoke-interface {v0, p1, p2, p3}, Lcom/gsma/services/rcs/chat/IOneToManyService;->sendOneToManyChat(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/gsma/services/rcs/chat/OneToManyMessage;

    move-result-object p1

    return-object p1

    .line 399
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsIllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "contacts size is:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", illegal argument, size must more than 1."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    goto :goto_0

    .line 397
    :cond_1
    new-instance p1, Lcom/gsma/services/rcs/RcsIllegalArgumentException;

    const-string p2, "contacts is null"

    invoke-direct {p1, p2}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    :goto_0
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 404
    new-instance p2, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 393
    :cond_2
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public sendOneToManyFT(Ljava/lang/String;Landroid/net/Uri;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 464
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToManyService;->mApi:Lcom/gsma/services/rcs/chat/IOneToManyService;

    if-eqz v0, :cond_0

    .line 468
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/gsma/services/rcs/chat/IOneToManyService;->sendOneToManyFT2(Ljava/lang/String;Landroid/net/Uri;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 470
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 471
    new-instance p2, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 465
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public sendOneToManyFT(Ljava/lang/String;Ljava/util/List;Landroid/net/Uri;IZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            ">;",
            "Landroid/net/Uri;",
            "IZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 438
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToManyService;->mApi:Lcom/gsma/services/rcs/chat/IOneToManyService;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    .line 444
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 447
    iget-object v2, p0, Lcom/gsma/services/rcs/chat/OneToManyService;->mApi:Lcom/gsma/services/rcs/chat/IOneToManyService;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/gsma/services/rcs/chat/IOneToManyService;->sendOneToManyFT(Ljava/lang/String;Ljava/util/List;Landroid/net/Uri;IZ)V

    return-void

    .line 445
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsIllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "contacts size is:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", illegal argument, size must more than 1."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    goto :goto_0

    .line 443
    :cond_1
    new-instance p1, Lcom/gsma/services/rcs/RcsIllegalArgumentException;

    const-string p2, "contacts is null"

    invoke-direct {p1, p2}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    :goto_0
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 450
    new-instance p2, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 439
    :cond_2
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method protected setApi(Landroid/os/IInterface;)V
    .locals 0

    .line 100
    invoke-super {p0, p1}, Lcom/gsma/services/rcs/RcsService;->setApi(Landroid/os/IInterface;)V

    .line 101
    check-cast p1, Lcom/gsma/services/rcs/chat/IOneToManyService;

    iput-object p1, p0, Lcom/gsma/services/rcs/chat/OneToManyService;->mApi:Lcom/gsma/services/rcs/chat/IOneToManyService;

    return-void
.end method

.method public setIcon(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToManyService;->mApi:Lcom/gsma/services/rcs/chat/IOneToManyService;

    if-eqz v0, :cond_0

    .line 302
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/gsma/services/rcs/chat/IOneToManyService;->setIcon(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 304
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 305
    new-instance p2, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 299
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public setSubject(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToManyService;->mApi:Lcom/gsma/services/rcs/chat/IOneToManyService;

    if-eqz v0, :cond_0

    .line 283
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/gsma/services/rcs/chat/IOneToManyService;->setSubject(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 285
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 286
    new-instance p2, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 280
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method
