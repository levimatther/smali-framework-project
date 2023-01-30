.class public final Lcom/android/dialer/compat/CompatUtils;
.super Ljava/lang/Object;
.source "CompatUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasPrioritizedMimeType()Z
    .locals 2

    const/16 v0, 0x17

    .line 24
    invoke-static {v0}, Lcom/android/dialer/compat/SdkVersionOverride;->getSdkVersion(I)I

    move-result v1

    if-lt v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isCallSubjectCompatible()Z
    .locals 2

    const/16 v0, 0x15

    .line 65
    invoke-static {v0}, Lcom/android/dialer/compat/SdkVersionOverride;->getSdkVersion(I)I

    move-result v0

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isMSIMCompatible()Z
    .locals 2

    const/16 v0, 0x15

    .line 34
    invoke-static {v0}, Lcom/android/dialer/compat/SdkVersionOverride;->getSdkVersion(I)I

    move-result v0

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVideoCompatible()Z
    .locals 2

    const/16 v0, 0x15

    .line 45
    invoke-static {v0}, Lcom/android/dialer/compat/SdkVersionOverride;->getSdkVersion(I)I

    move-result v0

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVideoPresenceCompatible()Z
    .locals 2

    const/16 v0, 0x17

    .line 55
    invoke-static {v0}, Lcom/android/dialer/compat/SdkVersionOverride;->getSdkVersion(I)I

    move-result v1

    if-le v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
