.class public Lcom/android/incallui/call/ExternalCallList;
.super Ljava/lang/Object;
.source "ExternalCallList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/call/ExternalCallList$ExternalCallListener;
    }
.end annotation


# instance fields
.field private final mExternalCallListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/incallui/call/ExternalCallList$ExternalCallListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mExternalCalls:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private final mTelecomCallCallback:Landroid/telecom/Call$Callback;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/call/ExternalCallList;->mExternalCalls:Ljava/util/Set;

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 39
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/call/ExternalCallList;->mExternalCallListeners:Ljava/util/Set;

    .line 41
    new-instance v0, Lcom/android/incallui/call/ExternalCallList$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/call/ExternalCallList$1;-><init>(Lcom/android/incallui/call/ExternalCallList;)V

    iput-object v0, p0, Lcom/android/incallui/call/ExternalCallList;->mTelecomCallCallback:Landroid/telecom/Call$Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/call/ExternalCallList;Landroid/telecom/Call;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/android/incallui/call/ExternalCallList;->notifyExternalCallUpdated(Landroid/telecom/Call;)V

    return-void
.end method

.method private notifyExternalCallAdded(Landroid/telecom/Call;)V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/android/incallui/call/ExternalCallList;->mExternalCallListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/call/ExternalCallList$ExternalCallListener;

    .line 93
    invoke-interface {v1, p1}, Lcom/android/incallui/call/ExternalCallList$ExternalCallListener;->onExternalCallAdded(Landroid/telecom/Call;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyExternalCallRemoved(Landroid/telecom/Call;)V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/android/incallui/call/ExternalCallList;->mExternalCallListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/call/ExternalCallList$ExternalCallListener;

    .line 100
    invoke-interface {v1, p1}, Lcom/android/incallui/call/ExternalCallList$ExternalCallListener;->onExternalCallRemoved(Landroid/telecom/Call;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyExternalCallUpdated(Landroid/telecom/Call;)V
    .locals 2

    .line 106
    invoke-virtual {p1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/telecom/Call$Details;->hasProperty(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/incallui/call/ExternalCallList;->onCallRemoved(Landroid/telecom/Call;)V

    .line 112
    iget-object v0, p0, Lcom/android/incallui/call/ExternalCallList;->mExternalCallListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/call/ExternalCallList$ExternalCallListener;

    .line 113
    invoke-interface {v1, p1}, Lcom/android/incallui/call/ExternalCallList$ExternalCallListener;->onExternalCallPulled(Landroid/telecom/Call;)V

    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/call/ExternalCallList;->mExternalCallListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/call/ExternalCallList$ExternalCallListener;

    .line 117
    invoke-interface {v1, p1}, Lcom/android/incallui/call/ExternalCallList$ExternalCallListener;->onExternalCallUpdated(Landroid/telecom/Call;)V

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public addExternalCallListener(Lcom/android/incallui/call/ExternalCallList$ExternalCallListener;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/android/incallui/call/ExternalCallList;->mExternalCallListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isCallTracked(Landroid/telecom/Call;)Z
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/incallui/call/ExternalCallList;->mExternalCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onCallAdded(Landroid/telecom/Call;)V
    .locals 3

    .line 51
    invoke-virtual {p1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/telecom/Call$Details;->hasProperty(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/incallui/call/ExternalCallList;->mExternalCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/android/incallui/call/ExternalCallList;->mTelecomCallCallback:Landroid/telecom/Call$Callback;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p1, v0, v1}, Landroid/telecom/Call;->registerCallback(Landroid/telecom/Call$Callback;Landroid/os/Handler;)V

    .line 56
    invoke-direct {p0, p1}, Lcom/android/incallui/call/ExternalCallList;->notifyExternalCallAdded(Landroid/telecom/Call;)V

    return-void

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public onCallRemoved(Landroid/telecom/Call;)V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/android/incallui/call/ExternalCallList;->mExternalCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "ExternalCallList.onCallRemoved"

    const-string v1, "attempted to remove unregistered call"

    .line 63
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/call/ExternalCallList;->mExternalCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/android/incallui/call/ExternalCallList;->mTelecomCallCallback:Landroid/telecom/Call$Callback;

    invoke-virtual {p1, v0}, Landroid/telecom/Call;->unregisterCallback(Landroid/telecom/Call$Callback;)V

    .line 68
    invoke-direct {p0, p1}, Lcom/android/incallui/call/ExternalCallList;->notifyExternalCallRemoved(Landroid/telecom/Call;)V

    return-void
.end method

.method public removeExternalCallListener(Lcom/android/incallui/call/ExternalCallList$ExternalCallListener;)V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/android/incallui/call/ExternalCallList;->mExternalCallListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ExternalCallList.removeExternalCallListener"

    const-string v2, "attempt to remove unregistered listener."

    .line 79
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/call/ExternalCallList;->mExternalCallListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
