.class public Lcom/android/incallui/disconnectdialog/EnableWifiCallingPrompt;
.super Ljava/lang/Object;
.source "EnableWifiCallingPrompt.java"

# interfaces
.implements Lcom/android/incallui/disconnectdialog/DisconnectDialog;


# static fields
.field private static final ACTION_SHOW_CALL_SETTINGS:Ljava/lang/String; = "android.telecom.action.SHOW_CALL_SETTINGS"

.field private static final ANDROID_SETTINGS_PACKAGE:Ljava/lang/String; = "com.android.phone"

.field private static final REASON_WIFI_ON_BUT_WFC_OFF:Ljava/lang/String; = "REASON_WIFI_ON_BUT_WFC_OFF"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$createDialog$0(Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 66
    invoke-static {p0}, Lcom/android/incallui/disconnectdialog/EnableWifiCallingPrompt;->openWifiCallingSettings(Landroid/content/Context;)V

    return-void
.end method

.method private static openWifiCallingSettings(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "EnableWifiCallingPrompt.openWifiCallingSettings"

    const-string v2, "opening settings"

    .line 73
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telecom.action.SHOW_CALL_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.phone"

    .line 75
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 74
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public createDialog(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/incallui/call/DialerCall;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/app/Dialog;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 58
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object p2

    .line 60
    invoke-virtual {p2}, Landroid/telecom/DisconnectCause;->getDescription()Ljava/lang/CharSequence;

    move-result-object p2

    .line 61
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 63
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/disconnectdialog/-$$Lambda$EnableWifiCallingPrompt$AqkQUddpPSUy9BDeabLIMUGpPqk;

    invoke-direct {v1, p1}, Lcom/android/incallui/disconnectdialog/-$$Lambda$EnableWifiCallingPrompt$AqkQUddpPSUy9BDeabLIMUGpPqk;-><init>(Landroid/content/Context;)V

    const p1, 0x7f110294

    .line 64
    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    .line 67
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 69
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public shouldShow(Landroid/telecom/DisconnectCause;)Z
    .locals 3

    .line 45
    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getReason()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "REASON_WIFI_ON_BUT_WFC_OFF"

    .line 46
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const-string p1, "EnableWifiCallingPrompt.shouldShowPrompt"

    const-string v0, "showing prompt for disconnect cause: %s"

    .line 47
    invoke-static {p1, v0, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    return v0
.end method
