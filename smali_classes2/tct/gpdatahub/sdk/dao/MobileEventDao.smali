.class public Ltct/gpdatahub/sdk/dao/MobileEventDao;
.super Ljava/lang/Object;
.source "MobileEventDao.java"

# interfaces
.implements Ltct/gpdatahub/sdk/dao/IMobileEventDao;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static appVersion:Ljava/lang/String;

.field private static packageName:Ljava/lang/String;

.field private static sDataHubManagerService:Lcom/tct/internal/gpdatahub/IDataHubManager;

.field private static sMobileEventDao:Ltct/gpdatahub/sdk/dao/MobileEventDao;

.field private static final sObject:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDaoImp:Ltct/gpdatahub/sdk/dao/IMobileEventDaoHelper;

.field private mMobileEventModels_event:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltct/gpdatahub/sdk/models/MobileEventModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-class v0, Ltct/gpdatahub/sdk/dao/MobileEventDao;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->TAG:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->sObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->mMobileEventModels_event:Ljava/util/List;

    .line 61
    iput-object p1, p0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->mContext:Landroid/content/Context;

    .line 62
    invoke-static {p1}, Ltct/gpdatahub/sdk/gpupload/DataHubManagerChooser;->getDataHubManagerInstance(Landroid/content/Context;)Lcom/tct/internal/gpdatahub/IDataHubManager;

    move-result-object v0

    sput-object v0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->sDataHubManagerService:Lcom/tct/internal/gpdatahub/IDataHubManager;

    .line 63
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sput-object v0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->packageName:Ljava/lang/String;

    .line 64
    invoke-direct {p0}, Ltct/gpdatahub/sdk/dao/MobileEventDao;->getAppVersionName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->appVersion:Ljava/lang/String;

    .line 66
    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;

    move-result-object v0

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->isGPVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Ltct/gpdatahub/sdk/dao/MobileEventDaoHelperGpImp;

    sget-object v1, Ltct/gpdatahub/sdk/dao/MobileEventDao;->appVersion:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ltct/gpdatahub/sdk/dao/MobileEventDaoHelperGpImp;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ltct/gpdatahub/sdk/dao/MobileEventDaoHelperRomImp;

    iget-object p1, p0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->mContext:Landroid/content/Context;

    sget-object v1, Ltct/gpdatahub/sdk/dao/MobileEventDao;->appVersion:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ltct/gpdatahub/sdk/dao/MobileEventDaoHelperRomImp;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    iput-object v0, p0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->mDaoImp:Ltct/gpdatahub/sdk/dao/IMobileEventDaoHelper;

    return-void
.end method

