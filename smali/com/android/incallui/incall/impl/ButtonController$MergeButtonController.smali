.class public Lcom/android/incallui/incall/impl/ButtonController$MergeButtonController;
.super Lcom/android/incallui/incall/impl/ButtonController$SimpleNonCheckableButtonController;
.source "ButtonController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/incall/impl/ButtonController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MergeButtonController"
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;)V
    .locals 6

    const/16 v2, 0x9

    const v3, 0x7f110288

    const v4, 0x7f1102a8

    const v5, 0x7f0801b0

    move-object v0, p0

    move-object v1, p1

    .line 493
    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/incall/impl/ButtonController$SimpleNonCheckableButtonController;-><init>(Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;IIII)V

    .line 499
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 504
    iget-object p1, p0, Lcom/android/incallui/incall/impl/ButtonController$MergeButtonController;->delegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    invoke-interface {p1}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->mergeClicked()V

    return-void
.end method
