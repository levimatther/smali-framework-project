.class public Lcom/android/incallui/incall/impl/ButtonController$ManageConferenceButtonController;
.super Lcom/android/incallui/incall/impl/ButtonController$SimpleNonCheckableButtonController;
.source "ButtonController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/incall/impl/ButtonController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ManageConferenceButtonController"
.end annotation


# instance fields
.field private final inCallScreenDelegate:Lcom/android/incallui/incall/protocol/InCallScreenDelegate;


# direct methods
.method public constructor <init>(Lcom/android/incallui/incall/protocol/InCallScreenDelegate;)V
    .locals 6

    const/4 v1, 0x0

    const/16 v2, 0xc

    const v3, 0x7f110017

    const v4, 0x7f1102a7

    const v5, 0x7f0801c8

    move-object v0, p0

    .line 531
    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/incall/impl/ButtonController$SimpleNonCheckableButtonController;-><init>(Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;IIII)V

    .line 537
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    iput-object p1, p0, Lcom/android/incallui/incall/impl/ButtonController$ManageConferenceButtonController;->inCallScreenDelegate:Lcom/android/incallui/incall/protocol/InCallScreenDelegate;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 543
    iget-object p1, p0, Lcom/android/incallui/incall/impl/ButtonController$ManageConferenceButtonController;->inCallScreenDelegate:Lcom/android/incallui/incall/protocol/InCallScreenDelegate;

    invoke-interface {p1}, Lcom/android/incallui/incall/protocol/InCallScreenDelegate;->onManageConferenceClicked()V

    return-void
.end method
