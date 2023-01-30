.class public Lcom/android/incallui/SessionModificationCauseNotifier;
.super Ljava/lang/Object;
.source "SessionModificationCauseNotifier.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallDetailsListener;


# static fields
.field private static final CAUSE_CODE_UNSPECIFIED:I = 0x0

.field private static final SESSION_MODIFICATION_CAUSE_EXTRA_KEY:Ljava/lang/String; = "SessionModificationCause"

.field private static sSessionModificationCauseNotifier:Lcom/android/incallui/SessionModificationCauseNotifier;


# instance fields
.field private final mSessionModificationCauseListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/incallui/InCallSessionModificationCauseListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/SessionModificationCauseNotifier;->mSessionModificationCauseListeners:Ljava/util/List;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/SessionModificationCauseNotifier;
    .locals 2

    const-class v0, Lcom/android/incallui/SessionModificationCauseNotifier;

    monitor-enter v0

    .line 55
    :try_start_0
    sget-object v1, Lcom/android/incallui/SessionModificationCauseNotifier;->sSessionModificationCauseNotifier:Lcom/android/incallui/SessionModificationCauseNotifier;

    if-nez v1, :cond_0

    .line 56
    new-instance v1, Lcom/android/incallui/SessionModificationCauseNotifier;

    invoke-direct {v1}, Lcom/android/incallui/SessionModificationCauseNotifier;-><init>()V

    sput-object v1, Lcom/android/incallui/SessionModificationCauseNotifier;->sSessionModificationCauseNotifier:Lcom/android/incallui/SessionModificationCauseNotifier;

    .line 58
    :cond_0
    sget-object v1, Lcom/android/incallui/SessionModificationCauseNotifier;->sSessionModificationCauseNotifier:Lcom/android/incallui/SessionModificationCauseNotifier;
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
.method public addListener(Lcom/android/incallui/InCallSessionModificationCauseListener;)V
    .locals 1

    .line 66
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lcom/android/incallui/SessionModificationCauseNotifier;->mSessionModificationCauseListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onDetailsChanged(Lcom/android/incallui/call/DialerCall;Landroid/telecom/Call$Details;)V
    .locals 2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDetailsChanged: - call: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "details: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 97
    invoke-virtual {p2}, Landroid/telecom/Call$Details;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const-string v1, "SessionModificationCause"

    .line 98
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :cond_1
    if-eqz v0, :cond_2

    .line 103
    iget-object p2, p0, Lcom/android/incallui/SessionModificationCauseNotifier;->mSessionModificationCauseListeners:Ljava/util/List;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSessionModificationCauseChanged: - call: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "sessionModificationCause: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iget-object p2, p0, Lcom/android/incallui/SessionModificationCauseNotifier;->mSessionModificationCauseListeners:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallSessionModificationCauseListener;

    .line 108
    invoke-interface {v1, p1, v0}, Lcom/android/incallui/InCallSessionModificationCauseListener;->onSessionModificationCauseChanged(Lcom/android/incallui/call/DialerCall;I)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public removeListener(Lcom/android/incallui/InCallSessionModificationCauseListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/incallui/SessionModificationCauseNotifier;->mSessionModificationCauseListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p1, "Can\'t remove null listener"

    .line 79
    invoke-static {p0, p1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
