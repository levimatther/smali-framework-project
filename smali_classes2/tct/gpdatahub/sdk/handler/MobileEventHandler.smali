.class public Ltct/gpdatahub/sdk/handler/MobileEventHandler;
.super Ljava/lang/Object;
.source "MobileEventHandler.java"

# interfaces
.implements Ltct/gpdatahub/sdk/handler/INotifyInsertEvent;
.implements Ltct/gpdatahub/sdk/handler/INotifyInsertEvent$Callback;


# static fields
.field private static IS_APPBASEINFO_ADDABLE:Z

.field private static IS_SDK_GP_VERSION:Z

.field private static final TAG:Ljava/lang/String;

.field private static sDataHubService:Lcom/tct/internal/gpdatahub/IDataHubManager;


# instance fields
.field private INSERT_STRATEGY:Ljava/lang/String;

.field mCallback:Ltct/gpdatahub/sdk/handler/INotifyInsertEvent$Callback;

.field private mContext:Landroid/content/Context;

.field mMobileEventDao:Ltct/gpdatahub/sdk/dao/IMobileEventDao;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 42
    sput-object v0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->sDataHubService:Lcom/tct/internal/gpdatahub/IDataHubManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->mContext:Landroid/content/Context;

    .line 46
    invoke-virtual {p0, p0}, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->setCallback(Ltct/gpdatahub/sdk/handler/INotifyInsertEvent$Callback;)V

    .line 47
    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;

    move-result-object v0

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->isGPVersion()Z

    move-result v0

    sput-boolean v0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->IS_SDK_GP_VERSION:Z

    .line 48
    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;

    move-result-object v0

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->isAppBaseInfoAddable()Z

    move-result v0

    sput-boolean v0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->IS_APPBASEINFO_ADDABLE:Z

    .line 49
    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;

    move-result-object v0

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->getInsertStrategy()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->INSERT_STRATEGY:Ljava/lang/String;

    .line 50
    invoke-static {}, Ltct/gpdatahub/sdk/factory/DaoFactory;->getInstance()Ltct/gpdatahub/sdk/factory/DaoFactory;

    move-result-object v0

    sget-boolean v1, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->IS_SDK_GP_VERSION:Z

    invoke-virtual {v0, v1, p1}, Ltct/gpdatahub/sdk/factory/DaoFactory;->getMobileEventDao(ZLandroid/content/Context;)Ltct/gpdatahub/sdk/dao/IMobileEventDao;

    move-result-object p1

    iput-object p1, p0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->mMobileEventDao:Ltct/gpdatahub/sdk/dao/IMobileEventDao;

    return-void
.end method

