.class public Lcom/android/dialer/lightbringer/stub/LightbringerStub;
.super Ljava/lang/Object;
.source "LightbringerStub.java"

# interfaces
.implements Lcom/android/dialer/lightbringer/Lightbringer;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 61
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    .line 62
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-static {p2}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhoneAccountComponentName()Landroid/content/ComponentName;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isReachable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 45
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    .line 46
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return p1
.end method

.method public registerListener(Lcom/android/dialer/lightbringer/LightbringerListener;)V
    .locals 0

    .line 77
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    .line 78
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public requestUpgrade(Landroid/telecom/Call;)V
    .locals 0

    .line 70
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    .line 71
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public supportsUpgrade(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 53
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    .line 54
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return p1
.end method

.method public unregisterListener(Lcom/android/dialer/lightbringer/LightbringerListener;)V
    .locals 0

    .line 84
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    .line 85
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
