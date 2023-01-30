.class public Lcom/android/incallui/incall/impl/ButtonController$HoldButtonController;
.super Lcom/android/incallui/incall/impl/ButtonController$SimpleCheckableButtonController;
.source "ButtonController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/incall/impl/ButtonController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HoldButtonController"
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;)V
    .locals 7

    const/4 v2, 0x3

    const v3, 0x7f110290

    const v4, 0x7f110285

    const v5, 0x7f1102a6

    const v6, 0x7f0801dc

    move-object v0, p0

    move-object v1, p1

    .line 439
    invoke-direct/range {v0 .. v6}, Lcom/android/incallui/incall/impl/ButtonController$SimpleCheckableButtonController;-><init>(Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;IIIII)V

    return-void
.end method


# virtual methods
.method public doCheckedChanged(Z)V
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/android/incallui/incall/impl/ButtonController$HoldButtonController;->delegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    invoke-interface {v0, p1}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->holdClicked(Z)V

    return-void
.end method
