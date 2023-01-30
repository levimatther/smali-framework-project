.class public Lcom/android/incallui/RttCallDialog;
.super Landroid/app/Dialog;
.source "RttCallDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/RttCallDialog$RttDialogListener;
    }
.end annotation


# instance fields
.field private listener:Lcom/android/incallui/RttCallDialog$RttDialogListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private menuBar:Landroid/widget/MenuBar;

.field private rttCall:Landroid/widget/TextView;

.field private voiceCall:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f1202ce

    .line 53
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 54
    iput-object p1, p0, Lcom/android/incallui/RttCallDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/incallui/RttCallDialog$RttDialogListener;)V
    .locals 1

    const v0, 0x7f1202ce

    .line 58
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 59
    iput-object p2, p0, Lcom/android/incallui/RttCallDialog;->listener:Lcom/android/incallui/RttCallDialog$RttDialogListener;

    .line 60
    iput-object p1, p0, Lcom/android/incallui/RttCallDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 65
    iput-object p1, p0, Lcom/android/incallui/RttCallDialog;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 82
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public getCurrentFocus()Landroid/view/View;
    .locals 1

    .line 116
    invoke-super {p0}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/android/incallui/RttCallDialog;->listener:Lcom/android/incallui/RttCallDialog$RttDialogListener;

    invoke-interface {v0, p1}, Lcom/android/incallui/RttCallDialog$RttDialogListener;->onClick(Landroid/view/View;)V

    .line 171
    invoke-virtual {p0}, Lcom/android/incallui/RttCallDialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 87
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "RttCallDialog.onCreateDialog"

    const-string v0, ""

    .line 88
    invoke-static {p1, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object p1, p0, Lcom/android/incallui/RttCallDialog;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isDishInSimpleMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c008a

    goto :goto_0

    :cond_0
    const v0, 0x7f0c0089

    :goto_0
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 92
    invoke-virtual {p0}, Lcom/android/incallui/RttCallDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 93
    invoke-virtual {p0}, Lcom/android/incallui/RttCallDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 94
    invoke-virtual {p0}, Lcom/android/incallui/RttCallDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 95
    invoke-virtual {p0}, Lcom/android/incallui/RttCallDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 96
    invoke-virtual {p0}, Lcom/android/incallui/RttCallDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 97
    invoke-virtual {p0, p1}, Lcom/android/incallui/RttCallDialog;->setContentView(Landroid/view/View;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/incallui/RttCallDialog;->getMenuBar()Landroid/widget/MenuBar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/RttCallDialog;->menuBar:Landroid/widget/MenuBar;

    const p1, 0x7f09034e

    .line 99
    invoke-virtual {p0, p1}, Lcom/android/incallui/RttCallDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/incallui/RttCallDialog;->voiceCall:Landroid/widget/TextView;

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1. "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/incallui/RttCallDialog;->voiceCall:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090272

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/incallui/RttCallDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/incallui/RttCallDialog;->rttCall:Landroid/widget/TextView;

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2. "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/incallui/RttCallDialog;->rttCall:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object p1, p0, Lcom/android/incallui/RttCallDialog;->voiceCall:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object p1, p0, Lcom/android/incallui/RttCallDialog;->rttCall:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object p1, p0, Lcom/android/incallui/RttCallDialog;->voiceCall:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 106
    iget-object p1, p0, Lcom/android/incallui/RttCallDialog;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/incallui/RttCallDialog;->mAudioManager:Landroid/media/AudioManager;

    .line 109
    iget-object p1, p0, Lcom/android/incallui/RttCallDialog;->menuBar:Landroid/widget/MenuBar;

    iget-object v0, p0, Lcom/android/incallui/RttCallDialog;->mContext:Landroid/content/Context;

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

    .line 123
    iget-object p1, p0, Lcom/android/incallui/RttCallDialog;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 124
    iget-object p1, p0, Lcom/android/incallui/RttCallDialog;->voiceCall:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 125
    iget-object p1, p0, Lcom/android/incallui/RttCallDialog;->voiceCall:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 126
    iget-object p1, p0, Lcom/android/incallui/RttCallDialog;->rttCall:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    goto :goto_0

    .line 128
    :cond_0
    iget-object p1, p0, Lcom/android/incallui/RttCallDialog;->voiceCall:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 129
    iget-object p1, p0, Lcom/android/incallui/RttCallDialog;->rttCall:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    :goto_0
    return v1

    :cond_1
    const/16 v2, 0x13

    if-ne p1, v2, :cond_3

    .line 134
    iget-object p1, p0, Lcom/android/incallui/RttCallDialog;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 135
    iget-object p1, p0, Lcom/android/incallui/RttCallDialog;->voiceCall:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 136
    iget-object p1, p0, Lcom/android/incallui/RttCallDialog;->voiceCall:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 137
    iget-object p1, p0, Lcom/android/incallui/RttCallDialog;->rttCall:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    goto :goto_1

    .line 139
    :cond_2
    iget-object p1, p0, Lcom/android/incallui/RttCallDialog;->voiceCall:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 140
    iget-object p1, p0, Lcom/android/incallui/RttCallDialog;->rttCall:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    :goto_1
    return v1

    .line 145
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x8

    if-ne p1, v0, :cond_4

    .line 146
    iget-object p1, p0, Lcom/android/incallui/RttCallDialog;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 147
    iget-object p1, p0, Lcom/android/incallui/RttCallDialog;->listener:Lcom/android/incallui/RttCallDialog$RttDialogListener;

    iget-object p2, p0, Lcom/android/incallui/RttCallDialog;->voiceCall:Landroid/widget/TextView;

    invoke-interface {p1, p2}, Lcom/android/incallui/RttCallDialog$RttDialogListener;->onClick(Landroid/view/View;)V

    .line 148
    invoke-virtual {p0}, Lcom/android/incallui/RttCallDialog;->dismiss()V

    return v1

    .line 151
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, 0x9

    if-ne p1, v0, :cond_5

    .line 152
    iget-object p1, p0, Lcom/android/incallui/RttCallDialog;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 153
    iget-object p1, p0, Lcom/android/incallui/RttCallDialog;->listener:Lcom/android/incallui/RttCallDialog$RttDialogListener;

    iget-object p2, p0, Lcom/android/incallui/RttCallDialog;->rttCall:Landroid/widget/TextView;

    invoke-interface {p1, p2}, Lcom/android/incallui/RttCallDialog$RttDialogListener;->onClick(Landroid/view/View;)V

    .line 154
    invoke-virtual {p0}, Lcom/android/incallui/RttCallDialog;->dismiss()V

    return v1

    .line 159
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 164
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public show()V
    .locals 3

    .line 70
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    const-string v0, "RttCallDialog"

    const-string v1, "Dialog show"

    .line 71
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {p0}, Lcom/android/incallui/RttCallDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x50

    .line 73
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, -0x1

    .line 74
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x2

    .line 75
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 76
    invoke-virtual {p0}, Lcom/android/incallui/RttCallDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 77
    invoke-virtual {p0}, Lcom/android/incallui/RttCallDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
