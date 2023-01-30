.class public Lcom/android/dialer/app/calllog/MissedCallNotifier;
.super Ljava/lang/Object;
.source "MissedCallNotifier.java"

# interfaces
.implements Lcom/android/dialer/common/concurrent/DialerExecutor$Worker;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/dialer/common/concurrent/DialerExecutor$Worker<",
        "Landroidx/core/util/Pair<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field static final NOTIFICATION_GROUP:Ljava/lang/String; = "MissedCall"

.field private static final NOTIFICATION_ID:I = 0x1

.field static final NOTIFICATION_TAG_PREFIX:Ljava/lang/String; = "MissedCall_"


# instance fields
.field private final callLogNotificationsQueryHelper:Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper;

.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/dialer/app/calllog/MissedCallNotifier;->context:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/android/dialer/app/calllog/MissedCallNotifier;->callLogNotificationsQueryHelper:Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper;

    return-void
.end method

.method public static cancelAllMissedCallNotifications(Landroid/content/Context;)V
    .locals 6

    .line 232
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 233
    invoke-virtual {p0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 234
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v5, "MissedCall_"

    .line 235
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 236
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-virtual {p0, v4, v3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static cancelSingleMissedCallNotification(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "MissedCallNotifier.cancelSingleMissedCallNotification"

    const-string/jumbo v0, "unable to cancel notification, uri is null"

    .line 246
    invoke-static {p1, v0, p0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 251
    :cond_0
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 252
    invoke-static {p1}, Lcom/android/dialer/app/calllog/MissedCallNotifier;->getNotificationTagForCallUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 253
    invoke-static {}, Lcom/android/dialer/app/calllog/MissedCallNotifier;->getNotificationTagForGroupSummary()Ljava/lang/String;

    move-result-object v1

    .line 256
    invoke-virtual {p0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    array-length v3, v2

    move v4, v0

    :goto_0
    if-ge v0, v3, :cond_4

    aget-object v5, v2, v0

    .line 257
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 261
    :cond_1
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 262
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    invoke-virtual {p0, v6, v5}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    const-string v5, "MissedCall_"

    .line 263
    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    add-int/lit8 v4, v4, 0x1

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    if-nez v4, :cond_5

    const/4 p1, 0x1

    .line 270
    invoke-virtual {p0, v1, p1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    :cond_5
    return-void
.end method

.method private closeSystemDialogs(Landroid/content/Context;)V
    .locals 2

    .line 476
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private configureLedOnNotification(Landroid/app/Notification;)V
    .locals 1

    .line 470
    iget v0, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/app/Notification;->flags:I

    .line 471
    iget v0, p1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p1, Landroid/app/Notification;->defaults:I

    return-void
.end method

.method private createCallBackPendingIntent(Ljava/lang/String;Landroid/net/Uri;)Landroid/app/PendingIntent;
    .locals 3

    .line 448
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/dialer/app/calllog/MissedCallNotifier;->context:Landroid/content/Context;

    const-class v2, Lcom/android/dialer/app/calllog/CallLogNotificationsService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.android.dialer.calllog.CALL_BACK_FROM_MISSED_CALL_NOTIFICATION"

    .line 449
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.telecom.extra.NOTIFICATION_PHONE_NUMBER"

    .line 450
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 454
    iget-object p1, p0, Lcom/android/dialer/app/calllog/MissedCallNotifier;->context:Landroid/content/Context;

    const/4 p2, 0x0

    const/high16 v1, 0x8000000

    invoke-static {p1, p2, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private createCallLogPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    const/4 v0, 0x0

    .line 430
    invoke-direct {p0, v0}, Lcom/android/dialer/app/calllog/MissedCallNotifier;->createCallLogPendingIntent(Landroid/net/Uri;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private createCallLogPendingIntent(Landroid/net/Uri;)Landroid/app/PendingIntent;
    .locals 3

    .line 440
    iget-object v0, p0, Lcom/android/dialer/app/calllog/MissedCallNotifier;->context:Landroid/content/Context;

    .line 441
    invoke-static {v0}, Lcom/android/dialer/app/calllog/CallLogActivity;->getShowTabIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 443
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 444
    iget-object p1, p0, Lcom/android/dialer/app/calllog/MissedCallNotifier;->context:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private createNotificationBuilder()Landroid/app/Notification$Builder;
    .locals 4

    .line 377
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/dialer/app/calllog/MissedCallNotifier;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "MissedCall"

    .line 378
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x7f08022f

    .line 379
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/app/calllog/MissedCallNotifier;->context:Landroid/content/Context;

    .line 380
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600be

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 381
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 382
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 383
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x2

    .line 384
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method private createNotificationBuilder(Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;)Landroid/app/Notification$Builder;
    .locals 3

    .line 389
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/MissedCallNotifier;->createNotificationBuilder()Landroid/app/Notification$Builder;

    move-result-object v0

    iget-wide v1, p1, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;->dateMs:J

    .line 390
    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/app/calllog/MissedCallNotifier;->context:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;->callsUri:Landroid/net/Uri;

    .line 392
    invoke-static {v1, v2}, Lcom/android/dialer/app/calllog/CallLogNotificationsService;->createCancelSingleMissedCallPendingIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 391
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object p1, p1, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;->callsUri:Landroid/net/Uri;

    .line 394
    invoke-direct {p0, p1}, Lcom/android/dialer/app/calllog/MissedCallNotifier;->createCallLogPendingIntent(Landroid/net/Uri;)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 395
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastO()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "phone_missed_call"

    .line 396
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    :cond_0
    return-object p1
.end method

.method private createSendSmsFromNotificationPendingIntent(Ljava/lang/String;Landroid/net/Uri;)Landroid/app/PendingIntent;
    .locals 3

    .line 459
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/dialer/app/calllog/MissedCallNotifier;->context:Landroid/content/Context;

    const-class v2, Lcom/android/dialer/app/calllog/CallLogNotificationsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.android.dialer.calllog.SEND_SMS_FROM_MISSED_CALL_NOTIFICATION"

    .line 460
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "MISSED_CALL_NUMBER"

    .line 461
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 462
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 465
    iget-object p1, p0, Lcom/android/dialer/app/calllog/MissedCallNotifier;->context:Landroid/content/Context;

    const/4 p2, 0x0

    const/high16 v1, 0x8000000

    invoke-static {p1, p2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method static getIstance(Landroid/content/Context;)Lcom/android/dialer/app/calllog/MissedCallNotifier;
    .locals 2

    .line 77
    new-instance v0, Lcom/android/dialer/app/calllog/MissedCallNotifier;

    invoke-static {p0}, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper;->getInstance(Landroid/content/Context;)Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/app/calllog/MissedCallNotifier;-><init>(Landroid/content/Context;Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper;)V

    return-object v0
.end method

.method private getNotificationForCall(Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;Ljava/lang/String;)Landroid/app/Notification;
    .locals 9

    .line 305
    iget-object v0, p0, Lcom/android/dialer/app/calllog/MissedCallNotifier;->callLogNotificationsQueryHelper:Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper;

    iget-object v1, p1, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;->number:Ljava/lang/String;

    iget v2, p1, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;->numberPresentation:I

    iget-object v3, p1, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;->countryIso:Ljava/lang/String;

    .line 306
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper;->getContactInfo(Ljava/lang/String;ILjava/lang/String;)Lcom/android/dialer/phonenumbercache/ContactInfo;

    move-result-object v0

    .line 311
    iget-wide v1, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->userType:J

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const v1, 0x7f110370

    goto :goto_0

    :cond_0
    const v1, 0x7f11036b

    .line 316
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/dialer/app/calllog/MissedCallNotifier;->createNotificationBuilder(Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dialer/app/calllog/MissedCallNotifier;->context:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 318
    invoke-direct {p0, p1}, Lcom/android/dialer/app/calllog/MissedCallNotifier;->createNotificationBuilder(Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 320
    iget-object v4, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->name:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->name:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->number:Ljava/lang/String;

    .line 321
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 327
    :cond_1
    iget-object v4, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->name:Ljava/lang/String;

    goto :goto_2

    .line 324
    :cond_2
    :goto_1
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v4

    iget-object v5, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->name:Ljava/lang/String;

    sget-object v6, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 325
    invoke-virtual {v4, v5, v6}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v4

    .line 323
    invoke-static {v4}, Lcom/android/contacts/common/compat/PhoneNumberUtilsCompat;->createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    :goto_2
    if-eqz p2, :cond_3

    .line 331
    iget-object v5, p0, Lcom/android/dialer/app/calllog/MissedCallNotifier;->context:Landroid/content/Context;

    const v6, 0x7f1103b6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v4, 0x1

    aput-object p2, v7, v4

    .line 332
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 335
    :cond_3
    new-instance p2, Lcom/android/dialer/app/contactinfo/ContactPhotoLoader;

    iget-object v5, p0, Lcom/android/dialer/app/calllog/MissedCallNotifier;->context:Landroid/content/Context;

    invoke-direct {p2, v5, v0}, Lcom/android/dialer/app/contactinfo/ContactPhotoLoader;-><init>(Landroid/content/Context;Lcom/android/dialer/phonenumbercache/ContactInfo;)V

    .line 336
    invoke-virtual {p2}, Lcom/android/dialer/app/contactinfo/ContactPhotoLoader;->loadPhotoIcon()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 338
    invoke-virtual {v3, p2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 341
    :cond_4
    iget-object p2, p0, Lcom/android/dialer/app/calllog/MissedCallNotifier;->context:Landroid/content/Context;

    .line 342
    invoke-virtual {p2, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v3, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 343
    invoke-virtual {p2, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 347
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    .line 350
    iget-object p2, p0, Lcom/android/dialer/app/calllog/MissedCallNotifier;->context:Landroid/content/Context;

    invoke-static {p2}, Landroidx/core/os/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 351
    iget-object p2, p1, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;->number:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p1, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;->number:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/dialer/app/calllog/MissedCallNotifier;->context:Landroid/content/Context;

    const v1, 0x7f11025c

    .line 352
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 353
    new-instance p2, Landroid/app/Notification$Action$Builder;

    iget-object v0, p0, Lcom/android/dialer/app/calllog/MissedCallNotifier;->context:Landroid/content/Context;

    const v1, 0x7f080120

    .line 355
    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/app/calllog/MissedCallNotifier;->context:Landroid/content/Context;

    const v2, 0x7f11036c

    .line 356
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;->number:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;->callsUri:Landroid/net/Uri;

    .line 357
    invoke-direct {p0, v2, v4}, Lcom/android/dialer/app/calllog/MissedCallNotifier;->createCallBackPendingIntent(Ljava/lang/String;Landroid/net/Uri;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-direct {p2, v0, v1, v2}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 358
    invoke-virtual {p2}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p2

    .line 353
    invoke-virtual {v3, p2}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 360
    iget-object p2, p1, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;->number:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/dialer/phonenumberutil/PhoneNumberHelper;->isUriNumber(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 361
    new-instance p2, Landroid/app/Notification$Action$Builder;

    iget-object v0, p0, Lcom/android/dialer/app/calllog/MissedCallNotifier;->context:Landroid/content/Context;

    const v1, 0x7f0801d3

    .line 363
    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/app/calllog/MissedCallNotifier;->context:Landroid/content/Context;

    const v2, 0x7f11036d

    .line 364
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;->number:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;->callsUri:Landroid/net/Uri;

    .line 365
    invoke-direct {p0, v2, p1}, Lcom/android/dialer/app/calllog/MissedCallNotifier;->createSendSmsFromNotificationPendingIntent(Ljava/lang/String;Landroid/net/Uri;)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-direct {p2, v0, v1, p1}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 366
    invoke-virtual {p2}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p1

    .line 361
    invoke-virtual {v3, p1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 371
    :cond_5
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 372
    invoke-direct {p0, p1}, Lcom/android/dialer/app/calllog/MissedCallNotifier;->configureLedOnNotification(Landroid/app/Notification;)V

    return-object p1
.end method

.method private getNotificationMgr()Landroid/app/NotificationManager;
    .locals 2

    .line 480
    iget-object v0, p0, Lcom/android/dialer/app/calllog/MissedCallNotifier;->context:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method private static getNotificationTagForCall(Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;)Ljava/lang/String;
    .locals 0

    .line 279
    iget-object p0, p0, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;->callsUri:Landroid/net/Uri;

    invoke-static {p0}, Lcom/android/dialer/app/calllog/MissedCallNotifier;->getNotificationTagForCallUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getNotificationTagForCallUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MissedCall_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getNotificationTagForGroupSummary()Ljava/lang/String;
    .locals 1

    const-string v0, "MissedCall_GroupSummary"

    return-object v0
.end method


# virtual methods
.method public callBackFromMissedCall(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2

    .line 405
    iget-object v0, p0, Lcom/android/dialer/app/calllog/MissedCallNotifier;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/dialer/app/calllog/MissedCallNotifier;->closeSystemDialogs(Landroid/content/Context;)V

    .line 406
    iget-object v0, p0, Lcom/android/dialer/app/calllog/MissedCallNotifier;->context:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper;->markSingleMissedCallInCallLogAsRead(Landroid/content/Context;Landroid/net/Uri;)V

    .line 407
    iget-object v0, p0, Lcom/android/dialer/app/calllog/MissedCallNotifier;->context:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/dialer/app/calllog/MissedCallNotifier;->cancelSingleMissedCallNotification(Landroid/content/Context;Landroid/net/Uri;)V

    .line 408
    iget-object p2, p0, Lcom/android/dialer/app/calllog/MissedCallNotifier;->context:Landroid/content/Context;

    new-instance v0, Lcom/android/dialer/callintent/CallIntentBuilder;

    sget-object v1, Lcom/android/dialer/callintent/CallInitiationType$Type;->MISSED_CALL_NOTIFICATION:Lcom/android/dialer/callintent/CallInitiationType$Type;

    invoke-direct {v0, p1, v1}, Lcom/android/dialer/callintent/CallIntentBuilder;-><init>(Ljava/lang/String;Lcom/android/dialer/callintent/CallInitiationType$Type;)V

    .line 411
    invoke-virtual {v0}, Lcom/android/dialer/callintent/CallIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000000

    .line 412
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 408
    invoke-static {p2, p1}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic doInBackground(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 60
    check-cast p1, Landroidx/core/util/Pair;

    invoke-virtual {p0, p1}, Lcom/android/dialer/app/calllog/MissedCallNotifier;->doInBackground(Landroidx/core/util/Pair;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public doInBackground(Landroidx/core/util/Pair;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 83
    iget-object v0, p1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/dialer/app/calllog/MissedCallNotifier;->updateMissedCallNotification(ILjava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public insertPostCallNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 287
    iget-object v0, p0, Lcom/android/dialer/app/calllog/MissedCallNotifier;->callLogNotificationsQueryHelper:Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper;

    invoke-virtual {v0}, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper;->getNewMissedCalls()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 288
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 289
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;

    .line 290
    iget-object v2, v1, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;->number:Ljava/lang/String;

    const-string v3, "tel:"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 292
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/MissedCallNotifier;->getNotificationMgr()Landroid/app/NotificationManager;

    move-result-object p1

    .line 294
    invoke-static {v1}, Lcom/android/dialer/app/calllog/MissedCallNotifier;->getNotificationTagForCall(Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    .line 296
    invoke-direct {p0, v1, p2}, Lcom/android/dialer/app/calllog/MissedCallNotifier;->getNotificationForCall(Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object p2

    .line 293
    invoke-virtual {p1, v0, v2, p2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    :cond_1
    return-void
.end method

.method public sendSmsFromMissedCall(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/android/dialer/app/calllog/MissedCallNotifier;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/dialer/app/calllog/MissedCallNotifier;->closeSystemDialogs(Landroid/content/Context;)V

    .line 418
    iget-object v0, p0, Lcom/android/dialer/app/calllog/MissedCallNotifier;->context:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper;->markSingleMissedCallInCallLogAsRead(Landroid/content/Context;Landroid/net/Uri;)V

    .line 419
    iget-object v0, p0, Lcom/android/dialer/app/calllog/MissedCallNotifier;->context:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/dialer/app/calllog/MissedCallNotifier;->cancelSingleMissedCallNotification(Landroid/content/Context;Landroid/net/Uri;)V

    .line 420
    iget-object p2, p0, Lcom/android/dialer/app/calllog/MissedCallNotifier;->context:Landroid/content/Context;

    .line 421
    invoke-static {p1}, Lcom/android/dialer/util/IntentUtil;->getSendSmsIntent(Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 420
    invoke-static {p2, p1}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method updateMissedCallNotification(ILjava/lang/String;)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 102
    iget-object v2, v0, Lcom/android/dialer/app/calllog/MissedCallNotifier;->callLogNotificationsQueryHelper:Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper;

    invoke-virtual {v2}, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper;->getNewMissedCalls()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 104
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    if-nez v1, :cond_2

    .line 106
    :cond_1
    iget-object v1, v0, Lcom/android/dialer/app/calllog/MissedCallNotifier;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper;->markAllMissedCallsInCallLogAsRead(Landroid/content/Context;)V

    .line 107
    iget-object v1, v0, Lcom/android/dialer/app/calllog/MissedCallNotifier;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/dialer/app/calllog/MissedCallNotifier;->cancelAllMissedCallNotifications(Landroid/content/Context;)V

    return-void

    :cond_2
    const-string v3, "MissedCallNotifier.updateMissedCallNotification"

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_4

    if-eq v1, v4, :cond_3

    .line 113
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-eq v1, v6, :cond_3

    .line 114
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Call count does not match call log count. count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " newCalls.size(): "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v6, v5, [Ljava/lang/Object;

    .line 114
    invoke-static {v3, v1, v6}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    :cond_4
    if-ne v1, v4, :cond_5

    return-void

    .line 131
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/dialer/app/calllog/MissedCallNotifier;->createNotificationBuilder()Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v6, 0x1

    if-eqz v2, :cond_6

    move v7, v6

    goto :goto_0

    :cond_6
    move v7, v5

    :goto_0
    if-ne v1, v6, :cond_b

    if-eqz v7, :cond_7

    .line 137
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;

    goto :goto_1

    :cond_7
    new-instance v1, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    const/16 v19, 0x0

    move-object v8, v1

    move-object/from16 v11, p2

    invoke-direct/range {v8 .. v19}, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;-><init>(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 151
    :goto_1
    iget-object v2, v0, Lcom/android/dialer/app/calllog/MissedCallNotifier;->callLogNotificationsQueryHelper:Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper;

    iget-object v8, v1, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;->number:Ljava/lang/String;

    iget v9, v1, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;->numberPresentation:I

    iget-object v10, v1, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;->countryIso:Ljava/lang/String;

    .line 152
    invoke-virtual {v2, v8, v9, v10}, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper;->getContactInfo(Ljava/lang/String;ILjava/lang/String;)Lcom/android/dialer/phonenumbercache/ContactInfo;

    move-result-object v2

    .line 154
    iget-wide v8, v2, Lcom/android/dialer/phonenumbercache/ContactInfo;->userType:J

    const-wide/16 v10, 0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_8

    const v8, 0x7f110370

    goto :goto_2

    :cond_8
    const v8, 0x7f11036b

    .line 159
    :goto_2
    iget-object v9, v2, Lcom/android/dialer/phonenumbercache/ContactInfo;->name:Ljava/lang/String;

    iget-object v10, v2, Lcom/android/dialer/phonenumbercache/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a

    iget-object v9, v2, Lcom/android/dialer/phonenumbercache/ContactInfo;->name:Ljava/lang/String;

    iget-object v10, v2, Lcom/android/dialer/phonenumbercache/ContactInfo;->number:Ljava/lang/String;

    .line 160
    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    goto :goto_3

    .line 166
    :cond_9
    iget-object v9, v2, Lcom/android/dialer/phonenumbercache/ContactInfo;->name:Ljava/lang/String;

    goto :goto_4

    .line 163
    :cond_a
    :goto_3
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v9

    iget-object v10, v2, Lcom/android/dialer/phonenumbercache/ContactInfo;->name:Ljava/lang/String;

    sget-object v11, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 164
    invoke-virtual {v9, v10, v11}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v9

    .line 162
    invoke-static {v9}, Lcom/android/contacts/common/compat/PhoneNumberUtilsCompat;->createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 170
    :goto_4
    invoke-static {}, Lcom/android/incallui/shaken/MissedCallNotifierVerstat;->getInstance()Lcom/android/incallui/shaken/MissedCallNotifierVerstat;

    move-result-object v10

    iget-object v11, v0, Lcom/android/dialer/app/calllog/MissedCallNotifier;->context:Landroid/content/Context;

    iget v1, v1, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;->verstat:I

    invoke-virtual {v10, v11, v1, v9}, Lcom/android/incallui/shaken/MissedCallNotifierVerstat;->getContentText(Landroid/content/Context;ILjava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v1

    .line 173
    new-instance v9, Lcom/android/dialer/app/contactinfo/ContactPhotoLoader;

    iget-object v10, v0, Lcom/android/dialer/app/calllog/MissedCallNotifier;->context:Landroid/content/Context;

    invoke-direct {v9, v10, v2}, Lcom/android/dialer/app/contactinfo/ContactPhotoLoader;-><init>(Landroid/content/Context;Lcom/android/dialer/phonenumbercache/ContactInfo;)V

    .line 174
    invoke-virtual {v9}, Lcom/android/dialer/app/contactinfo/ContactPhotoLoader;->loadPhotoIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 176
    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    goto :goto_5

    :cond_b
    const v8, 0x7f11036f

    .line 180
    iget-object v2, v0, Lcom/android/dialer/app/calllog/MissedCallNotifier;->context:Landroid/content/Context;

    const v9, 0x7f11036e

    new-array v10, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v10, v5

    invoke-virtual {v2, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 185
    :cond_c
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/dialer/app/calllog/MissedCallNotifier;->createNotificationBuilder()Landroid/app/Notification$Builder;

    move-result-object v2

    .line 186
    iget-object v9, v0, Lcom/android/dialer/app/calllog/MissedCallNotifier;->context:Landroid/content/Context;

    .line 187
    invoke-virtual {v9, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 188
    invoke-direct/range {p0 .. p0}, Lcom/android/dialer/app/calllog/MissedCallNotifier;->createCallLogPendingIntent()Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v9

    iget-object v10, v0, Lcom/android/dialer/app/calllog/MissedCallNotifier;->context:Landroid/content/Context;

    .line 190
    invoke-static {v10}, Lcom/android/dialer/app/calllog/CallLogNotificationsService;->createCancelAllMissedCallsPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v10

    .line 189
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 193
    iget-object v9, v0, Lcom/android/dialer/app/calllog/MissedCallNotifier;->context:Landroid/content/Context;

    .line 194
    invoke-virtual {v9, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 195
    invoke-virtual {v8, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 196
    invoke-direct/range {p0 .. p0}, Lcom/android/dialer/app/calllog/MissedCallNotifier;->createCallLogPendingIntent()Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v8, v0, Lcom/android/dialer/app/calllog/MissedCallNotifier;->context:Landroid/content/Context;

    .line 198
    invoke-static {v8}, Lcom/android/dialer/app/calllog/CallLogNotificationsService;->createCancelAllMissedCallsPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v8

    .line 197
    invoke-virtual {v1, v8}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 199
    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 200
    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 201
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    .line 202
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastO()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "phone_missed_call"

    .line 203
    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 206
    :cond_d
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 207
    invoke-direct {v0, v1}, Lcom/android/dialer/app/calllog/MissedCallNotifier;->configureLedOnNotification(Landroid/app/Notification;)V

    new-array v2, v5, [Ljava/lang/Object;

    const-string v4, "adding missed call notification"

    .line 209
    invoke-static {v3, v4, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    invoke-direct/range {p0 .. p0}, Lcom/android/dialer/app/calllog/MissedCallNotifier;->getNotificationMgr()Landroid/app/NotificationManager;

    move-result-object v2

    invoke-static {}, Lcom/android/dialer/app/calllog/MissedCallNotifier;->getNotificationTagForGroupSummary()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v6, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method
