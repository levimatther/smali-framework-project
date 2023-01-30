.class public Lcom/android/dialer/blocking/FilteredNumbersUtil;
.super Ljava/lang/Object;
.source "FilteredNumbersUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/blocking/FilteredNumbersUtil$PhoneQuery;,
        Lcom/android/dialer/blocking/FilteredNumbersUtil$ContactsQuery;,
        Lcom/android/dialer/blocking/FilteredNumbersUtil$ImportSendToVoicemailContactsListener;,
        Lcom/android/dialer/blocking/FilteredNumbersUtil$CheckForSendToVoicemailContactListener;
    }
.end annotation


# static fields
.field public static final CALL_BLOCKING_DISABLED_BY_EMERGENCY_CALL_NOTIFICATION_ID:I = 0xa

.field public static final CALL_BLOCKING_NOTIFICATION_TAG:Ljava/lang/String; = "call_blocking"

.field public static final LAST_EMERGENCY_CALL_MS_PREF_KEY:Ljava/lang/String; = "last_emergency_call_ms"

.field protected static final NOTIFIED_CALL_BLOCKING_DISABLED_BY_EMERGENCY_CALL_PREF_KEY:Ljava/lang/String; = "notified_call_blocking_disabled_by_emergency_call"

.field static final RECENT_EMERGENCY_CALL_THRESHOLD_MS:J

.field private static final RECENT_EMERGENCY_CALL_THRESHOLD_SETTINGS_KEY:Ljava/lang/String; = "dialer_emergency_call_threshold_ms"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 59
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/dialer/blocking/FilteredNumbersUtil;->RECENT_EMERGENCY_CALL_THRESHOLD_MS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canBlockNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 289
    invoke-static {p0, p1, p2}, Lcom/android/dialer/blocking/FilteredNumbersUtil;->getBlockableNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 290
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 291
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static checkForSendToVoicemailContact(Landroid/content/Context;Lcom/android/dialer/blocking/FilteredNumbersUtil$CheckForSendToVoicemailContactListener;)V
    .locals 1

    .line 74
    new-instance v0, Lcom/android/dialer/blocking/FilteredNumbersUtil$1;

    invoke-direct {v0, p0, p1}, Lcom/android/dialer/blocking/FilteredNumbersUtil$1;-><init>(Landroid/content/Context;Lcom/android/dialer/blocking/FilteredNumbersUtil$CheckForSendToVoicemailContactListener;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    .line 111
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static getBlockableNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 303
    invoke-static {p0}, Lcom/android/dialer/blocking/FilteredNumberCompat;->useNewFiltering(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    return-object p1

    .line 306
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    move-object p1, p2

    :cond_1
    return-object p1
.end method

.method public static getLastEmergencyCallTimeMillis(Landroid/content/Context;)J
    .locals 3

    .line 192
    invoke-static {p0}, Lcom/android/dialer/util/DialerUtils;->getDefaultSharedPreferenceForDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "last_emergency_call_ms"

    const-wide/16 v1, 0x0

    .line 193
    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getRecentEmergencyCallThresholdMs(Landroid/content/Context;)J
    .locals 5

    .line 310
    invoke-static {}, Lcom/android/dialer/common/LogUtil;->isVerboseEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "dialer_emergency_call_threshold_ms"

    const-wide/16 v1, 0x0

    .line 312
    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long p0, v3, v1

    if-lez p0, :cond_0

    goto :goto_0

    .line 314
    :cond_0
    sget-wide v3, Lcom/android/dialer/blocking/FilteredNumbersUtil;->RECENT_EMERGENCY_CALL_THRESHOLD_MS:J

    :goto_0
    return-wide v3

    .line 316
    :cond_1
    sget-wide v0, Lcom/android/dialer/blocking/FilteredNumbersUtil;->RECENT_EMERGENCY_CALL_THRESHOLD_MS:J

    return-wide v0
.end method

.method public static hasRecentEmergencyCall(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 201
    :cond_0
    invoke-static {p0}, Lcom/android/dialer/blocking/FilteredNumbersUtil;->getLastEmergencyCallTimeMillis(Landroid/content/Context;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 202
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    return v0

    .line 206
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 207
    invoke-static {p0}, Lcom/android/dialer/blocking/FilteredNumbersUtil;->getRecentEmergencyCallThresholdMs(Landroid/content/Context;)J

    move-result-wide v4

    cmp-long p0, v2, v4

    if-gez p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static importSendToVoicemailContacts(Landroid/content/Context;Lcom/android/dialer/blocking/FilteredNumbersUtil$ImportSendToVoicemailContactsListener;)V
    .locals 2

    .line 120
    invoke-static {p0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/InteractionEvent$Type;->IMPORT_SEND_TO_VOICEMAIL:Lcom/android/dialer/logging/InteractionEvent$Type;

    invoke-interface {v0, v1}, Lcom/android/dialer/logging/LoggingBindings;->logInteraction(Lcom/android/dialer/logging/InteractionEvent$Type;)V

    .line 121
    new-instance v0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

    invoke-direct {v0, p0}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;-><init>(Landroid/content/Context;)V

    .line 124
    new-instance v1, Lcom/android/dialer/blocking/FilteredNumbersUtil$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/dialer/blocking/FilteredNumbersUtil$2;-><init>(Landroid/content/Context;Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;Lcom/android/dialer/blocking/FilteredNumbersUtil$ImportSendToVoicemailContactsListener;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    .line 188
    invoke-virtual {v1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static maybeNotifyCallBlockingDisabled(Landroid/content/Context;)V
    .locals 3

    .line 228
    invoke-static {p0}, Lcom/android/dialer/blocking/FilteredNumberCompat;->useNewFiltering(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 232
    :cond_0
    invoke-static {p0}, Lcom/android/dialer/util/DialerUtils;->getDefaultSharedPreferenceForDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "notified_call_blocking_disabled_by_emergency_call"

    .line 233
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 238
    :cond_1
    new-instance v0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

    invoke-direct {v0, p0}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;-><init>(Landroid/content/Context;)V

    .line 239
    new-instance v1, Lcom/android/dialer/blocking/FilteredNumbersUtil$3;

    invoke-direct {v1, p0}, Lcom/android/dialer/blocking/FilteredNumbersUtil$3;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->hasBlockedNumbers(Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnHasBlockedNumbersListener;)V

    return-void
.end method

.method public static recordLastEmergencyCallTime(Landroid/content/Context;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 215
    :cond_0
    invoke-static {p0}, Lcom/android/dialer/util/DialerUtils;->getDefaultSharedPreferenceForDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 216
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "last_emergency_call_ms"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "notified_call_blocking_disabled_by_emergency_call"

    .line 218
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 219
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 221
    invoke-static {p0}, Landroidx/core/os/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    invoke-static {p0}, Lcom/android/dialer/blocking/FilteredNumbersUtil;->maybeNotifyCallBlockingDisabled(Landroid/content/Context;)V

    :cond_1
    return-void
.end method
