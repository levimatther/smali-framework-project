.class public abstract Lcom/android/dialer/telecom/TelecomUtil;
.super Ljava/lang/Object;
.source "TelecomUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/telecom/TelecomUtil$TelecomUtilImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TelecomUtil"

.field private static instance:Lcom/android/dialer/telecom/TelecomUtil$TelecomUtilImpl; = null

.field private static final isVoicemailNumberCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Landroid/telecom/PhoneAccountHandle;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static sWarningLogged:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lcom/android/dialer/telecom/TelecomUtil$TelecomUtilImpl;

    invoke-direct {v0}, Lcom/android/dialer/telecom/TelecomUtil$TelecomUtilImpl;-><init>()V

    sput-object v0, Lcom/android/dialer/telecom/TelecomUtil;->instance:Lcom/android/dialer/telecom/TelecomUtil$TelecomUtilImpl;

    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/dialer/telecom/TelecomUtil;->isVoicemailNumberCache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Landroid/telecom/TelecomManager;
    .locals 0

    .line 44
    invoke-static {p0}, Lcom/android/dialer/telecom/TelecomUtil;->getTelecomManager(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 44
    sget-boolean v0, Lcom/android/dialer/telecom/TelecomUtil;->sWarningLogged:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    .line 44
    sput-boolean p0, Lcom/android/dialer/telecom/TelecomUtil;->sWarningLogged:Z

    return p0
.end method

.method public static cancelMissedCallsNotification(Landroid/content/Context;)V
    .locals 2

    .line 87
    invoke-static {p0}, Lcom/android/dialer/telecom/TelecomUtil;->hasModifyPhoneStatePermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    :try_start_0
    invoke-static {p0}, Lcom/android/dialer/telecom/TelecomUtil;->getTelecomManager(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->cancelMissedCallsNotification()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "TelecomUtil"

    const-string v1, "TelecomManager.cancelMissedCalls called without permission."

    .line 91
    invoke-static {v0, v1, p0}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static getAdnUriForPhoneAccount(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;
    .locals 1

    .line 97
    invoke-static {p0}, Lcom/android/dialer/telecom/TelecomUtil;->hasModifyPhoneStatePermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    :try_start_0
    invoke-static {p0}, Lcom/android/dialer/telecom/TelecomUtil;->getTelecomManager(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telecom/TelecomManager;->getAdnUriForPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "TelecomUtil"

    const-string v0, "TelecomManager.getAdnUriForPhoneAccount called without permission."

    .line 101
    invoke-static {p1, v0, p0}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCallCapablePhoneAccounts(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    .line 137
    invoke-static {p0}, Lcom/android/dialer/telecom/TelecomUtil;->hasReadPhoneStatePermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-static {p0}, Lcom/android/dialer/telecom/TelecomUtil;->getTelecomManager(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 140
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static getCallLogUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 0

    .line 200
    invoke-static {p0}, Lcom/android/dialer/telecom/TelecomUtil;->hasReadWriteVoicemailPermissions(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    sget-object p0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    :goto_0
    return-object p0
.end method

.method public static getDefaultOutgoingPhoneAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;
    .locals 1

    .line 126
    invoke-static {p0}, Lcom/android/dialer/telecom/TelecomUtil;->hasReadPhoneStatePermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-static {p0}, Lcom/android/dialer/telecom/TelecomUtil;->getTelecomManager(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telecom/TelecomManager;->getDefaultOutgoingPhoneAccount(Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPhoneAccount(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;
    .locals 0

    .line 133
    invoke-static {p0}, Lcom/android/dialer/telecom/TelecomUtil;->getTelecomManager(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object p0

    return-object p0
.end method

.method private static getTelecomManager(Landroid/content/Context;)Landroid/telecom/TelecomManager;
    .locals 1

    const-string v0, "telecom"

    .line 229
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/TelecomManager;

    return-object p0
.end method

.method public static getVoicemailNumber(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;
    .locals 1

    .line 173
    invoke-static {p0}, Lcom/android/dialer/telecom/TelecomUtil;->hasReadPhoneStatePermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-static {p0}, Lcom/android/dialer/telecom/TelecomUtil;->getTelecomManager(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telecom/TelecomManager;->getVoiceMailNumber(Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static handleMmi(Landroid/content/Context;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Z
    .locals 2

    .line 109
    invoke-static {p0}, Lcom/android/dialer/telecom/TelecomUtil;->hasModifyPhoneStatePermission(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    .line 112
    :try_start_0
    invoke-static {p0}, Lcom/android/dialer/telecom/TelecomUtil;->getTelecomManager(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telecom/TelecomManager;->handleMmi(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 114
    :cond_0
    invoke-static {p0}, Lcom/android/dialer/telecom/TelecomUtil;->getTelecomManager(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/telecom/TelecomManager;->handleMmi(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "TelecomUtil"

    const-string p2, "TelecomManager.handleMmi called without permission."

    .line 117
    invoke-static {p1, p2, p0}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return v1
.end method

.method public static hasCallPhonePermission(Landroid/content/Context;)Z
    .locals 1

    .line 221
    invoke-static {p0}, Lcom/android/dialer/telecom/TelecomUtil;->isDefaultDialer(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.permission.CALL_PHONE"

    invoke-static {p0, v0}, Lcom/android/dialer/telecom/TelecomUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

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

.method public static hasModifyPhoneStatePermission(Landroid/content/Context;)Z
    .locals 1

    .line 212
    invoke-static {p0}, Lcom/android/dialer/telecom/TelecomUtil;->isDefaultDialer(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    .line 213
    invoke-static {p0, v0}, Lcom/android/dialer/telecom/TelecomUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

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

.method private static hasPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 225
    sget-object v0, Lcom/android/dialer/telecom/TelecomUtil;->instance:Lcom/android/dialer/telecom/TelecomUtil$TelecomUtilImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/dialer/telecom/TelecomUtil$TelecomUtilImpl;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static hasReadPhoneStatePermission(Landroid/content/Context;)Z
    .locals 1

    .line 217
    invoke-static {p0}, Lcom/android/dialer/telecom/TelecomUtil;->isDefaultDialer(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/android/dialer/telecom/TelecomUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

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

.method public static hasReadWriteVoicemailPermissions(Landroid/content/Context;)Z
    .locals 1

    .line 206
    invoke-static {p0}, Lcom/android/dialer/telecom/TelecomUtil;->isDefaultDialer(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.android.voicemail.permission.READ_VOICEMAIL"

    .line 207
    invoke-static {p0, v0}, Lcom/android/dialer/telecom/TelecomUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.voicemail.permission.WRITE_VOICEMAIL"

    .line 208
    invoke-static {p0, v0}, Lcom/android/dialer/telecom/TelecomUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

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

.method public static isDefaultDialer(Landroid/content/Context;)Z
    .locals 1

    .line 233
    sget-object v0, Lcom/android/dialer/telecom/TelecomUtil;->instance:Lcom/android/dialer/telecom/TelecomUtil$TelecomUtilImpl;

    invoke-virtual {v0, p0}, Lcom/android/dialer/telecom/TelecomUtil$TelecomUtilImpl;->isDefaultDialer(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isInCall(Landroid/content/Context;)Z
    .locals 1

    .line 144
    sget-object v0, Lcom/android/dialer/telecom/TelecomUtil;->instance:Lcom/android/dialer/telecom/TelecomUtil$TelecomUtilImpl;

    invoke-virtual {v0, p0}, Lcom/android/dialer/telecom/TelecomUtil$TelecomUtilImpl;->isInCall(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isVoicemailNumber(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Z
    .locals 2

    .line 155
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 164
    :cond_0
    invoke-static {p0}, Lcom/android/dialer/telecom/TelecomUtil;->hasReadPhoneStatePermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    invoke-static {p0}, Lcom/android/dialer/telecom/TelecomUtil;->getTelecomManager(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/telecom/TelecomManager;->isVoiceMailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Z

    move-result v1

    :cond_1
    return v1
.end method

.method public static placeCall(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4

    .line 188
    invoke-static {p0}, Lcom/android/dialer/telecom/TelecomUtil;->hasCallPhonePermission(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "isDialpad"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dialer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "TelecomUtil"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    invoke-static {p0}, Lcom/android/dialer/telecom/TelecomUtil;->getTelecomManager(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/telecom/TelecomManager;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public static setInstanceForTesting(Lcom/android/dialer/telecom/TelecomUtil$TelecomUtilImpl;)V
    .locals 0

    .line 61
    sput-object p0, Lcom/android/dialer/telecom/TelecomUtil;->instance:Lcom/android/dialer/telecom/TelecomUtil$TelecomUtilImpl;

    return-void
.end method

.method public static showInCallScreen(Landroid/content/Context;Z)V
    .locals 1

    .line 65
    invoke-static {p0}, Lcom/android/dialer/telecom/TelecomUtil;->hasReadPhoneStatePermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    :try_start_0
    invoke-static {p0}, Lcom/android/dialer/telecom/TelecomUtil;->getTelecomManager(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "TelecomUtil"

    const-string v0, "TelecomManager.showInCallScreen called without permission."

    .line 70
    invoke-static {p1, v0, p0}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static silenceRinger(Landroid/content/Context;)V
    .locals 2

    .line 76
    invoke-static {p0}, Lcom/android/dialer/telecom/TelecomUtil;->hasModifyPhoneStatePermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    :try_start_0
    invoke-static {p0}, Lcom/android/dialer/telecom/TelecomUtil;->getTelecomManager(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->silenceRinger()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "TelecomUtil"

    const-string v1, "TelecomManager.silenceRinger called without permission."

    .line 81
    invoke-static {v0, v1, p0}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method
