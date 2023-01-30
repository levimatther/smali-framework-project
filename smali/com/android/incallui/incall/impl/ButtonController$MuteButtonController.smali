.class public Lcom/android/incallui/incall/impl/ButtonController$MuteButtonController;
.super Lcom/android/incallui/incall/impl/ButtonController$SimpleCheckableButtonController;
.source "ButtonController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/incall/impl/ButtonController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MuteButtonController"
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;)V
    .locals 7

    const/4 v2, 0x1

    const v3, 0x7f11028a

    const v4, 0x7f110291

    const v5, 0x7f1102a9

    const v6, 0x7f0801d7

    move-object v0, p0

    move-object v1, p1

    .line 293
    invoke-direct/range {v0 .. v6}, Lcom/android/incallui/incall/impl/ButtonController$SimpleCheckableButtonController;-><init>(Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;IIIII)V

    return-void
.end method


# virtual methods
.method public doCheckedChanged(Z)V
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/android/incallui/incall/impl/ButtonController$MuteButtonController;->delegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->muteClicked(ZZ)V

    return-void
.end method
