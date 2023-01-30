.class public Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "VoicemailConfirmPinActivity.java"

# interfaces
.implements Landroid/widget/MenuBar$MenuBarListener;
.implements Landroid/text/TextWatcher;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private correctTx:Landroid/widget/TextView;

.field private executor:Ljava/util/concurrent/Executor;

.field private handler:Landroid/os/Handler;

.field private inCorrectTX:Landroid/widget/TextView;

.field private inputText:Landroid/widget/TextView;

.field private isChange:Z

.field private loadingDialogUtil:Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;

.field private mContext:Landroid/content/Context;

.field private menuBar:Landroid/widget/MenuBar;

.field private orginialPin:Ljava/lang/String;

.field private phoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private pinChanger:Lcom/android/voicemail/PinChanger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 32
    const-class v0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 38
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->executor:Ljava/util/concurrent/Executor;

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->isChange:Z

    return-void
.end method

.method private changePin(Ljava/lang/String;)V
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->TAG:Ljava/lang/String;

    const-string v1, "changePin"

    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->loadingDialogUtil:Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;->show()V

    const-string v0, "phone"

    .line 123
    invoke-virtual {p0, v0}, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 124
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 126
    iget-object p1, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->TAG:Ljava/lang/String;

    const-string v0, "phone num is null"

    invoke-static {p1, v0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object p1, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->loadingDialogUtil:Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;

    invoke-virtual {p1}, Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;->dismiss()V

    return-void

    .line 130
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->executor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/voicemail/impl/-$$Lambda$VoicemailConfirmPinActivity$QOqbUUcTTGXzIq9foo9Co_ajWw0;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/voicemail/impl/-$$Lambda$VoicemailConfirmPinActivity$QOqbUUcTTGXzIq9foo9Co_ajWw0;-><init>(Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public synthetic lambda$changePin$5$VoicemailConfirmPinActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute:defaultPin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "newPin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->pinChanger:Lcom/android/voicemail/PinChanger;

    invoke-interface {v0, p1, p2}, Lcom/android/voicemail/PinChanger;->changePin(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 135
    iget-object p2, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->loadingDialogUtil:Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;

    invoke-virtual {p2}, Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;->dismiss()V

    .line 136
    iget-object p2, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 138
    iget-object p1, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->handler:Landroid/os/Handler;

    new-instance p2, Lcom/android/voicemail/impl/-$$Lambda$VoicemailConfirmPinActivity$UNkLpR2-MYyFrZAhmKVYUhIjIKA;

    invoke-direct {p2, p0}, Lcom/android/voicemail/impl/-$$Lambda$VoicemailConfirmPinActivity$UNkLpR2-MYyFrZAhmKVYUhIjIKA;-><init>(Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    .line 144
    iget-object p1, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->handler:Landroid/os/Handler;

    new-instance p2, Lcom/android/voicemail/impl/-$$Lambda$VoicemailConfirmPinActivity$8Ud8zjsLuEl1LKKLmOXLW1IfvfM;

    invoke-direct {p2, p0}, Lcom/android/voicemail/impl/-$$Lambda$VoicemailConfirmPinActivity$8Ud8zjsLuEl1LKKLmOXLW1IfvfM;-><init>(Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    const/4 p2, 0x4

    if-ne p1, p2, :cond_2

    .line 151
    iget-object p1, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->handler:Landroid/os/Handler;

    new-instance p2, Lcom/android/voicemail/impl/-$$Lambda$VoicemailConfirmPinActivity$IDOPmkP2DmgTGeccoseVq4XL16o;

    invoke-direct {p2, p0}, Lcom/android/voicemail/impl/-$$Lambda$VoicemailConfirmPinActivity$IDOPmkP2DmgTGeccoseVq4XL16o;-><init>(Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    const/4 p2, 0x7

    if-ne p1, p2, :cond_3

    .line 159
    iget-object p1, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->handler:Landroid/os/Handler;

    new-instance p2, Lcom/android/voicemail/impl/-$$Lambda$VoicemailConfirmPinActivity$i6BNaUEigDz9crL5lw8K5JafJh8;

    invoke-direct {p2, p0}, Lcom/android/voicemail/impl/-$$Lambda$VoicemailConfirmPinActivity$i6BNaUEigDz9crL5lw8K5JafJh8;-><init>(Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 167
    :cond_3
    iget-object p1, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->handler:Landroid/os/Handler;

    new-instance p2, Lcom/android/voicemail/impl/-$$Lambda$VoicemailConfirmPinActivity$UwBEufgZSj-za06vlZHPraRj8io;

    invoke-direct {p2, p0}, Lcom/android/voicemail/impl/-$$Lambda$VoicemailConfirmPinActivity$UwBEufgZSj-za06vlZHPraRj8io;-><init>(Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public synthetic lambda$null$0$VoicemailConfirmPinActivity()V
    .locals 3

    .line 139
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/voicemail/impl/VoiceMailCompletedAddPinActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    iget-object v1, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 141
    iget-object v0, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->TAG:Ljava/lang/String;

    const-string v1, "show VoiceMailCompletedAddPinActivity"

    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$null$1$VoicemailConfirmPinActivity()V
    .locals 2

    const v0, 0x7f1103a8

    .line 145
    invoke-virtual {p0, v0}, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 146
    iget-object v0, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->inCorrectTX:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->correctTx:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x1

    .line 148
    iput-boolean v0, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->isChange:Z

    return-void
.end method

.method public synthetic lambda$null$2$VoicemailConfirmPinActivity()V
    .locals 2

    const v0, 0x7f1103a6

    .line 152
    invoke-virtual {p0, v0}, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 153
    iget-object v0, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->inCorrectTX:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->correctTx:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x1

    .line 155
    iput-boolean v0, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->isChange:Z

    return-void
.end method

.method public synthetic lambda$null$3$VoicemailConfirmPinActivity()V
    .locals 2

    const v0, 0x7f1103a7

    .line 160
    invoke-virtual {p0, v0}, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 161
    iget-object v0, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->inCorrectTX:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->correctTx:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x1

    .line 163
    iput-boolean v0, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->isChange:Z

    return-void
.end method

.method public synthetic lambda$null$4$VoicemailConfirmPinActivity()V
    .locals 2

    const v0, 0x7f1103a9

    .line 168
    invoke-virtual {p0, v0}, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 169
    iget-object v0, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->inCorrectTX:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->correctTx:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x1

    .line 171
    iput-boolean v0, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->isChange:Z

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

    .line 85
    iget-object v0, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->inputText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClickRSK:pin:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":orginialPin:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->orginialPin:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->orginialPin:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->orginialPin:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->changePin(Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->inCorrectTX:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->correctTx:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->isChange:Z

    :goto_0
    return v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 47
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0xe

    .line 49
    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 50
    iput-object p0, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->mContext:Landroid/content/Context;

    .line 51
    const-class p1, Landroid/telecom/TelecomManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/TelecomManager;

    invoke-virtual {p1}, Landroid/telecom/TelecomManager;->getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->phoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 53
    invoke-static {p0}, Lcom/android/voicemail/VoicemailComponent;->get(Landroid/content/Context;)Lcom/android/voicemail/VoicemailComponent;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Lcom/android/voicemail/VoicemailComponent;->getVoicemailClient()Lcom/android/voicemail/VoicemailClient;

    move-result-object p1

    .line 55
    invoke-virtual {p0}, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->phoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-interface {p1, v0, v1}, Lcom/android/voicemail/VoicemailClient;->createPinChanger(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Lcom/android/voicemail/PinChanger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->pinChanger:Lcom/android/voicemail/PinChanger;

    const p1, 0x7f0c00b3

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->setContentView(I)V

    .line 57
    new-instance p1, Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;

    invoke-direct {p1, p0}, Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->loadingDialogUtil:Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;

    .line 58
    invoke-virtual {p0}, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "new_pin"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->orginialPin:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, ""

    .line 60
    iput-object p1, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->orginialPin:Ljava/lang/String;

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate:orginialPin:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->orginialPin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f09023b

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->inputText:Landroid/widget/TextView;

    .line 64
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->getMenuBar()Landroid/widget/MenuBar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->menuBar:Landroid/widget/MenuBar;

    const v0, 0x7f1102fb

    const/4 v1, 0x0

    const v2, 0x7f110525

    .line 66
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 67
    iget-object p1, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->menuBar:Landroid/widget/MenuBar;

    invoke-virtual {p1, p0}, Landroid/widget/MenuBar;->setMenuBarListener(Landroid/widget/MenuBar$MenuBarListener;)V

    const p1, 0x7f09023d

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->inCorrectTX:Landroid/widget/TextView;

    const p1, 0x7f09023e

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->correctTx:Landroid/widget/TextView;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->finish()V

    .line 201
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->menuBar:Landroid/widget/MenuBar;

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

    .line 184
    iget-boolean p1, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->isChange:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 185
    iput-boolean p1, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->isChange:Z

    .line 186
    iget-object p2, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->inCorrectTX:Landroid/widget/TextView;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    iget-object p2, p0, Lcom/android/voicemail/impl/VoicemailConfirmPinActivity;->correctTx:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method
