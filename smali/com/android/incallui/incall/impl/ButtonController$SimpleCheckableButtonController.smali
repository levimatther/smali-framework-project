.class public abstract Lcom/android/incallui/incall/impl/ButtonController$SimpleCheckableButtonController;
.super Lcom/android/incallui/incall/impl/ButtonController$CheckableButtonController;
.source "ButtonController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/incall/impl/ButtonController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleCheckableButtonController"
.end annotation


# instance fields
.field private final icon:I

.field private final label:I


# direct methods
.method protected constructor <init>(Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;IIIII)V
    .locals 0

    if-nez p3, :cond_0

    move p3, p5

    :cond_0
    if-nez p4, :cond_1

    move p4, p5

    .line 170
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/incallui/incall/impl/ButtonController$CheckableButtonController;-><init>(Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;III)V

    .line 175
    iput p5, p0, Lcom/android/incallui/incall/impl/ButtonController$SimpleCheckableButtonController;->label:I

    .line 176
    iput p6, p0, Lcom/android/incallui/incall/impl/ButtonController$SimpleCheckableButtonController;->icon:I

    return-void
.end method


# virtual methods
.method public setButton(Lcom/android/incallui/incall/impl/CheckableLabeledButton;)V
    .locals 1

    .line 182
    invoke-super {p0, p1}, Lcom/android/incallui/incall/impl/ButtonController$CheckableButtonController;->setButton(Lcom/android/incallui/incall/impl/CheckableLabeledButton;)V

    if-eqz p1, :cond_0

    .line 184
    iget v0, p0, Lcom/android/incallui/incall/impl/ButtonController$SimpleCheckableButtonController;->label:I

    invoke-virtual {p1, v0}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->setLabelText(I)V

    .line 185
    iget v0, p0, Lcom/android/incallui/incall/impl/ButtonController$SimpleCheckableButtonController;->icon:I

    invoke-virtual {p1, v0}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->setIconDrawable(I)V

    :cond_0
    return-void
.end method
