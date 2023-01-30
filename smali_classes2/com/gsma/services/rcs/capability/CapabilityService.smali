.class public final Lcom/gsma/services/rcs/capability/CapabilityService;
.super Lcom/gsma/services/rcs/RcsService;
.source "CapabilityService.java"


# static fields
.field public static final EXTENSION_MIME_TYPE:Ljava/lang/String; = "com.gsma.services.rcs"

.field public static final INTENT_EXTENSIONS:Ljava/lang/String; = "com.gsma.services.rcs.capability.EXTENSION"

.field private static sApiCompatible:Z

.field private static final sLogger:Lcom/gsma/rcs/utils/logger/Logger;


# instance fields
.field private apiConnection:Landroid/content/ServiceConnection;

.field private mApi:Lcom/gsma/services/rcs/capability/ICapabilityService;

.field private final mCapabilitiesListener:Lcom/gsma/services/rcs/capability/ICapabilitiesListener;

.field private final mCapabilitiesListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/gsma/services/rcs/capability/CapabilitiesListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mCapalitiesListenersPerContact:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            "Ljava/util/List<",
            "Lcom/gsma/services/rcs/capability/CapabilitiesListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    const-class v0, Lcom/gsma/services/rcs/capability/CapabilityService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gsma/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/gsma/rcs/utils/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/capability/CapabilityService;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    const/4 v0, 0x0

    .line 77
    sput-boolean v0, Lcom/gsma/services/rcs/capability/CapabilityService;->sApiCompatible:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/gsma/services/rcs/RcsService;-><init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V

    .line 84
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->mCapabilitiesListeners:Ljava/util/Set;

    .line 86
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->mCapalitiesListenersPerContact:Ljava/util/Map;

    .line 146
    new-instance p1, Lcom/gsma/services/rcs/capability/CapabilityService$1;

    invoke-direct {p1, p0}, Lcom/gsma/services/rcs/capability/CapabilityService$1;-><init>(Lcom/gsma/services/rcs/capability/CapabilityService;)V

    iput-object p1, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->apiConnection:Landroid/content/ServiceConnection;

    .line 716
    new-instance p1, Lcom/gsma/services/rcs/capability/CapabilityService$2;

    invoke-direct {p1, p0}, Lcom/gsma/services/rcs/capability/CapabilityService$2;-><init>(Lcom/gsma/services/rcs/capability/CapabilityService;)V

    iput-object p1, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->mCapabilitiesListener:Lcom/gsma/services/rcs/capability/ICapabilitiesListener;

    return-void
.end method

