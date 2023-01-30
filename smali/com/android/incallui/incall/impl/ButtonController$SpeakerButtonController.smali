.class public Lcom/android/incallui/incall/impl/ButtonController$SpeakerButtonController;
.super Ljava/lang/Object;
.source "ButtonController.java"

# interfaces
.implements Lcom/android/incallui/incall/impl/ButtonController;
.implements Lcom/android/incallui/incall/impl/CheckableLabeledButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/incall/impl/ButtonController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpeakerButtonController"
.end annotation


# instance fields
.field private button:Lcom/android/incallui/incall/impl/CheckableLabeledButton;

.field private checkable:Z

.field private checkedContentDescription:Ljava/lang/CharSequence;

.field private contentDescription:Ljava/lang/CharSequence;

.field private final delegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

.field private icon:I

.field private isAllowed:Z

.field private isChecked:Z

.field private isEnabled:Z

.field private label:I

.field private uncheckedContentDescription:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;)V
    .locals 1

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f1102aa

    .line 317
    iput v0, p0, Lcom/android/incallui/incall/impl/ButtonController$SpeakerButtonController;->label:I

    const v0, 0x7f0801ff

    .line 318
    iput v0, p0, Lcom/android/incallui/incall/impl/ButtonController$SpeakerButtonController;->icon:I

    .line 325
    iput-object p1, p0, Lcom/android/incallui/incall/impl/ButtonController$SpeakerButtonController;->delegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    return-void
.end method


# virtual methods
.method public getInCallButtonId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAllowed()Z
    .locals 1

    .line 343
    iget-boolean v0, p0, Lcom/android/incallui/incall/impl/ButtonController$SpeakerButtonController;->isAllowed:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 330
    iget-boolean v0, p0, Lcom/android/incallui/incall/impl/ButtonController$SpeakerButtonController;->isEnabled:Z

    return v0
.end method

