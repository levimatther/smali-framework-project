.class public Lcom/android/dialer/calllog/RefreshAnnotatedCallLogWorker;
.super Ljava/lang/Object;
.source "RefreshAnnotatedCallLogWorker.java"

# interfaces
.implements Lcom/android/dialer/common/concurrent/DialerExecutor$Worker;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/dialer/common/concurrent/DialerExecutor$Worker<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final appContext:Landroid/content/Context;

.field private final dataSources:Lcom/android/dialer/calllog/datasources/DataSources;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/dialer/calllog/datasources/DataSources;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/dialer/calllog/RefreshAnnotatedCallLogWorker;->appContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/android/dialer/calllog/RefreshAnnotatedCallLogWorker;->dataSources:Lcom/android/dialer/calllog/datasources/DataSources;

    return-void
.end method

.method private checkDirtyAndRebuildIfNecessary(Landroid/content/Context;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .line 70
    invoke-static {}, Lcom/android/dialer/common/Assert;->isWorkerThread()V

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 74
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "callLogFrameworkForceRebuild"

    const/4 v4, 0x1

    .line 78
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "RefreshAnnotatedCallLogWorker.checkDirtyAndRebuildIfNecessary"

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "annotated call log has been marked dirty or does not exist"

    .line 80
    invoke-static {v3, v7, v6}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-nez p2, :cond_2

    if-nez v2, :cond_2

    .line 85
    invoke-direct {p0, p1}, Lcom/android/dialer/calllog/RefreshAnnotatedCallLogWorker;->isDirty(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move p2, v5

    goto :goto_1

    :cond_2
    :goto_0
    move p2, v4

    :goto_1
    new-array v2, v4, [Ljava/lang/Object;

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v5

    const-string v0, "isDirty took: %dms"

    .line 87
    invoke-static {v3, v0, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_3

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 93
    invoke-direct {p0, p1}, Lcom/android/dialer/calllog/RefreshAnnotatedCallLogWorker;->rebuild(Landroid/content/Context;)V

    new-array p1, v4, [Ljava/lang/Object;

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p1, v5

    const-string p2, "rebuild took: %dms"

    .line 94
    invoke-static {v3, p2, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private static getName(Lcom/android/dialer/calllog/datasources/CallLogDataSource;)Ljava/lang/String;
    .locals 0

    .line 180
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isDirty(Landroid/content/Context;)Z
    .locals 11

    .line 103
    invoke-static {}, Lcom/android/dialer/common/Assert;->isWorkerThread()V

    .line 105
    iget-object v0, p0, Lcom/android/dialer/calllog/RefreshAnnotatedCallLogWorker;->dataSources:Lcom/android/dialer/calllog/datasources/DataSources;

    invoke-interface {v0}, Lcom/android/dialer/calllog/datasources/DataSources;->getDataSourcesIncludingSystemCallLog()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/calllog/datasources/CallLogDataSource;

    .line 106
    invoke-static {v1}, Lcom/android/dialer/calllog/RefreshAnnotatedCallLogWorker;->getName(Lcom/android/dialer/calllog/datasources/CallLogDataSource;)Ljava/lang/String;

    move-result-object v3

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v3, v7, v2

    const-string v8, "RefreshAnnotatedCallLogWorker.isDirty"

    const-string v9, "running isDirty for %s"

    .line 108
    invoke-static {v8, v9, v7}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    invoke-interface {v1, p1}, Lcom/android/dialer/calllog/datasources/CallLogDataSource;->isDirty(Landroid/content/Context;)Z

    move-result v1

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v2

    .line 114
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v7, v6

    const/4 v2, 0x2

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v4

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v7, v2

    const-string v2, "%s.isDirty returned %b in %dms"

    .line 110
    invoke-static {v8, v2, v7}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_0

    return v6

    :cond_1
    return v2
.end method

.method private rebuild(Landroid/content/Context;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 126
    invoke-static {}, Lcom/android/dialer/common/Assert;->isWorkerThread()V

    .line 128
    new-instance v2, Lcom/android/dialer/calllog/datasources/CallLogMutations;

    invoke-direct {v2}, Lcom/android/dialer/calllog/datasources/CallLogMutations;-><init>()V

    .line 131
    iget-object v3, v0, Lcom/android/dialer/calllog/RefreshAnnotatedCallLogWorker;->dataSources:Lcom/android/dialer/calllog/datasources/DataSources;

    invoke-interface {v3}, Lcom/android/dialer/calllog/datasources/DataSources;->getSystemCallLogDataSource()Lcom/android/dialer/calllog/datasources/systemcalllog/SystemCallLogDataSource;

    move-result-object v3

    .line 132
    invoke-static {v3}, Lcom/android/dialer/calllog/RefreshAnnotatedCallLogWorker;->getName(Lcom/android/dialer/calllog/datasources/CallLogDataSource;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const-string v8, "RefreshAnnotatedCallLogWorker.rebuild"

    const-string v9, "filling %s"

    .line 133
    invoke-static {v8, v9, v6}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 135
    invoke-interface {v3, v1, v2}, Lcom/android/dialer/calllog/datasources/CallLogDataSource;->fill(Landroid/content/Context;Lcom/android/dialer/calllog/datasources/CallLogMutations;)V

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v4, v6, v7

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v10

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v6, v5

    const-string v4, "%s.fill took: %dms"

    .line 136
    invoke-static {v8, v4, v6}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    iget-object v6, v0, Lcom/android/dialer/calllog/RefreshAnnotatedCallLogWorker;->dataSources:Lcom/android/dialer/calllog/datasources/DataSources;

    invoke-interface {v6}, Lcom/android/dialer/calllog/datasources/DataSources;->getDataSourcesExcludingSystemCallLog()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const-string v11, "CallLogFramework.rebuild"

    if-eqz v10, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/dialer/calllog/datasources/CallLogDataSource;

    .line 143
    invoke-static {v10}, Lcom/android/dialer/calllog/RefreshAnnotatedCallLogWorker;->getName(Lcom/android/dialer/calllog/datasources/CallLogDataSource;)Ljava/lang/String;

    move-result-object v12

    new-array v13, v5, [Ljava/lang/Object;

    aput-object v12, v13, v7

    .line 144
    invoke-static {v8, v9, v13}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 146
    invoke-interface {v10, v1, v2}, Lcom/android/dialer/calllog/datasources/CallLogDataSource;->fill(Landroid/content/Context;Lcom/android/dialer/calllog/datasources/CallLogMutations;)V

    new-array v10, v3, [Ljava/lang/Object;

    aput-object v12, v10, v7

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v13

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v5

    .line 147
    invoke-static {v11, v4, v10}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-array v4, v7, [Ljava/lang/Object;

    const-string v6, "applying mutations to database"

    .line 153
    invoke-static {v8, v6, v4}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 155
    invoke-static/range {p1 .. p1}, Lcom/android/dialer/calllog/database/CallLogDatabaseComponent;->get(Landroid/content/Context;)Lcom/android/dialer/calllog/database/CallLogDatabaseComponent;

    move-result-object v4

    .line 156
    invoke-virtual {v4}, Lcom/android/dialer/calllog/database/CallLogDatabaseComponent;->mutationApplier()Lcom/android/dialer/calllog/database/MutationApplier;

    move-result-object v4

    .line 157
    invoke-virtual {v4, v2, v1}, Lcom/android/dialer/calllog/database/MutationApplier;->applyToDatabase(Lcom/android/dialer/calllog/datasources/CallLogMutations;Landroid/content/Context;)V

    new-array v2, v5, [Ljava/lang/Object;

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v9

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v7

    const-string v4, "applyToDatabase took: %dms"

    .line 158
    invoke-static {v8, v4, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    iget-object v2, v0, Lcom/android/dialer/calllog/RefreshAnnotatedCallLogWorker;->dataSources:Lcom/android/dialer/calllog/datasources/DataSources;

    invoke-interface {v2}, Lcom/android/dialer/calllog/datasources/DataSources;->getDataSourcesIncludingSystemCallLog()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/dialer/calllog/datasources/CallLogDataSource;

    .line 164
    invoke-static {v4}, Lcom/android/dialer/calllog/RefreshAnnotatedCallLogWorker;->getName(Lcom/android/dialer/calllog/datasources/CallLogDataSource;)Ljava/lang/String;

    move-result-object v6

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v6, v9, v7

    const-string v10, "onSuccessfulFill\'ing %s"

    .line 165
    invoke-static {v8, v10, v9}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 167
    invoke-interface {v4, v1}, Lcom/android/dialer/calllog/datasources/CallLogDataSource;->onSuccessfulFill(Landroid/content/Context;)V

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v6, v4, v7

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v9

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v6, "%s.onSuccessfulFill took: %dms"

    .line 168
    invoke-static {v11, v6, v4}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 175
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 176
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "callLogFrameworkForceRebuild"

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 42
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/dialer/calllog/RefreshAnnotatedCallLogWorker;->doInBackground(Ljava/lang/Boolean;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public doInBackground(Ljava/lang/Boolean;)Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    const-string v0, "RefreshAnnotatedCallLogWorker.doInBackground"

    .line 56
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 59
    iget-object v3, p0, Lcom/android/dialer/calllog/RefreshAnnotatedCallLogWorker;->appContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, v3, p1}, Lcom/android/dialer/calllog/RefreshAnnotatedCallLogWorker;->checkDirtyAndRebuildIfNecessary(Landroid/content/Context;Z)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, p1, v2

    const-string v1, "took %dms"

    .line 60
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method
