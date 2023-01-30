.class public Lcom/android/dialer/telecom/TelecomUtil$TelecomUtilImpl;
.super Ljava/lang/Object;
.source "TelecomUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/telecom/TelecomUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TelecomUtilImpl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 248
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isDefaultDialer(Landroid/content/Context;)Z
    .locals 3

    .line 255
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/android/dialer/telecom/TelecomUtil;->access$000(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage()Ljava/lang/String;

    move-result-object p1

    .line 254
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 257
    invoke-static {v0}, Lcom/android/dialer/telecom/TelecomUtil;->access$102(Z)Z

    goto :goto_0

    .line 259
    :cond_0
    invoke-static {}, Lcom/android/dialer/telecom/TelecomUtil;->access$100()Z

    move-result v1

    if-nez v1, :cond_1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TelecomUtil"

    const-string v2, "Dialer is not currently set to be default dialer"

    .line 261
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 262
    invoke-static {v0}, Lcom/android/dialer/telecom/TelecomUtil;->access$102(Z)Z

    :cond_1
    :goto_0
    return p1
.end method

.method public isInCall(Landroid/content/Context;)Z
    .locals 1

    .line 241
    invoke-static {p1}, Lcom/android/dialer/telecom/TelecomUtil;->hasReadPhoneStatePermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    invoke-static {p1}, Lcom/android/dialer/telecom/TelecomUtil;->access$000(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