.method private LogOperationResult(JLjava/lang/String;Landroid/content/ContentValues;)V
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    const-string v1, ",insertId:"

    if-eqz v0, :cond_0

    .line 1048
    sget-object v0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " success! insert values :"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1050
    :cond_0
    sget-object v0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " failed! insert values :"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private batchInsert(Ljava/util/List;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ltct/gpdatahub/sdk/models/MobileEventModel;",
            ">;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 895
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 899
    :cond_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->mDaoImp:Ltct/gpdatahub/sdk/dao/IMobileEventDaoHelper;

    invoke-interface {v0, p1}, Ltct/gpdatahub/sdk/dao/IMobileEventDaoHelper;->batchInsert(Ljava/util/List;)J

    move-result-wide v0

    return-wide v0

    .line 896
    :cond_1
    :goto_0
    sget-object p1, Ltct/gpdatahub/sdk/dao/MobileEventDao;->TAG:Ljava/lang/String;

    const-string v0, "batchInsert, the newly event list is empty, quit batchInsert."

    invoke-static {p1, v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private getAllMobileEvent(Landroid/database/Cursor;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "Ltct/gpdatahub/sdk/models/MobileEventModel;",
            ">;"
        }
    .end annotation

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 193
    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_1

    .line 196
    :try_start_0
    iget-object v1, p0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->mDaoImp:Ltct/gpdatahub/sdk/dao/IMobileEventDaoHelper;

    invoke-interface {v1}, Ltct/gpdatahub/sdk/dao/IMobileEventDaoHelper;->getTeyeId()Ljava/lang/String;

    move-result-object v1

    .line 201
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 202
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    .line 203
    new-instance v2, Ltct/gpdatahub/sdk/models/MobileEventModel;

    invoke-direct {v2}, Ltct/gpdatahub/sdk/models/MobileEventModel;-><init>()V

    const-string v3, "_id"

    .line 204
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ltct/gpdatahub/sdk/models/MobileEventModel;->setId(J)V

    const-string v3, "happenTime"

    .line 205
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ltct/gpdatahub/sdk/models/MobileEventModel;->setHappenTime(Ljava/lang/String;)V

    const-string v3, "packageName"

    .line 206
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ltct/gpdatahub/sdk/models/MobileEventModel;->setPackageName(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v2, v1}, Ltct/gpdatahub/sdk/models/MobileEventModel;->setTeyeId(Ljava/lang/String;)V

    const-string v3, "eventType"

    .line 208
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ltct/gpdatahub/sdk/models/MobileEventModel;->setEventType(Ljava/lang/String;)V

    const-string v3, "eventSubType"

    .line 209
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ltct/gpdatahub/sdk/models/MobileEventModel;->setEventSubType(Ljava/lang/String;)V

    const-string v3, "eventId"

    .line 210
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ltct/gpdatahub/sdk/models/MobileEventModel;->setEventId(Ljava/lang/String;)V

    const-string v3, "paraMap"

    .line 211
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ltct/gpdatahub/sdk/models/MobileEventModel;->setParaMap(Ljava/lang/String;)V

    const-string v3, "paraType"

    .line 212
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ltct/gpdatahub/sdk/models/MobileEventModel;->setParaType(I)V

    const-string v3, "appVersion"

    .line 213
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ltct/gpdatahub/sdk/models/MobileEventModel;->setAppVersion(Ljava/lang/String;)V

    const-string v3, "systemInfo"

    .line 214
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ltct/gpdatahub/sdk/models/MobileEventModel;->setSystemInfo(Ljava/lang/String;)V

    const-string v3, "activityName"

    .line 215
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ltct/gpdatahub/sdk/models/MobileEventModel;->setActivityName(Ljava/lang/String;)V

    const-string v3, "actionName"

    .line 216
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ltct/gpdatahub/sdk/models/MobileEventModel;->setActionName(Ljava/lang/String;)V

    const-string v3, "duration"

    .line 217
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ltct/gpdatahub/sdk/models/MobileEventModel;->setDuration(I)V

    const-string v3, "errorType"

    .line 218
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ltct/gpdatahub/sdk/models/MobileEventModel;->setErrorType(Ljava/lang/String;)V

    const-string v3, "errorMessage"

    .line 219
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ltct/gpdatahub/sdk/models/MobileEventModel;->setErrorMessage(Ljava/lang/String;)V

    .line 220
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 225
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_2

    :goto_1
    if-eqz p1, :cond_0

    .line 228
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    :cond_1
    if-eqz p1, :cond_2

    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0
.end method

.method private getAppVersionCode()I
    .locals 1

    .line 1069
    invoke-direct {p0}, Ltct/gpdatahub/sdk/dao/MobileEventDao;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1071
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private getAppVersionName()Ljava/lang/String;
    .locals 1

    .line 1058
    invoke-direct {p0}, Ltct/gpdatahub/sdk/dao/MobileEventDao;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1060
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/dao/MobileEventDao;
    .locals 2

    .line 72
    sget-object v0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->sMobileEventDao:Ltct/gpdatahub/sdk/dao/MobileEventDao;

    if-eqz v0, :cond_0

    return-object v0

    .line 75
    :cond_0
    sget-object v0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->sObject:Ljava/lang/Object;

    monitor-enter v0

    .line 76
    :try_start_0
    sget-object v1, Ltct/gpdatahub/sdk/dao/MobileEventDao;->sMobileEventDao:Ltct/gpdatahub/sdk/dao/MobileEventDao;

    if-nez v1, :cond_1

    .line 77
    new-instance v1, Ltct/gpdatahub/sdk/dao/MobileEventDao;

    invoke-direct {v1, p0}, Ltct/gpdatahub/sdk/dao/MobileEventDao;-><init>(Landroid/content/Context;)V

    sput-object v1, Ltct/gpdatahub/sdk/dao/MobileEventDao;->sMobileEventDao:Ltct/gpdatahub/sdk/dao/MobileEventDao;

    .line 79
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    sget-object p0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->sMobileEventDao:Ltct/gpdatahub/sdk/dao/MobileEventDao;

    return-object p0

    :catchall_0
    move-exception p0

    .line 79
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private getPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 3

    .line 1082
    :try_start_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1083
    iget-object v1, p0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1087
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private insertActivityLazy(Ljava/lang/String;Ljava/lang/String;)J
    .locals 3

    .line 861
    :try_start_0
    new-instance v0, Ltct/gpdatahub/sdk/models/MobileEventModel;

    invoke-direct {v0}, Ltct/gpdatahub/sdk/models/MobileEventModel;-><init>()V

    .line 862
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 863
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 864
    invoke-virtual {v0, v1}, Ltct/gpdatahub/sdk/models/MobileEventModel;->setHappenTime(Ljava/lang/String;)V

    .line 865
    sget-object v1, Ltct/gpdatahub/sdk/dao/MobileEventDao;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltct/gpdatahub/sdk/models/MobileEventModel;->setPackageName(Ljava/lang/String;)V

    .line 866
    sget-object v1, Ltct/gpdatahub/sdk/dao/MobileEventDao;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltct/gpdatahub/sdk/models/MobileEventModel;->setAppVersion(Ljava/lang/String;)V

    .line 867
    invoke-virtual {v0, p1}, Ltct/gpdatahub/sdk/models/MobileEventModel;->setActivityName(Ljava/lang/String;)V

    .line 868
    invoke-virtual {v0, p2}, Ltct/gpdatahub/sdk/models/MobileEventModel;->setActionName(Ljava/lang/String;)V

    .line 869
    iget-object p1, p0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->mMobileEventModels_event:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 870
    sget-object p1, Ltct/gpdatahub/sdk/dao/MobileEventDao;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertActivityLazy, the insert value is:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 872
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method private insertEvent(Ljava/lang/String;Landroid/os/Bundle;)J
    .locals 11

    const-string v0, "insertEvent: eventType = "

    const-wide/16 v1, -0x1

    if-eqz p2, :cond_0

    .line 377
    sget-object v3, Ltct/gpdatahub/sdk/dao/MobileEventDao;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", bundle ="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 384
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    .line 387
    invoke-static {p2}, Ltct/gpdatahub/sdk/common/utils/StringUtils;->processBundleToString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v10

    const-string v7, ""

    const-string v8, ""

    move-object v5, p0

    move-object v6, p1

    .line 389
    invoke-direct/range {v5 .. v10}, Ltct/gpdatahub/sdk/dao/MobileEventDao;->makeMobileEventValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p1

    .line 392
    :try_start_0
    iget-object p2, p0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->mDaoImp:Ltct/gpdatahub/sdk/dao/IMobileEventDaoHelper;

    invoke-interface {p2, p1}, Ltct/gpdatahub/sdk/dao/IMobileEventDaoHelper;->insertEvent(Landroid/content/ContentValues;)J

    move-result-wide v1

    const-string p2, "insertEvent By Bundle"

    .line 393
    invoke-direct {p0, v1, v2, p2, p1}, Ltct/gpdatahub/sdk/dao/MobileEventDao;->LogOperationResult(JLjava/lang/String;Landroid/content/ContentValues;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 395
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    return-wide v1

    .line 379
    :cond_0
    sget-object p2, Ltct/gpdatahub/sdk/dao/MobileEventDao;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", bundle can not be null! quit."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v1
.end method

.method private insertEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)J
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)J"
        }
    .end annotation

    const-wide/16 v0, -0x1

    if-eqz p3, :cond_1

    const-string v2, ""

    .line 296
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 300
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 301
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 302
    invoke-static {p4}, Ltct/gpdatahub/sdk/common/utils/StringUtils;->getProperStringFromMap(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    .line 304
    invoke-direct/range {v4 .. v9}, Ltct/gpdatahub/sdk/dao/MobileEventDao;->makeMobileEventValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p1

    .line 306
    :try_start_0
    iget-object p2, p0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->mDaoImp:Ltct/gpdatahub/sdk/dao/IMobileEventDaoHelper;

    invoke-interface {p2, p1}, Ltct/gpdatahub/sdk/dao/IMobileEventDaoHelper;->insertEvent(Landroid/content/ContentValues;)J

    move-result-wide v0

    const-string p2, "insertEvent By Map"

    .line 307
    invoke-direct {p0, v0, v1, p2, p1}, Ltct/gpdatahub/sdk/dao/MobileEventDao;->LogOperationResult(JLjava/lang/String;Landroid/content/ContentValues;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 309
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    return-wide v0

    .line 297
    :cond_1
    :goto_1
    sget-object p1, Ltct/gpdatahub/sdk/dao/MobileEventDao;->TAG:Ljava/lang/String;

    const-string p2, "insertEvent, eventId can\'t be empty!"

    invoke-static {p1, p2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method private insertEventLazy(Ljava/lang/String;Landroid/os/Bundle;)J
    .locals 10

    const-wide/16 v0, -0x1

    if-eqz p2, :cond_0

    .line 760
    sget-object v2, Ltct/gpdatahub/sdk/dao/MobileEventDao;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertEventLazy: event = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", bundle ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 767
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    const-string v6, ""

    const-string v7, ""

    .line 770
    invoke-static {p2}, Ltct/gpdatahub/sdk/common/utils/StringUtils;->processBundleToString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v9

    move-object v4, p0

    move-object v5, p1

    .line 771
    invoke-direct/range {v4 .. v9}, Ltct/gpdatahub/sdk/dao/MobileEventDao;->makeMobileEventModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ltct/gpdatahub/sdk/models/MobileEventModel;

    move-result-object p1

    .line 772
    iget-object p2, p0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->mMobileEventModels_event:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 773
    sget-object p2, Ltct/gpdatahub/sdk/dao/MobileEventDao;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertEventLazy by Bundle ,the insert value is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 775
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    return-wide v0

    .line 762
    :cond_0
    sget-object p2, Ltct/gpdatahub/sdk/dao/MobileEventDao;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertEvent: eventType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", bundle can not be null! quit."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method private insertEventLazy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)J
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)J"
        }
    .end annotation

    const-wide/16 v0, -0x1

    if-eqz p3, :cond_1

    const-string v2, ""

    .line 688
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 693
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 694
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 695
    invoke-static {p4}, Ltct/gpdatahub/sdk/common/utils/StringUtils;->getProperStringFromMap(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    .line 696
    invoke-direct/range {v4 .. v9}, Ltct/gpdatahub/sdk/dao/MobileEventDao;->makeMobileEventModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ltct/gpdatahub/sdk/models/MobileEventModel;

    move-result-object p1

    .line 697
    iget-object p2, p0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->mMobileEventModels_event:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 698
    sget-object p2, Ltct/gpdatahub/sdk/dao/MobileEventDao;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "insertEventLazy by map ,the insert value is:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 701
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    return-wide v0

    .line 689
    :cond_1
    :goto_1
    sget-object p1, Ltct/gpdatahub/sdk/dao/MobileEventDao;->TAG:Ljava/lang/String;

    const-string p2, "insertEvent, eventId can\'t be empty!"

    invoke-static {p1, p2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method private insertStandardEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)J
    .locals 11
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
            ")J"
        }
    .end annotation

    move-object v8, p0

    move-object v0, p3

    const-wide/16 v9, -0x1

    if-eqz v0, :cond_1

    const-string v1, ""

    .line 326
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 330
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 331
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 332
    invoke-static {p4}, Ltct/gpdatahub/sdk/common/utils/StringUtils;->getProperStringFromMap(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v7, p5

    .line 334
    invoke-direct/range {v1 .. v7}, Ltct/gpdatahub/sdk/dao/MobileEventDao;->makeStandardEventValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 336
    :try_start_0
    iget-object v1, v8, Ltct/gpdatahub/sdk/dao/MobileEventDao;->mDaoImp:Ltct/gpdatahub/sdk/dao/IMobileEventDaoHelper;

    invoke-interface {v1, v0}, Ltct/gpdatahub/sdk/dao/IMobileEventDaoHelper;->insertEvent(Landroid/content/ContentValues;)J

    move-result-wide v9

    const-string v1, "insertEvent By Map"

    .line 337
    invoke-direct {p0, v9, v10, v1, v0}, Ltct/gpdatahub/sdk/dao/MobileEventDao;->LogOperationResult(JLjava/lang/String;Landroid/content/ContentValues;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 339
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    return-wide v9

    .line 327
    :cond_1
    :goto_1
    sget-object v0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->TAG:Ljava/lang/String;

    const-string v1, "insertEvent, eventId can\'t be empty!"

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v9
.end method

.method private insertStandardEventLazy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)J
    .locals 10
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
            ")J"
        }
    .end annotation

    const-wide/16 v8, -0x1

    if-eqz p3, :cond_1

    const-string v1, ""

    .line 708
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 713
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 714
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 715
    invoke-static {p4}, Ltct/gpdatahub/sdk/common/utils/StringUtils;->getProperStringFromMap(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v7, p5

    .line 716
    invoke-direct/range {v1 .. v7}, Ltct/gpdatahub/sdk/dao/MobileEventDao;->makeMobileEventModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ltct/gpdatahub/sdk/models/MobileEventModel;

    move-result-object v0

    .line 717
    iget-object v2, p0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->mMobileEventModels_event:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 718
    sget-object v2, Ltct/gpdatahub/sdk/dao/MobileEventDao;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertEventLazy by map ,the insert value is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 721
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    return-wide v8

    .line 709
    :cond_1
    :goto_1
    sget-object v0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->TAG:Ljava/lang/String;

    const-string v2, "insertEvent, eventId can\'t be empty!"

    invoke-static {v0, v2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v8
.end method

.method private insertSystem(Ljava/lang/String;Ljava/lang/String;)J
    .locals 5

    const-wide/16 v0, -0x1

    if-eqz p1, :cond_1

    const-string v2, ""

    .line 408
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 412
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 414
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 415
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 417
    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 419
    sget-object p2, Ltct/gpdatahub/sdk/dao/MobileEventDao;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertSystem systemInfo json:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "happenTime"

    .line 422
    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    sget-object v2, Ltct/gpdatahub/sdk/dao/MobileEventDao;->packageName:Ljava/lang/String;

    const-string v3, "packageName"

    invoke-virtual {p2, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    sget-object v2, Ltct/gpdatahub/sdk/dao/MobileEventDao;->appVersion:Ljava/lang/String;

    const-string v3, "appVersion"

    invoke-virtual {p2, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "systemInfo"

    .line 425
    invoke-virtual {p2, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    :try_start_0
    iget-object p1, p0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->mDaoImp:Ltct/gpdatahub/sdk/dao/IMobileEventDaoHelper;

    invoke-interface {p1, p2}, Ltct/gpdatahub/sdk/dao/IMobileEventDaoHelper;->insertEvent(Landroid/content/ContentValues;)J

    move-result-wide v0

    const-string p1, "insertSystem"

    .line 428
    invoke-direct {p0, v0, v1, p1, p2}, Ltct/gpdatahub/sdk/dao/MobileEventDao;->LogOperationResult(JLjava/lang/String;Landroid/content/ContentValues;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 430
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    return-wide v0

    .line 409
    :cond_1
    :goto_1
    sget-object p1, Ltct/gpdatahub/sdk/dao/MobileEventDao;->TAG:Ljava/lang/String;

    const-string p2, "insertSystem : key can\'t be empty!"

    invoke-static {p1, p2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method private insertSystemLazy(Ljava/lang/String;Ljava/lang/String;)J
    .locals 5

    const-wide/16 v0, -0x1

    if-eqz p1, :cond_1

    const-string v2, ""

    .line 789
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 794
    :cond_0
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 795
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 796
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 798
    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 800
    sget-object p2, Ltct/gpdatahub/sdk/dao/MobileEventDao;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertSystemLazy systemInfo json:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    new-instance p2, Ltct/gpdatahub/sdk/models/MobileEventModel;

    invoke-direct {p2}, Ltct/gpdatahub/sdk/models/MobileEventModel;-><init>()V

    .line 803
    invoke-virtual {p2, v3}, Ltct/gpdatahub/sdk/models/MobileEventModel;->setHappenTime(Ljava/lang/String;)V

    .line 804
    sget-object v2, Ltct/gpdatahub/sdk/dao/MobileEventDao;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ltct/gpdatahub/sdk/models/MobileEventModel;->setPackageName(Ljava/lang/String;)V

    .line 805
    sget-object v2, Ltct/gpdatahub/sdk/dao/MobileEventDao;->appVersion:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ltct/gpdatahub/sdk/models/MobileEventModel;->setAppVersion(Ljava/lang/String;)V

    .line 806
    invoke-virtual {p2, p1}, Ltct/gpdatahub/sdk/models/MobileEventModel;->setSystemInfo(Ljava/lang/String;)V

    .line 807
    iget-object p1, p0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->mMobileEventModels_event:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 808
    sget-object p1, Ltct/gpdatahub/sdk/dao/MobileEventDao;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertSystemLazy, the insert value is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 810
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    return-wide v0

    .line 790
    :cond_1
    :goto_1
    sget-object p1, Ltct/gpdatahub/sdk/dao/MobileEventDao;->TAG:Ljava/lang/String;

    const-string p2, "insertSystem : key can\'t be empty!"

    invoke-static {p1, p2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method private insertThrowable(Ljava/lang/String;Ljava/lang/String;)J
    .locals 3

    .line 443
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 444
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 446
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "happenTime"

    .line 447
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    sget-object v0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->packageName:Ljava/lang/String;

    const-string v2, "packageName"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    sget-object v0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->appVersion:Ljava/lang/String;

    const-string v2, "appVersion"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "errorType"

    .line 450
    invoke-virtual {v1, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "errorMessage"

    .line 451
    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p1, -0x1

    .line 453
    :try_start_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->mDaoImp:Ltct/gpdatahub/sdk/dao/IMobileEventDaoHelper;

    invoke-interface {v0, v1}, Ltct/gpdatahub/sdk/dao/IMobileEventDaoHelper;->insertEvent(Landroid/content/ContentValues;)J

    move-result-wide p1

    const-string v0, "insertThrowable"

    .line 454
    invoke-direct {p0, p1, p2, v0, v1}, Ltct/gpdatahub/sdk/dao/MobileEventDao;->LogOperationResult(JLjava/lang/String;Landroid/content/ContentValues;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 456
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    return-wide p1
.end method

.method private insertThrowableLazy(Ljava/lang/String;Ljava/lang/String;)J
    .locals 2

    .line 835
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 836
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 837
    new-instance v1, Ltct/gpdatahub/sdk/models/MobileEventModel;

    invoke-direct {v1}, Ltct/gpdatahub/sdk/models/MobileEventModel;-><init>()V

    .line 838
    invoke-virtual {v1, v0}, Ltct/gpdatahub/sdk/models/MobileEventModel;->setHappenTime(Ljava/lang/String;)V

    .line 839
    sget-object v0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ltct/gpdatahub/sdk/models/MobileEventModel;->setPackageName(Ljava/lang/String;)V

    .line 840
    sget-object v0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->appVersion:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ltct/gpdatahub/sdk/models/MobileEventModel;->setAppVersion(Ljava/lang/String;)V

    .line 841
    invoke-virtual {v1, p1}, Ltct/gpdatahub/sdk/models/MobileEventModel;->setErrorType(Ljava/lang/String;)V

    .line 842
    invoke-virtual {v1, p2}, Ltct/gpdatahub/sdk/models/MobileEventModel;->setErrorMessage(Ljava/lang/String;)V

    .line 843
    iget-object p1, p0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->mMobileEventModels_event:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 844
    sget-object p1, Ltct/gpdatahub/sdk/dao/MobileEventDao;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "insertThrowableLazy, the insert value is:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 846
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method private makeMobileEventModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ltct/gpdatahub/sdk/models/MobileEventModel;
    .locals 1

    .line 739
    new-instance v0, Ltct/gpdatahub/sdk/models/MobileEventModel;

    invoke-direct {v0}, Ltct/gpdatahub/sdk/models/MobileEventModel;-><init>()V

    .line 740
    invoke-virtual {v0, p4}, Ltct/gpdatahub/sdk/models/MobileEventModel;->setHappenTime(Ljava/lang/String;)V

    .line 741
    sget-object p4, Ltct/gpdatahub/sdk/dao/MobileEventDao;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p4}, Ltct/gpdatahub/sdk/models/MobileEventModel;->setPackageName(Ljava/lang/String;)V

    .line 742
    invoke-virtual {v0, p1}, Ltct/gpdatahub/sdk/models/MobileEventModel;->setEventType(Ljava/lang/String;)V

    .line 743
    invoke-virtual {v0, p2}, Ltct/gpdatahub/sdk/models/MobileEventModel;->setEventSubType(Ljava/lang/String;)V

    .line 744
    invoke-virtual {v0, p3}, Ltct/gpdatahub/sdk/models/MobileEventModel;->setEventId(Ljava/lang/String;)V

    .line 745
    invoke-virtual {v0, p5}, Ltct/gpdatahub/sdk/models/MobileEventModel;->setParaMap(Ljava/lang/String;)V

    .line 746
    sget-object p1, Ltct/gpdatahub/sdk/dao/MobileEventDao;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ltct/gpdatahub/sdk/models/MobileEventModel;->setAppVersion(Ljava/lang/String;)V

    return-object v0
.end method

.method private makeMobileEventModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ltct/gpdatahub/sdk/models/MobileEventModel;
    .locals 1

    .line 727
    new-instance v0, Ltct/gpdatahub/sdk/models/MobileEventModel;

    invoke-direct {v0}, Ltct/gpdatahub/sdk/models/MobileEventModel;-><init>()V

    .line 728
    invoke-virtual {v0, p4}, Ltct/gpdatahub/sdk/models/MobileEventModel;->setHappenTime(Ljava/lang/String;)V

    .line 729
    invoke-virtual {v0, p6}, Ltct/gpdatahub/sdk/models/MobileEventModel;->setPackageName(Ljava/lang/String;)V

    .line 730
    invoke-virtual {v0, p1}, Ltct/gpdatahub/sdk/models/MobileEventModel;->setEventType(Ljava/lang/String;)V

    .line 731
    invoke-virtual {v0, p2}, Ltct/gpdatahub/sdk/models/MobileEventModel;->setEventSubType(Ljava/lang/String;)V

    .line 732
    invoke-virtual {v0, p3}, Ltct/gpdatahub/sdk/models/MobileEventModel;->setEventId(Ljava/lang/String;)V

    .line 733
    invoke-virtual {v0, p5}, Ltct/gpdatahub/sdk/models/MobileEventModel;->setParaMap(Ljava/lang/String;)V

    .line 734
    sget-object p1, Ltct/gpdatahub/sdk/dao/MobileEventDao;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ltct/gpdatahub/sdk/models/MobileEventModel;->setAppVersion(Ljava/lang/String;)V

    return-object v0
.end method

.method private makeMobileEventValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 2

    .line 357
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "happenTime"

    .line 358
    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    sget-object p4, Ltct/gpdatahub/sdk/dao/MobileEventDao;->packageName:Ljava/lang/String;

    const-string v1, "packageName"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "eventType"

    .line 360
    invoke-virtual {v0, p4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "eventSubType"

    .line 361
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "eventId"

    .line 362
    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "paraMap"

    .line 363
    invoke-virtual {v0, p1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    sget-object p1, Ltct/gpdatahub/sdk/dao/MobileEventDao;->appVersion:Ljava/lang/String;

    const-string p2, "appVersion"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private makeStandardEventValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 2

    .line 345
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "happenTime"

    .line 346
    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "packageName"

    .line 347
    invoke-virtual {v0, p4, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "eventType"

    .line 348
    invoke-virtual {v0, p4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "eventSubType"

    .line 349
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "eventId"

    .line 350
    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "paraMap"

    .line 351
    invoke-virtual {v0, p1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    sget-object p1, Ltct/gpdatahub/sdk/dao/MobileEventDao;->appVersion:Ljava/lang/String;

    const-string p2, "appVersion"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private makeTypeEventValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/ContentValues;
    .locals 2

    .line 1035
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "happenTime"

    .line 1036
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "packageName"

    .line 1037
    invoke-virtual {v0, p3, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "eventType"

    .line 1038
    invoke-virtual {v0, p3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "eventId"

    .line 1039
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "paraMap"

    .line 1040
    invoke-virtual {v0, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "paraType"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1042
    sget-object p1, Ltct/gpdatahub/sdk/dao/MobileEventDao;->appVersion:Ljava/lang/String;

    const-string p2, "appVersion"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private queryMobileEventCursor()Landroid/database/Cursor;
    .locals 3

    .line 237
    :try_start_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->mDaoImp:Ltct/gpdatahub/sdk/dao/IMobileEventDaoHelper;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/dao/IMobileEventDaoHelper;->queryMobileEventCursor()Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 239
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 241
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_1

    .line 242
    :cond_0
    sget-object v1, Ltct/gpdatahub/sdk/dao/MobileEventDao;->TAG:Ljava/lang/String;

    const-string v2, "queryMobileEventCursor, no MobileEvent record found !"

    invoke-static {v1, v2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method private queryMobileEventCursorById(JJ)Landroid/database/Cursor;
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v3, 0x0

    if-ltz v2, :cond_3

    cmp-long v0, p3, v0

    if-ltz v0, :cond_3

    cmp-long v0, p1, p3

    if-lez v0, :cond_0

    goto :goto_1

    .line 254
    :cond_0
    :try_start_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->mDaoImp:Ltct/gpdatahub/sdk/dao/IMobileEventDaoHelper;

    invoke-interface {v0, p1, p2, p3, p4}, Ltct/gpdatahub/sdk/dao/IMobileEventDaoHelper;->queryMobileEventCursorById(JJ)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 257
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    if-eqz v3, :cond_1

    .line 259
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    .line 260
    :cond_1
    sget-object v0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryMobileEventCursorById, no MobileEvent record found between startId :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " and endId:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v3

    .line 249
    :cond_3
    :goto_1
    sget-object p1, Ltct/gpdatahub/sdk/dao/MobileEventDao;->TAG:Ljava/lang/String;

    const-string p2, "queryMobileEventCursorById ,startId or endId can\'t be less than zero or endId can\'t less than startId!"

    invoke-static {p1, p2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private saveTeyeIdIfNeeded(Ljava/lang/String;)V
    .locals 1

    .line 177
    sget-object p1, Ltct/gpdatahub/sdk/dao/MobileEventDao;->TAG:Ljava/lang/String;

    const-string v0, "buildType:debug"

    invoke-static {p1, v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateScreenBrightness(Landroid/content/Context;)V
    .locals 6

    .line 1097
    :try_start_0
    sget-object v0, Ltct/gpdatahub/sdk/TctDataHubConstants;->TYPE_RECORD_BY_DATE:Ltct/gpdatahub/sdk/TctDataHubEventType;

    const-string v1, "Smartphone_Display_Brightness"

    .line 1099
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1100
    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LightUtils;->getScreenBrightness(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "value"

    .line 1101
    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LightUtils;->getScreenBrightness(Landroid/content/Context;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    sget-object p1, Ltct/gpdatahub/sdk/dao/MobileEventDao;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateScreenBrightness brightness:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    iget-object p1, p0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->mDaoImp:Ltct/gpdatahub/sdk/dao/IMobileEventDaoHelper;

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/TctDataHubEventType;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {p1, v0, v3, v1, v2}, Ltct/gpdatahub/sdk/dao/IMobileEventDaoHelper;->updateEventByDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1105
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public batchInsertAll()V
    .locals 1

    .line 882
    :try_start_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->mMobileEventModels_event:Ljava/util/List;

    invoke-direct {p0, v0}, Ltct/gpdatahub/sdk/dao/MobileEventDao;->batchInsert(Ljava/util/List;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 884
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    .line 885
    :goto_1
    throw v0
.end method

.method public deleteMobileEventByDay(Ljava/lang/String;)V
    .locals 6

    if-nez p1, :cond_0

    .line 945
    sget-object p1, Ltct/gpdatahub/sdk/dao/MobileEventDao;->TAG:Ljava/lang/String;

    const-string v0, "deleteMobileEventByDay ,date can\'t be empty!"

    invoke-static {p1, v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 949
    :cond_0
    :try_start_0
    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/TimeUtils;->stringToTime(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    .line 950
    div-long v2, v0, v2

    const-wide/32 v4, 0x15180

    add-long/2addr v2, v4

    .line 951
    invoke-virtual {p0, p1}, Ltct/gpdatahub/sdk/dao/MobileEventDao;->queryMobileEventCursorByDay(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 952
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_3

    .line 953
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_2

    .line 954
    iget-object v5, p0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->mDaoImp:Ltct/gpdatahub/sdk/dao/IMobileEventDaoHelper;

    invoke-interface {v5, v0, v1, v2, v3}, Ltct/gpdatahub/sdk/dao/IMobileEventDaoHelper;->deleteMobileEventByDay(JJ)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 956
    sget-object v0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteMobileEventByDay success! delete date:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 958
    :cond_1
    sget-object v0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteMobileEventByDay failed! delete date:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 961
    :cond_2
    sget-object v0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no MobileEvent record found of date "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", can not delete!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 965
    :cond_3
    sget-object p1, Ltct/gpdatahub/sdk/dao/MobileEventDao;->TAG:Ljava/lang/String;

    const-string v0, "deleteMobileEventByDay:cursor is null!"

    invoke-static {p1, v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 968
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public deleteMobileEventById(JJ)V
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_4

    cmp-long v0, p3, v0

    if-ltz v0, :cond_4

    cmp-long v0, p1, p3

    if-lez v0, :cond_0

    goto/16 :goto_2

    .line 917
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Ltct/gpdatahub/sdk/dao/MobileEventDao;->queryMobileEventCursorById(JJ)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 919
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 920
    iget-object v1, p0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->mDaoImp:Ltct/gpdatahub/sdk/dao/IMobileEventDaoHelper;

    invoke-interface {v1, p1, p2, p3, p4}, Ltct/gpdatahub/sdk/dao/IMobileEventDaoHelper;->deleteMobileEventById(JJ)I

    move-result v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, -0x1

    const-string v3, ",endId:"

    if-eq v1, v2, :cond_1

    .line 922
    :try_start_1
    sget-object v1, Ltct/gpdatahub/sdk/dao/MobileEventDao;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteMobileEventById success! delete startId:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 924
    :cond_1
    sget-object v1, Ltct/gpdatahub/sdk/dao/MobileEventDao;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteMobileEventById failed! delete startId:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 927
    :cond_2
    sget-object v1, Ltct/gpdatahub/sdk/dao/MobileEventDao;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no MobileEvent record found between startId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " and endId "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", can not delete!"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 931
    :cond_3
    sget-object p1, Ltct/gpdatahub/sdk/dao/MobileEventDao;->TAG:Ljava/lang/String;

    const-string p2, "deleteMobileEventById:cursor is null!"

    invoke-static {p1, p2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 934
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_1
    return-void

    .line 913
    :cond_4
    :goto_2
    sget-object p1, Ltct/gpdatahub/sdk/dao/MobileEventDao;->TAG:Ljava/lang/String;

    const-string p2, "deleteMobileEventById ,startId or endId can\'t be less than zero or endId can\'t less than startId!"

    invoke-static {p1, p2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public insertActivitySession(Ljava/lang/String;I)J
    .locals 3

    .line 469
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 470
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 471
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "activityName"

    .line 472
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "happenTime"

    .line 473
    invoke-virtual {v1, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    sget-object p1, Ltct/gpdatahub/sdk/dao/MobileEventDao;->packageName:Ljava/lang/String;

    const-string v0, "packageName"

    invoke-virtual {v1, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    sget-object p1, Ltct/gpdatahub/sdk/dao/MobileEventDao;->appVersion:Ljava/lang/String;

    const-string v0, "appVersion"

    invoke-virtual {v1, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "duration"

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-wide/16 p1, -0x1

    .line 478
    :try_start_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->mDaoImp:Ltct/gpdatahub/sdk/dao/IMobileEventDaoHelper;

    invoke-interface {v0, v1}, Ltct/gpdatahub/sdk/dao/IMobileEventDaoHelper;->insertActivitySession(Landroid/content/ContentValues;)J

    move-result-wide p1

    const-string v0, "insertActivitySession"

    .line 479
    invoke-direct {p0, p1, p2, v0, v1}, Ltct/gpdatahub/sdk/dao/MobileEventDao;->LogOperationResult(JLjava/lang/String;Landroid/content/ContentValues;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 481
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    return-wide p1
.end method

.method public insertEvent(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)J
    .locals 7

    .line 539
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->mDaoImp:Ltct/gpdatahub/sdk/dao/IMobileEventDaoHelper;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/dao/IMobileEventDaoHelper;->isDisableInsertEvent()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    return-wide v1

    .line 544
    :cond_0
    sget-object v0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->packageName:Ljava/lang/String;

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/StringUtils;->isPackageGallery(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-wide v1

    .line 547
    :cond_1
    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/StringUtils;->isLogEventTypeValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return-wide v1

    .line 550
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    .line 552
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0xd895159

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v4, :cond_5

    const v4, 0x2ec8cb3b

    if-eq v3, v4, :cond_4

    const v4, 0x60afb9cd

    if-eq v3, v4, :cond_3

    goto :goto_0

    :cond_3
    const-string v3, "insert_type_background"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    move v0, v6

    goto :goto_0

    :cond_4
    const-string v3, "insert_type_batch"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    move v0, v5

    goto :goto_0

    :cond_5
    const-string v3, "insert_type_one"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    const/4 v0, 0x0

    :cond_6
    :goto_0
    if-eqz v0, :cond_8

    if-eq v0, v6, :cond_7

    if-eq v0, v5, :cond_9

    .line 563
    invoke-direct {p0, p1, p2}, Ltct/gpdatahub/sdk/dao/MobileEventDao;->insertEvent(Ljava/lang/String;Landroid/os/Bundle;)J

    move-result-wide v1

    goto :goto_1

    .line 557
    :cond_7
    invoke-direct {p0, p1, p2}, Ltct/gpdatahub/sdk/dao/MobileEventDao;->insertEventLazy(Ljava/lang/String;Landroid/os/Bundle;)J

    move-result-wide v1

    goto :goto_1

    .line 554
    :cond_8
    invoke-direct {p0, p1, p2}, Ltct/gpdatahub/sdk/dao/MobileEventDao;->insertEvent(Ljava/lang/String;Landroid/os/Bundle;)J

    move-result-wide v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 567
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :cond_9
    :goto_1
    return-wide v1
.end method

.method public insertEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)J
    .locals 7
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
            ")J"
        }
    .end annotation

    .line 498
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->mDaoImp:Ltct/gpdatahub/sdk/dao/IMobileEventDaoHelper;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/dao/IMobileEventDaoHelper;->isDisableInsertEvent()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    const/4 v0, -0x1

    .line 508
    :try_start_0
    invoke-virtual {p5}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0xd895159

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v4, :cond_3

    const v4, 0x2ec8cb3b

    if-eq v3, v4, :cond_2

    const v4, 0x60afb9cd

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "insert_type_background"

    invoke-virtual {p5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_4

    move v0, v6

    goto :goto_0

    :cond_2
    const-string v3, "insert_type_batch"

    invoke-virtual {p5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_4

    move v0, v5

    goto :goto_0

    :cond_3
    const-string v3, "insert_type_one"

    invoke-virtual {p5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_4

    const/4 v0, 0x0

    :cond_4
    :goto_0
    if-eqz v0, :cond_6

    if-eq v0, v6, :cond_5

    if-eq v0, v5, :cond_7

    .line 519
    invoke-direct {p0, p1, p2, p3, p4}, Ltct/gpdatahub/sdk/dao/MobileEventDao;->insertEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)J

    move-result-wide v1

    goto :goto_1

    .line 513
    :cond_5
    invoke-direct {p0, p1, p2, p3, p4}, Ltct/gpdatahub/sdk/dao/MobileEventDao;->insertEventLazy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)J

    move-result-wide v1

    goto :goto_1

    .line 510
    :cond_6
    invoke-direct {p0, p1, p2, p3, p4}, Ltct/gpdatahub/sdk/dao/MobileEventDao;->insertEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)J

    move-result-wide v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 523
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-wide v1
.end method

.method public insertMapTypeEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/String;)J
    .locals 11
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
            ")J"
        }
    .end annotation

    move-object v8, p0

    move-object v0, p2

    .line 1007
    iget-object v1, v8, Ltct/gpdatahub/sdk/dao/MobileEventDao;->mDaoImp:Ltct/gpdatahub/sdk/dao/IMobileEventDaoHelper;

    invoke-interface {v1}, Ltct/gpdatahub/sdk/dao/IMobileEventDaoHelper;->isDisableInsertEvent()Z

    move-result v1

    const-wide/16 v9, -0x1

    if-eqz v1, :cond_0

    return-wide v9

    :cond_0
    if-eqz v0, :cond_2

    :try_start_0
    const-string v1, ""

    .line 1013
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 1017
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1018
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 1019
    invoke-static {p3}, Ltct/gpdatahub/sdk/common/utils/StringUtils;->getProperStringFromMap(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p4

    move-object/from16 v7, p5

    .line 1021
    invoke-direct/range {v1 .. v7}, Ltct/gpdatahub/sdk/dao/MobileEventDao;->makeTypeEventValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1023
    :try_start_1
    iget-object v1, v8, Ltct/gpdatahub/sdk/dao/MobileEventDao;->mDaoImp:Ltct/gpdatahub/sdk/dao/IMobileEventDaoHelper;

    invoke-interface {v1, v0}, Ltct/gpdatahub/sdk/dao/IMobileEventDaoHelper;->insertEvent(Landroid/content/ContentValues;)J

    move-result-wide v1
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v3, "insertEvent String Type"

    .line 1024
    invoke-direct {p0, v1, v2, v3, v0}, Ltct/gpdatahub/sdk/dao/MobileEventDao;->LogOperationResult(JLjava/lang/String;Landroid/content/ContentValues;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-wide v9, v1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 1026
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 1014
    :cond_2
    :goto_1
    sget-object v0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->TAG:Ljava/lang/String;

    const-string v1, "insertStringTypeEvent, eventId can\'t be empty!"

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2

    return-wide v9

    :catch_2
    move-exception v0

    .line 1029
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_2
    move-wide v1, v9

    :goto_3
    return-wide v1
.end method

.method public insertStandardEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)J
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
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .line 573
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->mDaoImp:Ltct/gpdatahub/sdk/dao/IMobileEventDaoHelper;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/dao/IMobileEventDaoHelper;->isDisableInsertEvent()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    const/4 v0, -0x1

    .line 583
    :try_start_0
    invoke-virtual {p5}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0xd895159

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v4, :cond_3

    const v4, 0x2ec8cb3b

    if-eq v3, v4, :cond_2

    const v4, 0x60afb9cd

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "insert_type_background"

    invoke-virtual {p5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_4

    move v0, v6

    goto :goto_0

    :cond_2
    const-string v3, "insert_type_batch"

    invoke-virtual {p5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_4

    move v0, v5

    goto :goto_0

    :cond_3
    const-string v3, "insert_type_one"

    invoke-virtual {p5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_4

    const/4 v0, 0x0

    :cond_4
    :goto_0
    if-eqz v0, :cond_6

    if-eq v0, v6, :cond_5

    if-eq v0, v5, :cond_7

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p6

    .line 594
    invoke-direct/range {v3 .. v8}, Ltct/gpdatahub/sdk/dao/MobileEventDao;->insertStandardEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_1

    :cond_5
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p6

    .line 588
    invoke-direct/range {v3 .. v8}, Ltct/gpdatahub/sdk/dao/MobileEventDao;->insertStandardEventLazy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_1

    :cond_6
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p6

    .line 585
    invoke-direct/range {v3 .. v8}, Ltct/gpdatahub/sdk/dao/MobileEventDao;->insertStandardEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 598
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-wide v1
.end method

.method public insertStringTypeEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)J
    .locals 11

    move-object v8, p0

    move-object v0, p2

    .line 979
    iget-object v1, v8, Ltct/gpdatahub/sdk/dao/MobileEventDao;->mDaoImp:Ltct/gpdatahub/sdk/dao/IMobileEventDaoHelper;

    invoke-interface {v1}, Ltct/gpdatahub/sdk/dao/IMobileEventDaoHelper;->isDisableInsertEvent()Z

    move-result v1

    const-wide/16 v9, -0x1

    if-eqz v1, :cond_0

    return-wide v9

    :cond_0
    if-eqz v0, :cond_2

    :try_start_0
    const-string v1, ""

    .line 985
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 989
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 990
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move v6, p4

    move-object/from16 v7, p5

    .line 992
    invoke-direct/range {v1 .. v7}, Ltct/gpdatahub/sdk/dao/MobileEventDao;->makeTypeEventValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 994
    :try_start_1
    iget-object v1, v8, Ltct/gpdatahub/sdk/dao/MobileEventDao;->mDaoImp:Ltct/gpdatahub/sdk/dao/IMobileEventDaoHelper;

    invoke-interface {v1, v0}, Ltct/gpdatahub/sdk/dao/IMobileEventDaoHelper;->insertEvent(Landroid/content/ContentValues;)J

    move-result-wide v1
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v3, "insertEvent String Type"

    .line 995
    invoke-direct {p0, v1, v2, v3, v0}, Ltct/gpdatahub/sdk/dao/MobileEventDao;->LogOperationResult(JLjava/lang/String;Landroid/content/ContentValues;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-wide v9, v1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 997
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 986
    :cond_2
    :goto_1
    sget-object v0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->TAG:Ljava/lang/String;

    const-string v1, "insertStringTypeEvent, eventId can\'t be empty!"

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2

    return-wide v9

    :catch_2
    move-exception v0

    .line 1000
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_2
    move-wide v1, v9

    :goto_3
    return-wide v1
.end method

.method public insertSystem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 7

    .line 614
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->mDaoImp:Ltct/gpdatahub/sdk/dao/IMobileEventDaoHelper;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/dao/IMobileEventDaoHelper;->isDisableInsertEvent()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    const/4 v0, -0x1

    .line 620
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0xd895159

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v4, :cond_3

    const v4, 0x2ec8cb3b

    if-eq v3, v4, :cond_2

    const v4, 0x60afb9cd

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "insert_type_background"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    move v0, v6

    goto :goto_0

    :cond_2
    const-string v3, "insert_type_batch"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    move v0, v5

    goto :goto_0

    :cond_3
    const-string v3, "insert_type_one"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    const/4 v0, 0x0

    :cond_4
    :goto_0
    if-eqz v0, :cond_6

    if-eq v0, v6, :cond_5

    if-eq v0, v5, :cond_7

    .line 631
    invoke-direct {p0, p1, p2}, Ltct/gpdatahub/sdk/dao/MobileEventDao;->insertSystem(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_1

    .line 625
    :cond_5
    invoke-direct {p0, p1, p2}, Ltct/gpdatahub/sdk/dao/MobileEventDao;->insertSystemLazy(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_1

    .line 622
    :cond_6
    invoke-direct {p0, p1, p2}, Ltct/gpdatahub/sdk/dao/MobileEventDao;->insertSystem(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 635
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-wide v1
.end method

.method public insertThrowable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 7

    .line 651
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->mDaoImp:Ltct/gpdatahub/sdk/dao/IMobileEventDaoHelper;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/dao/IMobileEventDaoHelper;->isDisableInsertEvent()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    const/4 v0, -0x1

    .line 657
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0xd895159

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v4, :cond_3

    const v4, 0x2ec8cb3b

    if-eq v3, v4, :cond_2

    const v4, 0x60afb9cd

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "insert_type_background"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    move v0, v6

    goto :goto_0

    :cond_2
    const-string v3, "insert_type_batch"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    move v0, v5

    goto :goto_0

    :cond_3
    const-string v3, "insert_type_one"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    const/4 v0, 0x0

    :cond_4
    :goto_0
    if-eqz v0, :cond_6

    if-eq v0, v6, :cond_5

    if-eq v0, v5, :cond_7

    .line 668
    invoke-direct {p0, p1, p2}, Ltct/gpdatahub/sdk/dao/MobileEventDao;->insertThrowable(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_1

    .line 662
    :cond_5
    invoke-direct {p0, p1, p2}, Ltct/gpdatahub/sdk/dao/MobileEventDao;->insertThrowableLazy(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_1

    .line 659
    :cond_6
    invoke-direct {p0, p1, p2}, Ltct/gpdatahub/sdk/dao/MobileEventDao;->insertThrowable(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 672
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-wide v1
.end method

.method public queryMobileEvent()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltct/gpdatahub/sdk/models/MobileEventModel;",
            ">;"
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Ltct/gpdatahub/sdk/dao/MobileEventDao;->queryMobileEventCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Ltct/gpdatahub/sdk/dao/MobileEventDao;->getAllMobileEvent(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    .line 88
    sget-object v1, Ltct/gpdatahub/sdk/dao/MobileEventDao;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryMobileEvent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public queryMobileEventByDay(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ltct/gpdatahub/sdk/models/MobileEventModel;",
            ">;"
        }
    .end annotation

    .line 138
    invoke-virtual {p0, p1}, Ltct/gpdatahub/sdk/dao/MobileEventDao;->queryMobileEventCursorByDay(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    invoke-direct {p0, p1}, Ltct/gpdatahub/sdk/dao/MobileEventDao;->getAllMobileEvent(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p1

    .line 139
    sget-object v0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryMobileEventByDay :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public queryMobileEventById(JJ)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Ltct/gpdatahub/sdk/models/MobileEventModel;",
            ">;"
        }
    .end annotation

    .line 96
    invoke-direct {p0, p1, p2, p3, p4}, Ltct/gpdatahub/sdk/dao/MobileEventDao;->queryMobileEventCursorById(JJ)Landroid/database/Cursor;

    move-result-object p1

    invoke-direct {p0, p1}, Ltct/gpdatahub/sdk/dao/MobileEventDao;->getAllMobileEvent(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p1

    .line 97
    sget-object p2, Ltct/gpdatahub/sdk/dao/MobileEventDao;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "queryMobileEventById :"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public queryMobileEventCursorByDay(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 267
    sget-object p1, Ltct/gpdatahub/sdk/dao/MobileEventDao;->TAG:Ljava/lang/String;

    const-string v1, "queryMobileEventCursorByDay ,date can\'t be empty!"

    invoke-static {p1, v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 272
    :cond_0
    :try_start_0
    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/TimeUtils;->stringToTime(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    .line 273
    div-long v3, v1, v3

    const-wide/32 v5, 0x15180

    add-long/2addr v3, v5

    .line 274
    iget-object v5, p0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->mDaoImp:Ltct/gpdatahub/sdk/dao/IMobileEventDaoHelper;

    invoke-interface {v5, v1, v2, v3, v4}, Ltct/gpdatahub/sdk/dao/IMobileEventDaoHelper;->queryMobileEventCursorByDay(JJ)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 277
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    if-eqz v0, :cond_1

    .line 279
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_2

    .line 280
    :cond_1
    sget-object v1, Ltct/gpdatahub/sdk/dao/MobileEventDao;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryMobileEventCursorByDay, no MobileEvent record found of date :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method public queryNewestMobileEventId()J
    .locals 8

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    .line 150
    :try_start_0
    iget-object v3, p0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->mDaoImp:Ltct/gpdatahub/sdk/dao/IMobileEventDaoHelper;

    invoke-interface {v3}, Ltct/gpdatahub/sdk/dao/IMobileEventDaoHelper;->queryNewestMobileEventId()Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 152
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 153
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "_id"

    .line 154
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :try_start_1
    sget-object v5, Ltct/gpdatahub/sdk/dao/MobileEventDao;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "queryNewestMobileEventId ,newest _id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v5

    goto :goto_2

    :cond_0
    move-wide v3, v0

    :goto_0
    if-eqz v2, :cond_1

    .line 163
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v5

    move-wide v3, v0

    .line 160
    :goto_2
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    :goto_3
    cmp-long v0, v3, v0

    if-nez v0, :cond_2

    .line 167
    sget-object v0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->TAG:Ljava/lang/String;

    const-string v1, "queryNewestMobileEventId, the MobileEvent table is empty,return -1!"

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_2
    sget-object v0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryNewestMobileEventId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v3

    :goto_4
    if-eqz v2, :cond_3

    .line 163
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public queryRecordDateMobileEvent()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltct/gpdatahub/sdk/models/MobileEventModel;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->mDaoImp:Ltct/gpdatahub/sdk/dao/IMobileEventDaoHelper;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/dao/IMobileEventDaoHelper;->queryRecordDateMobileEventCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    invoke-direct {p0, v0}, Ltct/gpdatahub/sdk/dao/MobileEventDao;->getAllMobileEvent(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    .line 111
    sget-object v1, Ltct/gpdatahub/sdk/dao/MobileEventDao;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryRecordDateMobileEvent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public queryRecordDateMobileEventByIdSet(Ljava/util/Set;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List<",
            "Ltct/gpdatahub/sdk/models/MobileEventModel;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->mDaoImp:Ltct/gpdatahub/sdk/dao/IMobileEventDaoHelper;

    invoke-interface {v0, p1}, Ltct/gpdatahub/sdk/dao/IMobileEventDaoHelper;->queryRecordDateMobileEventCursorByIdSet(Ljava/util/Set;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 127
    invoke-direct {p0, p1}, Ltct/gpdatahub/sdk/dao/MobileEventDao;->getAllMobileEvent(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p1

    .line 128
    sget-object v0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryRecordDateMobileEventByIdSet "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public trackActivityLifecycle()V
    .locals 1

    .line 974
    iget-object v0, p0, Ltct/gpdatahub/sdk/dao/MobileEventDao;->mDaoImp:Ltct/gpdatahub/sdk/dao/IMobileEventDaoHelper;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/dao/IMobileEventDaoHelper;->trackActivityLifecycle()V

    return-void
.end method

.method public updateEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)J"
        }
    .end annotation

    const-wide/16 p1, 0x0

    return-wide p1
.end method
