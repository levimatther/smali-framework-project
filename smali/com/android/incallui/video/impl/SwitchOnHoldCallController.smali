.class public Lcom/android/incallui/video/impl/SwitchOnHoldCallController;
.super Ljava/lang/Object;
.source "SwitchOnHoldCallController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private inCallScreenDelegate:Lcom/android/incallui/incall/protocol/InCallScreenDelegate;

.field private isEnabled:Z

.field private isVisible:Z

.field private onHoldBanner:Landroid/view/View;

.field private secondaryInfo:Lcom/android/incallui/incall/protocol/SecondaryInfo;

.field private switchOnHoldButton:Landroid/view/View;

.field private videoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;Lcom/android/incallui/incall/protocol/InCallScreenDelegate;Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/android/incallui/video/impl/SwitchOnHoldCallController;->switchOnHoldButton:Landroid/view/View;

    .line 50
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    invoke-static {p2}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/android/incallui/video/impl/SwitchOnHoldCallController;->onHoldBanner:Landroid/view/View;

    .line 52
    invoke-static {p3}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/incall/protocol/InCallScreenDelegate;

    iput-object p1, p0, Lcom/android/incallui/video/impl/SwitchOnHoldCallController;->inCallScreenDelegate:Lcom/android/incallui/incall/protocol/InCallScreenDelegate;

    .line 53
    invoke-static {p4}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    iput-object p1, p0, Lcom/android/incallui/video/impl/SwitchOnHoldCallController;->videoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    return-void
.end method

.method private hasSecondaryInfo()Z
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/incallui/video/impl/SwitchOnHoldCallController;->secondaryInfo:Lcom/android/incallui/incall/protocol/SecondaryInfo;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/incallui/incall/protocol/SecondaryInfo;->shouldShow:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 88
    iget-object p1, p0, Lcom/android/incallui/video/impl/SwitchOnHoldCallController;->inCallScreenDelegate:Lcom/android/incallui/incall/protocol/InCallScreenDelegate;

    invoke-interface {p1}, Lcom/android/incallui/incall/protocol/InCallScreenDelegate;->onSecondaryInfoClicked()V

    .line 89
    iget-object p1, p0, Lcom/android/incallui/video/impl/SwitchOnHoldCallController;->videoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    invoke-interface {p1}, Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;->resetAutoFullscreenTimer()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/android/incallui/video/impl/SwitchOnHoldCallController;->isEnabled:Z

    .line 58
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/SwitchOnHoldCallController;->updateButtonState()V

    return-void
.end method

.method public setOnScreen()V
    .locals 1

    .line 67
    invoke-direct {p0}, Lcom/android/incallui/video/impl/SwitchOnHoldCallController;->hasSecondaryInfo()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/video/impl/SwitchOnHoldCallController;->isVisible:Z

    .line 68
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/SwitchOnHoldCallController;->updateButtonState()V

    return-void
.end method

.method public setSecondaryInfo(Lcom/android/incallui/incall/protocol/SecondaryInfo;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/android/incallui/video/impl/SwitchOnHoldCallController;->secondaryInfo:Lcom/android/incallui/incall/protocol/SecondaryInfo;

    .line 73
    invoke-direct {p0}, Lcom/android/incallui/video/impl/SwitchOnHoldCallController;->hasSecondaryInfo()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/incallui/video/impl/SwitchOnHoldCallController;->isVisible:Z

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/android/incallui/video/impl/SwitchOnHoldCallController;->isVisible:Z

    .line 63
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/SwitchOnHoldCallController;->updateButtonState()V

    return-void
.end method

.method public updateButtonState()V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/android/incallui/video/impl/SwitchOnHoldCallController;->switchOnHoldButton:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/incallui/video/impl/SwitchOnHoldCallController;->isEnabled:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 82
    iget-object v0, p0, Lcom/android/incallui/video/impl/SwitchOnHoldCallController;->switchOnHoldButton:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/incallui/video/impl/SwitchOnHoldCallController;->isVisible:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/android/incallui/video/impl/SwitchOnHoldCallController;->onHoldBanner:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/incallui/video/impl/SwitchOnHoldCallController;->isVisible:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x4

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
