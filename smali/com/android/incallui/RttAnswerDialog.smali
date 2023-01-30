.class public Lcom/android/incallui/RttAnswerDialog;
.super Landroid/app/Dialog;
.source "RttAnswerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/RttAnswerDialog$RttDialogListener;
    }
.end annotation


# instance fields
.field private listener:Lcom/android/incallui/RttAnswerDialog$RttDialogListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private menuBar:Landroid/widget/MenuBar;

.field private rttAnswer:Landroid/widget/TextView;

.field private voiceAnswer:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/incallui/RttAnswerDialog$RttDialogListener;)V
    .locals 1

    const v0, 0x7f1202ce

    .line 35
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 36
    iput-object p2, p0, Lcom/android/incallui/RttAnswerDialog;->listener:Lcom/android/incallui/RttAnswerDialog$RttDialogListener;

    .line 37
    iput-object p1, p0, Lcom/android/incallui/RttAnswerDialog;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 54
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public getCurrentFocus()Landroid/view/View;
    .locals 1

    .line 86
    invoke-super {p0}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/android/incallui/RttAnswerDialog;->listener:Lcom/android/incallui/RttAnswerDialog$RttDialogListener;

    invoke-interface {v0, p1}, Lcom/android/incallui/RttAnswerDialog$RttDialogListener;->onClick(Landroid/view/View;)V

    .line 137
    invoke-virtual {p0}, Lcom/android/incallui/RttAnswerDialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 59
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "RttCallDialog.onCreateDialog"

    const-string v0, ""

    .line 60
    invoke-static {p1, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object p1, p0, Lcom/android/incallui/RttAnswerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/incallui/RttAnswerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isDishInSimpleMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c0088

    goto :goto_0

    :cond_0
    const v0, 0x7f0c0087

    :goto_0
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 64
    invoke-virtual {p0}, Lcom/android/incallui/RttAnswerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 65
    invoke-virtual {p0}, Lcom/android/incallui/RttAnswerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 66
    invoke-virtual {p0}, Lcom/android/incallui/RttAnswerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 67
    invoke-virtual {p0}, Lcom/android/incallui/RttAnswerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 68
    invoke-virtual {p0}, Lcom/android/incallui/RttAnswerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/incallui/RttAnswerDialog;->setContentView(Landroid/view/View;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/incallui/RttAnswerDialog;->getMenuBar()Landroid/widget/MenuBar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/RttAnswerDialog;->menuBar:Landroid/widget/MenuBar;

    const p1, 0x7f09034d

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/incallui/RttAnswerDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/incallui/RttAnswerDialog;->voiceAnswer:Landroid/widget/TextView;

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1. "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/incallui/RttAnswerDialog;->voiceAnswer:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090271

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/incallui/RttAnswerDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/incallui/RttAnswerDialog;->rttAnswer:Landroid/widget/TextView;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2. "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/incallui/RttAnswerDialog;->rttAnswer:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object p1, p0, Lcom/android/incallui/RttAnswerDialog;->voiceAnswer:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object p1, p0, Lcom/android/incallui/RttAnswerDialog;->rttAnswer:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object p1, p0, Lcom/android/incallui/RttAnswerDialog;->voiceAnswer:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 78
    iget-object p1, p0, Lcom/android/incallui/RttAnswerDialog;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/incallui/RttAnswerDialog;->mAudioManager:Landroid/media/AudioManager;

    .line 79
    iget-object p1, p0, Lcom/android/incallui/RttAnswerDialog;->menuBar:Landroid/widget/MenuBar;

    iget-object v0, p0, Lcom/android/incallui/RttAnswerDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isDishInSimpleMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f11000b

    goto :goto_1

    :cond_1
    const v0, 0x7f1102f6

    :goto_1
    invoke-virtual {p1, v2, v0, v2, v1}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x14

    if-ne p1, v2, :cond_1

    .line 92
    iget-object p1, p0, Lcom/android/incallui/RttAnswerDialog;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 93
    iget-object p1, p0, Lcom/android/incallui/RttAnswerDialog;->voiceAnswer:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 94
    iget-object p1, p0, Lcom/android/incallui/RttAnswerDialog;->voiceAnswer:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 95
    iget-object p1, p0, Lcom/android/incallui/RttAnswerDialog;->rttAnswer:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    goto :goto_0

    .line 97
    :cond_0
    iget-object p1, p0, Lcom/android/incallui/RttAnswerDialog;->voiceAnswer:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 98
    iget-object p1, p0, Lcom/android/incallui/RttAnswerDialog;->rttAnswer:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    :goto_0
    return v1

    :cond_1
    const/16 v2, 0x13

    if-ne p1, v2, :cond_3

    .line 103
    iget-object p1, p0, Lcom/android/incallui/RttAnswerDialog;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 104
    iget-object p1, p0, Lcom/android/incallui/RttAnswerDialog;->voiceAnswer:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 105
    iget-object p1, p0, Lcom/android/incallui/RttAnswerDialog;->voiceAnswer:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 106
    iget-object p1, p0, Lcom/android/incallui/RttAnswerDialog;->rttAnswer:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    goto :goto_1

    .line 108
    :cond_2
    iget-object p1, p0, Lcom/android/incallui/RttAnswerDialog;->voiceAnswer:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 109
    iget-object p1, p0, Lcom/android/incallui/RttAnswerDialog;->rttAnswer:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    :goto_1
    return v1

    .line 113
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x8

    if-ne p1, v0, :cond_4

    .line 114
    iget-object p1, p0, Lcom/android/incallui/RttAnswerDialog;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 115
    iget-object p1, p0, Lcom/android/incallui/RttAnswerDialog;->listener:Lcom/android/incallui/RttAnswerDialog$RttDialogListener;

    iget-object p2, p0, Lcom/android/incallui/RttAnswerDialog;->voiceAnswer:Landroid/widget/TextView;

    invoke-interface {p1, p2}, Lcom/android/incallui/RttAnswerDialog$RttDialogListener;->onClick(Landroid/view/View;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/incallui/RttAnswerDialog;->dismiss()V

    return v1

    .line 119
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, 0x9

    if-ne p1, v0, :cond_5

    .line 120
    iget-object p1, p0, Lcom/android/incallui/RttAnswerDialog;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 121
    iget-object p1, p0, Lcom/android/incallui/RttAnswerDialog;->listener:Lcom/android/incallui/RttAnswerDialog$RttDialogListener;

    iget-object p2, p0, Lcom/android/incallui/RttAnswerDialog;->rttAnswer:Landroid/widget/TextView;

    invoke-interface {p1, p2}, Lcom/android/incallui/RttAnswerDialog$RttDialogListener;->onClick(Landroid/view/View;)V

    .line 122
    invoke-virtual {p0}, Lcom/android/incallui/RttAnswerDialog;->dismiss()V

    return v1

    .line 125
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 130
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public show()V
    .locals 3

    .line 42
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    const-string v0, "RttCallDialog"

    const-string v1, "Dialog show"

    .line 43
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-virtual {p0}, Lcom/android/incallui/RttAnswerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x50

    .line 45
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, -0x1

    .line 46
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x2

    .line 47
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 48
    invoke-virtual {p0}, Lcom/android/incallui/RttAnswerDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 49
    invoke-virtual {p0}, Lcom/android/incallui/RttAnswerDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
