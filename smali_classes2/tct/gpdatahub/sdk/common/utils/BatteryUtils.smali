.class public Ltct/gpdatahub/sdk/common/utils/BatteryUtils;
.super Ljava/lang/Object;
.source "BatteryUtils.java"


# static fields
.field private static final APP_TOP_BATTERY:Ljava/lang/String; = "SETTINGS_APP_TOP_BATTERY"

.field public static final BATTERY_AC_CHARGE_TIME:Ljava/lang/String; = "SETTINGS_BATTERY_AC_CHARGE_TIME"

.field public static final BATTERY_CHARGE_CYCLE_ONE:Ljava/lang/String; = "BATTERY_CHARGE_CYCLE_ONE"

.field public static final BATTERY_CHARGE_CYCLE_TWO:Ljava/lang/String; = "BATTERY_CHARGE_CYCLE_TWO"

.field public static final BATTERY_CHARGE_GRADIENT:Ljava/lang/String; = "BATTERY_CHARGE_GRADIENT"

.field public static final BATTERY_CHARGE_INFO:Ljava/lang/String; = "BATTERY_CHARGE_INFO"

.field public static final BATTERY_CHARGE_TIME:Ljava/lang/String; = "SETTINGS_BATTERY_CHARGE_TIME"

.field public static final BATTERY_DRAIN_GRADIENT:Ljava/lang/String; = "BATTERY_DRAIN_GRADIENT"

.field public static final BATTERY_LEVEL_AT1PM:Ljava/lang/String; = "SB1P"

.field public static final BATTERY_LEVEL_AT7AM:Ljava/lang/String; = "SB7A"

.field public static final BATTERY_LEVEL_AT7PM:Ljava/lang/String; = "SB7P"

.field public static final BATTERY_OTHER_CHARGE_TIME:Ljava/lang/String; = "SETTINGS_BATTERY_OTHER_CHARGE_TIME"

.field private static final BATTERY_PERCENTAGE:Ljava/lang/String; = "SETTINGS_BATTERY_PERCENTAGE_ENABLED"

.field public static final BATTERY_USB_CHARGE_TIME:Ljava/lang/String; = "SETTINGS_BATTERY_USB_CHARGE_TIME"

.field public static final BATTERY_WIRELESS_CHARGE_TIME:Ljava/lang/String; = "SETTINGS_BATTERY_WIRELESS_CHARGE_TIME"

.field public static final CHARGE_GRADIENT_ACTION:Ljava/lang/String; = "com.tct.action.CHARGE_GRADIENT_ACTION"

.field public static final DRAIN_GRADIENT_ACTION:Ljava/lang/String; = "com.tct.action.DRAIN_GRADIENT_ACTION"

.field private static final TAG:Ljava/lang/String; = "BatteryUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBatteryLevel(Landroid/content/Intent;)I
    .locals 3

    const-string v0, "level"

    const/4 v1, 0x0

    .line 96
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x64

    mul-int/2addr v0, v1

    const-string v2, "scale"

    .line 97
    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    div-int/2addr v0, p0

    return v0
.end method

.method private static getBatteryPercentage(Landroid/content/Context;)I
    .locals 2

    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const-string v0, "status_bar_show_battery_percent"

    goto :goto_0

    :cond_0
    const-string v0, "show_statusbar_battery_percentage"

    .line 40
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method
