.class public abstract Lcom/gsma/services/rcs/RcsService;
.super Ljava/lang/Object;
.source "RcsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/RcsService$RealTimeOperate;,
        Lcom/gsma/services/rcs/RcsService$ReadStatus;,
        Lcom/gsma/services/rcs/RcsService$Direction;,
        Lcom/gsma/services/rcs/RcsService$Build;
    }
.end annotation


# static fields
.field public static final ACTION_SERVICE_PROVISIONING_DATA_CHANGED:Ljava/lang/String; = "com.gsma.services.rcs.action.SERVICE_PROVISIONNING_DATA_CHANGED"

.field public static final ACTION_SERVICE_UP:Ljava/lang/String; = "com.gsma.services.rcs.action.SERVICE_UP"

.field private static final sLogger:Lcom/gsma/rcs/utils/logger/Logger;


# instance fields
.field private mApi:Landroid/os/IInterface;

.field protected mCtx:Landroid/content/Context;

.field protected mListener:Lcom/gsma/services/rcs/RcsServiceListener;

.field protected final mRcsServiceControl:Lcom/gsma/services/rcs/RcsServiceControl;

.field private final mRcsServiceRegistrationListener:Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

.field private final mRegistrationListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/gsma/services/rcs/RcsServiceRegistrationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mVersion:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "RcsService"

    .line 69
    invoke-static {v0}, Lcom/gsma/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/gsma/rcs/utils/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/RcsService;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V
    .locals 1

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/gsma/services/rcs/RcsService;->mRegistrationListeners:Ljava/util/Set;

    .line 501
    new-instance v0, Lcom/gsma/services/rcs/RcsService$1;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/RcsService$1;-><init>(Lcom/gsma/services/rcs/RcsService;)V

    iput-object v0, p0, Lcom/gsma/services/rcs/RcsService;->mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 543
    new-instance v0, Lcom/gsma/services/rcs/RcsService$2;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/RcsService$2;-><init>(Lcom/gsma/services/rcs/RcsService;)V

    iput-object v0, p0, Lcom/gsma/services/rcs/RcsService;->mRcsServiceRegistrationListener:Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    .line 263
    iput-object p1, p0, Lcom/gsma/services/rcs/RcsService;->mCtx:Landroid/content/Context;

    .line 264
    iput-object p2, p0, Lcom/gsma/services/rcs/RcsService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    .line 265
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsServiceControl;->getInstance(Landroid/content/Context;)Lcom/gsma/services/rcs/RcsServiceControl;

    move-result-object p1

    iput-object p1, p0, Lcom/gsma/services/rcs/RcsService;->mRcsServiceControl:Lcom/gsma/services/rcs/RcsServiceControl;

    .line 266
    invoke-direct {p0}, Lcom/gsma/services/rcs/RcsService;->registerServiceBroadcastReceiver()V

    return-void
.end method

.method static synthetic access$000()Lcom/gsma/rcs/utils/logger/Logger;
    .locals 1

    .line 51
    sget-object v0, Lcom/gsma/services/rcs/RcsService;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/gsma/services/rcs/RcsService;)Ljava/util/Set;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/gsma/services/rcs/RcsService;->mRegistrationListeners:Ljava/util/Set;

    return-object p0
.end method

