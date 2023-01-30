.class public Lcom/android/contacts/common/compat/TelephonyManagerCompat;
.super Ljava/lang/Object;
.source "TelephonyManagerCompat.java"


# static fields
.field public static final ASSISTED_DIALING_EXTRAS:Ljava/lang/String; = "android.telecom.extra.ASSISTED_DIALING_EXTRAS"

.field public static final EVENT_CALL_REMOTELY_HELD:Ljava/lang/String; = "android.telecom.event.CALL_REMOTELY_HELD"

.field public static final EVENT_CALL_REMOTELY_UNHELD:Ljava/lang/String; = "android.telecom.event.CALL_REMOTELY_UNHELD"

.field public static final EVENT_CSFB:Ljava/lang/String; = "android.telephony.event.EVENT_CSFB"

.field public static final EVENT_HANDOVER_TO_WIFI_FAILED:Ljava/lang/String; = "android.telephony.event.EVENT_HANDOVER_TO_WIFI_FAILED"

.field public static final EVENT_HANDOVER_VIDEO_FROM_WIFI_TO_LTE:Ljava/lang/String; = "android.telephony.event.EVENT_HANDOVER_VIDEO_FROM_WIFI_TO_LTE"

.field public static final EVENT_MERGE_COMPLETE:Ljava/lang/String; = "android.telecom.event.MERGE_COMPLETE"

.field public static final EVENT_MERGE_START:Ljava/lang/String; = "android.telecom.event.MERGE_START"

.field public static final EVENT_MTK_CSFB:Ljava/lang/String; = "mediatek.telecom.event.EVENT_CSFB"

.field public static final EVENT_MTK_RTT_EMERGENCY_REDIAL:Ljava/lang/String; = "mediatek.telecom.event.EVENT_RTT_EMERGENCY_REDIAL"

.field public static final EVENT_MTK_RTT_UPDOWN_FAIL:Ljava/lang/String; = "mediatek.telecom.event.EVENT_RTT_UPDOWN_FAIL"

.field public static final EVENT_MTK_SRVCC:Ljava/lang/String; = "mediatek.telecom.event.EVENT_SRVCC"

.field public static final EVENT_NOTIFY_INTERNATIONAL_CALL_ON_WFC:Ljava/lang/String; = "android.telephony.event.EVENT_NOTIFY_INTERNATIONAL_CALL_ON_WFC"

.field public static final EVENT_PHONE_ACCOUNT_CHANGED:Ljava/lang/String; = "org.codeaurora.event.PHONE_ACCOUNT_CHANGED"

.field public static final EVENT_RTT_AUTO_DOWNGRADE:Ljava/lang/String; = "android.telecom.event.RTT_AUTO_DOWNGRADE"

.field public static final EVENT_RTT_EMERGENCY_REDIAL:Ljava/lang/String; = "android.telecom.event.EVENT_RTT_EMERGENCY_REDIAL"

.field public static final EVENT_RTT_SUPPORT_CHANGED:Ljava/lang/String; = "mediatek.telecom.event.RTT_SUPPORT_CHANGED"

.field public static final EVENT_RTT_UPDOWN_FAIL:Ljava/lang/String; = "android.telecom.event.EVENT_RTT_UPDOWN_FAIL"

.field public static final EVENT_SRVCC:Ljava/lang/String; = "android.telephony.event.EVENT_SRVCC"

.field public static final EXTRA_IS_REFRESH:Ljava/lang/String;

.field public static final EXTRA_RTT_SUPPORT_REMOTE:Ljava/lang/String; = "mediatek.telecom.extra.RTT_SUPPORT_REMOTE"

.field private static final SECRET_CODE_ACTION:Ljava/lang/String; = "android.provider.Telephony.SECRET_CODE"

.field public static final TELEPHONY_MANAGER_CLASS:Ljava/lang/String; = "android.telephony.TelephonyManager"

.field public static final USE_ASSISTED_DIALING:Ljava/lang/String; = "android.telecom.extra.USE_ASSISTED_DIALING"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastOMR1()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.telephony.extra.IS_REFRESH"

    goto :goto_0

    :cond_0
    const-string v0, "is_refresh"

    :goto_0
    sput-object v0, Lcom/android/contacts/common/compat/TelephonyManagerCompat;->EXTRA_IS_REFRESH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPhoneCount(Landroid/telephony/TelephonyManager;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 120
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p0

    return p0
.end method

.method public static getVoicemailRingtoneUri(Landroid/telephony/TelephonyManager;Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;
    .locals 2

    .line 157
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 160
    :cond_0
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getVoicemailRingtoneUri(Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static handleSecretCode(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 223
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastO()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    invoke-static {p0}, Lcom/android/dialer/telecom/TelecomUtil;->isDefaultDialer(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "TelephonyManagerCompat.handleSecretCode"

    const-string v0, "not default dialer, cannot send special code"

    .line 225
    invoke-static {p1, v0, p0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 230
    :cond_0
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->sendDialerSpecialCode(Ljava/lang/String;)V

    goto :goto_0

    .line 233
    :cond_1
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android_secret_code://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 234
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.provider.Telephony.SECRET_CODE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 235
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public static isHearingAidCompatibilitySupported(Landroid/telephony/TelephonyManager;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 142
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isHearingAidCompatibilitySupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isTtyModeSupported(Landroid/telephony/TelephonyManager;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 130
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isTtyModeSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isVisualVoicemailEnabled(Landroid/telephony/TelephonyManager;Landroid/telecom/PhoneAccountHandle;)Z
    .locals 6

    .line 201
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-ge v0, v1, :cond_0

    const-string v0, "isVisualVoicemailEnabled called on pre-NMR1"

    .line 202
    invoke-static {v0}, Lcom/android/dialer/common/Assert;->fail(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 205
    :try_start_0
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string v2, "isVisualVoicemailEnabled"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/telecom/PhoneAccountHandle;

    aput-object v5, v4, v0

    .line 207
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v0

    .line 208
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    .line 206
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

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
    const-string p1, "TelephonyManagerCompat.setVisualVoicemailEnabled"

    const-string v1, "failed"

    .line 210
    invoke-static {p1, v1, p0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public static isVoicemailVibrationEnabled(Landroid/telephony/TelephonyManager;Landroid/telecom/PhoneAccountHandle;)Z
    .locals 2

    .line 173
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 174
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->isVoicemailVibrationEnabled(Landroid/telecom/PhoneAccountHandle;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static setVisualVoicemailEnabled(Landroid/telephony/TelephonyManager;Landroid/telecom/PhoneAccountHandle;Z)V
    .locals 7

    .line 183
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-ge v0, v1, :cond_0

    const-string v0, "setVisualVoicemailEnabled called on pre-NMR1"

    .line 184
    invoke-static {v0}, Lcom/android/dialer/common/Assert;->fail(Ljava/lang/String;)V

    .line 187
    :cond_0
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "setVisualVoicemailEnabled"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/telecom/PhoneAccountHandle;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 188
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    .line 189
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v6

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    :goto_0
    const-string p1, "TelephonyManagerCompat.setVisualVoicemailEnabled"

    const-string p2, "failed"

    .line 191
    invoke-static {p1, p2, p0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
