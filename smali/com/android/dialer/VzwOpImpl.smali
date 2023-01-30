.class public Lcom/android/dialer/VzwOpImpl;
.super Lcom/android/operatorutils/OpCustomizationFactoryBase;
.source "VzwOpImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/android/operatorutils/OpCustomizationFactoryBase;-><init>()V

    return-void
.end method

.method static synthetic lambda$showVideoCallTip$0(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 192
    invoke-static {}, Lcom/android/tct/common/DialerSharedPreferencesManager;->getInstance()Lcom/android/tct/common/DialerSharedPreferencesManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "first_rtt_for_video"

    invoke-virtual {p0, v0, p1}, Lcom/android/tct/common/DialerSharedPreferencesManager;->putValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/tct/common/DialerSharedPreferencesManager;

    return-void
.end method


# virtual methods
.method public getOperatorConfig()Lcom/android/operatorutils/OperatorConfig;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/android/dialer/VzwOpImpl;->config:Lcom/android/operatorutils/OperatorConfig;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Lcom/android/dialer/VzwConfig;

    invoke-direct {v0}, Lcom/android/dialer/VzwConfig;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/VzwOpImpl;->config:Lcom/android/operatorutils/OperatorConfig;

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/VzwOpImpl;->config:Lcom/android/operatorutils/OperatorConfig;

    return-object v0
.end method

.method public showVideoCallTip(Landroid/content/Context;)V
    .locals 3

    .line 186
    invoke-static {}, Lcom/android/tct/common/DialerSharedPreferencesManager;->getInstance()Lcom/android/tct/common/DialerSharedPreferencesManager;

    move-result-object v0

    const-string v1, "first_rtt_for_video"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/tct/common/DialerSharedPreferencesManager;->getBooleanValueCustomDefault(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 189
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p1, 0x7f1104ec

    .line 190
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const p1, 0x104000a

    .line 191
    sget-object v1, Lcom/android/dialer/-$$Lambda$VzwOpImpl$CviHw3kn-6xvgObqji0XKtDl03s;->INSTANCE:Lcom/android/dialer/-$$Lambda$VzwOpImpl$CviHw3kn-6xvgObqji0XKtDl03s;

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 192
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
