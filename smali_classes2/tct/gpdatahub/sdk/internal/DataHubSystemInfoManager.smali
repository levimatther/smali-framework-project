.class public Ltct/gpdatahub/sdk/internal/DataHubSystemInfoManager;
.super Ljava/lang/Object;
.source "DataHubSystemInfoManager.java"


# static fields
.field private static PRINT_ONCE:Z = false

.field private static final TAG:Ljava/lang/String; = "DataHubSystemInfoManager"

.field private static isDataHubEnable:Z = true

.field private static isGPVersion:Z = true

.field private static mContext:Landroid/content/Context;

.field private static mService:Lcom/tct/internal/gpdatahub/IDataHubSystemInfoManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDataHubSystemInfoService()Lcom/tct/internal/gpdatahub/IDataHubSystemInfoManager;
    .locals 7

    const-string v0, "DataHubSystemInfoManager"

    .line 44
    sget-object v1, Ltct/gpdatahub/sdk/internal/DataHubSystemInfoManager;->mService:Lcom/tct/internal/gpdatahub/IDataHubSystemInfoManager;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v1, "android.os.ServiceManager"

    .line 48
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getService"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 49
    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "tct_service_system_info"

    aput-object v4, v3, v6

    .line 50
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 51
    invoke-static {v1}, Lcom/tct/internal/gpdatahub/IDataHubSystemInfoManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tct/internal/gpdatahub/IDataHubSystemInfoManager;

    move-result-object v1

    sput-object v1, Ltct/gpdatahub/sdk/internal/DataHubSystemInfoManager;->mService:Lcom/tct/internal/gpdatahub/IDataHubSystemInfoManager;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getDataHubSystemInfoManager] failed! Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getDataHubSystemInfoManager] failed! IllegalAccessException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v1

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getDataHubSystemInfoManager] failed! InvocationTargetException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_3
    move-exception v1

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getDataHubSystemInfoManager] failed! NoSuchMethodException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_4
    move-exception v1

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getDataHubSystemInfoManager] failed! ClassNotFoundException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getDataHubSystemInfoManager]  mService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ltct/gpdatahub/sdk/internal/DataHubSystemInfoManager;->mService:Lcom/tct/internal/gpdatahub/IDataHubSystemInfoManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    sget-object v0, Ltct/gpdatahub/sdk/internal/DataHubSystemInfoManager;->mService:Lcom/tct/internal/gpdatahub/IDataHubSystemInfoManager;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/tct/internal/gpdatahub/IDataHubSystemInfoManager;
    .locals 2

    .line 28
    sput-object p0, Ltct/gpdatahub/sdk/internal/DataHubSystemInfoManager;->mContext:Landroid/content/Context;

    .line 29
    sget-boolean v0, Ltct/gpdatahub/sdk/internal/DataHubSystemInfoManager;->PRINT_ONCE:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 30
    sput-boolean v0, Ltct/gpdatahub/sdk/internal/DataHubSystemInfoManager;->PRINT_ONCE:Z

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getDataHubSystemInfoManagerInstance] getPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataHubSystemInfoManager"

    invoke-static {v1, v0}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_0
    invoke-static {p0}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;

    move-result-object p0

    .line 34
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->isGPVersion()Z

    move-result v0

    sput-boolean v0, Ltct/gpdatahub/sdk/internal/DataHubSystemInfoManager;->isGPVersion:Z

    .line 35
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->isDefaultDataHubEnable()Z

    move-result p0

    sput-boolean p0, Ltct/gpdatahub/sdk/internal/DataHubSystemInfoManager;->isDataHubEnable:Z

    .line 36
    sget-boolean p0, Ltct/gpdatahub/sdk/internal/DataHubSystemInfoManager;->isGPVersion:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 39
    :cond_1
    invoke-static {}, Ltct/gpdatahub/sdk/internal/DataHubSystemInfoManager;->getDataHubSystemInfoService()Lcom/tct/internal/gpdatahub/IDataHubSystemInfoManager;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public startRecord()V
    .locals 2

    .line 69
    :try_start_0
    sget-boolean v0, Ltct/gpdatahub/sdk/internal/DataHubSystemInfoManager;->isDataHubEnable:Z

    if-nez v0, :cond_0

    const-string v0, "DataHubSystemInfoManager"

    const-string v1, "systemInfo track behavior is not enabled!"

    .line 70
    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 73
    :cond_0
    sget-object v0, Ltct/gpdatahub/sdk/internal/DataHubSystemInfoManager;->mService:Lcom/tct/internal/gpdatahub/IDataHubSystemInfoManager;

    if-eqz v0, :cond_1

    .line 74
    sget-object v0, Ltct/gpdatahub/sdk/internal/DataHubSystemInfoManager;->mService:Lcom/tct/internal/gpdatahub/IDataHubSystemInfoManager;

    invoke-interface {v0}, Lcom/tct/internal/gpdatahub/IDataHubSystemInfoManager;->startRecord()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public stopRecord()V
    .locals 2

    .line 83
    :try_start_0
    sget-boolean v0, Ltct/gpdatahub/sdk/internal/DataHubSystemInfoManager;->isDataHubEnable:Z

    if-nez v0, :cond_0

    const-string v0, "DataHubSystemInfoManager"

    const-string v1, "systemInfo track behavior is not enabled!"

    .line 84
    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 87
    :cond_0
    sget-object v0, Ltct/gpdatahub/sdk/internal/DataHubSystemInfoManager;->mService:Lcom/tct/internal/gpdatahub/IDataHubSystemInfoManager;

    if-eqz v0, :cond_1

    .line 88
    sget-object v0, Ltct/gpdatahub/sdk/internal/DataHubSystemInfoManager;->mService:Lcom/tct/internal/gpdatahub/IDataHubSystemInfoManager;

    invoke-interface {v0}, Lcom/tct/internal/gpdatahub/IDataHubSystemInfoManager;->stopRecord()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
