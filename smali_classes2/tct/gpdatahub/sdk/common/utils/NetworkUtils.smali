.class public Ltct/gpdatahub/sdk/common/utils/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# static fields
.field public static final ACTION_BOOT_COMPLETED:Ljava/lang/String; = "boot_completed"

.field public static final ACTION_REFRESH_TIMER_TASK:Ljava/lang/String; = "refresh_time_task"

.field public static final ACTION_RESTART_SERVICES:Ljava/lang/String; = "restart_services"

.field public static final AMERICAN_ID:I = 0x2

.field public static final APAC_ID:I = 0x5

.field public static final AT1PM_TIMER_TASK_ACTION:Ljava/lang/String; = "com.tct.action.AT1PM_TIMER_TASK_ACTION"

.field public static final AT7AM_TIMER_TASK_ACTION:Ljava/lang/String; = "com.tct.action.AT7AM_TIMER_TASK_ACTION"

.field public static final AT7PM_TIMER_TASK_ACTION:Ljava/lang/String; = "com.tct.action.AT7PM_TIMER_TASK_ACTION"

.field public static final BATTERY_PLUGGED_STYLE:Ljava/lang/String; = "battery_plugged_style"

.field public static final BLUETOOTH_CONNECTED_COUNT:Ljava/lang/String; = "bluetooth_connected_count"

.field public static final BLUETOOTH_CONNECTED_DURATION:Ljava/lang/String; = "bluetooth_connected_duration"

.field public static final BLUETOOTH_CONNECTED_START:Ljava/lang/String; = "bluetooth_connected_start"

.field public static final CHINA_ID:I = 0x1

.field public static final DATABASE_TIME_TASK_ACTION:Ljava/lang/String; = "com.tct.action.DATABASE_TIME_TASK_ACTION"

.field public static final DELETE_DATA_FOR_GDPR:Ljava/lang/String; = "delete_data_for_gdpr"

.field public static final DIAGNOSIS_START:Ljava/lang/String; = "com.tct.action.DIAGNOSIS_START"

.field private static final DURATION_QUANTUM:J = 0xa4cb80L

.field public static final EUROPE_ID:I = 0x4

.field public static final FEED_BACK_PACKAGE:Ljava/lang/String; = "com.tct.endusertest"

.field public static final IS_NEED_POST:Ljava/lang/String; = "is_need_post"

.field public static final KEY_FIRST_UPLOAD_DATE:Ljava/lang/String; = "key_first_upload_date"

.field public static final KEY_LAST_REFRESHTIME:Ljava/lang/String; = "key_last_record_time"

.field public static final KEY_LAST_SHUT_DOWN:Ljava/lang/String; = "key_last_shut_down"

.field public static final KEY_RC:Ljava/lang/String; = "key_rc"

.field public static final LAST_CHARGING_TIME:Ljava/lang/String; = "last_charging_time"

.field public static final LEGAL_DATE:Ljava/lang/String; = "25/03/2016"

.field private static final NETWORK_CLASS_2_G:I = 0x1

.field private static final NETWORK_CLASS_3_G:I = 0x2

.field private static final NETWORK_CLASS_4_G:I = 0x3

.field private static final NETWORK_CLASS_UNAVAILABLE:I = -0x1

.field private static final NETWORK_CLASS_UNKNOWN:I = 0x0

.field private static final NETWORK_CLASS_WIFI:I = -0x65

.field private static final NETWORK_TYPE_UNAVAILABLE:I = -0x1

.field private static final NETWORK_TYPE_WIFI:I = -0x65

.field public static final ONEDAY:J = 0x5265c00L

.field public static final ONEHOUR:J = 0x36ee80L

.field public static final ONEMUNINUTES:J = 0xea60L

.field public static final ONESECOND:J = 0x3e8L

.field public static final ONEWEEK:J = 0x240c8400L

.field public static final PACKAGE_REPLACED_ACTION:Ljava/lang/String; = "com.tct.action.PACKAGE_REPLACED_ACTION"

.field public static final POST_FAIL_NUM:Ljava/lang/String; = "post_fail_num"

.field public static final POST_SUCCESS_NUM:Ljava/lang/String; = "post_success_num"

.field public static final REFRESH_TIMER_TASK_ACTION:Ljava/lang/String; = "com.tct.action.REFRESH_TIMER_TASK_ACTION"

.field public static final RUSSIA_ID:I = 0x3

.field public static final SHARE_LOCATION_ENABLE:Ljava/lang/String; = "share_location_enable"

.field public static final STOP_DIAGNOSIS_SERVICE:Ljava/lang/String; = "com.tct.action.STOP_DIAGNOSIS_SERVICE"