.method private combineWithAppBaseInfoIfNeeded(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 6

    if-eqz p1, :cond_0

    .line 68
    invoke-direct {p0}, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->getAppBaseInfo()Lorg/json/JSONObject;

    move-result-object v3

    const-string v2, "baseInfo"

    move-object v0, p2

    move-object v1, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Ltct/gpdatahub/sdk/common/utils/JsonUtils;->combineToOneJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 70
    :cond_0
    invoke-static {p2, p3, p4, p5}, Ltct/gpdatahub/sdk/common/utils/JsonUtils;->combineToOneJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getAppBaseInfo()Lorg/json/JSONObject;
    .locals 3

    const/4 v0, 0x0

    .line 79
    :try_start_0
    sget-boolean v1, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->IS_SDK_GP_VERSION:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->getTeyeIdFromService()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;

    move-result-object v1

    invoke-virtual {v1}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->getTeyeIdFromROM()Ljava/lang/String;

    move-result-object v1

    .line 80
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 81
    iget-object v2, p0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Ltct/gpdatahub/sdk/gpupload/db/UploadInfoHelper;->getBaseInfoJsonObject(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 84
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-object v0
.end method

.method private getTeyeIdFromService()Ljava/lang/String;
    .locals 1

    .line 90
    sget-object v0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->sDataHubService:Lcom/tct/internal/gpdatahub/IDataHubManager;

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/DataHubManagerChooser;->getDataHubManagerInstance(Landroid/content/Context;)Lcom/tct/internal/gpdatahub/IDataHubManager;

    move-result-object v0

    sput-object v0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->sDataHubService:Lcom/tct/internal/gpdatahub/IDataHubManager;

    .line 94
    :cond_0
    :try_start_0
    sget-object v0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->sDataHubService:Lcom/tct/internal/gpdatahub/IDataHubManager;

    invoke-interface {v0}, Lcom/tct/internal/gpdatahub/IDataHubManager;->getTeyeId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 96
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method public deleteMobileEventByDay(Ljava/lang/String;)V
    .locals 1

    .line 272
    :try_start_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->mMobileEventDao:Ltct/gpdatahub/sdk/dao/IMobileEventDao;

    invoke-interface {v0, p1}, Ltct/gpdatahub/sdk/dao/IMobileEventDao;->deleteMobileEventByDay(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 274
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public deleteMobileEventById(JJ)V
    .locals 1

    .line 264
    :try_start_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->mMobileEventDao:Ltct/gpdatahub/sdk/dao/IMobileEventDao;

    invoke-interface {v0, p1, p2, p3, p4}, Ltct/gpdatahub/sdk/dao/IMobileEventDao;->deleteMobileEventById(JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 266
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public insertActivitySession(Ljava/lang/String;I)V
    .locals 3

    const-wide/16 v0, -0x1

    .line 253
    :try_start_0
    iget-object v2, p0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->mMobileEventDao:Ltct/gpdatahub/sdk/dao/IMobileEventDao;

    invoke-interface {v2, p1, p2}, Ltct/gpdatahub/sdk/dao/IMobileEventDao;->insertActivitySession(Ljava/lang/String;I)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 255
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    move-wide p1, v0

    .line 257
    :goto_0
    iget-object v2, p0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->mCallback:Ltct/gpdatahub/sdk/handler/INotifyInsertEvent$Callback;

    if-eqz v2, :cond_0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 258
    invoke-interface {v2, p1, p2, v0}, Ltct/gpdatahub/sdk/handler/INotifyInsertEvent$Callback;->onInsertEvent(JI)V

    :cond_0
    return-void
.end method

.method public insertEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    const-wide/16 v0, -0x1

    .line 197
    :try_start_0
    iget-object v2, p0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->mMobileEventDao:Ltct/gpdatahub/sdk/dao/IMobileEventDao;

    iget-object v3, p0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->INSERT_STRATEGY:Ljava/lang/String;

    invoke-interface {v2, p1, p2, v3}, Ltct/gpdatahub/sdk/dao/IMobileEventDao;->insertEvent(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 199
    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    move-wide v2, v0

    .line 201
    :goto_0
    iget-object p2, p0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->mCallback:Ltct/gpdatahub/sdk/handler/INotifyInsertEvent$Callback;

    if-eqz p2, :cond_1

    cmp-long p2, v2, v0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 202
    sget-object p2, Ltct/gpdatahub/sdk/TctDataHubEventType;->TYPE_RECORD_BY_DATE:Ltct/gpdatahub/sdk/TctDataHubEventType;

    invoke-virtual {p2}, Ltct/gpdatahub/sdk/TctDataHubEventType;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 203
    iget-object p1, p0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->mCallback:Ltct/gpdatahub/sdk/handler/INotifyInsertEvent$Callback;

    const/4 p2, 0x0

    invoke-interface {p1, v2, v3, p2}, Ltct/gpdatahub/sdk/handler/INotifyInsertEvent$Callback;->onInsertEvent(JI)V

    goto :goto_1

    .line 205
    :cond_0
    iget-object p1, p0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->mCallback:Ltct/gpdatahub/sdk/handler/INotifyInsertEvent$Callback;

    const/4 p2, 0x1

    invoke-interface {p1, v2, v3, p2}, Ltct/gpdatahub/sdk/handler/INotifyInsertEvent$Callback;->onInsertEvent(JI)V

    :cond_1
    :goto_1
    return-void
.end method

.method public insertEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    const-wide/16 v0, -0x1

    .line 165
    :try_start_0
    iget-object v2, p0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->mMobileEventDao:Ltct/gpdatahub/sdk/dao/IMobileEventDao;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Ltct/gpdatahub/sdk/dao/IMobileEventDao;->insertStringTypeEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 167
    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    move-wide p2, v0

    .line 169
    :goto_0
    iget-object p4, p0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->mCallback:Ltct/gpdatahub/sdk/handler/INotifyInsertEvent$Callback;

    if-eqz p4, :cond_1

    cmp-long p4, p2, v0

    if-eqz p4, :cond_1

    if-eqz p1, :cond_0

    .line 170
    sget-object p4, Ltct/gpdatahub/sdk/TctDataHubEventType;->TYPE_RECORD_BY_DATE:Ltct/gpdatahub/sdk/TctDataHubEventType;

    invoke-virtual {p4}, Ltct/gpdatahub/sdk/TctDataHubEventType;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 171
    iget-object p1, p0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->mCallback:Ltct/gpdatahub/sdk/handler/INotifyInsertEvent$Callback;

    const/4 p4, 0x0

    invoke-interface {p1, p2, p3, p4}, Ltct/gpdatahub/sdk/handler/INotifyInsertEvent$Callback;->onInsertEvent(JI)V

    goto :goto_1

    .line 173
    :cond_0
    iget-object p1, p0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->mCallback:Ltct/gpdatahub/sdk/handler/INotifyInsertEvent$Callback;

    const/4 p4, 0x1

    invoke-interface {p1, p2, p3, p4}, Ltct/gpdatahub/sdk/handler/INotifyInsertEvent$Callback;->onInsertEvent(JI)V

    :cond_1
    :goto_1
    return-void
.end method

.method public insertEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 133
    :try_start_0
    iget-object v2, p0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->mMobileEventDao:Ltct/gpdatahub/sdk/dao/IMobileEventDao;

    iget-object v7, p0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->INSERT_STRATEGY:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v2 .. v7}, Ltct/gpdatahub/sdk/dao/IMobileEventDao;->insertEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 135
    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    move-wide p2, v0

    .line 137
    :goto_0
    iget-object p4, p0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->mCallback:Ltct/gpdatahub/sdk/handler/INotifyInsertEvent$Callback;

    if-eqz p4, :cond_1

    cmp-long p4, p2, v0

    if-eqz p4, :cond_1

    if-eqz p1, :cond_0

    .line 138
    sget-object p4, Ltct/gpdatahub/sdk/TctDataHubEventType;->TYPE_RECORD_BY_DATE:Ltct/gpdatahub/sdk/TctDataHubEventType;

    invoke-virtual {p4}, Ltct/gpdatahub/sdk/TctDataHubEventType;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 139
    iget-object p1, p0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->mCallback:Ltct/gpdatahub/sdk/handler/INotifyInsertEvent$Callback;

    const/4 p4, 0x0

    invoke-interface {p1, p2, p3, p4}, Ltct/gpdatahub/sdk/handler/INotifyInsertEvent$Callback;->onInsertEvent(JI)V

    goto :goto_1

    .line 141
    :cond_0
    iget-object p1, p0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->mCallback:Ltct/gpdatahub/sdk/handler/INotifyInsertEvent$Callback;

    const/4 p4, 0x1

    invoke-interface {p1, p2, p3, p4}, Ltct/gpdatahub/sdk/handler/INotifyInsertEvent$Callback;->onInsertEvent(JI)V

    :cond_1
    :goto_1
    return-void
.end method

.method public insertEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 149
    :try_start_0
    iget-object v2, p0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->mMobileEventDao:Ltct/gpdatahub/sdk/dao/IMobileEventDao;

    iget-object v7, p0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->INSERT_STRATEGY:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v8, p5

    invoke-interface/range {v2 .. v8}, Ltct/gpdatahub/sdk/dao/IMobileEventDao;->insertStandardEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 151
    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    move-wide p2, v0

    .line 153
    :goto_0
    iget-object p4, p0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->mCallback:Ltct/gpdatahub/sdk/handler/INotifyInsertEvent$Callback;

    if-eqz p4, :cond_1

    cmp-long p4, p2, v0

    if-eqz p4, :cond_1

    if-eqz p1, :cond_0

    .line 154
    sget-object p4, Ltct/gpdatahub/sdk/TctDataHubEventType;->TYPE_RECORD_BY_DATE:Ltct/gpdatahub/sdk/TctDataHubEventType;

    invoke-virtual {p4}, Ltct/gpdatahub/sdk/TctDataHubEventType;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 155
    iget-object p1, p0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->mCallback:Ltct/gpdatahub/sdk/handler/INotifyInsertEvent$Callback;

    const/4 p4, 0x0

    invoke-interface {p1, p2, p3, p4}, Ltct/gpdatahub/sdk/handler/INotifyInsertEvent$Callback;->onInsertEvent(JI)V

    goto :goto_1

    .line 157
    :cond_0
    iget-object p1, p0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->mCallback:Ltct/gpdatahub/sdk/handler/INotifyInsertEvent$Callback;

    const/4 p4, 0x1

    invoke-interface {p1, p2, p3, p4}, Ltct/gpdatahub/sdk/handler/INotifyInsertEvent$Callback;->onInsertEvent(JI)V

    :cond_1
    :goto_1
    return-void
.end method

.method public insertEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 181
    :try_start_0
    iget-object v2, p0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->mMobileEventDao:Ltct/gpdatahub/sdk/dao/IMobileEventDao;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Ltct/gpdatahub/sdk/dao/IMobileEventDao;->insertMapTypeEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/String;)J

    move-result-wide p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 183
    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    move-wide p2, v0

    .line 185
    :goto_0
    iget-object p4, p0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->mCallback:Ltct/gpdatahub/sdk/handler/INotifyInsertEvent$Callback;

    if-eqz p4, :cond_1

    cmp-long p4, p2, v0

    if-eqz p4, :cond_1

    if-eqz p1, :cond_0

    .line 186
    sget-object p4, Ltct/gpdatahub/sdk/TctDataHubEventType;->TYPE_RECORD_BY_DATE:Ltct/gpdatahub/sdk/TctDataHubEventType;

    invoke-virtual {p4}, Ltct/gpdatahub/sdk/TctDataHubEventType;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 187
    iget-object p1, p0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->mCallback:Ltct/gpdatahub/sdk/handler/INotifyInsertEvent$Callback;

    const/4 p4, 0x0

    invoke-interface {p1, p2, p3, p4}, Ltct/gpdatahub/sdk/handler/INotifyInsertEvent$Callback;->onInsertEvent(JI)V

    goto :goto_1

    .line 189
    :cond_0
    iget-object p1, p0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->mCallback:Ltct/gpdatahub/sdk/handler/INotifyInsertEvent$Callback;

    const/4 p4, 0x1

    invoke-interface {p1, p2, p3, p4}, Ltct/gpdatahub/sdk/handler/INotifyInsertEvent$Callback;->onInsertEvent(JI)V

    :cond_1
    :goto_1
    return-void
.end method

.method public insertSystem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-wide/16 v0, -0x1

    .line 229
    :try_start_0
    iget-object v2, p0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->mMobileEventDao:Ltct/gpdatahub/sdk/dao/IMobileEventDao;

    iget-object v3, p0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->INSERT_STRATEGY:Ljava/lang/String;

    invoke-interface {v2, p1, p2, v3}, Ltct/gpdatahub/sdk/dao/IMobileEventDao;->insertSystem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 231
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    move-wide p1, v0

    .line 233
    :goto_0
    iget-object v2, p0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->mCallback:Ltct/gpdatahub/sdk/handler/INotifyInsertEvent$Callback;

    if-eqz v2, :cond_0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 234
    invoke-interface {v2, p1, p2, v0}, Ltct/gpdatahub/sdk/handler/INotifyInsertEvent$Callback;->onInsertEvent(JI)V

    :cond_0
    return-void
.end method

.method public insertThrowable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-wide/16 v0, -0x1

    .line 241
    :try_start_0
    iget-object v2, p0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->mMobileEventDao:Ltct/gpdatahub/sdk/dao/IMobileEventDao;

    iget-object v3, p0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->INSERT_STRATEGY:Ljava/lang/String;

    invoke-interface {v2, p1, p2, v3}, Ltct/gpdatahub/sdk/dao/IMobileEventDao;->insertThrowable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 243
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    move-wide p1, v0

    .line 245
    :goto_0
    iget-object v2, p0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->mCallback:Ltct/gpdatahub/sdk/handler/INotifyInsertEvent$Callback;

    if-eqz v2, :cond_0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 246
    invoke-interface {v2, p1, p2, v0}, Ltct/gpdatahub/sdk/handler/INotifyInsertEvent$Callback;->onInsertEvent(JI)V

    :cond_0
    return-void
.end method

.method public onInsertEvent(JI)V
    .locals 2

    .line 285
    :try_start_0
    sget-object v0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->sDataHubService:Lcom/tct/internal/gpdatahub/IDataHubManager;

    if-nez v0, :cond_0

    .line 286
    iget-object v0, p0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/DataHubManagerChooser;->getDataHubManagerInstance(Landroid/content/Context;)Lcom/tct/internal/gpdatahub/IDataHubManager;

    move-result-object v0

    sput-object v0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->sDataHubService:Lcom/tct/internal/gpdatahub/IDataHubManager;

    .line 287
    sget-object v0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->TAG:Ljava/lang/String;

    const-string v1, "[onInsertEvent] service is null!!"

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :cond_0
    sget-object v0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->sDataHubService:Lcom/tct/internal/gpdatahub/IDataHubManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/tct/internal/gpdatahub/IDataHubManager;->onInsertEvent(JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 291
    sget-object p2, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[onInsertEvent] Exception"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public queryMobileEvent()Ljava/lang/String;
    .locals 7

    .line 56
    iget-object v0, p0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->mMobileEventDao:Ltct/gpdatahub/sdk/dao/IMobileEventDao;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/dao/IMobileEventDao;->queryMobileEvent()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/JsonUtils;->changeMobileEventListToJson(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v6

    .line 57
    sget-boolean v2, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->IS_APPBASEINFO_ADDABLE:Z

    invoke-static {}, Ltct/gpdatahub/sdk/common/utils/TimeUtils;->getTimeZone()Ljava/lang/String;

    move-result-object v4

    const-string v3, "timeZone"

    const-string v5, "eventList"

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->combineWithAppBaseInfoIfNeeded(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public queryMobileEventByDay(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 122
    iget-object v0, p0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->mMobileEventDao:Ltct/gpdatahub/sdk/dao/IMobileEventDao;

    invoke-interface {v0, p1}, Ltct/gpdatahub/sdk/dao/IMobileEventDao;->queryMobileEventByDay(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/JsonUtils;->changeMobileEventListToJson(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v5

    .line 123
    sget-boolean v1, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->IS_APPBASEINFO_ADDABLE:Z

    invoke-static {}, Ltct/gpdatahub/sdk/common/utils/TimeUtils;->getTimeZone()Ljava/lang/String;

    move-result-object v3

    const-string v2, "timeZone"

    const-string v4, "eventList"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->combineWithAppBaseInfoIfNeeded(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public queryMobileEventById(JJ)Ljava/lang/String;
    .locals 6

    .line 109
    iget-object v0, p0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->mMobileEventDao:Ltct/gpdatahub/sdk/dao/IMobileEventDao;

    invoke-interface {v0, p1, p2, p3, p4}, Ltct/gpdatahub/sdk/dao/IMobileEventDao;->queryMobileEventById(JJ)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/JsonUtils;->changeMobileEventListToJson(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v5

    .line 110
    sget-boolean v1, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->IS_APPBASEINFO_ADDABLE:Z

    invoke-static {}, Ltct/gpdatahub/sdk/common/utils/TimeUtils;->getTimeZone()Ljava/lang/String;

    move-result-object v3

    const-string v2, "timeZone"

    const-string v4, "eventList"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->combineWithAppBaseInfoIfNeeded(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public queryNewestMobileEventId()J
    .locals 2

    .line 127
    iget-object v0, p0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->mMobileEventDao:Ltct/gpdatahub/sdk/dao/IMobileEventDao;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/dao/IMobileEventDao;->queryNewestMobileEventId()J

    move-result-wide v0

    return-wide v0
.end method

.method public queryRecordDateMobileEvent()Ljava/lang/String;
    .locals 7

    .line 103
    iget-object v0, p0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->mMobileEventDao:Ltct/gpdatahub/sdk/dao/IMobileEventDao;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/dao/IMobileEventDao;->queryRecordDateMobileEvent()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/JsonUtils;->changeMobileEventListToJson(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v6

    .line 104
    sget-boolean v2, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->IS_APPBASEINFO_ADDABLE:Z

    invoke-static {}, Ltct/gpdatahub/sdk/common/utils/TimeUtils;->getTimeZone()Ljava/lang/String;

    move-result-object v4

    const-string v3, "timeZone"

    const-string v5, "eventList"

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->combineWithAppBaseInfoIfNeeded(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public queryRecordDateMobileEventByIdSet(Ljava/util/Set;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->mMobileEventDao:Ltct/gpdatahub/sdk/dao/IMobileEventDao;

    invoke-interface {v0, p1}, Ltct/gpdatahub/sdk/dao/IMobileEventDao;->queryRecordDateMobileEventByIdSet(Ljava/util/Set;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/JsonUtils;->changeMobileEventListToJson(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v5

    .line 116
    sget-boolean v1, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->IS_APPBASEINFO_ADDABLE:Z

    invoke-static {}, Ltct/gpdatahub/sdk/common/utils/TimeUtils;->getTimeZone()Ljava/lang/String;

    move-result-object v3

    const-string v2, "timeZone"

    const-string v4, "eventList"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->combineWithAppBaseInfoIfNeeded(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setCallback(Ltct/gpdatahub/sdk/handler/INotifyInsertEvent$Callback;)V
    .locals 0

    .line 280
    iput-object p1, p0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->mCallback:Ltct/gpdatahub/sdk/handler/INotifyInsertEvent$Callback;

    return-void
.end method

.method public trackActivityLifecycle()V
    .locals 1

    .line 296
    iget-object v0, p0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->mMobileEventDao:Ltct/gpdatahub/sdk/dao/IMobileEventDao;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/dao/IMobileEventDao;->trackActivityLifecycle()V

    return-void
.end method

.method public updateEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 213
    :try_start_0
    iget-object v2, p0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->mMobileEventDao:Ltct/gpdatahub/sdk/dao/IMobileEventDao;

    invoke-interface {v2, p1, p2, p3, p4}, Ltct/gpdatahub/sdk/dao/IMobileEventDao;->updateEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)J

    move-result-wide p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 215
    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    move-wide p2, v0

    .line 217
    :goto_0
    iget-object p4, p0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->mCallback:Ltct/gpdatahub/sdk/handler/INotifyInsertEvent$Callback;

    if-eqz p4, :cond_1

    cmp-long p4, p2, v0

    if-eqz p4, :cond_1

    if-eqz p1, :cond_0

    .line 218
    sget-object p4, Ltct/gpdatahub/sdk/TctDataHubEventType;->TYPE_RECORD_BY_DATE:Ltct/gpdatahub/sdk/TctDataHubEventType;

    invoke-virtual {p4}, Ltct/gpdatahub/sdk/TctDataHubEventType;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 219
    iget-object p1, p0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->mCallback:Ltct/gpdatahub/sdk/handler/INotifyInsertEvent$Callback;

    const/4 p4, 0x0

    invoke-interface {p1, p2, p3, p4}, Ltct/gpdatahub/sdk/handler/INotifyInsertEvent$Callback;->onInsertEvent(JI)V

    goto :goto_1

    .line 221
    :cond_0
    iget-object p1, p0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->mCallback:Ltct/gpdatahub/sdk/handler/INotifyInsertEvent$Callback;

    const/4 p4, 0x1

    invoke-interface {p1, p2, p3, p4}, Ltct/gpdatahub/sdk/handler/INotifyInsertEvent$Callback;->onInsertEvent(JI)V

    :cond_1
    :goto_1
    return-void
.end method
