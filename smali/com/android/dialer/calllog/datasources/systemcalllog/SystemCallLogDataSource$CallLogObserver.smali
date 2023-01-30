.class Lcom/android/dialer/calllog/datasources/systemcalllog/SystemCallLogDataSource$CallLogObserver;
.super Landroid/database/ContentObserver;
.source "SystemCallLogDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/calllog/datasources/systemcalllog/SystemCallLogDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallLogObserver"
.end annotation


# instance fields
.field private final appContext:Landroid/content/Context;

.field private final contentObserverCallbacks:Lcom/android/dialer/calllog/datasources/CallLogDataSource$ContentObserverCallbacks;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/android/dialer/calllog/datasources/CallLogDataSource$ContentObserverCallbacks;)V
    .locals 0

    .line 332
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 333
    iput-object p2, p0, Lcom/android/dialer/calllog/datasources/systemcalllog/SystemCallLogDataSource$CallLogObserver;->appContext:Landroid/content/Context;

    .line 334
    iput-object p3, p0, Lcom/android/dialer/calllog/datasources/systemcalllog/SystemCallLogDataSource$CallLogObserver;->contentObserverCallbacks:Lcom/android/dialer/calllog/datasources/CallLogDataSource$ContentObserverCallbacks;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 340
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    const-string v0, "SystemCallLogDataSource.CallLogObserver.onChange"

    .line 341
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 342
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 350
    iget-object p1, p0, Lcom/android/dialer/calllog/datasources/systemcalllog/SystemCallLogDataSource$CallLogObserver;->contentObserverCallbacks:Lcom/android/dialer/calllog/datasources/CallLogDataSource$ContentObserverCallbacks;

    iget-object p2, p0, Lcom/android/dialer/calllog/datasources/systemcalllog/SystemCallLogDataSource$CallLogObserver;->appContext:Landroid/content/Context;

    invoke-interface {p1, p2}, Lcom/android/dialer/calllog/datasources/CallLogDataSource$ContentObserverCallbacks;->markDirtyAndNotify(Landroid/content/Context;)V

    return-void
.end method
