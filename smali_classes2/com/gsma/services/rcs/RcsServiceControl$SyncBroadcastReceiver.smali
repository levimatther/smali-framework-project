.class Lcom/gsma/services/rcs/RcsServiceControl$SyncBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RcsServiceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/RcsServiceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncBroadcastReceiver"
.end annotation


# instance fields
.field public volatile mHaveResult:Z

.field final synthetic this$0:Lcom/gsma/services/rcs/RcsServiceControl;


# direct methods
.method private constructor <init>(Lcom/gsma/services/rcs/RcsServiceControl;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/gsma/services/rcs/RcsServiceControl$SyncBroadcastReceiver;->this$0:Lcom/gsma/services/rcs/RcsServiceControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    .line 246
    iput-boolean p1, p0, Lcom/gsma/services/rcs/RcsServiceControl$SyncBroadcastReceiver;->mHaveResult:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/gsma/services/rcs/RcsServiceControl;Lcom/gsma/services/rcs/RcsServiceControl$1;)V
    .locals 0

    .line 245
    invoke-direct {p0, p1}, Lcom/gsma/services/rcs/RcsServiceControl$SyncBroadcastReceiver;-><init>(Lcom/gsma/services/rcs/RcsServiceControl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 250
    monitor-enter p0

    const/4 p1, 0x1

    .line 251
    :try_start_0
    iput-boolean p1, p0, Lcom/gsma/services/rcs/RcsServiceControl$SyncBroadcastReceiver;->mHaveResult:Z

    .line 252
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 253
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
