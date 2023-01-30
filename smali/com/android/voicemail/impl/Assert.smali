.class public Lcom/android/voicemail/impl/Assert;
.super Ljava/lang/Object;
.source "Assert.java"


# static fields
.field private static sIsMainThreadForTest:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fail()V
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Fail"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static isMainThread()V
    .locals 2

    .line 33
    sget-object v0, Lcom/android/voicemail/impl/Assert;->sIsMainThreadForTest:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/android/voicemail/impl/Assert;->isTrue(Z)V

    return-void

    .line 37
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/voicemail/impl/Assert;->isTrue(Z)V

    return-void
.end method

.method public static isNotMainThread()V
    .locals 2

    .line 41
    sget-object v0, Lcom/android/voicemail/impl/Assert;->sIsMainThreadForTest:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/voicemail/impl/Assert;->isTrue(Z)V

    return-void

    .line 45
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/voicemail/impl/Assert;->isTrue(Z)V

    return-void
.end method

.method public static isTrue(Z)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    .line 28
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Expected condition to be true"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public static setIsMainThreadForTesting(Ljava/lang/Boolean;)V
    .locals 0

    .line 55
    sput-object p0, Lcom/android/voicemail/impl/Assert;->sIsMainThreadForTest:Ljava/lang/Boolean;

    return-void
.end method
