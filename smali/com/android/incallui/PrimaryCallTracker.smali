.class public Lcom/android/incallui/PrimaryCallTracker;
.super Ljava/lang/Object;
.source "PrimaryCallTracker.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/PrimaryCallTracker$PrimaryCallChangeListener;
    }
.end annotation


# instance fields
.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/incallui/PrimaryCallTracker$PrimaryCallChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPrimaryCall:Lcom/android/incallui/call/DialerCall;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/PrimaryCallTracker;->mListeners:Ljava/util/List;

    return-void
.end method

.method private notifyPrimaryCallChanged()V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/android/incallui/PrimaryCallTracker;->mListeners:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcom/android/incallui/PrimaryCallTracker;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/PrimaryCallTracker$PrimaryCallChangeListener;

    .line 103
    iget-object v2, p0, Lcom/android/incallui/PrimaryCallTracker;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    invoke-interface {v1, v2}, Lcom/android/incallui/PrimaryCallTracker$PrimaryCallChangeListener;->onPrimaryCallChanged(Lcom/android/incallui/call/DialerCall;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/incallui/PrimaryCallTracker$PrimaryCallChangeListener;)V
    .locals 1

    .line 61
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/android/incallui/PrimaryCallTracker;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getPrimaryCall()Lcom/android/incallui/call/DialerCall;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/android/incallui/PrimaryCallTracker;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    return-object v0
.end method

.method public isPrimaryCall(Lcom/android/incallui/call/DialerCall;)Z
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/android/incallui/PrimaryCallTracker;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    .line 57
    sget-object p2, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/incallui/PrimaryCallTracker;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/call/CallList;)V

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/call/CallList;)V
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStateChange: oldState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " newState="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "callList ="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    sget-object p1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, p1, :cond_0

    .line 85
    invoke-virtual {p3}, Lcom/android/incallui/call/CallList;->getIncomingCall()Lcom/android/incallui/call/DialerCall;

    move-result-object p1

    goto :goto_0

    .line 86
    :cond_0
    sget-object p1, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, p1, :cond_1

    .line 87
    invoke-virtual {p3}, Lcom/android/incallui/call/CallList;->getOutgoingCall()Lcom/android/incallui/call/DialerCall;

    move-result-object p1

    goto :goto_0

    .line 88
    :cond_1
    sget-object p1, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, p1, :cond_2

    .line 89
    invoke-virtual {p3}, Lcom/android/incallui/call/CallList;->getPendingOutgoingCall()Lcom/android/incallui/call/DialerCall;

    move-result-object p1

    goto :goto_0

    .line 90
    :cond_2
    sget-object p1, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, p1, :cond_3

    .line 91
    invoke-virtual {p3}, Lcom/android/incallui/call/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/call/DialerCall;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 94
    :goto_0
    iget-object p2, p0, Lcom/android/incallui/PrimaryCallTracker;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 95
    iput-object p1, p0, Lcom/android/incallui/PrimaryCallTracker;->mPrimaryCall:Lcom/android/incallui/call/DialerCall;

    .line 96
    invoke-direct {p0}, Lcom/android/incallui/PrimaryCallTracker;->notifyPrimaryCallChanged()V

    :cond_4
    return-void
.end method

.method public removeListener(Lcom/android/incallui/PrimaryCallTracker$PrimaryCallChangeListener;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/android/incallui/PrimaryCallTracker;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
