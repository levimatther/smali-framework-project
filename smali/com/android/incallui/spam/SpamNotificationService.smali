.class public Lcom/android/incallui/spam/SpamNotificationService;
.super Landroid/app/Service;
.source "SpamNotificationService.java"


# static fields
.field private static final EXTRA_CALL_ID:Ljava/lang/String; = "service_call_id"

.field private static final EXTRA_CALL_START_TIME_MILLIS:Ljava/lang/String; = "service_call_start_time_millis"

.field private static final EXTRA_CONTACT_LOOKUP_RESULT_TYPE:Ljava/lang/String; = "service_contact_lookup_result_type"

.field private static final EXTRA_NOTIFICATION_ID:Ljava/lang/String; = "service_notification_id"

.field private static final EXTRA_PHONE_NUMBER:Ljava/lang/String; = "service_phone_number"

.field private static final TAG:Ljava/lang/String; = "SpamNotificationSvc"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static createServiceIntent(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 3

    .line 56
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/incallui/spam/SpamNotificationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getNumber()Ljava/lang/String;

    move-result-object p0

    const-string p2, "service_phone_number"

    invoke-virtual {v0, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getUniqueCallId()Ljava/lang/String;

    move-result-object p0

    const-string p2, "service_call_id"

    invoke-virtual {v0, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getTimeAddedMs()J

    move-result-wide v1

    const-string p0, "service_call_start_time_millis"

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p0, "service_notification_id"

    .line 61
    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 62
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getLogState()Lcom/android/incallui/call/DialerCall$LogState;

    move-result-object p0

    iget-object p0, p0, Lcom/android/incallui/call/DialerCall$LogState;->contactLookupResult:Lcom/android/dialer/logging/ContactLookupResult$Type;

    const-string p1, "service_contact_lookup_result_type"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object v0
.end method

.method private logCallImpression(Landroid/content/Intent;Lcom/android/dialer/logging/DialerImpression$Type;)V
    .locals 5

    .line 129
    invoke-static {p0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    const-string v1, "service_call_id"

    .line 132
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "service_call_start_time_millis"

    const-wide/16 v3, 0x0

    .line 133
    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 130
    invoke-interface {v0, p2, v1, v2, v3}, Lcom/android/dialer/logging/LoggingBindings;->logCallImpression(Lcom/android/dialer/logging/DialerImpression$Type;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroy()V
    .locals 3

    .line 124
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SpamNotificationSvc"

    const-string v2, "onDestroy"

    .line 125
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 8

    const/4 p2, 0x0

    new-array p3, p2, [Ljava/lang/Object;

    const-string v0, "SpamNotificationSvc"

    const-string v1, "onStartCommand"

    .line 75
    invoke-static {v0, v1, p3}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p3, 0x2

    if-nez p1, :cond_0

    new-array p1, p2, [Ljava/lang/Object;

    const-string p2, "Null intent"

    .line 77
    invoke-static {v0, p2, p1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/incallui/spam/SpamNotificationService;->stopSelf()V

    return p3

    :cond_0
    const-string v0, "service_phone_number"

    .line 82
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "service_notification_id"

    const/4 v2, 0x1

    .line 83
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 84
    invoke-static {p0}, Lcom/android/dialer/location/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "service_contact_lookup_result_type"

    .line 86
    invoke-virtual {p1, v3, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/android/dialer/logging/ContactLookupResult$Type;->forNumber(I)Lcom/android/dialer/logging/ContactLookupResult$Type;

    move-result-object v6

    const-string v3, "notification"

    .line 88
    invoke-virtual {p0, v3}, Lcom/android/incallui/spam/SpamNotificationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 89
    invoke-virtual {v3, v0, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 91
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x4d038271

    if-eq v4, v5, :cond_2

    const v5, -0x1c4a177d

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_1
    const-string v4, "com.android.incallui.spam.ACTION_MARK_NUMBER_AS_SPAM"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_2
    const-string p2, "com.android.incallui.spam.ACTION_MARK_NUMBER_AS_NOT_SPAM"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    move p2, v2

    goto :goto_1

    :cond_3
    :goto_0
    move p2, v3

    :goto_1
    if-eqz p2, :cond_5

    if-eq p2, v2, :cond_4

    goto :goto_2

    .line 105
    :cond_4
    sget-object p2, Lcom/android/dialer/logging/DialerImpression$Type;->SPAM_NOTIFICATION_SERVICE_ACTION_MARK_NUMBER_AS_NOT_SPAM:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/spam/SpamNotificationService;->logCallImpression(Landroid/content/Intent;Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 107
    invoke-static {p0}, Lcom/android/dialer/spam/Spam;->get(Landroid/content/Context;)Lcom/android/dialer/spam/SpamBindings;

    move-result-object v1

    const/4 v4, 0x1

    sget-object v5, Lcom/android/dialer/logging/ReportingLocation$Type;->FEEDBACK_PROMPT:Lcom/android/dialer/logging/ReportingLocation$Type;

    move-object v2, v0

    move-object v3, v7

    .line 108
    invoke-interface/range {v1 .. v6}, Lcom/android/dialer/spam/SpamBindings;->reportNotSpamFromAfterCallNotification(Ljava/lang/String;Ljava/lang/String;ILcom/android/dialer/logging/ReportingLocation$Type;Lcom/android/dialer/logging/ContactLookupResult$Type;)V

    goto :goto_2

    .line 93
    :cond_5
    sget-object p2, Lcom/android/dialer/logging/DialerImpression$Type;->SPAM_NOTIFICATION_SERVICE_ACTION_MARK_NUMBER_AS_SPAM:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/spam/SpamNotificationService;->logCallImpression(Landroid/content/Intent;Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 95
    invoke-static {p0}, Lcom/android/dialer/spam/Spam;->get(Landroid/content/Context;)Lcom/android/dialer/spam/SpamBindings;

    move-result-object v1

    const/4 v4, 0x1

    sget-object v5, Lcom/android/dialer/logging/ReportingLocation$Type;->FEEDBACK_PROMPT:Lcom/android/dialer/logging/ReportingLocation$Type;

    move-object v2, v0

    move-object v3, v7

    .line 96
    invoke-interface/range {v1 .. v6}, Lcom/android/dialer/spam/SpamBindings;->reportSpamFromAfterCallNotification(Ljava/lang/String;Ljava/lang/String;ILcom/android/dialer/logging/ReportingLocation$Type;Lcom/android/dialer/logging/ContactLookupResult$Type;)V

    .line 102
    new-instance p1, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

    invoke-direct {p1, p0}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0, v7}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->blockNumber(Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :goto_2
    invoke-virtual {p0}, Lcom/android/incallui/spam/SpamNotificationService;->stopSelf()V

    return p3
.end method
