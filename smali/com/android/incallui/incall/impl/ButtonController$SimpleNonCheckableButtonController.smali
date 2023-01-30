.class public abstract Lcom/android/incallui/incall/impl/ButtonController$SimpleNonCheckableButtonController;
.super Lcom/android/incallui/incall/impl/ButtonController$NonCheckableButtonController;
.source "ButtonController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/incall/impl/ButtonController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleNonCheckableButtonController"
.end annotation


# instance fields
.field private final icon:I

.field private final label:I


# direct methods
.method protected constructor <init>(Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;IIII)V
    .locals 0

    if-nez p3, :cond_0

    move p3, p4

    .line 274
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/incallui/incall/impl/ButtonController$NonCheckableButtonController;-><init>(Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;II)V

    .line 275
    iput p4, p0, Lcom/android/incallui/incall/impl/ButtonController$SimpleNonCheckableButtonController;->label:I

    .line 276
    iput p5, p0, Lcom/android/incallui/incall/impl/ButtonController$SimpleNonCheckableButtonController;->icon:I

    return-void
.end method


# virtual methods
.method public setButton(Lcom/android/incallui/incall/impl/CheckableLabeledButton;)V
    .locals 1

    .line 282
    invoke-super {p0, p1}, Lcom/android/incallui/incall/impl/ButtonController$NonCheckableButtonController;->setButton(Lcom/android/incallui/incall/impl/CheckableLabeledButton;)V

    if-eqz p1, :cond_0

    .line 284
    iget v0, p0, Lcom/android/incallui/incall/impl/ButtonController$SimpleNonCheckableButtonController;->label:I

    invoke-virtual {p1, v0}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->setLabelText(I)V

    .line 285
    iget v0, p0, Lcom/android/incallui/incall/impl/ButtonController$SimpleNonCheckableButtonController;->icon:I

    invoke-virtual {p1, v0}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->setIconDrawable(I)V

    :cond_0
    return-void
.end method
