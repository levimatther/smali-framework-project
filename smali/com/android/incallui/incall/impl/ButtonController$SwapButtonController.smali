.class public Lcom/android/incallui/incall/impl/ButtonController$SwapButtonController;
.super Lcom/android/incallui/incall/impl/ButtonController$SimpleNonCheckableButtonController;
.source "ButtonController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/incall/impl/ButtonController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SwapButtonController"
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;)V
    .locals 6

    const/4 v2, 0x4

    const v3, 0x7f11028e

    const v4, 0x7f1102ab

    const v5, 0x7f0801f1

    move-object v0, p0

    move-object v1, p1

    .line 475
    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/incall/impl/ButtonController$SimpleNonCheckableButtonController;-><init>(Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;IIII)V

    .line 481
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 486
    iget-object p1, p0, Lcom/android/incallui/incall/impl/ButtonController$SwapButtonController;->delegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    invoke-interface {p1}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->swapClicked()V

    return-void
.end method
