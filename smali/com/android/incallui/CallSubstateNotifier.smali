.class public Lcom/android/incallui/CallSubstateNotifier;
.super Ljava/lang/Object;
.source "CallSubstateNotifier.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallDetailsListener;
.implements Lcom/android/incallui/call/CallList$Listener;


# static fields
.field private static sCallSubstateNotifier:Lcom/android/incallui/CallSubstateNotifier;


# instance fields
.field private final mCallSubstateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/incallui/InCallSubstateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallSubstateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/CallSubstateNotifier;->mCallSubstateListeners:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/CallSubstateNotifier;->mCallSubstateMap:Ljava/util/HashMap;

    return-void
.end method

.method private getCallSubstate(Landroid/os/Bundle;)I
    .locals 2

    const-string v0, "CallSubstate"

    const/4 v1, 0x0

    .line 96
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/CallSubstateNotifier;
    .locals 2

    const-class v0, Lcom/android/incallui/CallSubstateNotifier;

    monitor-enter v0

    .line 59
    :try_start_0
    sget-object v1, Lcom/android/incallui/CallSubstateNotifier;->sCallSubstateNotifier:Lcom/android/incallui/CallSubstateNotifier;

    if-nez v1, :cond_0

    .line 60
    new-instance v1, Lcom/android/incallui/CallSubstateNotifier;

    invoke-direct {v1}, Lcom/android/incallui/CallSubstateNotifier;-><init>()V

    sput-object v1, Lcom/android/incallui/CallSubstateNotifier;->sCallSubstateNotifier:Lcom/android/incallui/CallSubstateNotifier;

    .line 62
    :cond_0
    sget-object v1, Lcom/android/incallui/CallSubstateNotifier;->sCallSubstateNotifier:Lcom/android/incallui/CallSubstateNotifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public addListener(Lcom/android/incallui/InCallSubstateListener;)V
    .locals 1

    .line 70
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/android/incallui/CallSubstateNotifier;->mCallSubstateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onCallListChange(Lcom/android/incallui/call/CallList;)V
    .locals 0

    return-void
.end method

.method public onDetailsChanged(Lcom/android/incallui/call/DialerCall;Landroid/telecom/Call$Details;)V
    .locals 4

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDetailsChanged - call: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "details: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 109
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/call/DialerCall$State;->isConnectingOrConnected(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 114
    :cond_0
    invoke-virtual {p2}, Landroid/telecom/Call$Details;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 120
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/android/incallui/CallSubstateNotifier;->mCallSubstateMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/CallSubstateNotifier;->mCallSubstateMap:Ljava/util/HashMap;

    .line 124
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 125
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/incallui/CallSubstateNotifier;->getCallSubstate(Landroid/os/Bundle;)I

    move-result p2

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDetailsChanged - oldCallSubstate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "newCallSubstate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne v1, p2, :cond_3

    return-void

    .line 133
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/CallSubstateNotifier;->mCallSubstateMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Lcom/android/incallui/CallSubstateNotifier;->mCallSubstateListeners:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/android/incallui/CallSubstateNotifier;->mCallSubstateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallSubstateListener;

    .line 136
    invoke-interface {v1, p1, p2}, Lcom/android/incallui/InCallSubstateListener;->onCallSubstateChanged(Lcom/android/incallui/call/DialerCall;I)V

    goto :goto_1

    :cond_4
    return-void

    :cond_5
    :goto_2
    const-string p1, "onDetailsChanged - Call/details is null/Call is not connected. Return"

    .line 110
    invoke-static {p0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onDisconnect(Lcom/android/incallui/call/DialerCall;)V
    .locals 2

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDisconnect: call: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/android/incallui/CallSubstateNotifier;->mCallSubstateMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onHandoverToWifiFailed(Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    return-void
.end method

.method public onInternationalCallOnWifi(Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    return-void
.end method

.method public onSessionModificationStateChange(Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    return-void
.end method

.method public onUpgradeToVideo(Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    return-void
.end method

.method public onWiFiToLteHandover(Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    return-void
.end method

.method public removeListener(Lcom/android/incallui/InCallSubstateListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/incallui/CallSubstateNotifier;->mCallSubstateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p1, "Can\'t remove null listener"

    .line 83
    invoke-static {p0, p1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
