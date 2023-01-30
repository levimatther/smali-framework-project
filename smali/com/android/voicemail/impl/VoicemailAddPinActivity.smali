.class public Lcom/android/voicemail/impl/VoicemailAddPinActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "VoicemailAddPinActivity.java"

# interfaces
.implements Landroid/widget/MenuBar$MenuBarListener;
.implements Landroid/text/TextWatcher;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private entryTx:Landroid/widget/TextView;

.field private errorMsg:I

.field private isShowErrorTip:Z

.field private menuBar:Landroid/widget/MenuBar;

.field private pinETX:Landroid/widget/TextView;

.field private tipsTx:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 24
    const-class v0, Lcom/android/voicemail/impl/VoicemailAddPinActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/impl/VoicemailAddPinActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/android/voicemail/impl/VoicemailAddPinActivity;->isShowErrorTip:Z

    return-void
.end method

.method private checkPin(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "phone"

    .line 101
    invoke-virtual {p0, v0}, Lcom/android/voicemail/impl/VoicemailAddPinActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 102
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    .line 104
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0}, Lcom/tcl/netlibrary/config/VVMConfig;->getInstance(Landroid/content/Context;)Lcom/tcl/netlibrary/config/VVMConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tcl/netlibrary/config/VVMConfig;->getMinimumPinLength()I

    move-result v3

    if-ge v1, v3, :cond_0

    const p1, 0x7f11033f

    .line 105
    iput p1, p0, Lcom/android/voicemail/impl/VoicemailAddPinActivity;->errorMsg:I

    goto :goto_0

    .line 107
    :cond_0
    invoke-static {p1}, Lcom/android/voicemail/impl/utils/StringUtils;->isConsecutivePin(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const p1, 0x7f11033a

    .line 108
    iput p1, p0, Lcom/android/voicemail/impl/VoicemailAddPinActivity;->errorMsg:I

    goto :goto_0

    .line 110
    :cond_1
    invoke-static {p1}, Lcom/android/voicemail/impl/utils/StringUtils;->isRepeatPin(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const p1, 0x7f11033e

    .line 111
    iput p1, p0, Lcom/android/voicemail/impl/VoicemailAddPinActivity;->errorMsg:I

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 113
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x4

    if-le v1, v3, :cond_3

    .line 114
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f11033d

    .line 116
    iput p1, p0, Lcom/android/voicemail/impl/VoicemailAddPinActivity;->errorMsg:I

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    const p1, 0x7f11033c

    .line 119
    iput p1, p0, Lcom/android/voicemail/impl/VoicemailAddPinActivity;->errorMsg:I

    :goto_0
    return v2
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 137
    iget-object p1, p0, Lcom/android/voicemail/impl/VoicemailAddPinActivity;->TAG:Ljava/lang/String;

    const-string v0, "afterTextChanged"

    invoke-static {p1, v0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-boolean p1, p0, Lcom/android/voicemail/impl/VoicemailAddPinActivity;->isShowErrorTip:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 139
    iput-boolean p1, p0, Lcom/android/voicemail/impl/VoicemailAddPinActivity;->isShowErrorTip:Z

    .line 140
    iget-object v0, p0, Lcom/android/voicemail/impl/VoicemailAddPinActivity;->tipsTx:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/android/voicemail/impl/VoicemailAddPinActivity;->entryTx:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onClickCSK()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClickLSK()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClickRSK()Z
    .locals 4

    .line 59
    iget-object v0, p0, Lcom/android/voicemail/impl/VoicemailAddPinActivity;->TAG:Ljava/lang/String;

    const-string v1, "onClickRSK"

    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/android/voicemail/impl/VoicemailAddPinActivity;->pinETX:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-direct {p0, v0}, Lcom/android/voicemail/impl/VoicemailAddPinActivity;->checkPin(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 62
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "new_pin"

    .line 63
    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    invoke-virtual {p0, v1}, Lcom/android/voicemail/impl/VoicemailAddPinActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/android/voicemail/impl/VoicemailAddPinActivity;->isShowErrorTip:Z

    .line 67
    iget-object v0, p0, Lcom/android/voicemail/impl/VoicemailAddPinActivity;->entryTx:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/android/voicemail/impl/VoicemailAddPinActivity;->tipsTx:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/android/voicemail/impl/VoicemailAddPinActivity;->tipsTx:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/voicemail/impl/VoicemailAddPinActivity;->errorMsg:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return v2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 33
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/android/voicemail/impl/VoicemailAddPinActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0xe

    .line 35
    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    const p1, 0x7f0c00b4

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/voicemail/impl/VoicemailAddPinActivity;->setContentView(I)V

    const p1, 0x7f090244

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/voicemail/impl/VoicemailAddPinActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/voicemail/impl/VoicemailAddPinActivity;->pinETX:Landroid/widget/TextView;

    .line 38
    invoke-virtual {p0}, Lcom/android/voicemail/impl/VoicemailAddPinActivity;->getMenuBar()Landroid/widget/MenuBar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/voicemail/impl/VoicemailAddPinActivity;->menuBar:Landroid/widget/MenuBar;

    const v0, 0x7f110525

    const v1, 0x7f110303

    const/4 v2, 0x0

    .line 39
    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 40
    iget-object p1, p0, Lcom/android/voicemail/impl/VoicemailAddPinActivity;->menuBar:Landroid/widget/MenuBar;

    invoke-virtual {p1, p0}, Landroid/widget/MenuBar;->setMenuBarListener(Landroid/widget/MenuBar$MenuBarListener;)V

    const p1, 0x7f090241

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/voicemail/impl/VoicemailAddPinActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/voicemail/impl/VoicemailAddPinActivity;->entryTx:Landroid/widget/TextView;

    const p1, 0x7f090242

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/voicemail/impl/VoicemailAddPinActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/voicemail/impl/VoicemailAddPinActivity;->tipsTx:Landroid/widget/TextView;

    .line 44
    iget-object p1, p0, Lcom/android/voicemail/impl/VoicemailAddPinActivity;->pinETX:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/android/voicemail/impl/VoicemailAddPinActivity;->finish()V

    .line 150
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/voicemail/impl/VoicemailAddPinActivity;->menuBar:Landroid/widget/MenuBar;

    invoke-virtual {v0, p1, p2}, Landroid/widget/MenuBar;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onOptionMenuClick(I)V
    .locals 0

    return-void
.end method

.method public onOptionMenuDismiss()V
    .locals 0

    return-void
.end method

.method public onOptionMenuShow()V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