.method public onCheckedChanged(Lcom/android/incallui/incall/impl/CheckableLabeledButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 412
    iget-object p2, p0, Lcom/android/incallui/incall/impl/ButtonController$SpeakerButtonController;->checkedContentDescription:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/incallui/incall/impl/ButtonController$SpeakerButtonController;->uncheckedContentDescription:Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 414
    iget-object p1, p0, Lcom/android/incallui/incall/impl/ButtonController$SpeakerButtonController;->delegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    invoke-interface {p1}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->toggleSpeakerphone()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 407
    iget-object p1, p0, Lcom/android/incallui/incall/impl/ButtonController$SpeakerButtonController;->delegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    invoke-interface {p1}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->showAudioRouteSelector()V

    return-void
.end method

.method public setAllowed(Z)V
    .locals 2

    .line 348
    iput-boolean p1, p0, Lcom/android/incallui/incall/impl/ButtonController$SpeakerButtonController;->isAllowed:Z

    .line 349
    iget-object v0, p0, Lcom/android/incallui/incall/impl/ButtonController$SpeakerButtonController;->button:Lcom/android/incallui/incall/impl/CheckableLabeledButton;

    if-eqz v0, :cond_1

    .line 350
    iget-boolean v1, p0, Lcom/android/incallui/incall/impl/ButtonController$SpeakerButtonController;->isEnabled:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public setAudioState(Landroid/telecom/CallAudioState;)V
    .locals 4

    .line 385
    new-instance v0, Lcom/android/incallui/speakerbuttonlogic/SpeakerButtonInfo;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/android/incallui/speakerbuttonlogic/SpeakerButtonInfo;-><init>(Landroid/telecom/CallAudioState;I)V

    .line 387
    iget-boolean p1, v0, Lcom/android/incallui/speakerbuttonlogic/SpeakerButtonInfo;->checkable:Z

    iput-boolean p1, p0, Lcom/android/incallui/incall/impl/ButtonController$SpeakerButtonController;->checkable:Z

    .line 388
    iget-boolean p1, v0, Lcom/android/incallui/speakerbuttonlogic/SpeakerButtonInfo;->isChecked:Z

    iput-boolean p1, p0, Lcom/android/incallui/incall/impl/ButtonController$SpeakerButtonController;->isChecked:Z

    .line 389
    iget p1, v0, Lcom/android/incallui/speakerbuttonlogic/SpeakerButtonInfo;->label:I

    iput p1, p0, Lcom/android/incallui/incall/impl/ButtonController$SpeakerButtonController;->label:I

    .line 390
    iget p1, v0, Lcom/android/incallui/speakerbuttonlogic/SpeakerButtonInfo;->icon:I

    iput p1, p0, Lcom/android/incallui/incall/impl/ButtonController$SpeakerButtonController;->icon:I

    .line 391
    iget p1, v0, Lcom/android/incallui/speakerbuttonlogic/SpeakerButtonInfo;->contentDescription:I

    .line 393
    iget-object v0, p0, Lcom/android/incallui/incall/impl/ButtonController$SpeakerButtonController;->delegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    invoke-interface {v0}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/incall/impl/ButtonController$SpeakerButtonController;->contentDescription:Ljava/lang/CharSequence;

    new-array v0, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    .line 394
    iget-object p1, p0, Lcom/android/incallui/incall/impl/ButtonController$SpeakerButtonController;->delegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    .line 397
    invoke-interface {p1}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->getContext()Landroid/content/Context;

    move-result-object p1

    const v3, 0x7f1102b2

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v0, v3

    .line 395
    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/incall/impl/ButtonController$SpeakerButtonController;->checkedContentDescription:Ljava/lang/CharSequence;

    new-array p1, v1, [Ljava/lang/CharSequence;

    .line 398
    iget-object v0, p0, Lcom/android/incallui/incall/impl/ButtonController$SpeakerButtonController;->contentDescription:Ljava/lang/CharSequence;

    aput-object v0, p1, v2

    iget-object v0, p0, Lcom/android/incallui/incall/impl/ButtonController$SpeakerButtonController;->delegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    .line 401
    invoke-interface {v0}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1102b1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, p1, v3

    .line 399
    invoke-static {p1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/incall/impl/ButtonController$SpeakerButtonController;->uncheckedContentDescription:Ljava/lang/CharSequence;

    .line 402
    iget-object p1, p0, Lcom/android/incallui/incall/impl/ButtonController$SpeakerButtonController;->button:Lcom/android/incallui/incall/impl/CheckableLabeledButton;

    invoke-virtual {p0, p1}, Lcom/android/incallui/incall/impl/ButtonController$SpeakerButtonController;->setButton(Lcom/android/incallui/incall/impl/CheckableLabeledButton;)V

    return-void
.end method

.method public setButton(Lcom/android/incallui/incall/impl/CheckableLabeledButton;)V
    .locals 3

    .line 369
    iput-object p1, p0, Lcom/android/incallui/incall/impl/ButtonController$SpeakerButtonController;->button:Lcom/android/incallui/incall/impl/CheckableLabeledButton;

    if-eqz p1, :cond_4

    .line 371
    iget-boolean v0, p0, Lcom/android/incallui/incall/impl/ButtonController$SpeakerButtonController;->isEnabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/incall/impl/ButtonController$SpeakerButtonController;->isAllowed:Z

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->setEnabled(Z)V

    .line 372
    invoke-virtual {p1, v2}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->setVisibility(I)V

    .line 373
    iget-boolean v0, p0, Lcom/android/incallui/incall/impl/ButtonController$SpeakerButtonController;->isChecked:Z

    invoke-virtual {p1, v0}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->setChecked(Z)V

    .line 374
    iget-boolean v0, p0, Lcom/android/incallui/incall/impl/ButtonController$SpeakerButtonController;->checkable:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    move-object v0, p0

    :goto_1
    invoke-virtual {p1, v0}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    iget-boolean v0, p0, Lcom/android/incallui/incall/impl/ButtonController$SpeakerButtonController;->checkable:Z

    if-eqz v0, :cond_2

    move-object v2, p0

    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->setOnCheckedChangeListener(Lcom/android/incallui/incall/impl/CheckableLabeledButton$OnCheckedChangeListener;)V

    .line 376
    iget v0, p0, Lcom/android/incallui/incall/impl/ButtonController$SpeakerButtonController;->label:I

    invoke-virtual {p1, v0}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->setLabelText(I)V

    .line 377
    iget v0, p0, Lcom/android/incallui/incall/impl/ButtonController$SpeakerButtonController;->icon:I

    invoke-virtual {p1, v0}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->setIconDrawable(I)V

    .line 378
    iget-boolean v0, p0, Lcom/android/incallui/incall/impl/ButtonController$SpeakerButtonController;->isChecked:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/incall/impl/ButtonController$SpeakerButtonController;->checkedContentDescription:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/incall/impl/ButtonController$SpeakerButtonController;->uncheckedContentDescription:Ljava/lang/CharSequence;

    :goto_2
    invoke-virtual {p1, v0}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 380
    iget-boolean v0, p0, Lcom/android/incallui/incall/impl/ButtonController$SpeakerButtonController;->checkable:Z

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->setShouldShowMoreIndicator(Z)V

    :cond_4
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 356
    iput-boolean p1, p0, Lcom/android/incallui/incall/impl/ButtonController$SpeakerButtonController;->isChecked:Z

    .line 357
    iget-object v0, p0, Lcom/android/incallui/incall/impl/ButtonController$SpeakerButtonController;->button:Lcom/android/incallui/incall/impl/CheckableLabeledButton;

    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {v0, p1}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 335
    iput-boolean p1, p0, Lcom/android/incallui/incall/impl/ButtonController$SpeakerButtonController;->isEnabled:Z

    .line 336
    iget-object v0, p0, Lcom/android/incallui/incall/impl/ButtonController$SpeakerButtonController;->button:Lcom/android/incallui/incall/impl/CheckableLabeledButton;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 337
    iget-boolean p1, p0, Lcom/android/incallui/incall/impl/ButtonController$SpeakerButtonController;->isAllowed:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/incallui/incall/impl/CheckableLabeledButton;->setEnabled(Z)V

    :cond_1
    return-void
.end method
