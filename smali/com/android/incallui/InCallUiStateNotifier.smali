.class public Lcom/android/incallui/InCallUiStateNotifier;
.super Ljava/lang/Object;
.source "InCallUiStateNotifier.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# static fields
.field private static sInCallUiStateNotifier:Lcom/android/incallui/InCallUiStateNotifier;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mInCallUiStateNotifierListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/incallui/InCallUiStateNotifierListener;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDisplayOn:Z

.field private mIsInBackground:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/InCallUiStateNotifier;->mInCallUiStateNotifierListeners:Ljava/util/List;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/InCallUiStateNotifier;
    .locals 2

    const-class v0, Lcom/android/incallui/InCallUiStateNotifier;

    monitor-enter v0

    .line 88
    :try_start_0
    sget-object v1, Lcom/android/incallui/InCallUiStateNotifier;->sInCallUiStateNotifier:Lcom/android/incallui/InCallUiStateNotifier;

    if-nez v1, :cond_0

    .line 89
    new-instance v1, Lcom/android/incallui/InCallUiStateNotifier;

    invoke-direct {v1}, Lcom/android/incallui/InCallUiStateNotifier;-><init>()V

    sput-object v1, Lcom/android/incallui/InCallUiStateNotifier;->sInCallUiStateNotifier:Lcom/android/incallui/InCallUiStateNotifier;

    .line 91
    :cond_0
    sget-object v1, Lcom/android/incallui/InCallUiStateNotifier;->sInCallUiStateNotifier:Lcom/android/incallui/InCallUiStateNotifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isDisplayOn(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isUiShowing()Z
    .locals 1

    .line 160
    iget-boolean v0, p0, Lcom/android/incallui/InCallUiStateNotifier;->mIsInBackground:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/InCallUiStateNotifier;->mIsDisplayOn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private notifyOnUiShowing(Z)V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/android/incallui/InCallUiStateNotifier;->mInCallUiStateNotifierListeners:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcom/android/incallui/InCallUiStateNotifier;->mInCallUiStateNotifierListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallUiStateNotifierListener;

    .line 138
    invoke-interface {v1, p1}, Lcom/android/incallui/InCallUiStateNotifierListener;->onUiShowing(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/incallui/InCallUiStateNotifierListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 100
    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/InCallUiStateNotifier;->addListener(Lcom/android/incallui/InCallUiStateNotifierListener;Z)V

    return-void
.end method

.method public addListener(Lcom/android/incallui/InCallUiStateNotifierListener;Z)V
    .locals 0

    .line 110
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/android/incallui/InCallUiStateNotifier;->isUiShowing()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/android/incallui/InCallUiStateNotifierListener;->onUiShowing(Z)V

    .line 114
    :cond_0
    iget-object p2, p0, Lcom/android/incallui/InCallUiStateNotifier;->mInCallUiStateNotifierListeners:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 5

    const/4 v0, 0x0

    const-string v1, "InCallUiStateNotifier.onDisplayChanged"

    if-eqz p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, " onDisplayChanged Ignoring..."

    .line 222
    invoke-static {v1, v0, p1}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 226
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/InCallUiStateNotifier;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-nez v2, :cond_1

    return-void

    .line 229
    :cond_1
    invoke-virtual {v2, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getState()I

    move-result v2

    .line 230
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " displayState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " displayId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, v3}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    invoke-direct {p0}, Lcom/android/incallui/InCallUiStateNotifier;->isUiShowing()Z

    move-result p1

    .line 236
    invoke-static {v2}, Lcom/android/incallui/InCallUiStateNotifier;->isDisplayOn(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/incallui/InCallUiStateNotifier;->mIsDisplayOn:Z

    .line 239
    invoke-direct {p0}, Lcom/android/incallui/InCallUiStateNotifier;->isUiShowing()Z

    move-result v2

    .line 241
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " wasShowing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isShowing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v3, v0}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eq p1, v2, :cond_2

    .line 245
    iget-boolean p1, p0, Lcom/android/incallui/InCallUiStateNotifier;->mIsDisplayOn:Z

    invoke-direct {p0, p1}, Lcom/android/incallui/InCallUiStateNotifier;->notifyOnUiShowing(Z)V

    :cond_2
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method

.method public onUiShowing(Z)V
    .locals 5

    .line 181
    invoke-direct {p0}, Lcom/android/incallui/InCallUiStateNotifier;->isUiShowing()Z

    move-result v0

    xor-int/lit8 v1, p1, 0x1

    .line 183
    iput-boolean v1, p0, Lcom/android/incallui/InCallUiStateNotifier;->mIsInBackground:Z

    .line 186
    invoke-direct {p0}, Lcom/android/incallui/InCallUiStateNotifier;->isUiShowing()Z

    move-result v1

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " wasShowing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isShowing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "InCallUiStateNotifier.onUiShowing"

    invoke-static {v4, v2, v3}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eq v0, v1, :cond_0

    .line 192
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallUiStateNotifier;->notifyOnUiShowing(Z)V

    :cond_0
    return-void
.end method

.method public removeListener(Lcom/android/incallui/InCallUiStateNotifierListener;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/incallui/InCallUiStateNotifier;->mInCallUiStateNotifierListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "InCallUiStateNotifier.removeListener"

    const-string v1, " Can\'t remove null listener"

    .line 126
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setUp(Landroid/content/Context;)V
    .locals 2

    .line 70
    iput-object p1, p0, Lcom/android/incallui/InCallUiStateNotifier;->mContext:Landroid/content/Context;

    const-string v0, "display"

    .line 71
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/incallui/InCallUiStateNotifier;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p1, p0, v0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 73
    iget-object p1, p0, Lcom/android/incallui/InCallUiStateNotifier;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p1, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    move-result p1

    .line 73
    invoke-static {p1}, Lcom/android/incallui/InCallUiStateNotifier;->isDisplayOn(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/incallui/InCallUiStateNotifier;->mIsDisplayOn:Z

    .line 75
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsDisplayOn: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/incallui/InCallUiStateNotifier;->mIsDisplayOn:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "InCallUiStateNotifier.setUp"

    invoke-static {v1, p1, v0}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public tearDown()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/android/incallui/InCallUiStateNotifier;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    const/4 v0, 0x0

    .line 148
    iput-object v0, p0, Lcom/android/incallui/InCallUiStateNotifier;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 149
    iput-object v0, p0, Lcom/android/incallui/InCallUiStateNotifier;->mContext:Landroid/content/Context;

    .line 150
    iget-object v0, p0, Lcom/android/incallui/InCallUiStateNotifier;->mInCallUiStateNotifierListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
