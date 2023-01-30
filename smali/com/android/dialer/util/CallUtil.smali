.class public Lcom/android/dialer/util/CallUtil;
.super Ljava/lang/Object;
.source "CallUtil.java"


# static fields
.field public static final VIDEO_CALLING_DISABLED:I = 0x0

.field public static final VIDEO_CALLING_ENABLED:I = 0x1

.field public static final VIDEO_CALLING_PRESENCE:I = 0x2

.field private static cachedIsVideoEnabledState:Z

.field private static hasInitializedIsVideoEnabledState:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCallUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 57
    invoke-static {p0}, Lcom/android/dialer/phonenumberutil/PhoneNumberHelper;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "sip"

    .line 58
    invoke-static {v0, p0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "tel"

    .line 60
    invoke-static {v0, p0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getVideoCallingAvailability(Landroid/content/Context;)I
    .locals 4

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 79
    invoke-static {p0, v0}, Lcom/android/dialer/util/PermissionsUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 80
    invoke-static {}, Lcom/android/dialer/compat/CompatUtils;->isVideoCompatible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "telecom"

    .line 83
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/TelecomManager;

    if-nez p0, :cond_1

    return v1

    .line 88
    :cond_1
    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v0

    .line 89
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 90
    invoke-virtual {p0, v2}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v2

    if-eqz v2, :cond_2

    const/16 v3, 0x8

    .line 92
    invoke-virtual {v2, v3}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 94
    invoke-static {}, Lcom/android/dialer/compat/CompatUtils;->isVideoPresenceCompatible()Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_3

    return v0

    :cond_3
    const/16 p0, 0x100

    .line 99
    invoke-virtual {v2, p0}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 v0, 0x3

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public static getVoicemailUri()Landroid/net/Uri;
    .locals 3

    const-string/jumbo v0, "voicemail"

    const-string v1, ""

    const/4 v2, 0x0

    .line 65
    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static isCallWithSubjectSupported(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 145
    invoke-static {p0, v0}, Lcom/android/dialer/util/PermissionsUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 146
    invoke-static {}, Lcom/android/dialer/compat/CompatUtils;->isCallSubjectCompatible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "telecom"

    .line 149
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/TelecomManager;

    if-nez p0, :cond_1

    return v1

    .line 154
    :cond_1
    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v0

    .line 155
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 156
    invoke-virtual {p0, v2}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v2

    if-eqz v2, :cond_2

    const/16 v3, 0x40

    .line 157
    invoke-virtual {v2, v3}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public static isVideoCallingSupported()Z
    .locals 2

    .line 187
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->getOperatorBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "carrier_vt_available_bool"

    .line 189
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isVideoEnabled(Landroid/content/Context;)Z
    .locals 5

    .line 117
    invoke-static {p0}, Lcom/android/dialer/util/CallUtil;->getVideoCallingAvailability(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    and-int/2addr p0, v0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    .line 120
    :goto_0
    sget-boolean v2, Lcom/android/dialer/util/CallUtil;->hasInitializedIsVideoEnabledState:Z

    const-string v3, "CallUtil.isVideoEnabled"

    if-nez v2, :cond_1

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVideoEnabled: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v2, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    sput-boolean v0, Lcom/android/dialer/util/CallUtil;->hasInitializedIsVideoEnabledState:Z

    .line 123
    sput-boolean p0, Lcom/android/dialer/util/CallUtil;->cachedIsVideoEnabledState:Z

    goto :goto_1

    .line 124
    :cond_1
    sget-boolean v2, Lcom/android/dialer/util/CallUtil;->cachedIsVideoEnabledState:Z

    if-eq v2, p0, :cond_2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 128
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v4, v1

    .line 129
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v4, v0

    const-string v0, "isVideoEnabled changed from %b to %b"

    .line 125
    invoke-static {v3, v0, v4}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    sput-boolean p0, Lcom/android/dialer/util/CallUtil;->cachedIsVideoEnabledState:Z

    :cond_2
    :goto_1
    return p0
.end method

.method public static isVoiceRegStateInService(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    .line 170
    invoke-static {p0}, Lcom/android/dialer/util/PermissionsUtil;->hasReadPhoneStatePermissions(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "phone"

    .line 171
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 172
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 173
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getState()I

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
