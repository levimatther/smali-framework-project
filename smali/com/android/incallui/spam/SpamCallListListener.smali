.class public Lcom/android/incallui/spam/SpamCallListListener;
.super Ljava/lang/Object;
.source "SpamCallListListener.java"

# interfaces
.implements Lcom/android/incallui/call/CallList$Listener;


# static fields
.field static final NOTIFICATION_ID:I = 0x1


# instance fields
.field private final context:Landroid/content/Context;

.field private final random:Ljava/util/Random;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/incallui/spam/SpamCallListListener;->context:Landroid/content/Context;

    .line 59
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/android/incallui/spam/SpamCallListListener;->random:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Random;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/incallui/spam/SpamCallListListener;->context:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/android/incallui/spam/SpamCallListListener;->random:Ljava/util/Random;

    return-void
.end method

.method private createActivityPendingIntent(Lcom/android/incallui/call/DialerCall;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 2

    .line 371
    iget-object v0, p0, Lcom/android/incallui/spam/SpamCallListListener;->context:Landroid/content/Context;

    const/4 v1, 0x1

    .line 372
    invoke-static {v0, p1, p2, v1}, Lcom/android/incallui/spam/SpamNotificationActivity;->createActivityIntent(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 373
    iget-object p2, p0, Lcom/android/incallui/spam/SpamCallListListener;->context:Landroid/content/Context;

    .line 374
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    .line 373
    invoke-static {p2, v0, p1, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private createAfterCallNotificationBuilder(Lcom/android/incallui/call/DialerCall;)Landroid/app/Notification$Builder;
    .locals 2

    .line 176
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/incallui/spam/SpamCallListListener;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "com.android.incallui.spam.ACTION_SHOW_DIALOG"

    .line 179
    invoke-direct {p0, p1, v1}, Lcom/android/incallui/spam/SpamCallListListener;->createActivityPendingIntent(Lcom/android/incallui/call/DialerCall;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    .line 178
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    const-string v0, "status"

    .line 180
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 181
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/incallui/spam/SpamCallListListener;->context:Landroid/content/Context;

    const v1, 0x7f0600be

    .line 182
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p1

    const v0, 0x7f0800dc

    .line 183
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 184
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastO()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "phone_default"

    .line 185
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    :cond_0
    return-object p1
.end method

.method private createBlockReportSpamPendingIntent(Lcom/android/incallui/call/DialerCall;)Landroid/app/PendingIntent;
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/android/incallui/spam/SpamCallListListener;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/spam/Spam;->get(Landroid/content/Context;)Lcom/android/dialer/spam/SpamBindings;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/dialer/spam/SpamBindings;->isDialogEnabledForSpamNotification()Z

    move-result v0

    const-string v1, "com.android.incallui.spam.ACTION_MARK_NUMBER_AS_SPAM"

    if-eqz v0, :cond_0

    .line 346
    invoke-direct {p0, p1, v1}, Lcom/android/incallui/spam/SpamCallListListener;->createActivityPendingIntent(Lcom/android/incallui/call/DialerCall;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    goto :goto_0

    .line 347
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/incallui/spam/SpamCallListListener;->createServicePendingIntent(Lcom/android/incallui/call/DialerCall;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private createNotSpamPendingIntent(Lcom/android/incallui/call/DialerCall;)Landroid/app/PendingIntent;
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/android/incallui/spam/SpamCallListListener;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/spam/Spam;->get(Landroid/content/Context;)Lcom/android/dialer/spam/SpamBindings;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/dialer/spam/SpamBindings;->isDialogEnabledForSpamNotification()Z

    move-result v0

    const-string v1, "com.android.incallui.spam.ACTION_MARK_NUMBER_AS_NOT_SPAM"

    if-eqz v0, :cond_0

    .line 357
    invoke-direct {p0, p1, v1}, Lcom/android/incallui/spam/SpamCallListListener;->createActivityPendingIntent(Lcom/android/incallui/call/DialerCall;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    goto :goto_0

    .line 358
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/incallui/spam/SpamCallListListener;->createServicePendingIntent(Lcom/android/incallui/call/DialerCall;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private createServicePendingIntent(Lcom/android/incallui/call/DialerCall;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/android/incallui/spam/SpamCallListListener;->context:Landroid/content/Context;

    const/4 v1, 0x1

    .line 364
    invoke-static {v0, p1, p2, v1}, Lcom/android/incallui/spam/SpamNotificationService;->createServiceIntent(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 365
    iget-object p2, p0, Lcom/android/incallui/spam/SpamCallListListener;->context:Landroid/content/Context;

    .line 366
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    .line 365
    invoke-static {p2, v0, p1, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private getDisplayNumber(Lcom/android/incallui/call/DialerCall;)Ljava/lang/CharSequence;
    .locals 1

    .line 192
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getNumber()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/incallui/spam/SpamCallListListener;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/location/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 193
    invoke-static {p1}, Lcom/android/contacts/common/compat/PhoneNumberUtilsCompat;->createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method private maybeShowNonSpamCallNotification(Lcom/android/incallui/call/DialerCall;)V
    .locals 5

    .line 294
    invoke-direct {p0}, Lcom/android/incallui/spam/SpamCallListListener;->shouldThrottleNonSpamNotification()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/incallui/spam/SpamCallListListener;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->NON_SPAM_NOTIFICATION_NOT_SHOWN_AFTER_THROTTLE:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 298
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getUniqueCallId()Ljava/lang/String;

    move-result-object v2

    .line 299
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getTimeAddedMs()J

    move-result-wide v3

    .line 296
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/dialer/logging/LoggingBindings;->logCallImpression(Lcom/android/dialer/logging/DialerImpression$Type;Ljava/lang/String;J)V

    goto :goto_0

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/spam/SpamCallListListener;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->NON_SPAM_NOTIFICATION_SHOWN_AFTER_THROTTLE:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 304
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getUniqueCallId()Ljava/lang/String;

    move-result-object v2

    .line 305
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getTimeAddedMs()J

    move-result-wide v3

    .line 302
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/dialer/logging/LoggingBindings;->logCallImpression(Lcom/android/dialer/logging/DialerImpression$Type;Ljava/lang/String;J)V

    .line 306
    invoke-direct {p0, p1}, Lcom/android/incallui/spam/SpamCallListListener;->showNonSpamCallNotification(Lcom/android/incallui/call/DialerCall;)V

    :goto_0
    return-void
.end method

.method private maybeShowSpamCallNotification(Lcom/android/incallui/call/DialerCall;)V
    .locals 5

    .line 277
    invoke-direct {p0}, Lcom/android/incallui/spam/SpamCallListListener;->shouldThrottleSpamNotification()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/incallui/spam/SpamCallListListener;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->SPAM_NOTIFICATION_NOT_SHOWN_AFTER_THROTTLE:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 281
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getUniqueCallId()Ljava/lang/String;

    move-result-object v2

    .line 282
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getTimeAddedMs()J

    move-result-wide v3

    .line 279
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/dialer/logging/LoggingBindings;->logCallImpression(Lcom/android/dialer/logging/DialerImpression$Type;Ljava/lang/String;J)V

    goto :goto_0

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/spam/SpamCallListListener;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->SPAM_NOTIFICATION_SHOWN_AFTER_THROTTLE:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 287
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getUniqueCallId()Ljava/lang/String;

    move-result-object v2

    .line 288
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getTimeAddedMs()J

    move-result-wide v3

    .line 285
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/dialer/logging/LoggingBindings;->logCallImpression(Lcom/android/dialer/logging/DialerImpression$Type;Ljava/lang/String;J)V

    .line 289
    invoke-direct {p0, p1}, Lcom/android/incallui/spam/SpamCallListListener;->showSpamCallNotification(Lcom/android/incallui/call/DialerCall;)V

    :goto_0
    return-void
.end method

.method private shouldShowAfterCallNotification(Lcom/android/incallui/call/DialerCall;)Z
    .locals 6

    .line 131
    iget-object v0, p0, Lcom/android/incallui/spam/SpamCallListListener;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/spam/Spam;->get(Landroid/content/Context;)Lcom/android/dialer/spam/SpamBindings;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/dialer/spam/SpamBindings;->isSpamNotificationEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 135
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 140
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getLogState()Lcom/android/incallui/call/DialerCall$LogState;

    move-result-object v0

    .line 141
    iget-boolean v2, v0, Lcom/android/incallui/call/DialerCall$LogState;->isIncoming:Z

    if-nez v2, :cond_2

    return v1

    .line 145
    :cond_2
    iget-wide v2, v0, Lcom/android/incallui/call/DialerCall$LogState;->duration:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_3

    return v1

    .line 149
    :cond_3
    iget-object v2, v0, Lcom/android/incallui/call/DialerCall$LogState;->contactLookupResult:Lcom/android/dialer/logging/ContactLookupResult$Type;

    sget-object v3, Lcom/android/dialer/logging/ContactLookupResult$Type;->NOT_FOUND:Lcom/android/dialer/logging/ContactLookupResult$Type;

    if-eq v2, v3, :cond_4

    iget-object v0, v0, Lcom/android/incallui/call/DialerCall$LogState;->contactLookupResult:Lcom/android/dialer/logging/ContactLookupResult$Type;

    sget-object v2, Lcom/android/dialer/logging/ContactLookupResult$Type;->UNKNOWN_LOOKUP_RESULT_TYPE:Lcom/android/dialer/logging/ContactLookupResult$Type;

    if-eq v0, v2, :cond_4

    return v1

    .line 154
    :cond_4
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getCallHistoryStatus()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    return v1

    :cond_5
    const-string v3, "SpamCallListListener.shouldShowAfterCallNotification"

    if-nez v0, :cond_6

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "history status unknown"

    .line 158
    invoke-static {v3, v0, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 163
    :cond_6
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    const/4 v0, 0x3

    if-eq p1, v0, :cond_7

    return v1

    :cond_7
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "returning true"

    .line 168
    invoke-static {v3, v0, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method private shouldThrottleNonSpamNotification()Z
    .locals 6

    .line 252
    iget-object v0, p0, Lcom/android/incallui/spam/SpamCallListListener;->random:Ljava/util/Random;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 253
    iget-object v1, p0, Lcom/android/incallui/spam/SpamCallListListener;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/dialer/spam/Spam;->get(Landroid/content/Context;)Lcom/android/dialer/spam/SpamBindings;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/dialer/spam/SpamBindings;->percentOfNonSpamNotificationsToShow()I

    move-result v1

    const-string v2, "SpamCallListListener.shouldThrottleNonSpamNotification"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "not showing non spam notification: percentOfNonSpamNotificationsToShow is 0"

    .line 255
    invoke-static {v2, v1, v0}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_0
    const/4 v5, 0x2

    if-ge v0, v1, :cond_1

    new-array v5, v5, [Ljava/lang/Object;

    .line 263
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v4

    .line 264
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    const-string v0, "showing non spam notification: %d < %d"

    .line 260
    invoke-static {v2, v0, v5}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    :cond_1
    new-array v5, v5, [Ljava/lang/Object;

    .line 270
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v4

    .line 271
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    const-string v0, "not showing non spam notification: %d >= %d"

    .line 267
    invoke-static {v2, v0, v5}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3
.end method

.method private shouldThrottleSpamNotification()Z
    .locals 6

    .line 229
    iget-object v0, p0, Lcom/android/incallui/spam/SpamCallListListener;->random:Ljava/util/Random;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 230
    iget-object v1, p0, Lcom/android/incallui/spam/SpamCallListListener;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/dialer/spam/Spam;->get(Landroid/content/Context;)Lcom/android/dialer/spam/SpamBindings;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/dialer/spam/SpamBindings;->percentOfSpamNotificationsToShow()I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "SpamCallListListener.shouldThrottleSpamNotification"

    const/4 v4, 0x0

    if-nez v1, :cond_0

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "not showing - percentOfSpamNotificationsToShow is 0"

    .line 232
    invoke-static {v3, v1, v0}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_0
    if-ge v0, v1, :cond_1

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showing "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " < "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    :cond_1
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 245
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v4

    .line 246
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    const-string v0, "not showing %d >= %d"

    .line 242
    invoke-static {v3, v0, v5}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method private showNonSpamCallNotification(Lcom/android/incallui/call/DialerCall;)V
    .locals 6

    .line 199
    invoke-direct {p0, p1}, Lcom/android/incallui/spam/SpamCallListListener;->createAfterCallNotificationBuilder(Lcom/android/incallui/call/DialerCall;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/spam/SpamCallListListener;->context:Landroid/content/Context;

    const v2, 0x7f08023c

    .line 200
    invoke-static {v1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/spam/SpamCallListListener;->context:Landroid/content/Context;

    const v2, 0x7f11046b

    .line 202
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 201
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v2, p0, Lcom/android/incallui/spam/SpamCallListListener;->context:Landroid/content/Context;

    const v3, 0x7f11046c

    .line 206
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 205
    invoke-virtual {v1, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    .line 203
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$Action$Builder;

    iget-object v2, p0, Lcom/android/incallui/spam/SpamCallListListener;->context:Landroid/content/Context;

    const v3, 0x7f110465

    .line 211
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.incallui.spam.ACTION_ADD_TO_CONTACTS"

    .line 212
    invoke-direct {p0, p1, v3}, Lcom/android/incallui/spam/SpamCallListListener;->createActivityPendingIntent(Lcom/android/incallui/call/DialerCall;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    const v4, 0x7f08011f

    invoke-direct {v1, v4, v2, v3}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 214
    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v1

    .line 208
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$Action$Builder;

    iget-object v2, p0, Lcom/android/incallui/spam/SpamCallListListener;->context:Landroid/content/Context;

    const v3, 0x7f11046f

    .line 219
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 220
    invoke-direct {p0, p1}, Lcom/android/incallui/spam/SpamCallListListener;->createBlockReportSpamPendingIntent(Lcom/android/incallui/call/DialerCall;)Landroid/app/PendingIntent;

    move-result-object v3

    const v4, 0x7f0800db

    invoke-direct {v1, v4, v2, v3}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 221
    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v1

    .line 216
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/spam/SpamCallListListener;->context:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 223
    invoke-direct {p0, p1}, Lcom/android/incallui/spam/SpamCallListListener;->getDisplayNumber(Lcom/android/incallui/call/DialerCall;)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f110347

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 222
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 224
    iget-object v1, p0, Lcom/android/incallui/spam/SpamCallListListener;->context:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 225
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v1, p1, v2, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method private showNotification(Lcom/android/incallui/call/DialerCall;)V
    .locals 1

    .line 122
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->isSpam()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-direct {p0, p1}, Lcom/android/incallui/spam/SpamCallListListener;->maybeShowSpamCallNotification(Lcom/android/incallui/call/DialerCall;)V

    goto :goto_0

    .line 125
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/incallui/spam/SpamCallListListener;->maybeShowNonSpamCallNotification(Lcom/android/incallui/call/DialerCall;)V

    :goto_0
    return-void
.end method

.method private showSpamCallNotification(Lcom/android/incallui/call/DialerCall;)V
    .locals 6

    .line 313
    invoke-direct {p0, p1}, Lcom/android/incallui/spam/SpamCallListListener;->createAfterCallNotificationBuilder(Lcom/android/incallui/call/DialerCall;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/spam/SpamCallListListener;->context:Landroid/content/Context;

    const v2, 0x7f08022c

    .line 314
    invoke-static {v1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/spam/SpamCallListListener;->context:Landroid/content/Context;

    const v2, 0x7f110470

    .line 315
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v2, p0, Lcom/android/incallui/spam/SpamCallListListener;->context:Landroid/content/Context;

    const v3, 0x7f110471

    .line 318
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    .line 316
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$Action$Builder;

    iget-object v2, p0, Lcom/android/incallui/spam/SpamCallListListener;->context:Landroid/content/Context;

    const v3, 0x7f11046d

    .line 323
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 324
    invoke-direct {p0, p1}, Lcom/android/incallui/spam/SpamCallListListener;->createNotSpamPendingIntent(Lcom/android/incallui/call/DialerCall;)Landroid/app/PendingIntent;

    move-result-object v3

    const v4, 0x7f0800ed

    invoke-direct {v1, v4, v2, v3}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 325
    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v1

    .line 320
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$Action$Builder;

    iget-object v2, p0, Lcom/android/incallui/spam/SpamCallListListener;->context:Landroid/content/Context;

    const v3, 0x7f110467

    .line 330
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 331
    invoke-direct {p0, p1}, Lcom/android/incallui/spam/SpamCallListListener;->createBlockReportSpamPendingIntent(Lcom/android/incallui/call/DialerCall;)Landroid/app/PendingIntent;

    move-result-object v3

    const v4, 0x7f0800db

    invoke-direct {v1, v4, v2, v3}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 332
    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v1

    .line 327
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/spam/SpamCallListListener;->context:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 334
    invoke-direct {p0, p1}, Lcom/android/incallui/spam/SpamCallListListener;->getDisplayNumber(Lcom/android/incallui/call/DialerCall;)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f110472

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 333
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 335
    iget-object v1, p0, Lcom/android/incallui/spam/SpamCallListListener;->context:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 336
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v1, p1, v2, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public onCallListChange(Lcom/android/incallui/call/CallList;)V
    .locals 0

    return-void
.end method

.method public onDisconnect(Lcom/android/incallui/call/DialerCall;)V
    .locals 3

    .line 104
    invoke-direct {p0, p1}, Lcom/android/incallui/spam/SpamCallListListener;->shouldShowAfterCallNotification(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 109
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getNumber()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/spam/SpamCallListListener;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/dialer/location/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/android/incallui/spam/SpamCallListListener;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/dialer/blocking/FilteredNumbersUtil;->canBlockNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/spam/SpamCallListListener;->context:Landroid/content/Context;

    .line 111
    invoke-static {v1}, Lcom/android/dialer/blocking/FilteredNumberCompat;->canAttemptBlockOperations(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    return-void

    .line 117
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/incallui/spam/SpamCallListListener;->showNotification(Lcom/android/incallui/call/DialerCall;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onHandoverToWifiFailed(Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/call/DialerCall;)V
    .locals 4

    .line 69
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 73
    :cond_0
    new-instance v1, Lcom/android/incallui/spam/SpamCallListListener$1;

    invoke-direct {v1, p0, p1}, Lcom/android/incallui/spam/SpamCallListListener$1;-><init>(Lcom/android/incallui/spam/SpamCallListListener;Lcom/android/incallui/call/DialerCall;)V

    .line 80
    new-instance p1, Lcom/android/incallui/spam/NumberInCallHistoryTask;

    iget-object v2, p0, Lcom/android/incallui/spam/SpamCallListListener;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/dialer/location/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v2, v1, v0, v3}, Lcom/android/incallui/spam/NumberInCallHistoryTask;-><init>(Landroid/content/Context;Lcom/android/incallui/spam/NumberInCallHistoryTask$Listener;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Lcom/android/incallui/spam/NumberInCallHistoryTask;->submitTask()V

    return-void
.end method

.method public onInternationalCallOnWifi(Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    return-void
.end method

.method public onSessionModificationStateChange(Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    return-void
.end method

.method public onUpgradeToVideo(Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    return-void
.end method

.method public onWiFiToLteHandover(Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    return-void
.end method
