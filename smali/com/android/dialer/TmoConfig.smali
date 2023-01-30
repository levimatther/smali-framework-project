.class public Lcom/android/dialer/TmoConfig;
.super Lcom/android/operatorutils/OperatorConfig;
.source "TmoConfig.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/android/operatorutils/OperatorConfig;-><init>()V

    return-void
.end method


# virtual methods
.method public isDefDialerAnswerShowCallMethod()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isDefDialerNeedIR94VideoAuth()Z
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/android/operatorutils/OperatorConfig;->isDefDialerNeedIR94VideoAuth()Z

    move-result v0

    return v0
.end method

.method public isDefDialerNeedShowInsufficientBandwidthToast()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isDefDialerNeedShowToastFor488()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isDefDialerNeedShowToastWhenDowngrade()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isDefDialerNeedShowVideoQualityIndicator()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isDefDialerTmoMetroVVMBool()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDefDialerUsedNewSpeedFragment()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isDefShowRttEmcNotifyWhenRttStop()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isShowOnewayToTwowayShowAnswerScreen()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public needSprintHiddenMenu()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