.field protected static final sDurations:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [J

    .line 79
    fill-array-data v0, :array_0

    sput-object v0, Ltct/gpdatahub/sdk/common/utils/NetworkUtils;->sDurations:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x5265c0
        0xf73140
        0x240c840
        0x4d3f640
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertStorage(D)Ljava/lang/String;
    .locals 7

    const-wide/high16 v0, 0x41d0000000000000L    # 1.073741824E9

    cmpl-double v2, p0, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v2, :cond_0

    new-array v2, v4, [Ljava/lang/Object;

    div-double/2addr p0, v0

    .line 84
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v2, v3

    const-string p0, "%.1f GB"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/high16 v0, 0x4130000000000000L    # 1048576.0

    cmpl-double v2, p0, v0

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    if-ltz v2, :cond_2

    div-double/2addr p0, v0

    cmpl-double v0, p0, v5

    if-lez v0, :cond_1

    const-string v0, "%.0f MB"

    goto :goto_0

    :cond_1
    const-string v0, "%.1f MB"

    :goto_0
    new-array v1, v4, [Ljava/lang/Object;

    .line 86
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-wide/high16 v0, 0x4090000000000000L    # 1024.0

    cmpl-double v2, p0, v0

    if-ltz v2, :cond_4

    div-double/2addr p0, v0

    cmpl-double v0, p0, v5

    if-lez v0, :cond_3

    const-string v0, "%.0f KB"

    goto :goto_1

    :cond_3
    const-string v0, "%.1f KB"

    :goto_1
    new-array v1, v4, [Ljava/lang/Object;

    .line 88
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    new-array v0, v4, [Ljava/lang/Object;

    .line 90
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v0, v3

    const-string p0, "%f B"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static formatPercentage(D)Ljava/lang/String;
    .locals 1

    .line 161
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatPercentage(I)Ljava/lang/String;
    .locals 4

    int-to-double v0, p0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    .line 157
    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/NetworkUtils;->formatPercentage(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatPercentage(JJ)Ljava/lang/String;
    .locals 0

    long-to-double p0, p0

    long-to-double p2, p2

    div-double/2addr p0, p2

    .line 153
    invoke-static {p0, p1}, Ltct/gpdatahub/sdk/common/utils/NetworkUtils;->formatPercentage(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getNetworkClass(Landroid/content/Context;)I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "connectivity"

    .line 213
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    const/4 v2, -0x1

    if-nez v1, :cond_1

    :cond_0
    move v0, v2

    goto :goto_0

    .line 217
    :cond_1
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 218
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 219
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 220
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/16 v0, -0x65

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    const-string v1, "phone"

    .line 225
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 226
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 234
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;)V

    .line 236
    :cond_3
    :goto_0
    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/NetworkUtils;->getNetworkClassByType(I)I

    move-result p0

    return p0
.end method

.method private static getNetworkClassByType(I)I
    .locals 1

    const/16 v0, -0x65

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x3

    return p0

    :pswitch_1
    const/4 p0, 0x2

    return p0

    :pswitch_2
    const/4 p0, 0x1

    return p0

    :pswitch_3
    const/4 p0, -0x1

    return p0

    :cond_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isEnableDatahubFromJson(Ljava/lang/String;)Z
    .locals 2

    .line 247
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "on"

    const-string v1, "datahub"

    .line 248
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 251
    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static isFitNetworkNow(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7

    .line 136
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x675

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v0, v1, :cond_4

    const/16 v1, 0x694

    if-eq v0, v1, :cond_3

    const/16 v1, 0x6b3

    if-eq v0, v1, :cond_2

    const v1, 0x179a1

    if-eq v0, v1, :cond_1

    const v1, 0x37af15

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    move p1, v6

    goto :goto_1

    :cond_1
    const-string v0, "all"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    move p1, v5

    goto :goto_1

    :cond_2
    const-string v0, "4g"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    move p1, v4

    goto :goto_1

    :cond_3
    const-string v0, "3g"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    move p1, v3

    goto :goto_1

    :cond_4
    const-string v0, "2g"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    move p1, v2

    goto :goto_1

    :cond_5
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_e

    if-eq p1, v6, :cond_c

    if-eq p1, v4, :cond_a

    if-eq p1, v3, :cond_8

    if-eq p1, v2, :cond_6

    return v5

    .line 146
    :cond_6
    invoke-static {p0}, Ltct/gpdatahub/sdk/common/utils/NetworkUtils;->getNetworkClass(Landroid/content/Context;)I

    move-result p0

    if-ne p0, v6, :cond_7

    move v5, v6

    :cond_7
    return v5

    .line 144
    :cond_8
    invoke-static {p0}, Ltct/gpdatahub/sdk/common/utils/NetworkUtils;->getNetworkClass(Landroid/content/Context;)I

    move-result p0

    if-ne p0, v4, :cond_9

    move v5, v6

    :cond_9
    return v5

    .line 142
    :cond_a
    invoke-static {p0}, Ltct/gpdatahub/sdk/common/utils/NetworkUtils;->getNetworkClass(Landroid/content/Context;)I

    move-result p0

    if-ne p0, v3, :cond_b

    move v5, v6

    :cond_b
    return v5

    .line 140
    :cond_c
    invoke-static {p0}, Ltct/gpdatahub/sdk/common/utils/NetworkUtils;->getNetworkClass(Landroid/content/Context;)I

    move-result p0

    const/16 p1, -0x65

    if-ne p0, p1, :cond_d

    move v5, v6

    :cond_d
    return v5

    .line 138
    :cond_e
    invoke-static {p0}, Ltct/gpdatahub/sdk/common/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isMobileNetworkConnect(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "connectivity"

    .line 121
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 125
    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 126
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 129
    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-nez p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "connectivity"

    .line 109
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 113
    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 114
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static isWifiConnected(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "connectivity"

    .line 97
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 101
    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    .line 102
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-ne p0, v1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method
