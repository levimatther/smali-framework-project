.class public final Lcom/android/dialer/calllog/CallLogFramework;
.super Ljava/lang/Object;
.source "CallLogFramework.java"

# interfaces
.implements Lcom/android/dialer/calllog/datasources/CallLogDataSource$ContentObserverCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/calllog/CallLogFramework$CallLogUi;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field static final PREF_FORCE_REBUILD:Ljava/lang/String; = "callLogFrameworkForceRebuild"


# instance fields
.field private final dataSources:Lcom/android/dialer/calllog/datasources/DataSources;

.field private ui:Lcom/android/dialer/calllog/CallLogFramework$CallLogUi;


# direct methods
.method constructor <init>(Lcom/android/dialer/calllog/datasources/DataSources;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogFramework;->dataSources:Lcom/android/dialer/calllog/datasources/DataSources;

    return-void
.end method


# virtual methods
.method public attachUi(Lcom/android/dialer/calllog/CallLogFramework$CallLogUi;)V
    .locals 1

    const-string v0, "CallLogFramework.attachUi"

    .line 75
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 76
    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogFramework;->ui:Lcom/android/dialer/calllog/CallLogFramework$CallLogUi;

    return-void
.end method

.method public detachUi()V
    .locals 1

    const-string v0, "CallLogFramework.detachUi"

    .line 84
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogFramework;->ui:Lcom/android/dialer/calllog/CallLogFramework$CallLogUi;

    return-void
.end method

.method public isNewCallLogEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 53
    invoke-static {p1}, Lcom/android/dialer/configprovider/ConfigProviderBindings;->get(Landroid/content/Context;)Lcom/android/dialer/configprovider/ConfigProvider;

    move-result-object p1

    const-string v0, "enable_new_call_log_tab"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/android/dialer/configprovider/ConfigProvider;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public markDirtyAndNotify(Landroid/content/Context;)V
    .locals 2

    .line 100
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    const-string v0, "CallLogFramework.markDirtyAndNotify"

    .line 101
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 103
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 104
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "callLogFrameworkForceRebuild"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 106
    iget-object p1, p0, Lcom/android/dialer/calllog/CallLogFramework;->ui:Lcom/android/dialer/calllog/CallLogFramework$CallLogUi;

    if-eqz p1, :cond_0

    .line 107
    invoke-interface {p1}, Lcom/android/dialer/calllog/CallLogFramework$CallLogUi;->invalidateUi()V

    :cond_0
    return-void
.end method

.method public registerContentObservers(Landroid/content/Context;)V
    .locals 2

    const-string v0, "CallLogFramework.registerContentObservers"

    .line 58
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/dialer/calllog/CallLogFramework;->isNewCallLogEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "new call log not enabled"

    .line 61
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFramework;->dataSources:Lcom/android/dialer/calllog/datasources/DataSources;

    invoke-interface {v0}, Lcom/android/dialer/calllog/datasources/DataSources;->getDataSourcesIncludingSystemCallLog()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/calllog/datasources/CallLogDataSource;

    .line 66
    invoke-interface {v1, p1, p0}, Lcom/android/dialer/calllog/datasources/CallLogDataSource;->registerContentObservers(Landroid/content/Context;Lcom/android/dialer/calllog/datasources/CallLogDataSource$ContentObserverCallbacks;)V

    goto :goto_0

    :cond_1
    return-void
.end method
