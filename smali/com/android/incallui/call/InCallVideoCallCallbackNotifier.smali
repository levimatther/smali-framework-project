.class public Lcom/android/incallui/call/InCallVideoCallCallbackNotifier;
.super Ljava/lang/Object;
.source "InCallVideoCallCallbackNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/call/InCallVideoCallCallbackNotifier$VideoEventListener;,
        Lcom/android/incallui/call/InCallVideoCallCallbackNotifier$SurfaceChangeListener;
    }
.end annotation


# static fields
.field public static final CALL_SESSION_INVALID_EVENT:I = -0x1

.field private static sInstance:Lcom/android/incallui/call/InCallVideoCallCallbackNotifier;


# instance fields
.field private mCallSessionEvent:I

.field private final mSurfaceChangeListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/incallui/call/InCallVideoCallCallbackNotifier$SurfaceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mVideoEventListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/incallui/call/InCallVideoCallCallbackNotifier$VideoEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lcom/android/incallui/call/InCallVideoCallCallbackNotifier;

    invoke-direct {v0}, Lcom/android/incallui/call/InCallVideoCallCallbackNotifier;-><init>()V

    sput-object v0, Lcom/android/incallui/call/InCallVideoCallCallbackNotifier;->sInstance:Lcom/android/incallui/call/InCallVideoCallCallbackNotifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 37
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/call/InCallVideoCallCallbackNotifier;->mSurfaceChangeListeners:Ljava/util/Set;

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/call/InCallVideoCallCallbackNotifier;->mVideoEventListeners:Ljava/util/Set;

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Lcom/android/incallui/call/InCallVideoCallCallbackNotifier;->mCallSessionEvent:I

    return-void
.end method

.method public static getInstance()Lcom/android/incallui/call/InCallVideoCallCallbackNotifier;
    .locals 1

    .line 54
    sget-object v0, Lcom/android/incallui/call/InCallVideoCallCallbackNotifier;->sInstance:Lcom/android/incallui/call/InCallVideoCallCallbackNotifier;

    return-object v0
.end method


# virtual methods
.method public addSurfaceChangeListener(Lcom/android/incallui/call/InCallVideoCallCallbackNotifier$SurfaceChangeListener;)V
    .locals 1

    .line 72
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/android/incallui/call/InCallVideoCallCallbackNotifier;->mSurfaceChangeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addVideoEventListener(Lcom/android/incallui/call/InCallVideoCallCallbackNotifier$VideoEventListener;)V
    .locals 1

    .line 131
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lcom/android/incallui/call/InCallVideoCallCallbackNotifier;->mVideoEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addVideoEventListener(Lcom/android/incallui/call/InCallVideoCallCallbackNotifier$VideoEventListener;Z)V
    .locals 0

    .line 143
    invoke-virtual {p0, p1}, Lcom/android/incallui/call/InCallVideoCallCallbackNotifier;->addVideoEventListener(Lcom/android/incallui/call/InCallVideoCallCallbackNotifier$VideoEventListener;)V

    if-eqz p2, :cond_0

    .line 146
    iget p1, p0, Lcom/android/incallui/call/InCallVideoCallCallbackNotifier;->mCallSessionEvent:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 147
    invoke-virtual {p0, p1}, Lcom/android/incallui/call/InCallVideoCallCallbackNotifier;->callSessionEvent(I)V

    :cond_0
    return-void
.end method

.method public callSessionEvent(I)V
    .locals 2

    .line 119
    iput p1, p0, Lcom/android/incallui/call/InCallVideoCallCallbackNotifier;->mCallSessionEvent:I

    .line 120
    iget-object p1, p0, Lcom/android/incallui/call/InCallVideoCallCallbackNotifier;->mVideoEventListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/call/InCallVideoCallCallbackNotifier$VideoEventListener;

    .line 121
    iget v1, p0, Lcom/android/incallui/call/InCallVideoCallCallbackNotifier;->mCallSessionEvent:I

    invoke-interface {v0, v1}, Lcom/android/incallui/call/InCallVideoCallCallbackNotifier$VideoEventListener;->onCallSessionEvent(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public cameraDimensionsChanged(Lcom/android/incallui/call/DialerCall;II)V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/android/incallui/call/InCallVideoCallCallbackNotifier;->mSurfaceChangeListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/call/InCallVideoCallCallbackNotifier$SurfaceChangeListener;

    .line 109
    invoke-interface {v1, p1, p2, p3}, Lcom/android/incallui/call/InCallVideoCallCallbackNotifier$SurfaceChangeListener;->onCameraDimensionsChange(Lcom/android/incallui/call/DialerCall;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public peerDimensionsChanged(Lcom/android/incallui/call/DialerCall;II)V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/android/incallui/call/InCallVideoCallCallbackNotifier;->mSurfaceChangeListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/call/InCallVideoCallCallbackNotifier$SurfaceChangeListener;

    .line 96
    invoke-interface {v1, p1, p2, p3}, Lcom/android/incallui/call/InCallVideoCallCallbackNotifier$SurfaceChangeListener;->onUpdatePeerDimensions(Lcom/android/incallui/call/DialerCall;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeSurfaceChangeListener(Lcom/android/incallui/call/InCallVideoCallCallbackNotifier$SurfaceChangeListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/incallui/call/InCallVideoCallCallbackNotifier;->mSurfaceChangeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeVideoEventListener(Lcom/android/incallui/call/InCallVideoCallCallbackNotifier$VideoEventListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/incallui/call/InCallVideoCallCallbackNotifier;->mVideoEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setUp()V
    .locals 0

    return-void
.end method

.method public tearDown()V
    .locals 1

    const/4 v0, -0x1

    .line 61
    iput v0, p0, Lcom/android/incallui/call/InCallVideoCallCallbackNotifier;->mCallSessionEvent:I

    .line 62
    iget-object v0, p0, Lcom/android/incallui/call/InCallVideoCallCallbackNotifier;->mVideoEventListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 63
    iget-object v0, p0, Lcom/android/incallui/call/InCallVideoCallCallbackNotifier;->mSurfaceChangeListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method
