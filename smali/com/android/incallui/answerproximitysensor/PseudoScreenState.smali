.class public Lcom/android/incallui/answerproximitysensor/PseudoScreenState;
.super Ljava/lang/Object;
.source "PseudoScreenState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/answerproximitysensor/PseudoScreenState$StateChangedListener;
    }
.end annotation


# instance fields
.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/incallui/answerproximitysensor/PseudoScreenState$StateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private on:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/answerproximitysensor/PseudoScreenState;->listeners:Ljava/util/Set;

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/android/incallui/answerproximitysensor/PseudoScreenState;->on:Z

    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/incallui/answerproximitysensor/PseudoScreenState$StateChangedListener;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/android/incallui/answerproximitysensor/PseudoScreenState;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isOn()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/android/incallui/answerproximitysensor/PseudoScreenState;->on:Z

    return v0
.end method

.method public removeListener(Lcom/android/incallui/answerproximitysensor/PseudoScreenState$StateChangedListener;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/android/incallui/answerproximitysensor/PseudoScreenState;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setOn(Z)V
    .locals 2

    .line 51
    iget-boolean v0, p0, Lcom/android/incallui/answerproximitysensor/PseudoScreenState;->on:Z

    if-eq v0, p1, :cond_0

    .line 52
    iput-boolean p1, p0, Lcom/android/incallui/answerproximitysensor/PseudoScreenState;->on:Z

    .line 53
    iget-object p1, p0, Lcom/android/incallui/answerproximitysensor/PseudoScreenState;->listeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/answerproximitysensor/PseudoScreenState$StateChangedListener;

    .line 54
    iget-boolean v1, p0, Lcom/android/incallui/answerproximitysensor/PseudoScreenState;->on:Z

    invoke-interface {v0, v1}, Lcom/android/incallui/answerproximitysensor/PseudoScreenState$StateChangedListener;->onPseudoScreenStateChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
