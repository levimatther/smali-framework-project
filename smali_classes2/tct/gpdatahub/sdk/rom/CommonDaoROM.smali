.class public Ltct/gpdatahub/sdk/rom/CommonDaoROM;
.super Ljava/lang/Object;
.source "CommonDaoROM.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sCommonDaoROM:Ltct/gpdatahub/sdk/rom/CommonDaoROM;

.field private static final sObject:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private resolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Ltct/gpdatahub/sdk/rom/CommonDaoROM;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltct/gpdatahub/sdk/rom/CommonDaoROM;->TAG:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ltct/gpdatahub/sdk/rom/CommonDaoROM;->sObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Ltct/gpdatahub/sdk/rom/CommonDaoROM;->mContext:Landroid/content/Context;

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Ltct/gpdatahub/sdk/rom/CommonDaoROM;->resolver:Landroid/content/ContentResolver;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/rom/CommonDaoROM;
    .locals 2

    .line 34
    sget-object v0, Ltct/gpdatahub/sdk/rom/CommonDaoROM;->sCommonDaoROM:Ltct/gpdatahub/sdk/rom/CommonDaoROM;

    if-eqz v0, :cond_0

    return-object v0

    .line 37
    :cond_0
    sget-object v0, Ltct/gpdatahub/sdk/rom/CommonDaoROM;->sObject:Ljava/lang/Object;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Ltct/gpdatahub/sdk/rom/CommonDaoROM;->sCommonDaoROM:Ltct/gpdatahub/sdk/rom/CommonDaoROM;

    if-nez v1, :cond_1

    .line 39
    new-instance v1, Ltct/gpdatahub/sdk/rom/CommonDaoROM;

    invoke-direct {v1, p0}, Ltct/gpdatahub/sdk/rom/CommonDaoROM;-><init>(Landroid/content/Context;)V

    sput-object v1, Ltct/gpdatahub/sdk/rom/CommonDaoROM;->sCommonDaoROM:Ltct/gpdatahub/sdk/rom/CommonDaoROM;

    .line 41
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    sget-object p0, Ltct/gpdatahub/sdk/rom/CommonDaoROM;->sCommonDaoROM:Ltct/gpdatahub/sdk/rom/CommonDaoROM;

    return-object p0

    :catchall_0
    move-exception p0

    .line 41
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public getTeyeIdFromROM()Ljava/lang/String;
    .locals 7

    const-string v0, ""

    .line 51
    :try_start_0
    iget-object v1, p0, Ltct/gpdatahub/sdk/rom/CommonDaoROM;->resolver:Landroid/content/ContentResolver;

    sget-object v2, Ltct/gpdatahub/sdk/common/constant/SdkConstants;->COMMON_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 53
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v0

    .line 54
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "teyeId"

    .line 55
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 58
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    move-object v2, v0

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v2, v0

    .line 61
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_2
    if-nez v2, :cond_2

    return-object v0

    .line 66
    :cond_2
    sget-object v0, Ltct/gpdatahub/sdk/rom/CommonDaoROM;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTeyeIdFromROM,teyeId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public saveSdkTypeForROM(Ljava/lang/String;)J
    .locals 8

    const-wide/16 v0, -0x1

    .line 102
    :try_start_0
    iget-object v2, p0, Ltct/gpdatahub/sdk/rom/CommonDaoROM;->resolver:Landroid/content/ContentResolver;

    sget-object v3, Ltct/gpdatahub/sdk/common/constant/SdkConstants;->COMMON_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 104
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 105
    sget-object v3, Ltct/gpdatahub/sdk/rom/CommonDaoROM;->TAG:Ljava/lang/String;

    const-string v4, "dataHubSdkType already saved in the TctDataHubProvider."

    invoke-static {v3, v4}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-wide v0

    .line 109
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 112
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-eqz p1, :cond_4

    const-string v2, ""

    .line 114
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_5

    .line 119
    :cond_2
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "dataHubSdkType"

    .line 120
    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :try_start_1
    iget-object p1, p0, Ltct/gpdatahub/sdk/rom/CommonDaoROM;->resolver:Landroid/content/ContentResolver;

    sget-object v3, Ltct/gpdatahub/sdk/common/constant/SdkConstants;->COMMON_URI:Landroid/net/Uri;

    invoke-virtual {p1, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    .line 123
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    cmp-long p1, v3, v0

    if-eqz p1, :cond_3

    .line 125
    :try_start_2
    sget-object p1, Ltct/gpdatahub/sdk/rom/CommonDaoROM;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveSdkTypeForROM for ROM success! insert values :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 127
    :cond_3
    sget-object p1, Ltct/gpdatahub/sdk/rom/CommonDaoROM;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveSdkTypeForROM for ROM failed! insert values :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    move-wide v0, v3

    goto :goto_1

    :catch_2
    move-exception p1

    move-wide v0, v3

    goto :goto_2

    :catch_3
    move-exception p1

    .line 132
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    goto :goto_3

    :catch_4
    move-exception p1

    .line 130
    :goto_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_3
    move-wide v3, v0

    :goto_4
    return-wide v3

    .line 115
    :cond_4
    :goto_5
    sget-object p1, Ltct/gpdatahub/sdk/rom/CommonDaoROM;->TAG:Ljava/lang/String;

    const-string v2, "saveSdkTypeForROM, dataHubSdkType can\'t be empty!"

    invoke-static {p1, v2}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method public setTeyeIdForROM(Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_2

    const-string v0, ""

    .line 76
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 81
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "teyeId"

    .line 82
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :try_start_0
    iget-object p1, p0, Ltct/gpdatahub/sdk/rom/CommonDaoROM;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Ltct/gpdatahub/sdk/common/constant/SdkConstants;->COMMON_URI:Landroid/net/Uri;

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    .line 86
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p1, v1, v3

    if-eqz p1, :cond_1

    .line 88
    sget-object p1, Ltct/gpdatahub/sdk/rom/CommonDaoROM;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTeyeId for ROM success! insert values :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_1
    sget-object p1, Ltct/gpdatahub/sdk/rom/CommonDaoROM;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTeyeId for ROM failed! insert values :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 93
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 77
    :cond_2
    :goto_1
    sget-object p1, Ltct/gpdatahub/sdk/rom/CommonDaoROM;->TAG:Ljava/lang/String;

    const-string v0, "teyeId is empty, quit."

    invoke-static {p1, v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
