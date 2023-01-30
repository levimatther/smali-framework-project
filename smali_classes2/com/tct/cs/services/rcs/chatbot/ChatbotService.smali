.class public final Lcom/tct/cs/services/rcs/chatbot/ChatbotService;
.super Lcom/gsma/services/rcs/RcsService;
.source "ChatbotService.java"


# static fields
.field private static sApiCompatible:Z = false


# instance fields
.field private apiConnection:Landroid/content/ServiceConnection;

.field private final chatbotListener:Lcom/tct/cs/services/rcs/chatbot/IChatbotListener;

.field private mApi:Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

.field private final mChatbotListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/tct/cs/services/rcs/chatbot/ChatbotListener;",
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

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/gsma/services/rcs/RcsService;-><init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V

    .line 41
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mChatbotListeners:Ljava/util/Set;

    .line 104
    new-instance p1, Lcom/tct/cs/services/rcs/chatbot/ChatbotService$1;

    invoke-direct {p1, p0}, Lcom/tct/cs/services/rcs/chatbot/ChatbotService$1;-><init>(Lcom/tct/cs/services/rcs/chatbot/ChatbotService;)V

    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->apiConnection:Landroid/content/ServiceConnection;

    .line 1013
    new-instance p1, Lcom/tct/cs/services/rcs/chatbot/ChatbotService$2;

    invoke-direct {p1, p0}, Lcom/tct/cs/services/rcs/chatbot/ChatbotService$2;-><init>(Lcom/tct/cs/services/rcs/chatbot/ChatbotService;)V

    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->chatbotListener:Lcom/tct/cs/services/rcs/chatbot/IChatbotListener;

    return-void
.end method

