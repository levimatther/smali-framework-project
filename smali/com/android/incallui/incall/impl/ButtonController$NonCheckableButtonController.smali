.class public abstract Lcom/android/incallui/incall/impl/ButtonController$NonCheckableButtonController;
.super Ljava/lang/Object;
.source "ButtonController.java"

# interfaces
.implements Lcom/android/incallui/incall/impl/ButtonController;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/incall/impl/ButtonController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "NonCheckableButtonController"
.end annotation


# instance fields
.field protected button:Lcom/android/incallui/incall/impl/CheckableLabeledButton;

.field protected final buttonId:I

.field protected final contentDescription:I

.field protected final delegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

.field protected isAllowed:Z

.field protected isEnabled:Z


# direct methods
.method protected constructor <init>(Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;II)V
    .locals 0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-object p1, p0, Lcom/android/incallui/incall/impl/ButtonController$NonCheckableButtonController;->delegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    .line 204
    iput p2, p0, Lcom/android/incallui/incall/impl/ButtonController$NonCheckableButtonController;->buttonId:I

    .line 205
    iput p3, p0, Lcom/android/incallui/incall/impl/ButtonController$NonCheckableButtonController;->contentDescription:I

    return-void
.end method


# virtual methods
.method public getInCallButtonId()I
    .locals 1

    .line 242
    iget v0, p0, Lcom/android/incallui/incall/impl/ButtonController$NonCheckableButtonController;->buttonId:I

    return v0
.end method

.method public isAllowed()Z
    .locals 1

    .line 223
    iget-boolean v0, p0, Lcom/android/incallui/incall/impl/ButtonController$NonCheckableButtonController;->isAllowed:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 210
    iget-boolean v0, p0, Lcom/android/incallui/incall/impl/ButtonController$NonCheckableButtonController;->isEnabled:Z

    return v0
.end method

.method public setAllowed(Z)V
    .locals 1

    .line 228
    iput-boolean p1, p0, Lcom/android/incallui/incall/impl/ButtonController$NonCheckableButtonController;->isAllowed:Z

    .line 229
    iget-object v0, p0, Lcom/android/incallui/incall/impl/ButtonController$NonCheckableButtonController;->button:Lcom/android/incallui/incall/impl/CheckableLabeledButton;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 230
    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setButton(Lcom/android/incallui/incall/impl/CheckableLabeledButton;)V
    .locals 3

    .line 248
    iget-object v0, p0, Lcom/android/incallui/incall/impl/ButtonController$NonCheckableButtonController;->button:Lcom/android/incallui/incall/impl/CheckableLabeledButton;

    invoke-static {v0}, Lcom/android/incallui/incall/impl/ButtonController$Controllers;->access$000(Lcom/android/incallui/incall/impl/CheckableLabeledButton;)V

    .line 250
    iput-object p1, p0, Lcom/android/incallui/incall/impl/ButtonController$NonCheckableButtonController;->button:Lcom/android/incallui/incall/impl/CheckableLabeledButton;

    if-eqz p1, :cond_1

    .line 252
    iget-boolean v0, p0, Lcom/android/incallui/incall/impl/ButtonController$NonCheckableButtonController;->isEnabled:Z

    invoke-virtual {p1, v0}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->setEnabled(Z)V

    .line 253
    iget-boolean v0, p0, Lcom/android/incallui/incall/impl/ButtonController$NonCheckableButtonController;->isAllowed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->setVisibility(I)V

    .line 254
    invoke-virtual {p1, v1}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->setChecked(Z)V

    const/4 v0, 0x0

    .line 255
    invoke-virtual {p1, v0}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->setOnCheckedChangeListener(Lcom/android/incallui/incall/impl/CheckableLabeledButton$OnCheckedChangeListener;)V

    .line 256
    invoke-virtual {p1, p0}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    invoke-virtual {p1}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/android/incallui/incall/impl/ButtonController$NonCheckableButtonController;->contentDescription:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 258
    invoke-virtual {p1, v1}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->setShouldShowMoreIndicator(Z)V

    :cond_1
    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 236
    invoke-static {}, Lcom/android/dialer/common/Assert;->fail()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 215
    iput-boolean p1, p0, Lcom/android/incallui/incall/impl/ButtonController$NonCheckableButtonController;->isEnabled:Z

    .line 216
    iget-object v0, p0, Lcom/android/incallui/incall/impl/ButtonController$NonCheckableButtonController;->button:Lcom/android/incallui/incall/impl/CheckableLabeledButton;

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0, p1}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->setEnabled(Z)V

    :cond_0
    return-void
.end method
