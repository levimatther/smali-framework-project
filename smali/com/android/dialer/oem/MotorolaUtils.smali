.class public Lcom/android/dialer/oem/MotorolaUtils;
.super Ljava/lang/Object;
.source "MotorolaUtils.java"


# static fields
.field private static final CONFIG_HD_CODEC_BLINKING_ICON_WHEN_CONNECTING_CALL_ENABLED:Ljava/lang/String; = "hd_codec_blinking_icon_when_connecting_enabled"

.field private static final CONFIG_HD_CODEC_SHOW_ICON_IN_CALL_LOG_ENABLED:Ljava/lang/String; = "hd_codec_show_icon_in_call_log_enabled"

.field private static final CONFIG_HD_CODEC_SHOW_ICON_IN_NOTIFICATION_ENABLED:Ljava/lang/String; = "hd_codec_show_icon_in_notification_enabled"

.field private static final CONFIG_WIFI_CALL_SHOW_ICON_IN_CALL_LOG_ENABLED:Ljava/lang/String; = "wifi_call_show_icon_in_call_log_enabled"

.field private static final FEATURES_HD_CALL:I = 0x4

.field private static final FEATURES_WIFI:I = 0x8

.field private static final HD_CALL_FEATRURE:Ljava/lang/String; = "com.motorola.software.sprint.hd_call"

.field private static final HIDDEN_MENU_FEATURE:Ljava/lang/String; = "com.motorola.software.sprint.hidden_menu"

.field private static final WIFI_CALL_PACKAGE_NAME:Ljava/lang/String; = "com.motorola.sprintwfc"

.field private static hasCheckedSprintWifiCall:Z

.field private static supportSprintWifiCall:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleSpecialCharSequence(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 113
    invoke-static {p0, p1}, Lcom/android/dialer/oem/MotorolaHiddenMenuKeySequence;->handleCharSequence(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static isSpnMatched(Landroid/content/Context;)Z
    .locals 2

    .line 65
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110322

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    const-class v1, Landroid/telephony/TelephonyManager;

    .line 67
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object p0

    .line 66
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x1

    return p0
.end method

.method static isSupportingHiddenMenu(Landroid/content/Context;)Z
    .locals 1

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.motorola.software.sprint.hidden_menu"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isSupportingSprintHdCodec(Landroid/content/Context;)Z
    .locals 2

    .line 133
    invoke-static {p0}, Lcom/android/dialer/oem/MotorolaUtils;->isSpnMatched(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.motorola.software.sprint.hd_call"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isSupportingSprintWifiCall(Landroid/content/Context;)Z
    .locals 1

    .line 139
    sget-boolean v0, Lcom/android/dialer/oem/MotorolaUtils;->hasCheckedSprintWifiCall:Z

    if-nez v0, :cond_0

    const-string v0, "com.motorola.sprintwfc"

    .line 140
    invoke-static {v0, p0}, Lcom/android/dialer/common/PackageUtils;->isPackageEnabled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    sput-boolean p0, Lcom/android/dialer/oem/MotorolaUtils;->supportSprintWifiCall:Z

    const/4 p0, 0x1

    .line 141
    sput-boolean p0, Lcom/android/dialer/oem/MotorolaUtils;->hasCheckedSprintWifiCall:Z

    .line 143
    :cond_0
    sget-boolean p0, Lcom/android/dialer/oem/MotorolaUtils;->supportSprintWifiCall:Z

    return p0
.end method

.method public static isWifiCallingAvailable(Landroid/content/Context;)Z
    .locals 5

    const-string v0, "MotorolaUtils.isWifiCallingAvailable"

    .line 117
    invoke-static {p0}, Lcom/android/dialer/oem/MotorolaUtils;->isSupportingSprintWifiCall(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 120
    :cond_0
    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 122
    :try_start_0
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string v3, "isWifiCallingAvailable"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    .line 123
    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const-string v1, "%b"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 124
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v1, v3}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    :goto_0
    const-string v1, ""

    .line 127
    invoke-static {v0, v1, p0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method

.method public static shouldBlinkHdIconWhenConnectingCall(Landroid/content/Context;)Z
    .locals 3

    .line 79
    invoke-static {p0}, Lcom/android/dialer/configprovider/ConfigProviderBindings;->get(Landroid/content/Context;)Lcom/android/dialer/configprovider/ConfigProvider;

    move-result-object v0

    const-string v1, "hd_codec_blinking_icon_when_connecting_enabled"

    const/4 v2, 0x1

    .line 80
    invoke-interface {v0, v1, v2}, Lcom/android/dialer/configprovider/ConfigProvider;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-static {p0}, Lcom/android/dialer/oem/MotorolaUtils;->isSupportingSprintHdCodec(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static shouldShowHdIconInCallLog(Landroid/content/Context;I)Z
    .locals 3

    .line 91
    invoke-static {p0}, Lcom/android/dialer/configprovider/ConfigProviderBindings;->get(Landroid/content/Context;)Lcom/android/dialer/configprovider/ConfigProvider;

    move-result-object v0

    const-string v1, "hd_codec_show_icon_in_call_log_enabled"

    const/4 v2, 0x1

    .line 92
    invoke-interface {v0, v1, v2}, Lcom/android/dialer/configprovider/ConfigProvider;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    .line 94
    invoke-static {p0}, Lcom/android/dialer/oem/MotorolaUtils;->isSupportingSprintHdCodec(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static shouldShowHdIconInNotification(Landroid/content/Context;)Z
    .locals 3

    .line 85
    invoke-static {p0}, Lcom/android/dialer/configprovider/ConfigProviderBindings;->get(Landroid/content/Context;)Lcom/android/dialer/configprovider/ConfigProvider;

    move-result-object v0

    const-string v1, "hd_codec_show_icon_in_notification_enabled"

    const/4 v2, 0x1

    .line 86
    invoke-interface {v0, v1, v2}, Lcom/android/dialer/configprovider/ConfigProvider;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-static {p0}, Lcom/android/dialer/oem/MotorolaUtils;->isSupportingSprintHdCodec(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static shouldShowWifiIconInCallLog(Landroid/content/Context;I)Z
    .locals 3

    .line 98
    invoke-static {p0}, Lcom/android/dialer/configprovider/ConfigProviderBindings;->get(Landroid/content/Context;)Lcom/android/dialer/configprovider/ConfigProvider;

    move-result-object v0

    const-string/jumbo v1, "wifi_call_show_icon_in_call_log_enabled"

    const/4 v2, 0x1

    .line 99
    invoke-interface {v0, v1, v2}, Lcom/android/dialer/configprovider/ConfigProvider;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    .line 101
    invoke-static {p0}, Lcom/android/dialer/oem/MotorolaUtils;->isSupportingSprintWifiCall(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method
