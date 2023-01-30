.class Lcom/android/dialer/simulator/impl/SimulatorActionProvider$ShareLogWorker;
.super Ljava/lang/Object;
.source "SimulatorActionProvider.java"

# interfaces
.implements Lcom/android/dialer/common/concurrent/DialerExecutor$Worker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/simulator/impl/SimulatorActionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShareLogWorker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/dialer/common/concurrent/DialerExecutor$Worker<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/simulator/impl/SimulatorActionProvider$1;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/dialer/simulator/impl/SimulatorActionProvider$ShareLogWorker;-><init>()V

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

    .line 40
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/dialer/simulator/impl/SimulatorActionProvider$ShareLogWorker;->doInBackground(Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public doInBackground(Ljava/lang/Void;)Ljava/lang/String;
    .locals 0

    .line 45
    invoke-static {}, Lcom/android/dialer/persistentlog/PersistentLogger;->dumpLogToString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
