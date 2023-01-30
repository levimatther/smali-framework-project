.class public abstract Lcom/android/incallui/incall/impl/ButtonController$CheckableButtonController;
.super Ljava/lang/Object;
.source "ButtonController.java"

# interfaces
.implements Lcom/android/incallui/incall/impl/ButtonController;
.implements Lcom/android/incallui/incall/impl/CheckableLabeledButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/incall/impl/ButtonController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CheckableButtonController"
.end annotation


# instance fields
.field protected button:Lcom/android/incallui/incall/impl/CheckableLabeledButton;

.field protected final buttonId:I

.field protected final checkedDescription:I

.field protected final delegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

.field protected isAllowed:Z

.field protected isChecked:Z

.field protected isEnabled:Z

.field protected final uncheckedDescription:I


# direct methods
.method protected constructor <init>(Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;III)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iput-object p1, p0, Lcom/android/incallui/incall/impl/ButtonController$CheckableButtonController;->delegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    .line 85
    iput p2, p0, Lcom/android/incallui/incall/impl/ButtonController$CheckableButtonController;->buttonId:I

    .line 86
    iput p3, p0, Lcom/android/incallui/incall/impl/ButtonController$CheckableButtonController;->checkedDescription:I

    .line 87
    iput p4, p0, Lcom/android/incallui/incall/impl/ButtonController$CheckableButtonController;->uncheckedDescription:I

    return-void
.end method


# virtual methods
.method protected abstract doCheckedChanged(Z)V
.end method

.method public getInCallButtonId()I
    .locals 1

    .line 127
    iget v0, p0, Lcom/android/incallui/incall/impl/ButtonController$CheckableButtonController;->buttonId:I

    return v0
.end method

.method public isAllowed()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/android/incallui/incall/impl/ButtonController$CheckableButtonController;->isAllowed:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lcom/android/incallui/incall/impl/ButtonController$CheckableButtonController;->isEnabled:Z

    return v0
.end method

.method public onCheckedChanged(Lcom/android/incallui/incall/impl/CheckableLabeledButton;Z)V
    .locals 2

    .line 150
    iget-object p1, p0, Lcom/android/incallui/incall/impl/ButtonController$CheckableButtonController;->button:Lcom/android/incallui/incall/impl/CheckableLabeledButton;

    .line 151
    invoke-virtual {p1}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p2, :cond_0

    iget v1, p0, Lcom/android/incallui/incall/impl/ButtonController$CheckableButtonController;->checkedDescription:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/incallui/incall/impl/ButtonController$CheckableButtonController;->uncheckedDescription:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 150
    invoke-virtual {p1, v0}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 152
    invoke-virtual {p0, p2}, Lcom/android/incallui/incall/impl/ButtonController$CheckableButtonController;->doCheckedChanged(Z)V

    return-void
.end method

.method public setAllowed(Z)V
    .locals 1

    .line 110
    iput-boolean p1, p0, Lcom/android/incallui/incall/impl/ButtonController$CheckableButtonController;->isAllowed:Z

    .line 111
    iget-object v0, p0, Lcom/android/incallui/incall/impl/ButtonController$CheckableButtonController;->button:Lcom/android/incallui/incall/impl/CheckableLabeledButton;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 112
    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setButton(Lcom/android/incallui/incall/impl/CheckableLabeledButton;)V
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/android/incallui/incall/impl/ButtonController$CheckableButtonController;->button:Lcom/android/incallui/incall/impl/CheckableLabeledButton;

    invoke-static {v0}, Lcom/android/incallui/incall/impl/ButtonController$Controllers;->access$000(Lcom/android/incallui/incall/impl/CheckableLabeledButton;)V

    .line 135
    iput-object p1, p0, Lcom/android/incallui/incall/impl/ButtonController$CheckableButtonController;->button:Lcom/android/incallui/incall/impl/CheckableLabeledButton;

    if-eqz p1, :cond_2

    .line 137
    iget-boolean v0, p0, Lcom/android/incallui/incall/impl/ButtonController$CheckableButtonController;->isEnabled:Z

    invoke-virtual {p1, v0}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->setEnabled(Z)V

    .line 138
    iget-boolean v0, p0, Lcom/android/incallui/incall/impl/ButtonController$CheckableButtonController;->isAllowed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->setVisibility(I)V

    .line 139
    iget-boolean v0, p0, Lcom/android/incallui/incall/impl/ButtonController$CheckableButtonController;->isChecked:Z

    invoke-virtual {p1, v0}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->setChecked(Z)V

    const/4 v0, 0x0

    .line 140
    invoke-virtual {p1, v0}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    invoke-virtual {p1, p0}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->setOnCheckedChangeListener(Lcom/android/incallui/incall/impl/CheckableLabeledButton$OnCheckedChangeListener;)V

    .line 143
    invoke-virtual {p1}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/incallui/incall/impl/ButtonController$CheckableButtonController;->isChecked:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/incallui/incall/impl/ButtonController$CheckableButtonController;->checkedDescription:I

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/android/incallui/incall/impl/ButtonController$CheckableButtonController;->uncheckedDescription:I

    :goto_1
    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 142
    invoke-virtual {p1, v0}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 144
    invoke-virtual {p1, v1}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->setShouldShowMoreIndicator(Z)V

    :cond_2
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 118
    iput-boolean p1, p0, Lcom/android/incallui/incall/impl/ButtonController$CheckableButtonController;->isChecked:Z

    .line 119
    iget-object v0, p0, Lcom/android/incallui/incall/impl/ButtonController$CheckableButtonController;->button:Lcom/android/incallui/incall/impl/CheckableLabeledButton;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0, p1}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 97
    iput-boolean p1, p0, Lcom/android/incallui/incall/impl/ButtonController$CheckableButtonController;->isEnabled:Z

    .line 98
    iget-object v0, p0, Lcom/android/incallui/incall/impl/ButtonController$CheckableButtonController;->button:Lcom/android/incallui/incall/impl/CheckableLabeledButton;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0, p1}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->setEnabled(Z)V

    :cond_0
    return-void
.end method
