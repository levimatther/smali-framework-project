.class public Lcom/android/voicemail/impl/VoiceMailCompletedAddPinActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "VoiceMailCompletedAddPinActivity.java"

# interfaces
.implements Landroid/widget/MenuBar$MenuBarListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private executor:Ljava/util/concurrent/Executor;

.field private menuBar:Landroid/widget/MenuBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, "VoiceMailCompletedAddPinActivity"

    .line 27
    iput-object v0, p0, Lcom/android/voicemail/impl/VoiceMailCompletedAddPinActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 29
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/impl/VoiceMailCompletedAddPinActivity;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreate$0$VoiceMailCompletedAddPinActivity()V
    .locals 4

    .line 45
    :try_start_0
    invoke-static {}, Lcom/tcl/netlibrary/service/NetService;->getInstance()La/d/a/g/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, La/d/a/g/a;->updateNUTSetting(Z)Lretrofit2/Call;

    move-result-object v0

    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lretrofit2/Response;->code()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 47
    iget-object v1, p0, Lcom/android/voicemail/impl/VoiceMailCompletedAddPinActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close new user tutorial success: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lretrofit2/Response;->code()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/android/voicemail/impl/VoiceMailCompletedAddPinActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close new user tutorial failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lretrofit2/Response;->code()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 52
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onClickCSK()Z
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/android/voicemail/impl/VoiceMailCompletedAddPinActivity;->TAG:Ljava/lang/String;

    const-string v1, "into main page"

    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/voicemail/VVMMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    invoke-virtual {p0, v0}, Lcom/android/voicemail/impl/VoiceMailCompletedAddPinActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    return v0
.end method

.method public onClickLSK()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClickRSK()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 32
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/android/voicemail/impl/VoiceMailCompletedAddPinActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0xe

    .line 34
    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    const p1, 0x7f0c00b1

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/voicemail/impl/VoiceMailCompletedAddPinActivity;->setContentView(I)V

    .line 36
    invoke-virtual {p0}, Lcom/android/voicemail/impl/VoiceMailCompletedAddPinActivity;->getMenuBar()Landroid/widget/MenuBar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/voicemail/impl/VoiceMailCompletedAddPinActivity;->menuBar:Landroid/widget/MenuBar;

    const v0, 0x7f110525

    const v1, 0x7f110550

    const/4 v2, 0x0

    .line 37
    invoke-virtual {p1, v0, v1, v0, v2}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 38
    iget-object p1, p0, Lcom/android/voicemail/impl/VoiceMailCompletedAddPinActivity;->menuBar:Landroid/widget/MenuBar;

    invoke-virtual {p1, p0}, Landroid/widget/MenuBar;->setMenuBarListener(Landroid/widget/MenuBar$MenuBarListener;)V

    .line 40
    invoke-static {p0}, Lcom/tcl/netlibrary/config/VVMConfig;->getInstance(Landroid/content/Context;)Lcom/tcl/netlibrary/config/VVMConfig;

    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lcom/tcl/netlibrary/config/VVMConfig;->isNut()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 43
    iget-object p1, p0, Lcom/android/voicemail/impl/VoiceMailCompletedAddPinActivity;->executor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/voicemail/impl/-$$Lambda$VoiceMailCompletedAddPinActivity$mX3sovzMOV64MYbPyc-fTjFrgyc;

    invoke-direct {v0, p0}, Lcom/android/voicemail/impl/-$$Lambda$VoiceMailCompletedAddPinActivity$mX3sovzMOV64MYbPyc-fTjFrgyc;-><init>(Lcom/android/voicemail/impl/VoiceMailCompletedAddPinActivity;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/android/voicemail/impl/VoiceMailCompletedAddPinActivity;->finish()V

    .line 102
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/android/voicemail/impl/VoiceMailCompletedAddPinActivity;->menuBar:Landroid/widget/MenuBar;

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
