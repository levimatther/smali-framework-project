.class public Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;
.super Landroid/app/Activity;
.source "GreetingRenameActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/MenuBar$MenuBarListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private btnSave:Landroid/widget/Button;

.field private etRename:Landroid/widget/EditText;

.field private executor:Ljava/util/concurrent/Executor;

.field private greeting:Lcom/android/voicemail/impl/Greeting;

.field private handler:Landroid/os/Handler;

.field private isNewGreeting:Z

.field private loadingDialogUtil:Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;

.field private menuBar:Landroid/widget/MenuBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "GreetingRenameActivity"

    .line 63
    iput-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 67
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;->executor:Ljava/util/concurrent/Executor;

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic lambda$onClick$0()V
    .locals 2

    .line 104
    :try_start_0
    invoke-static {}, Lcom/tcl/netlibrary/service/NetService;->getInstance()La/d/a/g/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, La/d/a/g/a;->updateNUTSetting(Z)Lretrofit2/Call;

    move-result-object v0

    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 106
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
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

.method public synthetic lambda$null$1$GreetingRenameActivity()V
    .locals 2

    const v0, 0x7f1103e7

    .line 184
    invoke-virtual {p0, v0}, Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public synthetic lambda$null$2$GreetingRenameActivity()V
    .locals 2

    const v0, 0x7f1103e7

    .line 190
    invoke-virtual {p0, v0}, Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public synthetic lambda$null$3$GreetingRenameActivity()V
    .locals 2

    const v0, 0x7f1103e7

    .line 195
    invoke-virtual {p0, v0}, Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public synthetic lambda$onClickRSK$4$GreetingRenameActivity()V
    .locals 5

    .line 161
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;->etRename:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;->greeting:Lcom/android/voicemail/impl/Greeting;

    invoke-virtual {v1}, Lcom/android/voicemail/impl/Greeting;->getMediaContent()[B

    move-result-object v1

    if-nez v1, :cond_0

    .line 164
    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;->greeting:Lcom/android/voicemail/impl/Greeting;

    invoke-virtual {v2}, Lcom/android/voicemail/impl/Greeting;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/operatorutils/IOperatorManager;->fetchGreetMediaContent(Landroid/net/Uri;)[B

    move-result-object v1

    goto :goto_0

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;->greeting:Lcom/android/voicemail/impl/Greeting;

    invoke-virtual {v1}, Lcom/android/voicemail/impl/Greeting;->getMediaContent()[B

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    .line 169
    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "<4ek93t7dew6bnkoyk8ap8twu.1610681260537@email.android.com>"

    invoke-virtual {v2, v4, v3, v0, v1}, Lcom/android/operatorutils/IOperatorManager;->uploadGreetingMessage(Ljava/lang/String;ILjava/lang/String;[B)Ljava/lang/String;

    move-result-object v2

    .line 170
    iget-object v3, p0, Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;->greeting:Lcom/android/voicemail/impl/Greeting;

    invoke-virtual {v3}, Lcom/android/voicemail/impl/Greeting;->getSourceData()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_2

    .line 172
    iget-object v4, p0, Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;->greeting:Lcom/android/voicemail/impl/Greeting;

    invoke-virtual {v4, v0}, Lcom/android/voicemail/impl/Greeting;->setGreetName(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;->greeting:Lcom/android/voicemail/impl/Greeting;

    invoke-virtual {v0, v2}, Lcom/android/voicemail/impl/Greeting;->setSourceData(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;->greeting:Lcom/android/voicemail/impl/Greeting;

    invoke-virtual {v0, v1}, Lcom/android/voicemail/impl/Greeting;->setMediaContent([B)V

    .line 175
    invoke-static {p0}, Lcom/android/dialer/voicemail/settings/GreetingListUtil;->getInstance(Landroid/content/Context;)Lcom/android/dialer/voicemail/settings/GreetingListUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;->greeting:Lcom/android/voicemail/impl/Greeting;

    invoke-virtual {v0, v1}, Lcom/android/dialer/voicemail/settings/GreetingListUtil;->updateGreeting(Lcom/android/voicemail/impl/Greeting;)V

    .line 176
    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/operatorutils/IOperatorManager;->deleteObject(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    invoke-static {p0}, Lcom/android/dialer/voicemail/settings/GreetingListUtil;->getInstance(Landroid/content/Context;)Lcom/android/dialer/voicemail/settings/GreetingListUtil;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/dialer/voicemail/settings/GreetingListUtil;->deleteGreeting(Ljava/lang/String;)V

    .line 179
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "objectId"

    .line 180
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 181
    invoke-virtual {p0, v1, v0}, Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_1

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/dialer/voicemail/settings/-$$Lambda$GreetingRenameActivity$NWa6yh8zE_QDfBX92FEWp2VHDps;

    invoke-direct {v1, p0}, Lcom/android/dialer/voicemail/settings/-$$Lambda$GreetingRenameActivity$NWa6yh8zE_QDfBX92FEWp2VHDps;-><init>(Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 187
    :goto_1
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;->finish()V

    goto :goto_2

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/dialer/voicemail/settings/-$$Lambda$GreetingRenameActivity$yJBjaZ8M-oM-E52c-2Li4f5EdDU;

    invoke-direct {v1, p0}, Lcom/android/dialer/voicemail/settings/-$$Lambda$GreetingRenameActivity$yJBjaZ8M-oM-E52c-2Li4f5EdDU;-><init>(Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 194
    :cond_3
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/dialer/voicemail/settings/-$$Lambda$GreetingRenameActivity$dsMVD3-TAOKuT7HlNm7r2hJ_W8M;

    invoke-direct {v1, p0}, Lcom/android/dialer/voicemail/settings/-$$Lambda$GreetingRenameActivity$dsMVD3-TAOKuT7HlNm7r2hJ_W8M;-><init>(Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 198
    :goto_2
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;->loadingDialogUtil:Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;->dismiss()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090078

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;->executor:Ljava/util/concurrent/Executor;

    sget-object v0, Lcom/android/dialer/voicemail/settings/-$$Lambda$GreetingRenameActivity$eHkoJmh8XzdmJsolUIAGQaYYRjU;->INSTANCE:Lcom/android/dialer/voicemail/settings/-$$Lambda$GreetingRenameActivity$eHkoJmh8XzdmJsolUIAGQaYYRjU;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 110
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;->finish()V

    :goto_0
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

    .line 145
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClickRSK:isNewGreeting:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;->isNewGreeting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-boolean v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;->isNewGreeting:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 147
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 148
    iget-object v2, p0, Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;->etRename:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "rename"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, -0x1

    .line 149
    invoke-virtual {p0, v2, v0}, Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;->setResult(ILandroid/content/Intent;)V

    .line 150
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;->finish()V

    return v1

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;->greeting:Lcom/android/voicemail/impl/Greeting;

    if-nez v0, :cond_1

    const v0, 0x7f1103e7

    .line 154
    invoke-virtual {p0, v0}, Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 155
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;->TAG:Ljava/lang/String;

    const-string v2, "greeting is null"

    invoke-static {v0, v2}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;->finish()V

    return v1

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;->loadingDialogUtil:Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;->show()V

    .line 160
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;->executor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/dialer/voicemail/settings/-$$Lambda$GreetingRenameActivity$nA8uOlOihajjue18kveyQdlLTTQ;

    invoke-direct {v2, p0}, Lcom/android/dialer/voicemail/settings/-$$Lambda$GreetingRenameActivity$nA8uOlOihajjue18kveyQdlLTTQ;-><init>(Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0xe

    .line 77
    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    const p1, 0x7f0c0024

    .line 78
    invoke-virtual {p0, p1}, Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;->setContentView(I)V

    .line 79
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "new_greeting"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;->isNewGreeting:Z

    .line 80
    new-instance p1, Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;

    invoke-direct {p1, p0}, Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;->loadingDialogUtil:Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;

    const p1, 0x7f090156

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;->etRename:Landroid/widget/EditText;

    .line 83
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;->getMenuBar()Landroid/widget/MenuBar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;->menuBar:Landroid/widget/MenuBar;

    const v0, 0x7f110525

    const v1, 0x7f110256

    const/4 v2, 0x0

    .line 85
    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 86
    iget-object p1, p0, Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;->menuBar:Landroid/widget/MenuBar;

    invoke-virtual {p1, p0}, Landroid/widget/MenuBar;->setMenuBarListener(Landroid/widget/MenuBar$MenuBarListener;)V

    .line 87
    iget-object p1, p0, Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;->menuBar:Landroid/widget/MenuBar;

    const v0, 0x1020377

    invoke-virtual {p1, v0}, Landroid/widget/MenuBar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;->btnSave:Landroid/widget/Button;

    .line 89
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "greeting"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/voicemail/impl/Greeting;

    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;->greeting:Lcom/android/voicemail/impl/Greeting;

    if-eqz p1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;->etRename:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/android/voicemail/impl/Greeting;->getGreetName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 93
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;->etRename:Landroid/widget/EditText;

    const v0, 0x7f110257

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(I)V

    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;->finish()V

    .line 228
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;->menuBar:Landroid/widget/MenuBar;

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

    .line 122
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;->greeting:Lcom/android/voicemail/impl/Greeting;

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/dialer/voicemail/settings/GreetingRenameActivity;->greeting:Lcom/android/voicemail/impl/Greeting;

    invoke-virtual {p2}, Lcom/android/voicemail/impl/Greeting;->getGreetName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
