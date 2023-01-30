.class public Ltct/gpdatahub/sdk/gpupload/DataHubManagerChooser;
.super Ljava/lang/Object;
.source "DataHubManagerChooser.java"


# static fields
.field private static PRINT_ONCE:Z = false

.field private static final TAG:Ljava/lang/String; = "DataHubManagerChooser"

.field private static sDataHubLocalService:Lcom/tct/internal/gpdatahub/IDataHubManager;

.field private static sDataHubRemoteService:Lcom/tct/internal/gpdatahub/IDataHubManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDataHubManagerInstance(Landroid/content/Context;)Lcom/tct/internal/gpdatahub/IDataHubManager;
    .locals 6

    .line 26
    sget-boolean v0, Ltct/gpdatahub/sdk/gpupload/DataHubManagerChooser;->PRINT_ONCE:Z

    const-string v1, "DataHubManagerChooser"

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 27
    sput-boolean v0, Ltct/gpdatahub/sdk/gpupload/DataHubManagerChooser;->PRINT_ONCE:Z

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getDataHubManagerInstance] getPackageName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_0
    invoke-static {p0}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;

    move-result-object v0

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->isGPVersion()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.tct.datahubdemo2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 33
    invoke-static {p0}, Ltct/gpdatahub/sdk/common/utils/AppUtils;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getDataHubManagerInstance] proccesesName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    invoke-static {p0}, Ltct/gpdatahub/sdk/gpupload/DataHubManagerChooser;->getLocalDataHubService(Landroid/content/Context;)Lcom/tct/internal/gpdatahub/IDataHubManager;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v3

    .line 41
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/AppUtils;->isTctLauncher(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 42
    invoke-static {p0}, Ltct/gpdatahub/sdk/common/utils/AppUtils;->isTctLauncherMainProccess(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 43
    invoke-static {p0}, Ltct/gpdatahub/sdk/gpupload/DataHubManagerChooser;->getLocalDataHubService(Landroid/content/Context;)Lcom/tct/internal/gpdatahub/IDataHubManager;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v3

    .line 48
    :cond_4
    invoke-static {p0}, Ltct/gpdatahub/sdk/gpupload/DataHubManagerChooser;->getLocalDataHubService(Landroid/content/Context;)Lcom/tct/internal/gpdatahub/IDataHubManager;

    move-result-object p0

    return-object p0

    .line 50
    :cond_5
    invoke-static {}, Ltct/gpdatahub/sdk/gpupload/DataHubManagerChooser;->getDataHubRemoteService()Lcom/tct/internal/gpdatahub/IDataHubManager;

    move-result-object p0

    return-object p0
.end method

.method private static getDataHubRemoteService()Lcom/tct/internal/gpdatahub/IDataHubManager;
    .locals 7

    const-string v0, "DataHubManagerChooser"

    .line 56
    sget-object v1, Ltct/gpdatahub/sdk/gpupload/DataHubManagerChooser;->sDataHubRemoteService:Lcom/tct/internal/gpdatahub/IDataHubManager;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v1, "android.os.ServiceManager"

    .line 61
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getService"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 62
    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "tct_service_datahub"

    aput-object v4, v3, v6

    .line 63
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 64
    invoke-static {v1}, Lcom/tct/internal/gpdatahub/IDataHubManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tct/internal/gpdatahub/IDataHubManager;

    move-result-object v1

    sput-object v1, Ltct/gpdatahub/sdk/gpupload/DataHubManagerChooser;->sDataHubRemoteService:Lcom/tct/internal/gpdatahub/IDataHubManager;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 74
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 72
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v1

    .line 70
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_3
    move-exception v1

    .line 68
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_4
    move-exception v1

    .line 66
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getDataHubManager]  sDataHubRemoteService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ltct/gpdatahub/sdk/gpupload/DataHubManagerChooser;->sDataHubRemoteService:Lcom/tct/internal/gpdatahub/IDataHubManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    sget-object v0, Ltct/gpdatahub/sdk/gpupload/DataHubManagerChooser;->sDataHubRemoteService:Lcom/tct/internal/gpdatahub/IDataHubManager;

    return-object v0
.end method

.method private static getLocalDataHubService(Landroid/content/Context;)Lcom/tct/internal/gpdatahub/IDataHubManager;
    .locals 1

    .line 82
    sget-object v0, Ltct/gpdatahub/sdk/gpupload/DataHubManagerChooser;->sDataHubLocalService:Lcom/tct/internal/gpdatahub/IDataHubManager;

    if-eqz v0, :cond_0

    return-object v0

    .line 85
    :cond_0
    invoke-static {p0}, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;

    move-result-object p0

    sput-object p0, Ltct/gpdatahub/sdk/gpupload/DataHubManagerChooser;->sDataHubLocalService:Lcom/tct/internal/gpdatahub/IDataHubManager;

    return-object p0
.end method