.method static synthetic access$000(Lcom/gsma/services/rcs/capability/CapabilityService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Lcom/gsma/services/rcs/capability/CapabilityService;->registerEventListeners()V

    return-void
.end method

.method static synthetic access$100(Lcom/gsma/services/rcs/capability/CapabilityService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/gsma/services/rcs/capability/CapabilityService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/gsma/services/rcs/capability/CapabilityService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Lcom/gsma/services/rcs/capability/CapabilityService;->unregisterEventListeners()V

    return-void
.end method

.method static synthetic access$400(Lcom/gsma/services/rcs/capability/CapabilityService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/gsma/services/rcs/capability/CapabilityService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/gsma/services/rcs/capability/CapabilityService;Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/capability/Capabilities;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/gsma/services/rcs/capability/CapabilityService;->notifyCapabilities(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/capability/Capabilities;)V

    return-void
.end method

.method private notifyCapabilities(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/capability/Capabilities;)V
    .locals 3

    .line 725
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->mCapalitiesListenersPerContact:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 727
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 728
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 729
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 730
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/capability/CapabilitiesListener;

    if-eqz v2, :cond_0

    .line 732
    invoke-virtual {v2, p1, p2}, Lcom/gsma/services/rcs/capability/CapabilitiesListener;->onCapabilitiesReceived(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/capability/Capabilities;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 739
    :cond_1
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->mCapabilitiesListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_2

    return-void

    .line 742
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->mCapabilitiesListeners:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gsma/services/rcs/capability/CapabilitiesListener;

    if-eqz v1, :cond_3

    .line 744
    invoke-virtual {v1, p1, p2}, Lcom/gsma/services/rcs/capability/CapabilitiesListener;->onCapabilitiesReceived(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/capability/Capabilities;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method private registerCapabilitiesListener()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 750
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->mApi:Lcom/gsma/services/rcs/capability/ICapabilityService;

    if-eqz v0, :cond_0

    .line 754
    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->mCapabilitiesListener:Lcom/gsma/services/rcs/capability/ICapabilitiesListener;

    invoke-interface {v0, v1}, Lcom/gsma/services/rcs/capability/ICapabilityService;->addCapabilitiesListener(Lcom/gsma/services/rcs/capability/ICapabilitiesListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 756
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 751
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

    .line 772
    invoke-virtual {p0}, Lcom/gsma/services/rcs/capability/CapabilityService;->registerRcsServiceRegistrationListener()V

    .line 773
    invoke-direct {p0}, Lcom/gsma/services/rcs/capability/CapabilityService;->registerCapabilitiesListener()V

    return-void
.end method

.method private unregisterCapabilitiesListener()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 761
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->mApi:Lcom/gsma/services/rcs/capability/ICapabilityService;

    if-eqz v0, :cond_0

    .line 765
    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->mCapabilitiesListener:Lcom/gsma/services/rcs/capability/ICapabilitiesListener;

    invoke-interface {v0, v1}, Lcom/gsma/services/rcs/capability/ICapabilityService;->removeCapabilitiesListener(Lcom/gsma/services/rcs/capability/ICapabilitiesListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 767
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 762
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

    .line 777
    invoke-virtual {p0}, Lcom/gsma/services/rcs/capability/CapabilityService;->unregisterRcsServiceRegistrationListener()V

    .line 778
    invoke-direct {p0}, Lcom/gsma/services/rcs/capability/CapabilityService;->unregisterCapabilitiesListener()V

    return-void
.end method


# virtual methods
.method public Query(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 624
    :try_start_0
    sget-object v0, Lcom/gsma/services/rcs/capability/CapabilityService;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query in API"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gsma/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    .line 625
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->mApi:Lcom/gsma/services/rcs/capability/ICapabilityService;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/capability/ICapabilityService;->Query(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 627
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 628
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;->assertException(Ljava/lang/Exception;)V

    .line 629
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public RealTimeQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 652
    :try_start_0
    sget-object v0, Lcom/gsma/services/rcs/capability/CapabilityService;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RealTimeQuery in API"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gsma/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    .line 653
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->mApi:Lcom/gsma/services/rcs/capability/ICapabilityService;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/capability/ICapabilityService;->RealTimeQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 655
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 656
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;->assertException(Ljava/lang/Exception;)V

    .line 657
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public UpdateAfterSuccessfulServiceAttemp(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 638
    :try_start_0
    sget-object v0, Lcom/gsma/services/rcs/capability/CapabilityService;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpdateAfterSuccessfulServiceAttemp in API"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gsma/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    .line 639
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->mApi:Lcom/gsma/services/rcs/capability/ICapabilityService;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/capability/ICapabilityService;->UpdateAfterSuccessfulServiceAttemp(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 641
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 642
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;->assertException(Ljava/lang/Exception;)V

    .line 643
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public addCapabilitiesListener(Lcom/gsma/services/rcs/capability/CapabilitiesListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;,
            Lcom/gsma/services/rcs/RcsIllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 339
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->mCapabilitiesListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 341
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 342
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 336
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsIllegalArgumentException;

    const-string v0, "listener must not be null or empty!"

    invoke-direct {p1, v0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addCapabilitiesListener(Ljava/util/Set;Lcom/gsma/services/rcs/capability/CapabilitiesListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            ">;",
            "Lcom/gsma/services/rcs/capability/CapabilitiesListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;,
            Lcom/gsma/services/rcs/RcsIllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 378
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    .line 385
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/contact/ContactId;

    .line 386
    iget-object v1, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->mCapalitiesListenersPerContact:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    .line 388
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 389
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    iget-object v2, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->mCapalitiesListenersPerContact:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 392
    :cond_0
    iget-object v1, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->mCapalitiesListenersPerContact:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 393
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 397
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 398
    new-instance p2, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 382
    :cond_2
    new-instance p1, Lcom/gsma/services/rcs/RcsIllegalArgumentException;

    const-string p2, "listener must not be null or empty!"

    invoke-direct {p1, p2}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 379
    :cond_3
    new-instance p1, Lcom/gsma/services/rcs/RcsIllegalArgumentException;

    const-string p2, "contacts must not be null or empty!"

    invoke-direct {p1, p2}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final connect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPermissionDeniedException;
        }
    .end annotation

    .line 104
    sget-boolean v0, Lcom/gsma/services/rcs/capability/CapabilityService;->sApiCompatible:Z

    if-nez v0, :cond_1

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->mRcsServiceControl:Lcom/gsma/services/rcs/RcsServiceControl;

    invoke-virtual {v0, p0}, Lcom/gsma/services/rcs/RcsServiceControl;->isCompatible(Lcom/gsma/services/rcs/RcsService;)Z

    move-result v0

    sput-boolean v0, Lcom/gsma/services/rcs/capability/CapabilityService;->sApiCompatible:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsPermissionDeniedException;

    const-string v1, "The TAPI client version of the capability service is not compatible with the TAPI service implementation version on this device!"

    invoke-direct {v0, v1}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/gsma/services/rcs/RcsServiceException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 112
    new-instance v1, Lcom/gsma/services/rcs/RcsPermissionDeniedException;

    const-string v2, "The compatibility of TAPI client version with the TAPI service implementation version of this device cannot be checked for the capability service!"

    invoke-direct {v1, v2, v0}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 117
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gsma/services/rcs/capability/ICapabilityService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.tct.cs.rcs"

    .line 118
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    iget-object v1, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->mCtx:Landroid/content/Context;

    iget-object v2, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->apiConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public disconnect()V
    .locals 2

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->mCtx:Landroid/content/Context;

    iget-object v1, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->apiConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public formatContact(Ljava/lang/String;)Lcom/gsma/services/rcs/contact/ContactId;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;,
            Lcom/gsma/services/rcs/RcsIllegalArgumentException;
        }
    .end annotation

    .line 558
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->mApi:Lcom/gsma/services/rcs/capability/ICapabilityService;

    if-eqz v0, :cond_1

    .line 561
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 565
    :try_start_0
    sget-object v0, Lcom/gsma/services/rcs/capability/CapabilityService;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "formatContact in API"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gsma/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    .line 566
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->mApi:Lcom/gsma/services/rcs/capability/ICapabilityService;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/capability/ICapabilityService;->formatContact(Ljava/lang/String;)Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 568
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 569
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;->assertException(Ljava/lang/Exception;)V

    .line 570
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 562
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsIllegalArgumentException;

    const-string v0, "contact must not be null!"

    invoke-direct {p1, v0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 559
    :cond_1
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public getContactCapabilities(Lcom/gsma/services/rcs/contact/ContactId;)Lcom/gsma/services/rcs/capability/Capabilities;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;,
            Lcom/gsma/services/rcs/RcsIllegalArgumentException;
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->mApi:Lcom/gsma/services/rcs/capability/ICapabilityService;

    if-eqz v0, :cond_0

    .line 216
    :try_start_0
    sget-object v0, Lcom/gsma/services/rcs/capability/CapabilityService;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    const-string v1, "getContactCapabilities in API"

    invoke-virtual {v0, v1}, Lcom/gsma/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->mApi:Lcom/gsma/services/rcs/capability/ICapabilityService;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/capability/ICapabilityService;->getContactCapabilities(Lcom/gsma/services/rcs/contact/ContactId;)Lcom/gsma/services/rcs/capability/Capabilities;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 219
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 220
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 221
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 213
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public getMyCapabilities()Lcom/gsma/services/rcs/capability/Capabilities;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->mApi:Lcom/gsma/services/rcs/capability/ICapabilityService;

    if-eqz v0, :cond_0

    .line 188
    :try_start_0
    sget-object v0, Lcom/gsma/services/rcs/capability/CapabilityService;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    const-string v1, "getMyCapabilities in API"

    invoke-virtual {v0, v1}, Lcom/gsma/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->mApi:Lcom/gsma/services/rcs/capability/ICapabilityService;

    invoke-interface {v0}, Lcom/gsma/services/rcs/capability/ICapabilityService;->getMyCapabilities()Lcom/gsma/services/rcs/capability/Capabilities;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 191
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 192
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 185
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getThrottleValue()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 664
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->mApi:Lcom/gsma/services/rcs/capability/ICapabilityService;

    if-eqz v0, :cond_0

    .line 668
    :try_start_0
    sget-object v0, Lcom/gsma/services/rcs/capability/CapabilityService;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    const-string v1, "getThrottleValue in API"

    invoke-virtual {v0, v1}, Lcom/gsma/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    .line 669
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->mApi:Lcom/gsma/services/rcs/capability/ICapabilityService;

    invoke-interface {v0}, Lcom/gsma/services/rcs/capability/ICapabilityService;->getThrottleValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 671
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;->assertException(Ljava/lang/Exception;)V

    .line 672
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 665
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public removeCapabilitiesListener(Lcom/gsma/services/rcs/capability/CapabilitiesListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;,
            Lcom/gsma/services/rcs/RcsIllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 360
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->mCapabilitiesListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 362
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 363
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 357
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsIllegalArgumentException;

    const-string v0, "listener must not be null or empty!"

    invoke-direct {p1, v0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeCapabilitiesListener(Ljava/util/Set;Lcom/gsma/services/rcs/capability/CapabilitiesListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            ">;",
            "Lcom/gsma/services/rcs/capability/CapabilitiesListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;,
            Lcom/gsma/services/rcs/RcsIllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 413
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz p2, :cond_5

    .line 420
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/contact/ContactId;

    .line 421
    iget-object v1, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->mCapalitiesListenersPerContact:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 422
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    .line 423
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 424
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gsma/services/rcs/capability/CapabilitiesListener;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    if-eq p2, v3, :cond_2

    goto :goto_1

    .line 431
    :cond_2
    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 432
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_3

    .line 433
    iget-object v3, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->mCapalitiesListenersPerContact:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void

    :catch_0
    move-exception p1

    .line 439
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 440
    new-instance p2, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 417
    :cond_5
    new-instance p1, Lcom/gsma/services/rcs/RcsIllegalArgumentException;

    const-string p2, "listener must not be null or empty!"

    invoke-direct {p1, p2}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 414
    :cond_6
    new-instance p1, Lcom/gsma/services/rcs/RcsIllegalArgumentException;

    const-string p2, "contacts must not be null or empty!"

    invoke-direct {p1, p2}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public requestAllContactsCapabilities()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->mApi:Lcom/gsma/services/rcs/capability/ICapabilityService;

    if-eqz v0, :cond_0

    .line 317
    :try_start_0
    sget-object v0, Lcom/gsma/services/rcs/capability/CapabilityService;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    const-string v1, "requestAllContactsCapabilities in API"

    invoke-virtual {v0, v1}, Lcom/gsma/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->mApi:Lcom/gsma/services/rcs/capability/ICapabilityService;

    invoke-interface {v0}, Lcom/gsma/services/rcs/capability/ICapabilityService;->requestAllContactsCapabilities()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 320
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;->assertException(Ljava/lang/Exception;)V

    .line 321
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 314
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public requestContactCapabilities(Lcom/gsma/services/rcs/contact/ContactId;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;,
            Lcom/gsma/services/rcs/RcsIllegalArgumentException;
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->mApi:Lcom/gsma/services/rcs/capability/ICapabilityService;

    if-eqz v0, :cond_0

    .line 256
    :try_start_0
    sget-object v0, Lcom/gsma/services/rcs/capability/CapabilityService;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestContactCapabilities in API Individual"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gsma/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->mApi:Lcom/gsma/services/rcs/capability/ICapabilityService;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/capability/ICapabilityService;->requestContactCapabilities(Lcom/gsma/services/rcs/contact/ContactId;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 259
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 260
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;->assertException(Ljava/lang/Exception;)V

    .line 261
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 246
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public requestContactCapabilities(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;,
            Lcom/gsma/services/rcs/RcsIllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 285
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    :try_start_0
    sget-object v0, Lcom/gsma/services/rcs/capability/CapabilityService;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    const-string v1, "requestContactCapabilities Set<ContactId> in API"

    invoke-virtual {v0, v1}, Lcom/gsma/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->mApi:Lcom/gsma/services/rcs/capability/ICapabilityService;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Lcom/gsma/services/rcs/capability/ICapabilityService;->requestContactCapabilities2(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 292
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 293
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;->assertException(Ljava/lang/Exception;)V

    .line 294
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 286
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsIllegalArgumentException;

    const-string v0, "contacts must not be null or empty!"

    invoke-direct {p1, v0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public requestContactCapabilitiesWithoutExpire(Lcom/gsma/services/rcs/contact/ContactId;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;,
            Lcom/gsma/services/rcs/RcsIllegalArgumentException;
        }
    .end annotation

    .line 459
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->mApi:Lcom/gsma/services/rcs/capability/ICapabilityService;

    if-eqz v0, :cond_0

    .line 463
    :try_start_0
    sget-object v0, Lcom/gsma/services/rcs/capability/CapabilityService;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestContactCapabilitiesWithoutExpire in API"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gsma/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->mApi:Lcom/gsma/services/rcs/capability/ICapabilityService;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/capability/ICapabilityService;->requestContactCapabilitiesWithoutExpire(Lcom/gsma/services/rcs/contact/ContactId;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 466
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 467
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;->assertException(Ljava/lang/Exception;)V

    .line 468
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 460
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public requestContactServiceAvailability(Lcom/gsma/services/rcs/contact/ContactId;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;,
            Lcom/gsma/services/rcs/RcsIllegalArgumentException;
        }
    .end annotation

    .line 490
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->mApi:Lcom/gsma/services/rcs/capability/ICapabilityService;

    if-eqz v0, :cond_0

    .line 494
    :try_start_0
    sget-object v0, Lcom/gsma/services/rcs/capability/CapabilityService;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestContactServiceAvailability in API"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gsma/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->mApi:Lcom/gsma/services/rcs/capability/ICapabilityService;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/capability/ICapabilityService;->requestContactServiceAvailability(Lcom/gsma/services/rcs/contact/ContactId;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 497
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 498
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;->assertException(Ljava/lang/Exception;)V

    .line 499
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 491
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public requestSpecificContactsCapability(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;,
            Lcom/gsma/services/rcs/RcsIllegalArgumentException;
        }
    .end annotation

    .line 527
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->mApi:Lcom/gsma/services/rcs/capability/ICapabilityService;

    if-eqz v0, :cond_0

    .line 531
    :try_start_0
    sget-object v0, Lcom/gsma/services/rcs/capability/CapabilityService;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    const-string v1, "requestSpecificContactsCapability in API"

    invoke-virtual {v0, v1}, Lcom/gsma/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    .line 532
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->mApi:Lcom/gsma/services/rcs/capability/ICapabilityService;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Lcom/gsma/services/rcs/capability/ICapabilityService;->requestSpecificContactsCapability(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 534
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 535
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;->assertException(Ljava/lang/Exception;)V

    .line 536
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 528
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method protected setApi(Landroid/os/IInterface;)V
    .locals 0

    .line 139
    invoke-super {p0, p1}, Lcom/gsma/services/rcs/RcsService;->setApi(Landroid/os/IInterface;)V

    .line 140
    check-cast p1, Lcom/gsma/services/rcs/capability/ICapabilityService;

    iput-object p1, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->mApi:Lcom/gsma/services/rcs/capability/ICapabilityService;

    return-void
.end method

.method public setClientComponent(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 687
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->mApi:Lcom/gsma/services/rcs/capability/ICapabilityService;

    if-eqz v0, :cond_0

    .line 691
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->mCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 692
    iget-object v1, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->mApi:Lcom/gsma/services/rcs/capability/ICapabilityService;

    invoke-interface {v1, v0, p1}, Lcom/gsma/services/rcs/capability/ICapabilityService;->setClientComponent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 694
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 695
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 688
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public syncGetContactCapabilities(Ljava/util/List;Lcom/gsma/services/rcs/capability/CapabilitiesListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            ">;",
            "Lcom/gsma/services/rcs/capability/CapabilitiesListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;,
            Lcom/gsma/services/rcs/RcsPersistentStorageException;
        }
    .end annotation

    .line 702
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->mApi:Lcom/gsma/services/rcs/capability/ICapabilityService;

    if-eqz v0, :cond_0

    .line 706
    :try_start_0
    sget-object v0, Lcom/gsma/services/rcs/capability/CapabilityService;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    const-string v1, "syncGetContactCapabilities in API"

    invoke-virtual {v0, v1}, Lcom/gsma/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    .line 707
    new-instance v0, Lcom/gsma/services/rcs/capability/CapabilitiesListenerImpl;

    invoke-direct {v0, p2}, Lcom/gsma/services/rcs/capability/CapabilitiesListenerImpl;-><init>(Lcom/gsma/services/rcs/capability/CapabilitiesListener;)V

    .line 708
    iget-object p2, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->mApi:Lcom/gsma/services/rcs/capability/ICapabilityService;

    invoke-interface {p2, p1, v0}, Lcom/gsma/services/rcs/capability/ICapabilityService;->syncGetContactCapabilities(Ljava/util/List;Lcom/gsma/services/rcs/capability/ICapabilitiesListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 710
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 711
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 712
    new-instance p2, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 703
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method
