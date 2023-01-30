.class public Lcom/android/incallui/incall/impl/ButtonController$DialpadButtonController;
.super Lcom/android/incallui/incall/impl/ButtonController$SimpleCheckableButtonController;
.source "ButtonController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/incall/impl/ButtonController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialpadButtonController"
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;)V
    .locals 7

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f1102a4

    const v6, 0x7f0801bf

    move-object v0, p0

    move-object v1, p1

    .line 421
    invoke-direct/range {v0 .. v6}, Lcom/android/incallui/incall/impl/ButtonController$SimpleCheckableButtonController;-><init>(Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;IIIII)V

    return-void
.end method


# virtual methods
.method public doCheckedChanged(Z)V
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/android/incallui/incall/impl/ButtonController$DialpadButtonController;->delegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    invoke-interface {v0, p1}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->showDialpadClicked(Z)V

    return-void
.end method
