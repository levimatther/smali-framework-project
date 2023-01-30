.class public final Lcom/gsma/services/rcs/chat/ChatService;
.super Lcom/gsma/services/rcs/RcsService;
.source "ChatService.java"


# static fields
.field private static sApiCompatible:Z = false


# instance fields
.field private apiConnection:Landroid/content/ServiceConnection;

.field private mApi:Lcom/gsma/services/rcs/chat/IChatService;

.field private final mGroupChatListener:Lcom/gsma/services/rcs/chat/IGroupChatListener;

.field private final mGroupChatListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/gsma/services/rcs/chat/GroupChatListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOneToOneChatListener:Lcom/gsma/services/rcs/chat/IOneToOneChatListener;

.field private final mOneToOneChatListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/gsma/services/rcs/chat/OneToOneChatListener;",
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

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/gsma/services/rcs/RcsService;-><init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V

    .line 74
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/gsma/services/rcs/chat/ChatService;->mOneToOneChatListeners:Ljava/util/Set;

    .line 75
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/gsma/services/rcs/chat/ChatService;->mGroupChatListeners:Ljava/util/Set;

    .line 137
    new-instance p1, Lcom/gsma/services/rcs/chat/ChatService$1;

    invoke-direct {p1, p0}, Lcom/gsma/services/rcs/chat/ChatService$1;-><init>(Lcom/gsma/services/rcs/chat/ChatService;)V

    iput-object p1, p0, Lcom/gsma/services/rcs/chat/ChatService;->apiConnection:Landroid/content/ServiceConnection;

    .line 637
    new-instance p1, Lcom/gsma/services/rcs/chat/ChatService$2;

    invoke-direct {p1, p0}, Lcom/gsma/services/rcs/chat/ChatService$2;-><init>(Lcom/gsma/services/rcs/chat/ChatService;)V

    iput-object p1, p0, Lcom/gsma/services/rcs/chat/ChatService;->mOneToOneChatListener:Lcom/gsma/services/rcs/chat/IOneToOneChatListener;

    .line 676
    new-instance p1, Lcom/gsma/services/rcs/chat/ChatService$3;

    invoke-direct {p1, p0}, Lcom/gsma/services/rcs/chat/ChatService$3;-><init>(Lcom/gsma/services/rcs/chat/ChatService;)V

    iput-object p1, p0, Lcom/gsma/services/rcs/chat/ChatService;->mGroupChatListener:Lcom/gsma/services/rcs/chat/IGroupChatListener;

    return-void
.end method

