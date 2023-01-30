.class public Lcom/android/incallui/InCallCsRedialHandler;
.super Ljava/lang/Object;
.source "InCallCsRedialHandler.java"

# interfaces
.implements Lcom/android/incallui/call/CallList$Listener;


# static fields
.field private static sInCallCsRedialHandler:Lcom/android/incallui/InCallCsRedialHandler;


# instance fields
.field private mAlert:Landroid/app/AlertDialog;

.field private mCallList:Lcom/android/incallui/call/CallList;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/android/incallui/InCallCsRedialHandler;->mCallList:Lcom/android/incallui/call/CallList;

    .line 57
    iput-object v0, p0, Lcom/android/incallui/InCallCsRedialHandler;->mAlert:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/InCallCsRedialHandler;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/incallui/InCallCsRedialHandler;->onDialogDismissed()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/InCallCsRedialHandler;Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallCsRedialHandler;->dialCsCall(Ljava/lang/String;)V

    return-void
.end method

.method private checkForCsRetry(Lcom/android/incallui/call/DialerCall;)V
    .locals 3

    .line 188
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallCsRedialHandler;->getFailCauseFromExtras(Landroid/os/Bundle;)I

    move-result v0

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkForCsRetry failCause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x92

    if-eq v0, v1, :cond_0

    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallCsRedialHandler;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallCsRedialHandler;->isCsRetryEnabledByUser(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getNumber()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/incallui/InCallCsRedialHandler;->dialCsCall(Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getNumber()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/incallui/InCallCsRedialHandler;->showCsRedialDialogOnDisconnect(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private dialCsCall(Ljava/lang/String;)V
    .locals 2

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dialCsCall number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tel"

    const/4 v1, 0x0

    .line 215
    invoke-static {v0, p1, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 216
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "org.codeaurora.extra.CALL_DOMAIN"

    const/4 v1, 0x1

    .line 218
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 219
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 222
    :try_start_0
    iget-object p1, p0, Lcom/android/incallui/InCallCsRedialHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Activity for dialing new call isn\'t found."

    .line 224
    invoke-static {p0, p1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private getFailCauseFromExtras(Landroid/os/Bundle;)I
    .locals 2

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    const-string v1, "CallFailExtraCode"

    .line 177
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/InCallCsRedialHandler;
    .locals 2

    const-class v0, Lcom/android/incallui/InCallCsRedialHandler;

    monitor-enter v0

    .line 160
    :try_start_0
    sget-object v1, Lcom/android/incallui/InCallCsRedialHandler;->sInCallCsRedialHandler:Lcom/android/incallui/InCallCsRedialHandler;

    if-nez v1, :cond_0

    .line 161
    new-instance v1, Lcom/android/incallui/InCallCsRedialHandler;

    invoke-direct {v1}, Lcom/android/incallui/InCallCsRedialHandler;-><init>()V

    sput-object v1, Lcom/android/incallui/InCallCsRedialHandler;->sInCallCsRedialHandler:Lcom/android/incallui/InCallCsRedialHandler;

    .line 163
    :cond_0
    sget-object v1, Lcom/android/incallui/InCallCsRedialHandler;->sInCallCsRedialHandler:Lcom/android/incallui/InCallCsRedialHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private isCsRetryDialogShowing()Z
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/android/incallui/InCallCsRedialHandler;->mAlert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isCsRetryEnabledByUser(Landroid/content/Context;)Z
    .locals 2

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "qti.settings.cs_retry"

    const/4 v1, 0x1

    .line 203
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private onDialogDismissed()V
    .locals 1

    const/4 v0, 0x0

    .line 282
    iput-object v0, p0, Lcom/android/incallui/InCallCsRedialHandler;->mAlert:Landroid/app/AlertDialog;

    .line 283
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->onDismissDialog()V

    return-void
.end method

.method private showCsRedialDialogOnDisconnect(Ljava/lang/String;)V
    .locals 3

    .line 233
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "showCsRedialDialogOnDisconnect inCallActivity is NULL"

    .line 236
    invoke-static {p0, p1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 239
    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->dismissPendingDialogs()V

    .line 241
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f11017f

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f11017d

    .line 242
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110180

    new-instance v2, Lcom/android/incallui/InCallCsRedialHandler$3;

    invoke-direct {v2, p0, p1}, Lcom/android/incallui/InCallCsRedialHandler$3;-><init>(Lcom/android/incallui/InCallCsRedialHandler;Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f11017e

    new-instance v1, Lcom/android/incallui/InCallCsRedialHandler$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/InCallCsRedialHandler$2;-><init>(Lcom/android/incallui/InCallCsRedialHandler;)V

    .line 249
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/incallui/InCallCsRedialHandler$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallCsRedialHandler$1;-><init>(Lcom/android/incallui/InCallCsRedialHandler;)V

    .line 255
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 262
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/InCallCsRedialHandler;->mAlert:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    .line 264
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 265
    iget-object p1, p0, Lcom/android/incallui/InCallCsRedialHandler;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 266
    iget-object p1, p0, Lcom/android/incallui/InCallCsRedialHandler;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public dismissPendingDialogs()V
    .locals 1

    .line 290
    invoke-direct {p0}, Lcom/android/incallui/InCallCsRedialHandler;->isCsRetryDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/incallui/InCallCsRedialHandler;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 292
    iput-object v0, p0, Lcom/android/incallui/InCallCsRedialHandler;->mAlert:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public hasPendingDialogs()Z
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/android/incallui/InCallCsRedialHandler;->mAlert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCallListChange(Lcom/android/incallui/call/CallList;)V
    .locals 0

    return-void
.end method

.method public onDisconnect(Lcom/android/incallui/call/DialerCall;)V
    .locals 1

    const-string v0, "onDisconnect"

    .line 152
    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallCsRedialHandler;->checkForCsRetry(Lcom/android/incallui/call/DialerCall;)V

    return-void
.end method

.method public onHandoverToWifiFailed(Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    return-void
.end method

.method public onInternationalCallOnWifi(Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    return-void
.end method

.method public onSessionModificationStateChange(Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    return-void
.end method

.method public onUpgradeToVideo(Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    return-void
.end method

.method public onWiFiToLteHandover(Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    return-void
.end method

.method public setUp(Landroid/content/Context;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/android/incallui/InCallCsRedialHandler;->mContext:Landroid/content/Context;

    .line 71
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/InCallCsRedialHandler;->mCallList:Lcom/android/incallui/call/CallList;

    .line 72
    invoke-virtual {p1, p0}, Lcom/android/incallui/call/CallList;->addListener(Lcom/android/incallui/call/CallList$Listener;)V

    return-void
.end method

.method public tearDown()V
    .locals 2

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/android/incallui/InCallCsRedialHandler;->mContext:Landroid/content/Context;

    .line 81
    iget-object v1, p0, Lcom/android/incallui/InCallCsRedialHandler;->mCallList:Lcom/android/incallui/call/CallList;

    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {v1, p0}, Lcom/android/incallui/call/CallList;->removeListener(Lcom/android/incallui/call/CallList$Listener;)V

    .line 83
    iput-object v0, p0, Lcom/android/incallui/InCallCsRedialHandler;->mCallList:Lcom/android/incallui/call/CallList;

    :cond_0
    return-void
.end method
