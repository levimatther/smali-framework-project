.class public Lcom/android/dialer/AttOPImpl;
.super Lcom/android/operatorutils/OpCustomizationFactoryBase;
.source "AttOPImpl.java"


# static fields
.field private static final CHECKED:Ljava/lang/String; = "checked"

.field private static final TAG:Ljava/lang/String; = "AttOPImpl"

.field private static final UNCHECKED:Ljava/lang/String; = "unchecked"


# instance fields
.field private vcInformationDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/android/operatorutils/OpCustomizationFactoryBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getOperatorConfig()Lcom/android/operatorutils/OperatorConfig;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/dialer/AttOPImpl;->config:Lcom/android/operatorutils/OperatorConfig;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/android/dialer/AttConfig;

    invoke-direct {v0}, Lcom/android/dialer/AttConfig;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/AttOPImpl;->config:Lcom/android/operatorutils/OperatorConfig;

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/AttOPImpl;->config:Lcom/android/operatorutils/OperatorConfig;

    return-object v0
.end method

.method public getVerstatColorID()I
    .locals 1

    const v0, 0x7f060149

    return v0
.end method

.method public getVerstatIconID()I
    .locals 1

    const v0, 0x7f08010f

    return v0
.end method

.method public getVerstatLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const v0, 0x7f110384

    .line 133
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isVerstatCustomColorForLabel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeRttCall(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;)Z
    .locals 6

    const-string v0, "AttOPImpl"

    const/4 v1, 0x0

    if-nez p2, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "mergeCall fail, because the call is null!"

    .line 40
    invoke-static {v0, p2, p1}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 44
    :cond_0
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/call/CallList;->getAllCalls()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v1

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/call/DialerCall;

    .line 45
    invoke-virtual {v4}, Lcom/android/incallui/call/DialerCall;->isActiveRttCall()Z

    move-result v4

    if-eqz v4, :cond_1

    move v3, v5

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "mergeCall fail, because we could found rtt call!"

    .line 50
    invoke-static {v0, p2, p1}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 53
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 54
    const-class v1, Lcom/android/tct/common/DialerDialogActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "show_rtt_merge"

    .line 55
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 56
    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object p2

    const-string v1, "call_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 57
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 58
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v5
.end method

.method public showRttHelpInfo(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "AttOPImpl"

    const-string v3, "showRttHelpInfo "

    .line 100
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "dialer_dialog_related_shared_preference"

    .line 105
    invoke-static {v1}, Lcom/android/tct/common/DialerSharedPreferencesManager;->getInstance(Ljava/lang/String;)Lcom/android/tct/common/DialerSharedPreferencesManager;

    move-result-object v2

    const-string v3, "first_enter_rtt_chat"

    const/4 v4, 0x1

    .line 106
    invoke-virtual {v2, v3, v4}, Lcom/android/tct/common/DialerSharedPreferencesManager;->getBooleanValueCustomDefault(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 109
    const-class v5, Lcom/android/tct/common/DialerDialogActivity;

    invoke-virtual {v2, p1, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v5, "show_rtt_help_info"

    .line 110
    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v5, 0x10000000

    .line 111
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 112
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 115
    invoke-static {v1}, Lcom/android/tct/common/DialerSharedPreferencesManager;->getInstance(Ljava/lang/String;)Lcom/android/tct/common/DialerSharedPreferencesManager;

    move-result-object p1

    .line 116
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/android/tct/common/DialerSharedPreferencesManager;->putValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/tct/common/DialerSharedPreferencesManager;

    return v4

    :cond_1
    return v0
.end method