.method static synthetic access$000(Lcom/gsma/services/rcs/chat/ChatService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Lcom/gsma/services/rcs/chat/ChatService;->registerEventListeners()V

    return-void
.end method

.method static synthetic access$100(Lcom/gsma/services/rcs/chat/ChatService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/gsma/services/rcs/chat/ChatService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/gsma/services/rcs/chat/ChatService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/gsma/services/rcs/chat/ChatService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/gsma/services/rcs/chat/ChatService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Lcom/gsma/services/rcs/chat/ChatService;->unregisterEventListeners()V

    return-void
.end method

.method static synthetic access$400(Lcom/gsma/services/rcs/chat/ChatService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/gsma/services/rcs/chat/ChatService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/gsma/services/rcs/chat/ChatService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/gsma/services/rcs/chat/ChatService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/gsma/services/rcs/chat/ChatService;)Ljava/util/Set;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/gsma/services/rcs/chat/ChatService;->mOneToOneChatListeners:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$700(Lcom/gsma/services/rcs/chat/ChatService;)Ljava/util/Set;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/gsma/services/rcs/chat/ChatService;->mGroupChatListeners:Ljava/util/Set;

    return-object p0
.end method

.method private registerEventListeners()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 821
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/ChatService;->registerRcsServiceRegistrationListener()V

    .line 822
    invoke-direct {p0}, Lcom/gsma/services/rcs/chat/ChatService;->registerOneToOneChatListener()V

    .line 823
    invoke-direct {p0}, Lcom/gsma/services/rcs/chat/ChatService;->registerGroupChatListener()V

    return-void
.end method

.method private registerGroupChatListener()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 777
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->mApi:Lcom/gsma/services/rcs/chat/IChatService;

    if-eqz v0, :cond_0

    .line 781
    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/chat/ChatService;->mGroupChatListener:Lcom/gsma/services/rcs/chat/IGroupChatListener;

    invoke-interface {v0, v1}, Lcom/gsma/services/rcs/chat/IChatService;->addEventListener3(Lcom/gsma/services/rcs/chat/IGroupChatListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 783
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 778
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method private registerOneToOneChatListener()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 799
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->mApi:Lcom/gsma/services/rcs/chat/IChatService;

    if-eqz v0, :cond_0

    .line 803
    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/chat/ChatService;->mOneToOneChatListener:Lcom/gsma/services/rcs/chat/IOneToOneChatListener;

    invoke-interface {v0, v1}, Lcom/gsma/services/rcs/chat/IChatService;->addEventListener2(Lcom/gsma/services/rcs/chat/IOneToOneChatListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 805
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 800
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

    .line 827
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/ChatService;->unregisterRcsServiceRegistrationListener()V

    .line 828
    invoke-direct {p0}, Lcom/gsma/services/rcs/chat/ChatService;->unregisterOneToOneChatListener()V

    .line 829
    invoke-direct {p0}, Lcom/gsma/services/rcs/chat/ChatService;->unregisterGroupChatListener()V

    return-void
.end method

.method private unregisterGroupChatListener()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 788
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->mApi:Lcom/gsma/services/rcs/chat/IChatService;

    if-eqz v0, :cond_0

    .line 792
    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/chat/ChatService;->mGroupChatListener:Lcom/gsma/services/rcs/chat/IGroupChatListener;

    invoke-interface {v0, v1}, Lcom/gsma/services/rcs/chat/IChatService;->removeEventListener3(Lcom/gsma/services/rcs/chat/IGroupChatListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 794
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 789
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method private unregisterOneToOneChatListener()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 810
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->mApi:Lcom/gsma/services/rcs/chat/IChatService;

    if-eqz v0, :cond_0

    .line 814
    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/chat/ChatService;->mOneToOneChatListener:Lcom/gsma/services/rcs/chat/IOneToOneChatListener;

    invoke-interface {v0, v1}, Lcom/gsma/services/rcs/chat/IChatService;->removeEventListener2(Lcom/gsma/services/rcs/chat/IOneToOneChatListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 816
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 811
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method


# virtual methods
.method public addEventListener(Lcom/gsma/services/rcs/chat/GroupChatListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 418
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->mGroupChatListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 420
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 415
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsIllegalArgumentException;

    const-string v0, "listener must not be null!"

    invoke-direct {p1, v0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addEventListener(Lcom/gsma/services/rcs/chat/OneToOneChatListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 456
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->mOneToOneChatListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 458
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 453
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsIllegalArgumentException;

    const-string v0, "listener must not be null!"

    invoke-direct {p1, v0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public checkFallbackMessages()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 627
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->mApi:Lcom/gsma/services/rcs/chat/IChatService;

    if-eqz v0, :cond_0

    .line 631
    :try_start_0
    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IChatService;->checkFallbackMessages()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 633
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 628
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public clearMessageDeliveryExpiration(Ljava/util/Set;)V
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
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 354
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->mApi:Lcom/gsma/services/rcs/chat/IChatService;

    if-eqz v0, :cond_0

    .line 358
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Lcom/gsma/services/rcs/chat/IChatService;->clearMessageDeliveryExpiration(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 360
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 355
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

    .line 95
    sget-boolean v0, Lcom/gsma/services/rcs/chat/ChatService;->sApiCompatible:Z

    if-nez v0, :cond_1

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->mRcsServiceControl:Lcom/gsma/services/rcs/RcsServiceControl;

    invoke-virtual {v0, p0}, Lcom/gsma/services/rcs/RcsServiceControl;->isCompatible(Lcom/gsma/services/rcs/RcsService;)Z

    move-result v0

    sput-boolean v0, Lcom/gsma/services/rcs/chat/ChatService;->sApiCompatible:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsPermissionDeniedException;

    const-string v1, "The TAPI client version of the chat service is not compatible with the TAPI service implementation version on this device!"

    invoke-direct {v0, v1}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/gsma/services/rcs/RcsServiceException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 103
    new-instance v1, Lcom/gsma/services/rcs/RcsPermissionDeniedException;

    const-string v2, "The compatibility of TAPI client version with the TAPI service implementation version of this device cannot be checked for the chat service!"

    invoke-direct {v1, v2, v0}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 108
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gsma/services/rcs/chat/IChatService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.tct.cs.rcs"

    .line 109
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    iget-object v1, p0, Lcom/gsma/services/rcs/chat/ChatService;->mCtx:Landroid/content/Context;

    iget-object v2, p0, Lcom/gsma/services/rcs/chat/ChatService;->apiConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public deleteGroupChat(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->mApi:Lcom/gsma/services/rcs/chat/IChatService;

    if-eqz v0, :cond_0

    .line 319
    :try_start_0
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/chat/IChatService;->deleteGroupChat(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 321
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 316
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public deleteGroupChats()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->mApi:Lcom/gsma/services/rcs/chat/IChatService;

    if-eqz v0, :cond_0

    .line 279
    :try_start_0
    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IChatService;->deleteGroupChats()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 281
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 276
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public deleteMessage(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->mApi:Lcom/gsma/services/rcs/chat/IChatService;

    if-eqz v0, :cond_0

    .line 338
    :try_start_0
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/chat/IChatService;->deleteMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 340
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 335
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public deleteOneToOneChat(Lcom/gsma/services/rcs/contact/ContactId;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->mApi:Lcom/gsma/services/rcs/chat/IChatService;

    if-eqz v0, :cond_0

    .line 299
    :try_start_0
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/chat/IChatService;->deleteOneToOneChat(Lcom/gsma/services/rcs/contact/ContactId;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 301
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 296
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public deleteOneToOneChats()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->mApi:Lcom/gsma/services/rcs/chat/IChatService;

    if-eqz v0, :cond_0

    .line 261
    :try_start_0
    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IChatService;->deleteOneToOneChats()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 263
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 258
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public disconnect()V
    .locals 2

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->mCtx:Landroid/content/Context;

    iget-object v1, p0, Lcom/gsma/services/rcs/chat/ChatService;->apiConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public getChatMessage(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/ChatMessage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 491
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->mApi:Lcom/gsma/services/rcs/chat/IChatService;

    if-eqz v0, :cond_0

    .line 495
    :try_start_0
    new-instance v0, Lcom/gsma/services/rcs/chat/ChatMessage;

    iget-object v1, p0, Lcom/gsma/services/rcs/chat/ChatService;->mApi:Lcom/gsma/services/rcs/chat/IChatService;

    invoke-interface {v1, p1}, Lcom/gsma/services/rcs/chat/IChatService;->getChatMessage(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/IChatMessage;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/chat/ChatMessage;-><init>(Lcom/gsma/services/rcs/chat/IChatMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 498
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 492
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public getConfiguration()Lcom/gsma/services/rcs/chat/ChatServiceConfiguration;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->mApi:Lcom/gsma/services/rcs/chat/IChatService;

    if-eqz v0, :cond_0

    .line 177
    :try_start_0
    new-instance v0, Lcom/gsma/services/rcs/chat/ChatServiceConfiguration;

    iget-object v1, p0, Lcom/gsma/services/rcs/chat/ChatService;->mApi:Lcom/gsma/services/rcs/chat/IChatService;

    invoke-interface {v1}, Lcom/gsma/services/rcs/chat/IChatService;->getConfiguration()Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gsma/services/rcs/chat/ChatServiceConfiguration;-><init>(Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 180
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 174
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getGroupChat(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/GroupChat;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->mApi:Lcom/gsma/services/rcs/chat/IChatService;

    if-eqz v0, :cond_0

    .line 219
    :try_start_0
    new-instance v0, Lcom/gsma/services/rcs/chat/GroupChat;

    iget-object v1, p0, Lcom/gsma/services/rcs/chat/ChatService;->mApi:Lcom/gsma/services/rcs/chat/IChatService;

    invoke-interface {v1, p1}, Lcom/gsma/services/rcs/chat/IChatService;->getGroupChat(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/IGroupChat;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/chat/GroupChat;-><init>(Lcom/gsma/services/rcs/chat/IGroupChat;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 222
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 216
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public getOneToOneChat(Lcom/gsma/services/rcs/contact/ContactId;)Lcom/gsma/services/rcs/chat/OneToOneChat;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->mApi:Lcom/gsma/services/rcs/chat/IChatService;

    if-eqz v0, :cond_0

    .line 198
    :try_start_0
    new-instance v0, Lcom/gsma/services/rcs/chat/OneToOneChat;

    iget-object v1, p0, Lcom/gsma/services/rcs/chat/ChatService;->mApi:Lcom/gsma/services/rcs/chat/IChatService;

    invoke-interface {v1, p1}, Lcom/gsma/services/rcs/chat/IChatService;->getOneToOneChat(Lcom/gsma/services/rcs/contact/ContactId;)Lcom/gsma/services/rcs/chat/IOneToOneChat;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/chat/OneToOneChat;-><init>(Lcom/gsma/services/rcs/chat/IOneToOneChat;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 201
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 195
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public getOneToOneChat(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;)Lcom/gsma/services/rcs/chat/OneToOneChat;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 561
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->mApi:Lcom/gsma/services/rcs/chat/IChatService;

    if-eqz v0, :cond_0

    .line 565
    :try_start_0
    new-instance v0, Lcom/gsma/services/rcs/chat/OneToOneChat;

    iget-object v1, p0, Lcom/gsma/services/rcs/chat/ChatService;->mApi:Lcom/gsma/services/rcs/chat/IChatService;

    invoke-interface {v1, p1, p2}, Lcom/gsma/services/rcs/chat/IChatService;->getOneToOneChat2(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;)Lcom/gsma/services/rcs/chat/IOneToOneChat;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/chat/OneToOneChat;-><init>(Lcom/gsma/services/rcs/chat/IOneToOneChat;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 568
    new-instance p2, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 562
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public initiateClosedGroupChat(Ljava/util/List;Ljava/lang/String;)Lcom/gsma/services/rcs/chat/GroupChat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/gsma/services/rcs/chat/GroupChat;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 536
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->mApi:Lcom/gsma/services/rcs/chat/IChatService;

    if-eqz v0, :cond_0

    .line 540
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/gsma/services/rcs/chat/IChatService;->initiateClosedGroupChat(Ljava/util/List;Ljava/lang/String;)Lcom/gsma/services/rcs/chat/IGroupChat;

    move-result-object p1

    .line 541
    new-instance p2, Lcom/gsma/services/rcs/chat/GroupChat;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/chat/GroupChat;-><init>(Lcom/gsma/services/rcs/chat/IGroupChat;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 544
    new-instance p2, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 537
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public initiateOpenGroupChat(Ljava/util/List;Ljava/lang/String;Landroid/net/Uri;)Lcom/gsma/services/rcs/chat/GroupChat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ")",
            "Lcom/gsma/services/rcs/chat/GroupChat;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 515
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->mApi:Lcom/gsma/services/rcs/chat/IChatService;

    if-eqz v0, :cond_0

    .line 519
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/gsma/services/rcs/chat/IChatService;->initiateOpenGroupChat(Ljava/util/List;Ljava/lang/String;Landroid/net/Uri;)Lcom/gsma/services/rcs/chat/IGroupChat;

    move-result-object p1

    .line 520
    new-instance p2, Lcom/gsma/services/rcs/chat/GroupChat;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/chat/GroupChat;-><init>(Lcom/gsma/services/rcs/chat/IGroupChat;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 522
    new-instance p2, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 516
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public isAllowedToCreateClosedGroupChat(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->mApi:Lcom/gsma/services/rcs/chat/IChatService;

    if-eqz v0, :cond_0

    .line 242
    :try_start_0
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/chat/IChatService;->isAllowedToCreateClosedGroupChat(Ljava/util/List;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 245
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 239
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public isAllowedToCreateOpenGroupChat(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 600
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->mApi:Lcom/gsma/services/rcs/chat/IChatService;

    if-eqz v0, :cond_0

    .line 604
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Lcom/gsma/services/rcs/chat/IChatService;->isAllowedToCreateOpenGroupChat(Ljava/util/List;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 606
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 601
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public markAllMessageAsRead()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 614
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->mApi:Lcom/gsma/services/rcs/chat/IChatService;

    if-eqz v0, :cond_0

    .line 618
    :try_start_0
    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IChatService;->markAllMessageAsRead()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 620
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 615
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public markConversationAsRead(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 392
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->mApi:Lcom/gsma/services/rcs/chat/IChatService;

    if-eqz v0, :cond_0

    .line 398
    :try_start_0
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/chat/IChatService;->markConversationAsRead(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 401
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 393
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public markMessageAsRead(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 372
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->mApi:Lcom/gsma/services/rcs/chat/IChatService;

    if-eqz v0, :cond_0

    .line 376
    :try_start_0
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/chat/IChatService;->markMessageAsRead(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 378
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 373
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public queryChatIdByParticipants(Ljava/lang/String;Ljava/util/Set;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 582
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->mApi:Lcom/gsma/services/rcs/chat/IChatService;

    if-eqz v0, :cond_0

    .line 586
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1, v1}, Lcom/gsma/services/rcs/chat/IChatService;->queryChatIdByParticipants(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 588
    new-instance p2, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 583
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public removeEventListener(Lcom/gsma/services/rcs/chat/GroupChatListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 437
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->mGroupChatListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 439
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 434
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsIllegalArgumentException;

    const-string v0, "listener must not be null!"

    invoke-direct {p1, v0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeEventListener(Lcom/gsma/services/rcs/chat/OneToOneChatListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 475
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService;->mOneToOneChatListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 477
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 472
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsIllegalArgumentException;

    const-string v0, "listener must not be null!"

    invoke-direct {p1, v0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected setApi(Landroid/os/IInterface;)V
    .locals 0

    .line 130
    invoke-super {p0, p1}, Lcom/gsma/services/rcs/RcsService;->setApi(Landroid/os/IInterface;)V

    .line 131
    check-cast p1, Lcom/gsma/services/rcs/chat/IChatService;

    iput-object p1, p0, Lcom/gsma/services/rcs/chat/ChatService;->mApi:Lcom/gsma/services/rcs/chat/IChatService;

    return-void
.end method
