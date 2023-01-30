.class public Lcom/android/incallui/call/CallList;
.super Ljava/lang/Object;
.source "CallList.java"

# interfaces
.implements Lcom/android/incallui/call/DialerCallDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/call/CallList$DialerCallListenerImpl;,
        Lcom/android/incallui/call/CallList$Listener;
    }
.end annotation


# static fields
.field private static final DISCONNECTED_CALL_LONG_TIMEOUT_MS:I = 0x1388

.field private static final DISCONNECTED_CALL_MEDIUM_TIMEOUT_MS:I = 0x7d0

.field private static final DISCONNECTED_CALL_SHORT_TIMEOUT_MS:I = 0xc8

.field private static final EVENT_DISCONNECTED_TIMEOUT:I = 0x1

.field private static sInstance:Lcom/android/incallui/call/CallList;


# instance fields
.field public callId:Ljava/lang/String;

.field private final mCallById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/incallui/call/DialerCall;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallByTelecomCall:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/telecom/Call;",
            "Lcom/android/incallui/call/DialerCall;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/incallui/call/CallList$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingDisconnectCalls:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/incallui/call/DialerCall;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Lcom/android/incallui/call/CallList;

    invoke-direct {v0}, Lcom/android/incallui/call/CallList;-><init>()V

    sput-object v0, Lcom/android/incallui/call/CallList;->sInstance:Lcom/android/incallui/call/CallList;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/call/CallList;->mCallById:Ljava/util/Map;

    .line 75
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/call/CallList;->mCallByTelecomCall:Ljava/util/Map;

    .line 80
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 81
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/call/CallList;->mListeners:Ljava/util/Set;

    .line 83
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 84
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/call/CallList;->mPendingDisconnectCalls:Ljava/util/Set;

    .line 86
    new-instance v0, Lcom/android/incallui/call/CallList$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/call/CallList$1;-><init>(Lcom/android/incallui/call/CallList;)V

    iput-object v0, p0, Lcom/android/incallui/call/CallList;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/call/CallList;Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/android/incallui/call/CallList;->finishDisconnectedCall(Lcom/android/incallui/call/DialerCall;)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;)Z
    .locals 0

    .line 63
    invoke-static {p0, p1}, Lcom/android/incallui/call/CallList;->isPotentialEmergencyCallback(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/incallui/call/CallList;Lcom/android/incallui/call/DialerCall;)Z
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/android/incallui/call/CallList;->updateCallInMap(Lcom/android/incallui/call/DialerCall;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/incallui/call/CallList;Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/android/incallui/call/CallList;->notifyListenersOfDisconnect(Lcom/android/incallui/call/DialerCall;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/incallui/call/CallList;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/android/incallui/call/CallList;->notifyGenericListeners()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/incallui/call/CallList;)Ljava/util/Set;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/incallui/call/CallList;->mListeners:Ljava/util/Set;

    return-object p0
.end method

.method private finishDisconnectedCall(Lcom/android/incallui/call/DialerCall;)V
    .locals 1

    .line 709
    iget-object v0, p0, Lcom/android/incallui/call/CallList;->mPendingDisconnectCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/android/incallui/call/CallList;->mPendingDisconnectCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x2

    .line 712
    invoke-virtual {p1, v0}, Lcom/android/incallui/call/DialerCall;->setState(I)V

    .line 713
    invoke-direct {p0, p1}, Lcom/android/incallui/call/CallList;->updateCallInMap(Lcom/android/incallui/call/DialerCall;)Z

    .line 714
    invoke-direct {p0}, Lcom/android/incallui/call/CallList;->notifyGenericListeners()V

    return-void
.end method

.method private getDelayForDisconnect(Lcom/android/incallui/call/DialerCall;)I
    .locals 2

    .line 674
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 678
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    const/16 p1, 0x1388

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x0

    goto :goto_0

    :pswitch_1
    const/16 p1, 0xc8

    goto :goto_0

    :pswitch_2
    const/16 p1, 0x7d0

    :goto_0
    return p1

    .line 675
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance()Lcom/android/incallui/call/CallList;
    .locals 1

    .line 116
    sget-object v0, Lcom/android/incallui/call/CallList;->sInstance:Lcom/android/incallui/call/CallList;

    return-object v0
.end method

.method private isCallDead(Lcom/android/incallui/call/DialerCall;)Z
    .locals 1

    .line 703
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result p1

    const/4 v0, 0x2

    if-eq v0, p1, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private static isPotentialEmergencyCallback(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;)Z
    .locals 2

    .line 238
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->isPotentialEmergencyCallback()Z

    move-result p0

    return p0

    .line 241
    :cond_0
    invoke-static {p0}, Lcom/android/dialer/blocking/FilteredNumbersUtil;->getLastEmergencyCallTimeMillis(Landroid/content/Context;)J

    move-result-wide v0

    .line 242
    invoke-virtual {p1, v0, v1}, Lcom/android/incallui/call/DialerCall;->isInEmergencyCallbackWindow(J)Z

    move-result p0

    return p0
.end method

.method private logSecondIncomingCall(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;)V
    .locals 4

    .line 214
    invoke-virtual {p0}, Lcom/android/incallui/call/CallList;->getFirstCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 217
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    sget-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VIDEO_CALL_WITH_INCOMING_VIDEO_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    goto :goto_0

    .line 221
    :cond_0
    sget-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VIDEO_CALL_WITH_INCOMING_VOICE_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    goto :goto_0

    .line 224
    :cond_1
    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 225
    sget-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VOICE_CALL_WITH_INCOMING_VIDEO_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    goto :goto_0

    .line 227
    :cond_2
    sget-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VOICE_CALL_WITH_INCOMING_VOICE_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    :goto_0
    if-eqz v0, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 230
    :goto_1
    invoke-static {v1}, Lcom/android/dialer/common/Assert;->checkArgument(Z)V

    .line 231
    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    .line 233
    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->getUniqueCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->getTimeAddedMs()J

    move-result-wide v2

    .line 232
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/android/dialer/logging/LoggingBindings;->logCallImpression(Lcom/android/dialer/logging/DialerImpression$Type;Ljava/lang/String;J)V

    :cond_4
    return-void
.end method

.method private notifyGenericListeners()V
    .locals 2

    .line 625
    iget-object v0, p0, Lcom/android/incallui/call/CallList;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/call/CallList$Listener;

    .line 626
    invoke-interface {v1, p0}, Lcom/android/incallui/call/CallList$Listener;->onCallListChange(Lcom/android/incallui/call/CallList;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyListenersOfDisconnect(Lcom/android/incallui/call/DialerCall;)V
    .locals 2

    .line 631
    iget-object v0, p0, Lcom/android/incallui/call/CallList;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/call/CallList$Listener;

    .line 632
    invoke-interface {v1, p1}, Lcom/android/incallui/call/CallList$Listener;->onDisconnect(Lcom/android/incallui/call/DialerCall;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onIncoming(Lcom/android/incallui/call/DialerCall;)V
    .locals 3

    .line 365
    invoke-direct {p0, p1}, Lcom/android/incallui/call/CallList;->updateCallInMap(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "CallList.onIncoming"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/call/CallList;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/call/CallList$Listener;

    .line 370
    invoke-interface {v1, p1}, Lcom/android/incallui/call/CallList$Listener;->onIncomingCall(Lcom/android/incallui/call/DialerCall;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static setCallListInstance(Lcom/android/incallui/call/CallList;)V
    .locals 0

    .line 111
    sput-object p0, Lcom/android/incallui/call/CallList;->sInstance:Lcom/android/incallui/call/CallList;

    return-void
.end method

.method private updateCallInMap(Lcom/android/incallui/call/DialerCall;)Z
    .locals 5

    .line 642
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    .line 647
    iget-object v0, p0, Lcom/android/incallui/call/CallList;->mCallById:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 652
    iget-object v0, p0, Lcom/android/incallui/call/CallList;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 653
    iget-object v2, p0, Lcom/android/incallui/call/CallList;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/android/incallui/call/CallList;->getDelayForDisconnect(Lcom/android/incallui/call/DialerCall;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 654
    iget-object v0, p0, Lcom/android/incallui/call/CallList;->mPendingDisconnectCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 656
    iget-object v0, p0, Lcom/android/incallui/call/CallList;->mCallById:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    iget-object v0, p0, Lcom/android/incallui/call/CallList;->mCallByTelecomCall:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 660
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/incallui/call/CallList;->isCallDead(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 661
    iget-object v0, p0, Lcom/android/incallui/call/CallList;->mCallById:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    iget-object v0, p0, Lcom/android/incallui/call/CallList;->mCallByTelecomCall:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 664
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/call/CallList;->mCallById:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 665
    iget-object v0, p0, Lcom/android/incallui/call/CallList;->mCallById:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    iget-object v0, p0, Lcom/android/incallui/call/CallList;->mCallByTelecomCall:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getTelecomCall()Landroid/telecom/Call;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public addListener(Lcom/android/incallui/call/CallList$Listener;)V
    .locals 1

    .line 375
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    iget-object v0, p0, Lcom/android/incallui/call/CallList;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 380
    invoke-interface {p1, p0}, Lcom/android/incallui/call/CallList$Listener;->onCallListChange(Lcom/android/incallui/call/CallList;)V

    return-void
.end method

.method public clearOnDisconnect()V
    .locals 4

    .line 572
    iget-object v0, p0, Lcom/android/incallui/call/CallList;->mCallById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/call/DialerCall;

    .line 573
    invoke-virtual {v1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    if-eqz v2, :cond_0

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    .line 578
    invoke-virtual {v1, v3}, Lcom/android/incallui/call/DialerCall;->setState(I)V

    .line 579
    new-instance v2, Landroid/telecom/DisconnectCause;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/android/incallui/call/DialerCall;->setDisconnectCause(Landroid/telecom/DisconnectCause;)V

    .line 580
    invoke-direct {p0, v1}, Lcom/android/incallui/call/CallList;->updateCallInMap(Lcom/android/incallui/call/DialerCall;)Z

    goto :goto_0

    .line 583
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/call/CallList;->notifyGenericListeners()V

    return-void
.end method

.method public currentStatus()Z
    .locals 1

    .line 457
    invoke-virtual {p0}, Lcom/android/incallui/call/CallList;->getActiveCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/call/CallList;->getBackgroundCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getActiveCall()Lcom/android/incallui/call/DialerCall;
    .locals 1

    const/4 v0, 0x3

    .line 433
    invoke-virtual {p0, v0}, Lcom/android/incallui/call/CallList;->getFirstCallWithState(I)Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    return-object v0
.end method

.method public getActiveOrBackgroundCall()Lcom/android/incallui/call/DialerCall;
    .locals 1

    .line 465
    invoke-virtual {p0}, Lcom/android/incallui/call/CallList;->getActiveCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    if-nez v0, :cond_0

    .line 467
    invoke-virtual {p0}, Lcom/android/incallui/call/CallList;->getBackgroundCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getAllCalls()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/incallui/call/DialerCall;",
            ">;"
        }
    .end annotation

    .line 517
    iget-object v0, p0, Lcom/android/incallui/call/CallList;->mCallById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundCall()Lcom/android/incallui/call/DialerCall;
    .locals 1

    const/16 v0, 0x8

    .line 441
    invoke-virtual {p0, v0}, Lcom/android/incallui/call/CallList;->getFirstCallWithState(I)Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    return-object v0
.end method

.method public getCallById(Ljava/lang/String;)Lcom/android/incallui/call/DialerCall;
    .locals 1

    .line 536
    iget-object v0, p0, Lcom/android/incallui/call/CallList;->mCallById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/call/DialerCall;

    return-object p1
.end method

.method public getCallWithState(II)Lcom/android/incallui/call/DialerCall;
    .locals 4

    .line 551
    iget-object v0, p0, Lcom/android/incallui/call/CallList;->mCallById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/call/DialerCall;

    .line 552
    invoke-virtual {v2}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v3

    if-ne v3, p1, :cond_0

    if-lt v1, p2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method public getDialerCallFromTelecomCall(Landroid/telecom/Call;)Lcom/android/incallui/call/DialerCall;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/android/incallui/call/CallList;->mCallByTelecomCall:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/call/DialerCall;

    return-object p1
.end method

.method public getDisconnectedCall()Lcom/android/incallui/call/DialerCall;
    .locals 1

    const/16 v0, 0xa

    .line 445
    invoke-virtual {p0, v0}, Lcom/android/incallui/call/CallList;->getFirstCallWithState(I)Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    return-object v0
.end method

.method public getDisconnectingCall()Lcom/android/incallui/call/DialerCall;
    .locals 1

    const/16 v0, 0x9

    .line 449
    invoke-virtual {p0, v0}, Lcom/android/incallui/call/CallList;->getFirstCallWithState(I)Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    return-object v0
.end method

.method public getFirstCall()Lcom/android/incallui/call/DialerCall;
    .locals 1

    .line 483
    invoke-virtual {p0}, Lcom/android/incallui/call/CallList;->getIncomingCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    if-nez v0, :cond_0

    .line 485
    invoke-virtual {p0}, Lcom/android/incallui/call/CallList;->getPendingOutgoingCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 488
    invoke-virtual {p0}, Lcom/android/incallui/call/CallList;->getOutgoingCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 491
    invoke-virtual {p0, v0}, Lcom/android/incallui/call/CallList;->getFirstCallWithState(I)Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    .line 494
    invoke-virtual {p0}, Lcom/android/incallui/call/CallList;->getDisconnectingCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    .line 497
    invoke-virtual {p0}, Lcom/android/incallui/call/CallList;->getDisconnectedCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method public getFirstCallWithState(I)Lcom/android/incallui/call/DialerCall;
    .locals 1

    const/4 v0, 0x0

    .line 541
    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/call/CallList;->getCallWithState(II)Lcom/android/incallui/call/DialerCall;

    move-result-object p1

    return-object p1
.end method

.method public getIncomingCall()Lcom/android/incallui/call/DialerCall;
    .locals 1

    const/4 v0, 0x4

    .line 474
    invoke-virtual {p0, v0}, Lcom/android/incallui/call/CallList;->getFirstCallWithState(I)Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    .line 476
    invoke-virtual {p0, v0}, Lcom/android/incallui/call/CallList;->getFirstCallWithState(I)Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getIncomingOrActive()Lcom/android/incallui/call/DialerCall;
    .locals 1

    .line 395
    invoke-virtual {p0}, Lcom/android/incallui/call/CallList;->getIncomingCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    if-nez v0, :cond_0

    .line 397
    invoke-virtual {p0}, Lcom/android/incallui/call/CallList;->getActiveCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method getLegacyBindings(Landroid/content/Context;)Lcom/android/incallui/call/InCallUiLegacyBindings;
    .locals 1

    .line 321
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 325
    instance-of v0, p1, Lcom/android/incallui/call/InCallUiLegacyBindingsFactory;

    if-eqz v0, :cond_0

    .line 326
    check-cast p1, Lcom/android/incallui/call/InCallUiLegacyBindingsFactory;

    invoke-interface {p1}, Lcom/android/incallui/call/InCallUiLegacyBindingsFactory;->newInCallUiLegacyBindings()Lcom/android/incallui/call/InCallUiLegacyBindings;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 330
    new-instance p1, Lcom/android/incallui/call/InCallUiLegacyBindingsStub;

    invoke-direct {p1}, Lcom/android/incallui/call/InCallUiLegacyBindingsStub;-><init>()V

    :cond_1
    return-object p1
.end method

.method public getOutgoingCall()Lcom/android/incallui/call/DialerCall;
    .locals 1

    const/4 v0, 0x6

    .line 421
    invoke-virtual {p0, v0}, Lcom/android/incallui/call/CallList;->getFirstCallWithState(I)Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x7

    .line 424
    invoke-virtual {p0, v0}, Lcom/android/incallui/call/CallList;->getFirstCallWithState(I)Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const/16 v0, 0xf

    .line 427
    invoke-virtual {p0, v0}, Lcom/android/incallui/call/CallList;->getFirstCallWithState(I)Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getOutgoingOrActive()Lcom/android/incallui/call/DialerCall;
    .locals 1

    .line 403
    invoke-virtual {p0}, Lcom/android/incallui/call/CallList;->getOutgoingCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    if-nez v0, :cond_0

    .line 405
    invoke-virtual {p0}, Lcom/android/incallui/call/CallList;->getActiveCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPendingOutgoingCall()Lcom/android/incallui/call/DialerCall;
    .locals 1

    const/16 v0, 0xd

    .line 416
    invoke-virtual {p0, v0}, Lcom/android/incallui/call/CallList;->getFirstCallWithState(I)Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    return-object v0
.end method

.method public getSecondActiveCall()Lcom/android/incallui/call/DialerCall;
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 437
    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/call/CallList;->getCallWithState(II)Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    return-object v0
.end method

.method public getSecondBackgroundCall()Lcom/android/incallui/call/DialerCall;
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x1

    .line 453
    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/call/CallList;->getCallWithState(II)Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    return-object v0
.end method

.method public getVideoUpgradeRequestCall()Lcom/android/incallui/call/DialerCall;
    .locals 4

    .line 526
    iget-object v0, p0, Lcom/android/incallui/call/CallList;->mCallById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/call/DialerCall;

    .line 527
    invoke-virtual {v1}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/incallui/videotech/VideoTech;->getSessionModificationState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWaitingForAccountCall()Lcom/android/incallui/call/DialerCall;
    .locals 1

    const/16 v0, 0xc

    .line 412
    invoke-virtual {p0, v0}, Lcom/android/incallui/call/CallList;->getFirstCallWithState(I)Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    return-object v0
.end method

.method hasActiveRttCall()Z
    .locals 2

    .line 508
    invoke-virtual {p0}, Lcom/android/incallui/call/CallList;->getAllCalls()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/call/DialerCall;

    .line 509
    invoke-virtual {v1}, Lcom/android/incallui/call/DialerCall;->isActiveRttCall()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hasLiveCall()Z
    .locals 2

    .line 503
    invoke-virtual {p0}, Lcom/android/incallui/call/CallList;->getFirstCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 504
    invoke-virtual {p0}, Lcom/android/incallui/call/CallList;->getDisconnectingCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/call/CallList;->getDisconnectedCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifyCallsOfDeviceRotation(I)V
    .locals 2

    .line 723
    iget-object v0, p0, Lcom/android/incallui/call/CallList;->mCallById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/call/DialerCall;

    .line 724
    invoke-virtual {v1}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/incallui/videotech/VideoTech;->setDeviceOrientation(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCallAdded(Landroid/content/Context;Landroid/telecom/Call;Lcom/android/incallui/latencyreport/LatencyReport;)V
    .locals 7

    const-string v0, "onCallAdded"

    .line 121
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 122
    new-instance v0, Lcom/android/incallui/call/DialerCall;

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/incallui/call/DialerCall;-><init>(Landroid/content/Context;Lcom/android/incallui/call/DialerCallDelegate;Landroid/telecom/Call;Lcom/android/incallui/latencyreport/LatencyReport;Z)V

    .line 124
    invoke-direct {p0, p1, v0}, Lcom/android/incallui/call/CallList;->logSecondIncomingCall(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;)V

    .line 126
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/incallui/call/CallList;->callId:Ljava/lang/String;

    .line 127
    invoke-static {p1}, Lcom/android/dialer/enrichedcall/EnrichedCallComponent;->get(Landroid/content/Context;)Lcom/android/dialer/enrichedcall/EnrichedCallComponent;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/dialer/enrichedcall/EnrichedCallComponent;->getEnrichedCallManager()Lcom/android/dialer/enrichedcall/EnrichedCallManager;

    move-result-object p3

    .line 128
    invoke-interface {p3, v0}, Lcom/android/dialer/enrichedcall/EnrichedCallManager;->registerCapabilitiesListener(Lcom/android/dialer/enrichedcall/EnrichedCallManager$CapabilitiesListener;)V

    .line 129
    invoke-interface {p3, v0}, Lcom/android/dialer/enrichedcall/EnrichedCallManager;->registerStateChangedListener(Lcom/android/dialer/enrichedcall/EnrichedCallManager$StateChangedListener;)V

    .line 131
    new-instance p3, Lcom/android/incallui/call/CallList$DialerCallListenerImpl;

    invoke-direct {p3, p0, v0}, Lcom/android/incallui/call/CallList$DialerCallListenerImpl;-><init>(Lcom/android/incallui/call/CallList;Lcom/android/incallui/call/DialerCall;)V

    .line 132
    invoke-virtual {v0, p3}, Lcom/android/incallui/call/DialerCall;->addListener(Lcom/android/incallui/call/DialerCallListener;)V

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "CallList.onCallAdded"

    invoke-static {v3, v1, v2}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    invoke-static {p1}, Lcom/android/dialer/spam/Spam;->get(Landroid/content/Context;)Lcom/android/dialer/spam/SpamBindings;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/dialer/spam/SpamBindings;->isSpamEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    invoke-static {p2}, Lcom/android/incallui/util/TelecomCallUtil;->getNumber(Landroid/telecom/Call;)Ljava/lang/String;

    move-result-object v1

    .line 136
    invoke-static {p1}, Lcom/android/dialer/spam/Spam;->get(Landroid/content/Context;)Lcom/android/dialer/spam/SpamBindings;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/android/incallui/call/CallList$2;

    invoke-direct {v4, p0, v0, p1, p3}, Lcom/android/incallui/call/CallList$2;-><init>(Lcom/android/incallui/call/CallList;Lcom/android/incallui/call/DialerCall;Landroid/content/Context;Lcom/android/incallui/call/CallList$DialerCallListenerImpl;)V

    .line 137
    invoke-interface {v2, v1, v3, v4}, Lcom/android/dialer/spam/SpamBindings;->checkSpamStatus(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/spam/SpamBindings$Listener;)V

    .line 175
    invoke-virtual {p0, v0, p1, v1, p3}, Lcom/android/incallui/call/CallList;->updateUserMarkedSpamStatus(Lcom/android/incallui/call/DialerCall;Landroid/content/Context;Ljava/lang/String;Lcom/android/incallui/call/CallList$DialerCallListenerImpl;)V

    .line 178
    :cond_0
    new-instance v1, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

    invoke-direct {v1, p1}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;-><init>(Landroid/content/Context;)V

    .line 181
    new-instance v2, Lcom/android/incallui/call/CallList$3;

    invoke-direct {v2, p0, v0, p3}, Lcom/android/incallui/call/CallList$3;-><init>(Lcom/android/incallui/call/CallList;Lcom/android/incallui/call/DialerCall;Lcom/android/incallui/call/CallList$DialerCallListenerImpl;)V

    .line 191
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getNumber()Ljava/lang/String;

    move-result-object v3

    .line 192
    invoke-static {p1}, Lcom/android/dialer/location/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 181
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->isBlockedNumber(Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 195
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_2

    .line 196
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/incallui/call/CallList;->onIncoming(Lcom/android/incallui/call/DialerCall;)V

    .line 198
    :cond_2
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v1

    const/16 v3, 0xa

    if-ne v1, v3, :cond_3

    .line 199
    invoke-virtual {p3}, Lcom/android/incallui/call/CallList$DialerCallListenerImpl;->onDialerCallDisconnect()V

    goto :goto_0

    .line 202
    :cond_3
    invoke-virtual {p3}, Lcom/android/incallui/call/CallList$DialerCallListenerImpl;->onDialerCallUpdate()V

    .line 205
    :goto_0
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result p3

    if-eq p3, v2, :cond_4

    .line 207
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getNumber()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/android/dialer/shortcuts/ShortcutUsageReporter;->onOutgoingCallAdded(Landroid/content/Context;Ljava/lang/String;)V

    .line 209
    :cond_4
    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/android/operatorutils/IOperatorManager;->onCallAdded(Lcom/android/incallui/call/CallList;Landroid/telecom/Call;)V

    .line 210
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onCallRemoved(Landroid/content/Context;Landroid/telecom/Call;)V
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/android/incallui/call/CallList;->mCallByTelecomCall:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 293
    iget-object v0, p0, Lcom/android/incallui/call/CallList;->mCallByTelecomCall:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/incallui/call/DialerCall;

    .line 294
    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->isExternalCall()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/dialer/common/Assert;->checkArgument(Z)V

    .line 296
    invoke-static {p1}, Lcom/android/dialer/enrichedcall/EnrichedCallComponent;->get(Landroid/content/Context;)Lcom/android/dialer/enrichedcall/EnrichedCallComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/enrichedcall/EnrichedCallComponent;->getEnrichedCallManager()Lcom/android/dialer/enrichedcall/EnrichedCallManager;

    move-result-object v0

    .line 297
    invoke-interface {v0, p2}, Lcom/android/dialer/enrichedcall/EnrichedCallManager;->unregisterCapabilitiesListener(Lcom/android/dialer/enrichedcall/EnrichedCallManager$CapabilitiesListener;)V

    .line 298
    invoke-interface {v0, p2}, Lcom/android/dialer/enrichedcall/EnrichedCallManager;->unregisterStateChangedListener(Lcom/android/dialer/enrichedcall/EnrichedCallManager$StateChangedListener;)V

    .line 302
    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->getLogState()Lcom/android/incallui/call/DialerCall$LogState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->getLogState()Lcom/android/incallui/call/DialerCall$LogState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/incallui/call/DialerCall$LogState;->isLogged:Z

    if-nez v0, :cond_0

    .line 303
    invoke-virtual {p0, p1}, Lcom/android/incallui/call/CallList;->getLegacyBindings(Landroid/content/Context;)Lcom/android/incallui/call/InCallUiLegacyBindings;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/android/incallui/call/InCallUiLegacyBindings;->logCall(Lcom/android/incallui/call/DialerCall;)V

    .line 304
    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->getLogState()Lcom/android/incallui/call/DialerCall$LogState;

    move-result-object p1

    iput-boolean v1, p1, Lcom/android/incallui/call/DialerCall$LogState;->isLogged:Z

    .line 307
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/incallui/call/CallList;->updateCallInMap(Lcom/android/incallui/call/DialerCall;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 308
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Removing call not previously disconnected "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "CallList.onCallRemoved"

    .line 308
    invoke-static {v1, p1, v0}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    :cond_1
    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->onRemovedFromCallList()V

    .line 315
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/call/CallList;->hasLiveCall()Z

    move-result p1

    if-nez p1, :cond_3

    .line 316
    invoke-static {}, Lcom/android/incallui/call/DialerCall;->clearRestrictedCount()V

    :cond_3
    return-void
.end method

.method public onErrorDialogDismissed()V
    .locals 2

    .line 591
    iget-object v0, p0, Lcom/android/incallui/call/CallList;->mPendingDisconnectCalls:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 592
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 593
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/call/DialerCall;

    .line 594
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 595
    invoke-direct {p0, v1}, Lcom/android/incallui/call/CallList;->finishDisconnectedCall(Lcom/android/incallui/call/DialerCall;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onInCallUiShown(Z)V
    .locals 2

    .line 729
    iget-object v0, p0, Lcom/android/incallui/call/CallList;->mCallById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/call/DialerCall;

    .line 730
    invoke-virtual {v1}, Lcom/android/incallui/call/DialerCall;->getLatencyReport()Lcom/android/incallui/latencyreport/LatencyReport;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/latencyreport/LatencyReport;->onInCallUiShown(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onInternalCallMadeExternal(Landroid/content/Context;Landroid/telecom/Call;)V
    .locals 2

    .line 343
    iget-object v0, p0, Lcom/android/incallui/call/CallList;->mCallByTelecomCall:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/android/incallui/call/CallList;->mCallByTelecomCall:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/call/DialerCall;

    .line 348
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getLogState()Lcom/android/incallui/call/DialerCall$LogState;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getLogState()Lcom/android/incallui/call/DialerCall$LogState;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/incallui/call/DialerCall$LogState;->isLogged:Z

    if-nez v1, :cond_0

    .line 349
    invoke-virtual {p0, p1}, Lcom/android/incallui/call/CallList;->getLegacyBindings(Landroid/content/Context;)Lcom/android/incallui/call/InCallUiLegacyBindings;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/android/incallui/call/InCallUiLegacyBindings;->logCall(Lcom/android/incallui/call/DialerCall;)V

    .line 350
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getLogState()Lcom/android/incallui/call/DialerCall$LogState;

    move-result-object p1

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/incallui/call/DialerCall$LogState;->isLogged:Z

    .line 357
    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->unregisterCallback()V

    .line 358
    iget-object p1, p0, Lcom/android/incallui/call/CallList;->mCallById:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    iget-object p1, p0, Lcom/android/incallui/call/CallList;->mCallByTelecomCall:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method onUpdateCall(Lcom/android/incallui/call/DialerCall;)V
    .locals 4

    .line 606
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "CallList.onUpdateCall"

    invoke-static {v3, v0, v2}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 607
    iget-object v0, p0, Lcom/android/incallui/call/CallList;->mCallById:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->isExternalCall()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 615
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/incallui/call/CallList;->updateCallInMap(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 616
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v3, p1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public removeListener(Lcom/android/incallui/call/CallList$Listener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 385
    iget-object v0, p0, Lcom/android/incallui/call/CallList;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public updateUserMarkedSpamStatus(Lcom/android/incallui/call/DialerCall;Landroid/content/Context;Ljava/lang/String;Lcom/android/incallui/call/CallList$DialerCallListenerImpl;)V
    .locals 2

    .line 257
    invoke-static {p2}, Lcom/android/dialer/spam/Spam;->get(Landroid/content/Context;)Lcom/android/dialer/spam/SpamBindings;

    move-result-object p4

    new-instance v0, Lcom/android/incallui/call/CallList$4;

    invoke-direct {v0, p0, p1}, Lcom/android/incallui/call/CallList$4;-><init>(Lcom/android/incallui/call/CallList;Lcom/android/incallui/call/DialerCall;)V

    const/4 v1, 0x0

    .line 258
    invoke-interface {p4, p3, v1, v0}, Lcom/android/dialer/spam/SpamBindings;->checkUserMarkedNonSpamStatus(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/spam/SpamBindings$Listener;)V

    .line 268
    invoke-static {p2}, Lcom/android/dialer/spam/Spam;->get(Landroid/content/Context;)Lcom/android/dialer/spam/SpamBindings;

    move-result-object p4

    new-instance v0, Lcom/android/incallui/call/CallList$5;

    invoke-direct {v0, p0, p1}, Lcom/android/incallui/call/CallList$5;-><init>(Lcom/android/incallui/call/CallList;Lcom/android/incallui/call/DialerCall;)V

    .line 269
    invoke-interface {p4, p3, v1, v0}, Lcom/android/dialer/spam/SpamBindings;->checkGlobalSpamListStatus(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/spam/SpamBindings$Listener;)V

    .line 279
    invoke-static {p2}, Lcom/android/dialer/spam/Spam;->get(Landroid/content/Context;)Lcom/android/dialer/spam/SpamBindings;

    move-result-object p2

    new-instance p4, Lcom/android/incallui/call/CallList$6;

    invoke-direct {p4, p0, p1}, Lcom/android/incallui/call/CallList$6;-><init>(Lcom/android/incallui/call/CallList;Lcom/android/incallui/call/DialerCall;)V

    .line 280
    invoke-interface {p2, p3, v1, p4}, Lcom/android/dialer/spam/SpamBindings;->checkUserMarkedSpamStatus(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/spam/SpamBindings$Listener;)V

    return-void
.end method