.method static synthetic access$000(Lcom/tct/cs/services/rcs/chatbot/ChatbotService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->registerEventListeners()V

    return-void
.end method

.method static synthetic access$100(Lcom/tct/cs/services/rcs/chatbot/ChatbotService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tct/cs/services/rcs/chatbot/ChatbotService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tct/cs/services/rcs/chatbot/ChatbotService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->unregisterEventListeners()V

    return-void
.end method

.method static synthetic access$400(Lcom/tct/cs/services/rcs/chatbot/ChatbotService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/tct/cs/services/rcs/chatbot/ChatbotService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/tct/cs/services/rcs/chatbot/ChatbotService;)Ljava/util/Set;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mChatbotListeners:Ljava/util/Set;

    return-object p0
.end method

.method private registerChatbotListener()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 1126
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mApi:Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    if-eqz v0, :cond_0

    .line 1130
    :try_start_0
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->chatbotListener:Lcom/tct/cs/services/rcs/chatbot/IChatbotListener;

    invoke-interface {v0, v1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->addEventListener2(Lcom/tct/cs/services/rcs/chatbot/IChatbotListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1132
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 1127
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method private registerEventListeners()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 1148
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->registerRcsServiceRegistrationListener()V

    .line 1149
    invoke-direct {p0}, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->registerChatbotListener()V

    return-void
.end method

.method private tryToGrantUriPermissionToStackServices(Landroid/net/Uri;)V
    .locals 4

    .line 906
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 909
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 910
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 912
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 913
    iget-object v2, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mCtx:Landroid/content/Context;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, p1, v3}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private unregisterChatbotListener()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 1137
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mApi:Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    if-eqz v0, :cond_0

    .line 1141
    :try_start_0
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->chatbotListener:Lcom/tct/cs/services/rcs/chatbot/IChatbotListener;

    invoke-interface {v0, v1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->removeEventListener2(Lcom/tct/cs/services/rcs/chatbot/IChatbotListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1143
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 1138
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

    .line 1153
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->unregisterRcsServiceRegistrationListener()V

    .line 1154
    invoke-direct {p0}, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->unregisterChatbotListener()V

    return-void
.end method


# virtual methods
.method public addBotInfo(Lcom/tct/cs/services/rcs/chatbot/BotInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;,
            Lcom/gsma/services/rcs/RcsIllegalArgumentException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mApi:Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    if-eqz v0, :cond_0

    .line 199
    :try_start_0
    invoke-interface {v0, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->addBotInfo(Lcom/tct/cs/services/rcs/chatbot/BotInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 201
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 202
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 196
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public addEventListener(Lcom/tct/cs/services/rcs/chatbot/ChatbotListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 680
    :try_start_0
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mChatbotListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 682
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 677
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

    .line 62
    sget-boolean v0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->sApiCompatible:Z

    if-nez v0, :cond_1

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mRcsServiceControl:Lcom/gsma/services/rcs/RcsServiceControl;

    invoke-virtual {v0, p0}, Lcom/gsma/services/rcs/RcsServiceControl;->isCompatible(Lcom/gsma/services/rcs/RcsService;)Z

    move-result v0

    sput-boolean v0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->sApiCompatible:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsPermissionDeniedException;

    const-string v1, "The TAPI client version of the chat service is not compatible with the TAPI service implementation version on this device!"

    invoke-direct {v0, v1}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/gsma/services/rcs/RcsServiceException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 70
    new-instance v1, Lcom/gsma/services/rcs/RcsPermissionDeniedException;

    const-string v2, "The compatibility of TAPI client version with the TAPI service implementation version of this device cannot be checked for the chat service!"

    invoke-direct {v1, v2, v0}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 75
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.tct.cs.rcs"

    .line 76
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mCtx:Landroid/content/Context;

    iget-object v2, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->apiConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public deleteChatbot(Lcom/tct/cs/services/rcs/chatbot/BotId;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mApi:Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    if-eqz v0, :cond_0

    .line 217
    :try_start_0
    invoke-interface {v0, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->deleteChatbot(Lcom/tct/cs/services/rcs/chatbot/BotId;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 219
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 214
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public deleteChatbot(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tct/cs/services/rcs/chatbot/BotId;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mApi:Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    if-eqz v0, :cond_0

    .line 235
    :try_start_0
    invoke-interface {v0, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->deleteChatbot2(Ljava/util/List;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 237
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 232
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public deleteChatbotMessage(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 752
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mApi:Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    if-eqz v0, :cond_0

    .line 756
    :try_start_0
    invoke-interface {v0, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->deleteChatbotMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 758
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 753
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public deleteChatbotMessages(Lcom/tct/cs/services/rcs/chatbot/BotId;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 772
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mApi:Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    if-eqz v0, :cond_0

    .line 776
    :try_start_0
    invoke-interface {v0, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->deleteChatbotMessages(Lcom/tct/cs/services/rcs/chatbot/BotId;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 778
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 773
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public disconnect()V
    .locals 2

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mCtx:Landroid/content/Context;

    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->apiConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public downloadPreloadBots()Lcom/tct/cs/services/rcs/chatbot/ChatbotResultSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 1002
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mApi:Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    if-eqz v0, :cond_0

    .line 1006
    :try_start_0
    new-instance v0, Lcom/tct/cs/services/rcs/chatbot/ChatbotResultSet;

    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mApi:Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    invoke-interface {v1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->downloadPreloadBots()Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotResultSet;-><init>(Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1008
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1003
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public enableAnonymous(Lcom/tct/cs/services/rcs/chatbot/BotId;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mApi:Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    if-eqz v0, :cond_0

    .line 300
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->enableAnonymous(Lcom/tct/cs/services/rcs/chatbot/BotId;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 302
    new-instance p2, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 297
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public getAllCriticalChatbots()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tct/cs/services/rcs/chatbot/BotId;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 930
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mApi:Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    if-eqz v0, :cond_0

    .line 934
    :try_start_0
    invoke-interface {v0}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->getAllCriticalChatbots()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 936
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 931
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getAllSpams()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tct/cs/services/rcs/chatbot/BotId;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mApi:Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    if-eqz v0, :cond_0

    .line 395
    :try_start_0
    invoke-interface {v0}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->getAllSpams()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 397
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 392
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getChatbotMessage(Ljava/lang/String;)Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 640
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mApi:Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    if-eqz v0, :cond_0

    .line 644
    :try_start_0
    invoke-interface {v0, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->getChatbotMessage(Ljava/lang/String;)Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 646
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 641
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public getMaxFileTransferSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 552
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mApi:Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    if-eqz v0, :cond_0

    .line 556
    :try_start_0
    invoke-interface {v0}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->getMaxFileTransferSize()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 558
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 553
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getSupportedChatbotVersion()[I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 658
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mApi:Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    if-eqz v0, :cond_0

    .line 662
    :try_start_0
    invoke-interface {v0}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->getSupportedChatbotVersion()[I

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 664
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 659
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public isAllowToSendFileTransfer(Lcom/tct/cs/services/rcs/chatbot/BotId;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 534
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mApi:Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    if-eqz v0, :cond_0

    .line 538
    :try_start_0
    invoke-interface {v0, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->isAllowToSendFileTransfer(Lcom/tct/cs/services/rcs/chatbot/BotId;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 540
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 535
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public isAllowToSendGeoloc(Lcom/tct/cs/services/rcs/chatbot/BotId;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 495
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mApi:Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    if-eqz v0, :cond_0

    .line 499
    :try_start_0
    invoke-interface {v0, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->isAllowToSendGeoloc(Lcom/tct/cs/services/rcs/chatbot/BotId;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 501
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 496
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public isAllowToSendTextMessage(Lcom/tct/cs/services/rcs/chatbot/BotId;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 437
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mApi:Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    if-eqz v0, :cond_0

    .line 441
    :try_start_0
    invoke-interface {v0, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->isAllowToSendTextMessage(Lcom/tct/cs/services/rcs/chatbot/BotId;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 443
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 438
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public isAnonymousOn(Lcom/tct/cs/services/rcs/chatbot/BotId;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mApi:Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    if-eqz v0, :cond_0

    .line 279
    :try_start_0
    invoke-interface {v0, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->isAnonymousOn(Lcom/tct/cs/services/rcs/chatbot/BotId;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 281
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 276
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public isAvailable()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 793
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mApi:Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    if-eqz v0, :cond_0

    .line 797
    :try_start_0
    invoke-interface {v0}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->isAvailable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 799
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 794
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public isChatbotDirectoryAvailable()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 889
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mApi:Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    if-eqz v0, :cond_0

    .line 893
    :try_start_0
    invoke-interface {v0}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->isChatbotDirectoryAvailable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 895
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 890
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public isChatbotInfoExisted(Lcom/tct/cs/services/rcs/chatbot/BotId;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mApi:Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    if-eqz v0, :cond_0

    .line 255
    :try_start_0
    invoke-interface {v0, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->isChatbotInfoExisted(Lcom/tct/cs/services/rcs/chatbot/BotId;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 257
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 252
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public isCriticalChatbot(Lcom/tct/cs/services/rcs/chatbot/BotId;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 940
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mApi:Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    if-eqz v0, :cond_0

    .line 944
    :try_start_0
    invoke-interface {v0, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->isCriticalChatbot(Lcom/tct/cs/services/rcs/chatbot/BotId;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 946
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 941
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public isEnrichedChatbotSearch()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 962
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mApi:Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    if-eqz v0, :cond_0

    .line 966
    :try_start_0
    invoke-interface {v0}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->isEnrichedChatbotSearch()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 968
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 963
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public isSMSAvailable(Lcom/tct/cs/services/rcs/chatbot/BotId;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 983
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mApi:Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    if-eqz v0, :cond_0

    .line 987
    :try_start_0
    invoke-interface {v0, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->isSMSAvailable(Lcom/tct/cs/services/rcs/chatbot/BotId;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 989
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 984
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public isSendDisplayReportEnable(Lcom/tct/cs/services/rcs/chatbot/BotId;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 848
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mApi:Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    if-eqz v0, :cond_0

    .line 852
    :try_start_0
    invoke-interface {v0, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->isSendDisplayReportEnable(Lcom/tct/cs/services/rcs/chatbot/BotId;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 854
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 849
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public isShareLocation(Lcom/tct/cs/services/rcs/chatbot/BotId;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 830
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mApi:Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    if-eqz v0, :cond_0

    .line 834
    :try_start_0
    invoke-interface {v0, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->isShareLocation(Lcom/tct/cs/services/rcs/chatbot/BotId;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 836
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 831
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public isSpam(Lcom/tct/cs/services/rcs/chatbot/BotId;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mApi:Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    if-eqz v0, :cond_0

    .line 352
    :try_start_0
    invoke-interface {v0, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->isSpam(Lcom/tct/cs/services/rcs/chatbot/BotId;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 354
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 349
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public markAsRead(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 712
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mApi:Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    if-eqz v0, :cond_0

    .line 716
    :try_start_0
    invoke-interface {v0, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->markAsRead(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 718
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 713
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public markConversationAsRead(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 730
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mApi:Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    if-eqz v0, :cond_0

    .line 736
    :try_start_0
    invoke-interface {v0, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->markConversationAsRead(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 739
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 731
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public removeEventListener(Lcom/tct/cs/services/rcs/chatbot/ChatbotListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 698
    :try_start_0
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mChatbotListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 700
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 695
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsIllegalArgumentException;

    const-string v0, "listener must not be null!"

    invoke-direct {p1, v0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reportSpam(Lcom/tct/cs/services/rcs/chatbot/BotId;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tct/cs/services/rcs/chatbot/BotId;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mApi:Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    if-eqz v0, :cond_0

    .line 377
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->reportSpam(Lcom/tct/cs/services/rcs/chatbot/BotId;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 379
    new-instance p2, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 374
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public resendMessage(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 919
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mApi:Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    if-eqz v0, :cond_0

    .line 923
    :try_start_0
    invoke-interface {v0, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->resendMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 925
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 920
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public resetAnonymousToken(Lcom/tct/cs/services/rcs/chatbot/BotId;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mApi:Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    if-eqz v0, :cond_0

    .line 332
    :try_start_0
    invoke-interface {v0, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->resetAnonymousToken(Lcom/tct/cs/services/rcs/chatbot/BotId;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 334
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 329
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public responseAction(Lcom/tct/cs/services/rcs/chatbot/BotId;Ljava/lang/String;Lcom/tct/cs/services/rcs/chatbot/message/action/Action;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 593
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mApi:Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    if-eqz v0, :cond_0

    .line 597
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->responseAction(Lcom/tct/cs/services/rcs/chatbot/BotId;Ljava/lang/String;Lcom/tct/cs/services/rcs/chatbot/message/action/Action;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 599
    new-instance p2, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 594
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public retrieveBotInfo(Lcom/tct/cs/services/rcs/chatbot/BotId;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mApi:Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    if-eqz v0, :cond_0

    .line 162
    :try_start_0
    invoke-interface {v0, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->retrieveBotInfo(Lcom/tct/cs/services/rcs/chatbot/BotId;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 164
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 159
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public retrieveRealTimebotInfo(Lcom/tct/cs/services/rcs/chatbot/BotId;)Lcom/tct/cs/services/rcs/chatbot/BotInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mApi:Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    if-eqz v0, :cond_0

    .line 182
    :try_start_0
    invoke-interface {v0, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->retrieveRealTimebotInfo(Lcom/tct/cs/services/rcs/chatbot/BotId;)Lcom/tct/cs/services/rcs/chatbot/BotInfo;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 184
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 179
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public searchBots(Ljava/lang/String;)Lcom/tct/cs/services/rcs/chatbot/ChatbotResultSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mApi:Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    if-eqz v0, :cond_0

    .line 144
    :try_start_0
    new-instance v0, Lcom/tct/cs/services/rcs/chatbot/ChatbotResultSet;

    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mApi:Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    invoke-interface {v1, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->searchBots(Ljava/lang/String;)Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotResultSet;-><init>(Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 146
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 141
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public sendAnonymousLink(Lcom/tct/cs/services/rcs/chatbot/BotId;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mApi:Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    if-eqz v0, :cond_0

    .line 316
    :try_start_0
    invoke-interface {v0, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->sendAnonymousLink(Lcom/tct/cs/services/rcs/chatbot/BotId;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 318
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 313
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public sendGeoloc(Lcom/tct/cs/services/rcs/chatbot/BotId;Lcom/gsma/services/rcs/Geoloc;)Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 515
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mApi:Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    if-eqz v0, :cond_0

    .line 519
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->sendGeoloc(Lcom/tct/cs/services/rcs/chatbot/BotId;Lcom/gsma/services/rcs/Geoloc;)Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 521
    new-instance p2, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 516
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public sendHi(Lcom/tct/cs/services/rcs/chatbot/BotId;)Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 476
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mApi:Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    if-eqz v0, :cond_0

    .line 480
    :try_start_0
    invoke-interface {v0, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->sendHi(Lcom/tct/cs/services/rcs/chatbot/BotId;)Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 482
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 477
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public sendText(Lcom/tct/cs/services/rcs/chatbot/BotId;Ljava/lang/String;)Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 457
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mApi:Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    if-eqz v0, :cond_0

    .line 461
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->sendText(Lcom/tct/cs/services/rcs/chatbot/BotId;Ljava/lang/String;)Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 463
    new-instance p2, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 458
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method protected setApi(Landroid/os/IInterface;)V
    .locals 0

    .line 97
    invoke-super {p0, p1}, Lcom/gsma/services/rcs/RcsService;->setApi(Landroid/os/IInterface;)V

    .line 98
    check-cast p1, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mApi:Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    return-void
.end method

.method public setComposing(Lcom/tct/cs/services/rcs/chatbot/BotId;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 418
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mApi:Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    if-eqz v0, :cond_0

    .line 422
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->setComposing(Lcom/tct/cs/services/rcs/chatbot/BotId;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 424
    new-instance p2, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 419
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public setEnrichedChatbotSearch(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 952
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mApi:Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    if-eqz v0, :cond_0

    .line 956
    :try_start_0
    invoke-interface {v0, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->setEnrichedChatbotSearch(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 958
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 953
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public setSendDisplayReportEnable(Lcom/tct/cs/services/rcs/chatbot/BotId;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 866
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mApi:Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    if-eqz v0, :cond_0

    .line 870
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->setSendDisplayReportEnable(Lcom/tct/cs/services/rcs/chatbot/BotId;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 872
    new-instance p2, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 867
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public setShareLocation(Lcom/tct/cs/services/rcs/chatbot/BotId;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 812
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mApi:Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    if-eqz v0, :cond_0

    .line 816
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->setShareLocation(Lcom/tct/cs/services/rcs/chatbot/BotId;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 818
    new-instance p2, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 813
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public sharedDeviceData(Lcom/tct/cs/services/rcs/chatbot/BotId;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 621
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mApi:Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    if-eqz v0, :cond_0

    .line 625
    :try_start_0
    invoke-interface {v0, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->sharedDeviceData(Lcom/tct/cs/services/rcs/chatbot/BotId;)Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 627
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 622
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public transferFile(Lcom/tct/cs/services/rcs/chatbot/BotId;Landroid/net/Uri;)Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 572
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mApi:Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    if-eqz v0, :cond_0

    .line 576
    :try_start_0
    invoke-direct {p0, p2}, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->tryToGrantUriPermissionToStackServices(Landroid/net/Uri;)V

    .line 577
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/ChatbotService;->mApi:Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    invoke-interface {v0, p1, p2}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->transferFile(Lcom/tct/cs/services/rcs/chatbot/BotId;Landroid/net/Uri;)Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 579
    new-instance p2, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 573
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method
