.class Ltct/gpdatahub/sdk/dao/DaoHelperBase;
.super Ljava/lang/Object;
.source "DaoHelperBase.java"


# static fields
.field protected static sDataHubManagerService:Lcom/tct/internal/gpdatahub/IDataHubManager;


# instance fields
.field protected mAppConfigSettings:Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;

.field protected mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, v0}, Ltct/gpdatahub/sdk/dao/DaoHelperBase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Ltct/gpdatahub/sdk/dao/DaoHelperBase;->mContext:Landroid/content/Context;

    .line 24
    invoke-static {p1}, Ltct/gpdatahub/sdk/gpupload/DataHubManagerChooser;->getDataHubManagerInstance(Landroid/content/Context;)Lcom/tct/internal/gpdatahub/IDataHubManager;

    move-result-object p2

    sput-object p2, Ltct/gpdatahub/sdk/dao/DaoHelperBase;->sDataHubManagerService:Lcom/tct/internal/gpdatahub/IDataHubManager;

    .line 25
    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;

    move-result-object p1

    iput-object p1, p0, Ltct/gpdatahub/sdk/dao/DaoHelperBase;->mAppConfigSettings:Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;

    return-void
.end method


# virtual methods
.method protected getTeyeIdFromService()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Ltct/gpdatahub/sdk/dao/DaoHelperBase;->sDataHubManagerService:Lcom/tct/internal/gpdatahub/IDataHubManager;

    if-nez v0, :cond_0

    .line 31
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/DaoHelperBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/DataHubManagerChooser;->getDataHubManagerInstance(Landroid/content/Context;)Lcom/tct/internal/gpdatahub/IDataHubManager;

    move-result-object v0

    sput-object v0, Ltct/gpdatahub/sdk/dao/DaoHelperBase;->sDataHubManagerService:Lcom/tct/internal/gpdatahub/IDataHubManager;

    .line 34
    :cond_0
    :try_start_0
    sget-object v0, Ltct/gpdatahub/sdk/dao/DaoHelperBase;->sDataHubManagerService:Lcom/tct/internal/gpdatahub/IDataHubManager;

    invoke-interface {v0}, Lcom/tct/internal/gpdatahub/IDataHubManager;->getTeyeId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 36
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method