.method private callApiMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/gsma/services/rcs/RcsService;->mApi:Landroid/os/IInterface;

    if-eqz v0, :cond_1

    .line 285
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :try_start_0
    new-array v3, v2, [Ljava/lang/Class;

    aput-object p3, v3, v1

    .line 288
    invoke-virtual {v0, p1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 289
    iget-object p3, p0, Lcom/gsma/services/rcs/RcsService;->mApi:Landroid/os/IInterface;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-virtual {p1, p3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p2, 0x0

    .line 291
    check-cast p2, [Ljava/lang/Class;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 292
    iget-object p2, p0, Lcom/gsma/services/rcs/RcsService;->mApi:Landroid/os/IInterface;

    new-array p3, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 295
    new-instance p2, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 283
    :cond_1
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method private registerServiceBroadcastReceiver()V
    .locals 4

    .line 535
    invoke-direct {p0}, Lcom/gsma/services/rcs/RcsService;->unregisterServiceBroadcastReceiver()V

    .line 536
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.gsma.services.rcs.action.SERVICE_UP"

    .line 537
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 539
    iget-object v1, p0, Lcom/gsma/services/rcs/RcsService;->mCtx:Landroid/content/Context;

    iget-object v2, p0, Lcom/gsma/services/rcs/RcsService;->mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private unregisterServiceBroadcastReceiver()V
    .locals 2

    .line 524
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/RcsService;->mCtx:Landroid/content/Context;

    iget-object v1, p0, Lcom/gsma/services/rcs/RcsService;->mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public addEventListener(Lcom/gsma/services/rcs/RcsServiceRegistrationListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 407
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/RcsService;->mRegistrationListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 409
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 404
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsIllegalArgumentException;

    const-string v0, "listener must not be null!"

    invoke-direct {p1, v0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract connect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPermissionDeniedException;
        }
    .end annotation
.end method

.method public abstract disconnect()V
.end method

.method public getCommonConfiguration()Lcom/gsma/services/rcs/CommonServiceConfiguration;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 441
    iget-object v0, p0, Lcom/gsma/services/rcs/RcsService;->mApi:Landroid/os/IInterface;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "getCommonConfiguration"

    const/4 v1, 0x0

    .line 445
    invoke-direct {p0, v0, v1, v1}, Lcom/gsma/services/rcs/RcsService;->callApiMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/ICommonServiceConfiguration;

    .line 447
    new-instance v1, Lcom/gsma/services/rcs/CommonServiceConfiguration;

    iget-object v2, p0, Lcom/gsma/services/rcs/RcsService;->mCtx:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Lcom/gsma/services/rcs/CommonServiceConfiguration;-><init>(Lcom/gsma/services/rcs/ICommonServiceConfiguration;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 450
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 442
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getServiceRegistrationReasonCode()Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/gsma/services/rcs/RcsService;->mApi:Landroid/os/IInterface;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "getServiceRegistrationReasonCode"

    const/4 v1, 0x0

    .line 387
    invoke-direct {p0, v0, v1, v1}, Lcom/gsma/services/rcs/RcsService;->callApiMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 388
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;->valueOf(I)Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 391
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 384
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getServiceVersion()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 339
    iget-object v0, p0, Lcom/gsma/services/rcs/RcsService;->mApi:Landroid/os/IInterface;

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/gsma/services/rcs/RcsService;->mVersion:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    :try_start_0
    const-string v0, "getServiceVersion"

    const/4 v1, 0x0

    .line 346
    invoke-direct {p0, v0, v1, v1}, Lcom/gsma/services/rcs/RcsService;->callApiMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/gsma/services/rcs/RcsService;->mVersion:Ljava/lang/Integer;

    .line 347
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 350
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 340
    :cond_1
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public isServiceConnected()Z
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/gsma/services/rcs/RcsService;->mApi:Landroid/os/IInterface;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isServiceRegistered()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 363
    iget-object v0, p0, Lcom/gsma/services/rcs/RcsService;->mApi:Landroid/os/IInterface;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "isServiceRegistered"

    const/4 v1, 0x0

    .line 367
    invoke-direct {p0, v0, v1, v1}, Lcom/gsma/services/rcs/RcsService;->callApiMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 370
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 364
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method protected registerRcsServiceRegistrationListener()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 570
    iget-object v0, p0, Lcom/gsma/services/rcs/RcsService;->mApi:Landroid/os/IInterface;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "addEventListener"

    .line 574
    iget-object v1, p0, Lcom/gsma/services/rcs/RcsService;->mRcsServiceRegistrationListener:Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    const-class v2, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    invoke-direct {p0, v0, v1, v2}, Lcom/gsma/services/rcs/RcsService;->callApiMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 576
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 571
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public removeEventListener(Lcom/gsma/services/rcs/RcsServiceRegistrationListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 426
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/RcsService;->mRegistrationListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 428
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 423
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsIllegalArgumentException;

    const-string v0, "listener must not be null!"

    invoke-direct {p1, v0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected setApi(Landroid/os/IInterface;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/gsma/services/rcs/RcsService;->mApi:Landroid/os/IInterface;

    return-void
.end method

.method protected unregisterRcsServiceRegistrationListener()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
        }
    .end annotation

    .line 581
    iget-object v0, p0, Lcom/gsma/services/rcs/RcsService;->mApi:Landroid/os/IInterface;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "removeEventListener"

    .line 585
    iget-object v1, p0, Lcom/gsma/services/rcs/RcsService;->mRcsServiceRegistrationListener:Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    const-class v2, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    invoke-direct {p0, v0, v1, v2}, Lcom/gsma/services/rcs/RcsService;->callApiMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 588
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 582
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method
