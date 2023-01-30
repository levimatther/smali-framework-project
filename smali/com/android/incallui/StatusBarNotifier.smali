.class public Lcom/android/incallui/StatusBarNotifier;
.super Ljava/lang/Object;
.source "StatusBarNotifier.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/dialer/enrichedcall/EnrichedCallManager$StateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/StatusBarNotifier$StatusBarCallListener;
    }
.end annotation


# static fields
.field private static final NOTIFICATION_ID:I = 0x1

.field private static final NOTIFICATION_INCOMING_CALL:I = 0x2

.field private static final NOTIFICATION_INCOMING_CALL_QUIET:I = 0x3

.field private static final NOTIFICATION_IN_CALL:I = 0x1

.field private static final NOTIFICATION_NONE:I = 0x0

.field private static final NOTIFICATION_TAG:Ljava/lang/String; = "STATUS_BAR_NOTIFIER"

.field private static final PENDING_INTENT_REQUEST_CODE_FULL_SCREEN:I = 0x1

.field private static final PENDING_INTENT_REQUEST_CODE_NON_FULL_SCREEN:I

.field private static final VIBRATE_PATTERN:[J


# instance fields
.field private mCallState:I

.field private final mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

.field private mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

.field private final mContext:Landroid/content/Context;

.field private mCurrentNotification:I

.field private final mDialerRingtoneManager:Lcom/android/incallui/ringtone/DialerRingtoneManager;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mRingtone:Landroid/net/Uri;

.field private mSavedContent:Ljava/lang/String;

.field private mSavedContentTitle:Ljava/lang/String;

.field private mSavedIcon:I

.field private mSavedLargeIcon:Landroid/graphics/Bitmap;

.field private mStatusBarCallListener:Lcom/android/incallui/StatusBarNotifier$StatusBarCallListener;

.field private mVideoState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [J

    .line 117
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/incallui/StatusBarNotifier;->VIBRATE_PATTERN:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x3e8
        0x3e8
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/incallui/ContactInfoCache;)V
    .locals 3

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 124
    iput v0, p0, Lcom/android/incallui/StatusBarNotifier;->mCurrentNotification:I

    .line 125
    iput v0, p0, Lcom/android/incallui/StatusBarNotifier;->mCallState:I

    .line 126
    iput v0, p0, Lcom/android/incallui/StatusBarNotifier;->mVideoState:I

    .line 127
    iput v0, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedIcon:I

    const/4 v1, 0x0

    .line 128
    iput-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedContent:Ljava/lang/String;

    .line 135
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iput-object p1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    .line 137
    invoke-static {p1}, Lcom/android/incallui/ContactsPreferencesFactory;->newContactsPreferences(Landroid/content/Context;)Lcom/android/contacts/common/preference/ContactsPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    .line 138
    iput-object p2, p0, Lcom/android/incallui/StatusBarNotifier;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    .line 139
    const-class p2, Landroid/app/NotificationManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    .line 140
    new-instance p1, Lcom/android/incallui/ringtone/DialerRingtoneManager;

    new-instance p2, Lcom/android/incallui/ringtone/InCallTonePlayer;

    new-instance v1, Lcom/android/incallui/ringtone/ToneGeneratorFactory;

    invoke-direct {v1}, Lcom/android/incallui/ringtone/ToneGeneratorFactory;-><init>()V

    new-instance v2, Lcom/android/incallui/async/PausableExecutorImpl;

    invoke-direct {v2}, Lcom/android/incallui/async/PausableExecutorImpl;-><init>()V

    invoke-direct {p2, v1, v2}, Lcom/android/incallui/ringtone/InCallTonePlayer;-><init>(Lcom/android/incallui/ringtone/ToneGeneratorFactory;Lcom/android/incallui/async/PausableExecutor;)V

    .line 143
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v1

    invoke-direct {p1, p2, v1}, Lcom/android/incallui/ringtone/DialerRingtoneManager;-><init>(Lcom/android/incallui/ringtone/InCallTonePlayer;Lcom/android/incallui/call/CallList;)V

    iput-object p1, p0, Lcom/android/incallui/StatusBarNotifier;->mDialerRingtoneManager:Lcom/android/incallui/ringtone/DialerRingtoneManager;

    .line 144
    iput v0, p0, Lcom/android/incallui/StatusBarNotifier;->mCurrentNotification:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/StatusBarNotifier;Lcom/android/incallui/call/CallList;Lcom/android/incallui/call/DialerCall;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/android/incallui/StatusBarNotifier;->buildAndSendNotification(Lcom/android/incallui/call/CallList;Lcom/android/incallui/call/DialerCall;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/StatusBarNotifier;)Lcom/android/incallui/ringtone/DialerRingtoneManager;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/incallui/StatusBarNotifier;->mDialerRingtoneManager:Lcom/android/incallui/ringtone/DialerRingtoneManager;

    return-object p0
.end method

.method private addAcceptUpgradeRequestAction(Landroid/app/Notification$Builder;)V
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "StatusBarNotifier.addAcceptUpgradeRequestAction"

    const-string/jumbo v2, "will show \"accept upgrade\" action in the incoming call Notification"

    .line 981
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 984
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v1, "com.android.incallui.ACTION_ACCEPT_VIDEO_UPGRADE_REQUEST"

    .line 985
    invoke-static {v0, v1}, Lcom/android/incallui/StatusBarNotifier;->createNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 986
    new-instance v1, Landroid/app/Notification$Action$Builder;

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v3, 0x7f0801f7

    .line 988
    invoke-static {v2, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    const v3, 0x7f11034b

    const v4, 0x7f060141

    .line 989
    invoke-direct {p0, v3, v4}, Lcom/android/incallui/StatusBarNotifier;->getActionText(II)Landroid/text/Spannable;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 992
    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    .line 986
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    return-void
.end method

.method private addAnswerAction(Landroid/app/Notification$Builder;)V
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "StatusBarNotifier.addAnswerAction"

    const-string/jumbo v2, "will show \"answer\" action in the incoming call Notification"

    .line 921
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 924
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v1, "com.android.incallui.ACTION_ANSWER_VOICE_INCOMING_CALL"

    .line 925
    invoke-static {v0, v1}, Lcom/android/incallui/StatusBarNotifier;->createNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 926
    new-instance v1, Landroid/app/Notification$Action$Builder;

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v3, 0x7f0801b5

    .line 928
    invoke-static {v2, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    const v3, 0x7f11034c

    const v4, 0x7f060141

    .line 929
    invoke-direct {p0, v3, v4}, Lcom/android/incallui/StatusBarNotifier;->getActionText(II)Landroid/text/Spannable;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 932
    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    .line 926
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    return-void
.end method

.method private addDismissAction(Landroid/app/Notification$Builder;)V
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "StatusBarNotifier.addDismissAction"

    const-string/jumbo v2, "will show \"decline\" action in the incoming call Notification"

    .line 936
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 939
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v1, "com.android.incallui.ACTION_DECLINE_INCOMING_CALL"

    .line 940
    invoke-static {v0, v1}, Lcom/android/incallui/StatusBarNotifier;->createNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 941
    new-instance v1, Landroid/app/Notification$Action$Builder;

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v3, 0x7f0801ba

    .line 943
    invoke-static {v2, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    const v3, 0x7f110351

    const v4, 0x7f060144

    .line 944
    invoke-direct {p0, v3, v4}, Lcom/android/incallui/StatusBarNotifier;->getActionText(II)Landroid/text/Spannable;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 947
    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    .line 941
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    return-void
.end method

.method private addDismissUpgradeRequestAction(Landroid/app/Notification$Builder;)V
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "StatusBarNotifier.addDismissUpgradeRequestAction"

    const-string/jumbo v2, "will show \"dismiss upgrade\" action in the incoming call Notification"

    .line 996
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 999
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v1, "com.android.incallui.ACTION_DECLINE_VIDEO_UPGRADE_REQUEST"

    .line 1000
    invoke-static {v0, v1}, Lcom/android/incallui/StatusBarNotifier;->createNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1001
    new-instance v1, Landroid/app/Notification$Action$Builder;

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v3, 0x7f0801f7

    .line 1003
    invoke-static {v2, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    const v3, 0x7f110351

    const v4, 0x7f060144

    .line 1004
    invoke-direct {p0, v3, v4}, Lcom/android/incallui/StatusBarNotifier;->getActionText(II)Landroid/text/Spannable;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1007
    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    .line 1001
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    return-void
.end method

.method private addHangupAction(Landroid/app/Notification$Builder;)V
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "StatusBarNotifier.addHangupAction"

    const-string/jumbo v2, "will show \"hang-up\" action in the ongoing active call Notification"

    .line 951
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 954
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v1, "com.android.incallui.ACTION_HANG_UP_ONGOING_CALL"

    .line 955
    invoke-static {v0, v1}, Lcom/android/incallui/StatusBarNotifier;->createNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 956
    new-instance v1, Landroid/app/Notification$Action$Builder;

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v3, 0x7f0800dc

    .line 958
    invoke-static {v2, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v4, 0x7f110352

    .line 959
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 961
    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    .line 956
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    return-void
.end method

.method private addPersonReference(Landroid/app/Notification$Builder;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/call/DialerCall;)V
    .locals 4

    .line 642
    iget-object v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->lookupUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-wide v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->userType:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 643
    iget-object p2, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->lookupUri:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 644
    :cond_0
    invoke-virtual {p3}, Lcom/android/incallui/call/DialerCall;->getNumber()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 645
    invoke-virtual {p3}, Lcom/android/incallui/call/DialerCall;->getNumber()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    const-string v0, "tel"

    invoke-static {v0, p2, p3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    :cond_1
    :goto_0
    return-void
.end method

.method private addVideoCallAction(Landroid/app/Notification$Builder;)V
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "StatusBarNotifier.addVideoCallAction"

    const-string/jumbo v2, "will show \"video\" action in the incoming call Notification"

    .line 965
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 968
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v1, "com.android.incallui.ACTION_ANSWER_VIDEO_INCOMING_CALL"

    .line 969
    invoke-static {v0, v1}, Lcom/android/incallui/StatusBarNotifier;->createNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 970
    new-instance v1, Landroid/app/Notification$Action$Builder;

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v3, 0x7f0801f7

    .line 972
    invoke-static {v2, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    const v3, 0x7f11034f

    const v4, 0x7f060142

    .line 973
    invoke-direct {p0, v3, v4}, Lcom/android/incallui/StatusBarNotifier;->getActionText(II)Landroid/text/Spannable;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 977
    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    .line 970
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    return-void
.end method

.method private buildAndSendNotification(Lcom/android/incallui/call/CallList;Lcom/android/incallui/call/DialerCall;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 20

    move-object/from16 v10, p0

    move-object/from16 v11, p3

    .line 306
    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/StatusBarNotifier;->getCallToShow(Lcom/android/incallui/call/CallList;)Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 307
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_8

    .line 311
    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v12

    .line 314
    invoke-direct {v10, v0}, Lcom/android/incallui/StatusBarNotifier;->getIconToDisplay(Lcom/android/incallui/call/DialerCall;)I

    move-result v13

    .line 315
    iget-object v1, v10, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {v1, v11, v0}, Lcom/android/incallui/StatusBarNotifier;->getLargeIconToDisplay(Landroid/content/Context;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/call/DialerCall;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 316
    iget-wide v1, v11, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->userType:J

    invoke-direct {v10, v0, v1, v2}, Lcom/android/incallui/StatusBarNotifier;->getContentString(Lcom/android/incallui/call/DialerCall;J)Ljava/lang/String;

    move-result-object v15

    .line 317
    invoke-virtual {v10, v11, v0}, Lcom/android/incallui/StatusBarNotifier;->getContentTitle(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/call/DialerCall;)Ljava/lang/String;

    move-result-object v9

    .line 320
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/videotech/VideoTech;->getSessionModificationState()I

    move-result v1

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    if-ne v1, v8, :cond_1

    move/from16 v16, v6

    goto :goto_0

    :cond_1
    move/from16 v16, v7

    :goto_0
    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x2

    if-eq v12, v4, :cond_2

    if-eq v12, v5, :cond_2

    if-eqz v16, :cond_6

    .line 325
    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v1

    if-nez v1, :cond_6

    .line 326
    iget-object v1, v10, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/dialer/configprovider/ConfigProviderBindings;->get(Landroid/content/Context;)Lcom/android/dialer/configprovider/ConfigProvider;

    move-result-object v1

    const-string v2, "quiet_incoming_call_if_ui_showing"

    .line 327
    invoke-interface {v1, v2, v6}, Lcom/android/dialer/configprovider/ConfigProvider;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 329
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_1
    move v1, v8

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    move v2, v1

    goto :goto_4

    .line 334
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/call/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 335
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v6

    goto :goto_3

    :cond_5
    move v1, v7

    :goto_3
    if-eqz v1, :cond_3

    goto :goto_1

    :cond_6
    move v2, v6

    .line 343
    :goto_4
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getPhoneAccount()Landroid/telecom/PhoneAccount;

    move-result-object v1

    const/16 v17, 0x0

    if-eqz v1, :cond_7

    .line 345
    invoke-virtual {v1}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 346
    invoke-virtual {v1}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    .line 348
    :cond_7
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 358
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getVideoState()I

    move-result v17

    iget-object v1, v11, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactRingtoneUri:Landroid/net/Uri;

    move-object/from16 v18, v1

    move-object/from16 v1, p0

    move/from16 p1, v2

    move v2, v13

    move v11, v3

    move-object v3, v15

    move-object v4, v14

    move-object v5, v9

    move v11, v6

    move v6, v12

    move v11, v7

    move/from16 v7, v17

    move/from16 v8, p1

    move-object/from16 v19, v9

    move-object/from16 v9, v18

    .line 352
    invoke-direct/range {v1 .. v9}, Lcom/android/incallui/StatusBarNotifier;->checkForChangeAndSaveData(ILjava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;IIILandroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_8

    return-void

    :cond_8
    if-eqz v14, :cond_9

    .line 365
    invoke-direct {v10, v14}, Lcom/android/incallui/StatusBarNotifier;->getRoundedIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 371
    :cond_9
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, v10, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 373
    invoke-virtual {v1, v13}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, v10, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    .line 374
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, v10, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x7f0600be

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const-wide/16 v3, 0x0

    .line 376
    invoke-direct {v10, v0, v3, v4}, Lcom/android/incallui/StatusBarNotifier;->getContentString(Lcom/android/incallui/call/DialerCall;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 377
    invoke-direct {v10, v0, v12, v1}, Lcom/android/incallui/StatusBarNotifier;->setNotificationWhen(Lcom/android/incallui/call/DialerCall;ILandroid/app/Notification$Builder;)V

    .line 381
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/StatusBarNotifier;->getNotificationBuilder()Landroid/app/Notification$Builder;

    move-result-object v2

    .line 382
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    .line 385
    invoke-direct {v10, v11}, Lcom/android/incallui/StatusBarNotifier;->createLaunchPendingIntent(Z)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 388
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    if-nez v3, :cond_a

    .line 390
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/StatusBarNotifier;->getAnyPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    .line 393
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notificationType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v11, [Ljava/lang/Object;

    const-string v7, "StatusBarNotifier.buildAndSendNotification"

    invoke-static {v7, v3, v4}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "STATUS_BAR_NOTIFIER"

    const-string v4, "phone_ongoing_call"

    const/4 v8, 0x1

    if-eq v6, v8, :cond_10

    const/4 v8, 0x2

    if-eq v6, v8, :cond_d

    const/4 v8, 0x3

    if-eq v6, v8, :cond_c

    :cond_b
    :goto_5
    const/16 v17, 0x2

    goto :goto_6

    .line 414
    :cond_c
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastO()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 415
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto :goto_5

    :cond_d
    const/4 v8, 0x3

    .line 396
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastO()Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "phone_incoming_call"

    .line 397
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    :cond_e
    const/4 v9, 0x1

    .line 399
    invoke-direct {v10, v9}, Lcom/android/incallui/StatusBarNotifier;->createLaunchPendingIntent(Z)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-direct {v10, v2, v1}, Lcom/android/incallui/StatusBarNotifier;->configureFullScreenIntent(Landroid/app/Notification$Builder;Landroid/app/PendingIntent;)V

    const-string v1, "call"

    .line 401
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    const/4 v1, 0x2

    .line 403
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 404
    iget v4, v10, Lcom/android/incallui/StatusBarNotifier;->mCurrentNotification:I

    if-eq v4, v1, :cond_f

    new-array v4, v11, [Ljava/lang/Object;

    const-string v1, "Canceling old notification so this one can be noisy"

    .line 405
    invoke-static {v7, v1, v4}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 410
    iget-object v1, v10, Lcom/android/incallui/StatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v3, v9}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_5

    :cond_f
    move/from16 v17, v1

    goto :goto_6

    :cond_10
    move v9, v8

    const/4 v8, 0x3

    const/16 v17, 0x2

    .line 419
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastO()Z

    move-result v18

    if-eqz v18, :cond_12

    .line 420
    invoke-virtual {v1, v9}, Landroid/app/Notification$Builder;->setColorized(Z)Landroid/app/Notification$Builder;

    .line 421
    invoke-virtual {v2, v9}, Landroid/app/Notification$Builder;->setColorized(Z)Landroid/app/Notification$Builder;

    const/4 v1, 0x4

    if-eq v12, v1, :cond_11

    const/4 v9, 0x5

    if-eq v12, v9, :cond_11

    new-array v9, v11, [Ljava/lang/Object;

    const-string v8, "OUT_GONING"

    .line 424
    invoke-static {v7, v8, v9}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 425
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string v1, "calling"

    .line 426
    invoke-virtual {v9, v1, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    invoke-virtual {v2, v9}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 428
    :cond_11
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 435
    :cond_12
    :goto_6
    invoke-virtual {v2, v15}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 436
    invoke-virtual {v2, v13}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-object/from16 v1, v19

    .line 437
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 438
    invoke-virtual {v2, v14}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 439
    iget-object v1, v10, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    .line 440
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v4, v10, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 439
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    if-eqz v16, :cond_13

    .line 443
    invoke-virtual {v2, v11}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    .line 444
    invoke-direct {v10, v2}, Lcom/android/incallui/StatusBarNotifier;->addDismissUpgradeRequestAction(Landroid/app/Notification$Builder;)V

    .line 445
    invoke-direct {v10, v2}, Lcom/android/incallui/StatusBarNotifier;->addAcceptUpgradeRequestAction(Landroid/app/Notification$Builder;)V

    goto :goto_7

    .line 447
    :cond_13
    invoke-direct {v10, v0, v12, v2}, Lcom/android/incallui/StatusBarNotifier;->createIncomingCallNotification(Lcom/android/incallui/call/DialerCall;ILandroid/app/Notification$Builder;)V

    :goto_7
    move-object/from16 v1, p3

    move/from16 v4, v17

    .line 450
    invoke-direct {v10, v2, v1, v0}, Lcom/android/incallui/StatusBarNotifier;->addPersonReference(Landroid/app/Notification$Builder;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/call/DialerCall;)V

    .line 453
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 455
    iget-object v5, v10, Lcom/android/incallui/StatusBarNotifier;->mDialerRingtoneManager:Lcom/android/incallui/ringtone/DialerRingtoneManager;

    iget-object v8, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v5, v12, v8}, Lcom/android/incallui/ringtone/DialerRingtoneManager;->shouldPlayRingtone(ILandroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 456
    iget v5, v2, Landroid/app/Notification;->flags:I

    const/4 v8, 0x4

    or-int/2addr v5, v8

    iput v5, v2, Landroid/app/Notification;->flags:I

    .line 457
    iget-object v5, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactRingtoneUri:Landroid/net/Uri;

    iput-object v5, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 458
    new-instance v5, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v5}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 459
    invoke-virtual {v5, v4}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    const/4 v8, 0x6

    .line 460
    invoke-virtual {v5, v8}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 461
    invoke-virtual {v5}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v5

    iput-object v5, v2, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 462
    iget-object v5, v10, Lcom/android/incallui/StatusBarNotifier;->mDialerRingtoneManager:Lcom/android/incallui/ringtone/DialerRingtoneManager;

    iget-object v8, v10, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/incallui/ringtone/DialerRingtoneManager;->shouldVibrate(Landroid/content/ContentResolver;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 463
    sget-object v5, Lcom/android/incallui/StatusBarNotifier;->VIBRATE_PATTERN:[J

    iput-object v5, v2, Landroid/app/Notification;->vibrate:[J

    .line 466
    :cond_14
    iget-object v5, v10, Lcom/android/incallui/StatusBarNotifier;->mDialerRingtoneManager:Lcom/android/incallui/ringtone/DialerRingtoneManager;

    invoke-virtual {v5, v12}, Lcom/android/incallui/ringtone/DialerRingtoneManager;->shouldPlayCallWaitingTone(I)Z

    move-result v5

    if-eqz v5, :cond_15

    new-array v5, v11, [Ljava/lang/Object;

    const-string v8, "playing call waiting tone"

    .line 467
    invoke-static {v7, v8, v5}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 468
    iget-object v5, v10, Lcom/android/incallui/StatusBarNotifier;->mDialerRingtoneManager:Lcom/android/incallui/ringtone/DialerRingtoneManager;

    invoke-virtual {v5}, Lcom/android/incallui/ringtone/DialerRingtoneManager;->playCallWaitingTone()V

    .line 471
    :cond_15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "displaying notification for "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v7, v5, v8}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 476
    :try_start_0
    iget-object v5, v10, Lcom/android/incallui/StatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v7, 0x1

    invoke-virtual {v5, v3, v7, v2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getLatencyReport()Lcom/android/incallui/latencyreport/LatencyReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/latencyreport/LatencyReport;->onNotificationShown()V

    .line 492
    iput v6, v10, Lcom/android/incallui/StatusBarNotifier;->mCurrentNotification:I

    return-void

    :catch_0
    move-exception v0

    .line 479
    iget-object v2, v10, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/ActivityManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 480
    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 481
    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 482
    new-instance v2, Ljava/lang/RuntimeException;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget v1, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photoType:I

    .line 486
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v11

    iget-boolean v1, v3, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    .line 487
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v7, 0x1

    aput-object v1, v6, v7

    iget-wide v7, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 488
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v4

    const-string v1, "Error displaying notification with photo type: %d (low memory? %b, availMem: %d)"

    .line 483
    invoke-static {v5, v1, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_16
    :goto_8
    return-void
.end method

.method private cancelNotification()V
    .locals 4

    .line 226
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mStatusBarCallListener:Lcom/android/incallui/StatusBarNotifier$StatusBarCallListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 227
    invoke-direct {p0, v0}, Lcom/android/incallui/StatusBarNotifier;->setStatusBarCallListener(Lcom/android/incallui/StatusBarNotifier$StatusBarCallListener;)V

    .line 229
    :cond_0
    iget v0, p0, Lcom/android/incallui/StatusBarNotifier;->mCurrentNotification:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "StatusBarNotifier.cancelNotification"

    const-string v3, "cancel"

    .line 230
    invoke-static {v2, v3, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v2, 0x1

    const-string v3, "STATUS_BAR_NOTIFIER"

    invoke-virtual {v0, v3, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 233
    :cond_1
    iput v1, p0, Lcom/android/incallui/StatusBarNotifier;->mCurrentNotification:I

    return-void
.end method

.method private checkForChangeAndSaveData(ILjava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;IIILandroid/net/Uri;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    .line 561
    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedContentTitle:Ljava/lang/String;

    .line 562
    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    if-nez p4, :cond_2

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedContentTitle:Ljava/lang/String;

    if-eqz v2, :cond_2

    :cond_1
    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v1

    .line 565
    :goto_0
    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedLargeIcon:Landroid/graphics/Bitmap;

    if-nez v3, :cond_3

    if-eqz p3, :cond_4

    goto :goto_1

    .line 566
    :cond_3
    invoke-virtual {v3, p3}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_1
    move v3, v0

    goto :goto_2

    :cond_4
    move v3, v1

    .line 569
    :goto_2
    iget v4, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedIcon:I

    if-ne v4, p1, :cond_6

    iget-object v4, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedContent:Ljava/lang/String;

    .line 571
    invoke-static {v4, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/android/incallui/StatusBarNotifier;->mCallState:I

    if-ne v4, p5, :cond_6

    iget v4, p0, Lcom/android/incallui/StatusBarNotifier;->mVideoState:I

    if-ne v4, p6, :cond_6

    if-nez v3, :cond_6

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mRingtone:Landroid/net/Uri;

    .line 576
    invoke-static {v2, p8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    move v2, v1

    goto :goto_4

    :cond_6
    :goto_3
    move v2, v0

    .line 580
    :goto_4
    iget v3, p0, Lcom/android/incallui/StatusBarNotifier;->mCurrentNotification:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_7

    const/4 v3, 0x2

    if-ne p7, v3, :cond_7

    if-nez v2, :cond_7

    move v3, v0

    goto :goto_5

    :cond_7
    move v3, v1

    .line 582
    :goto_5
    iget v4, p0, Lcom/android/incallui/StatusBarNotifier;->mCurrentNotification:I

    const-string v5, "StatusBarNotifier.checkForChangeAndSaveData"

    if-eq v4, p7, :cond_8

    if-nez v3, :cond_8

    if-nez v4, :cond_9

    new-array p7, v1, [Ljava/lang/Object;

    const-string v2, "showing notification for first time."

    .line 584
    invoke-static {v5, v2, p7}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    :cond_8
    move v0, v2

    :cond_9
    :goto_6
    if-eqz v3, :cond_a

    new-array p7, v1, [Ljava/lang/Object;

    const-string v2, "ignore this notification due to be already treated as incoming quiet."

    .line 591
    invoke-static {v5, v2, p7}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 596
    :cond_a
    iput p1, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedIcon:I

    .line 597
    iput-object p2, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedContent:Ljava/lang/String;

    .line 598
    iput p5, p0, Lcom/android/incallui/StatusBarNotifier;->mCallState:I

    .line 599
    iput p6, p0, Lcom/android/incallui/StatusBarNotifier;->mVideoState:I

    .line 600
    iput-object p3, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedLargeIcon:Landroid/graphics/Bitmap;

    .line 601
    iput-object p4, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedContentTitle:Ljava/lang/String;

    .line 602
    iput-object p8, p0, Lcom/android/incallui/StatusBarNotifier;->mRingtone:Landroid/net/Uri;

    if-eqz v0, :cond_b

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "data changed.  Showing notification"

    .line 605
    invoke-static {v5, p2, p1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    return v0
.end method

.method static clearAllCallNotifications(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "StatusBarNotifier.clearAllCallNotifications"

    const-string v2, "something terrible happened, clear all InCall notifications"

    .line 152
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    const-class v0, Landroid/app/NotificationManager;

    .line 157
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const-string v0, "STATUS_BAR_NOTIFIER"

    const/4 v1, 0x1

    .line 158
    invoke-virtual {p0, v0, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method private configureFullScreenIntent(Landroid/app/Notification$Builder;Landroid/app/PendingIntent;)V
    .locals 3

    .line 1017
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setting fullScreenIntent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "StatusBarNotifier.configureFullScreenIntent"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 1018
    invoke-virtual {p1, p2, v0}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    return-void
.end method

.method private createIncomingCallNotification(Lcom/android/incallui/call/DialerCall;ILandroid/app/Notification$Builder;)V
    .locals 1

    .line 512
    invoke-direct {p0, p1, p2, p3}, Lcom/android/incallui/StatusBarNotifier;->setNotificationWhen(Lcom/android/incallui/call/DialerCall;ILandroid/app/Notification$Builder;)V

    const/4 v0, 0x3

    if-eq p2, v0, :cond_3

    const/16 v0, 0x8

    if-eq p2, v0, :cond_3

    .line 517
    invoke-static {p2}, Lcom/android/incallui/call/DialerCall$State;->isDialing(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-ne p2, v0, :cond_4

    .line 520
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/incallui/StatusBarNotifier;->addDismissAction(Landroid/app/Notification$Builder;)V

    .line 521
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->isVideoCall()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 522
    invoke-direct {p0, p3}, Lcom/android/incallui/StatusBarNotifier;->addVideoCallAction(Landroid/app/Notification$Builder;)V

    goto :goto_1

    .line 524
    :cond_2
    invoke-direct {p0, p3}, Lcom/android/incallui/StatusBarNotifier;->addAnswerAction(Landroid/app/Notification$Builder;)V

    goto :goto_1

    .line 518
    :cond_3
    :goto_0
    invoke-direct {p0, p3}, Lcom/android/incallui/StatusBarNotifier;->addHangupAction(Landroid/app/Notification$Builder;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private createLaunchPendingIntent(Z)Landroid/app/PendingIntent;
    .locals 3

    .line 1033
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 1034
    invoke-static {v0, v1, v1, p1}, Lcom/android/incallui/InCallActivity;->getIntent(Landroid/content/Context;ZZZ)Landroid/content/Intent;

    move-result-object v0

    .line 1049
    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private static createNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3

    .line 180
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/incallui/NotificationBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p1, 0x0

    .line 181
    invoke-static {p0, p1, v0, p1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private getActionText(II)Landroid/text/Spannable;
    .locals 2

    .line 909
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 910
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt p1, v1, :cond_0

    .line 914
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    .line 915
    invoke-virtual {v1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-direct {p1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result p2

    const/4 v1, 0x0

    .line 914
    invoke-interface {v0, p1, v1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-object v0
.end method

.method private getAnyPhoneAccount()Landroid/telecom/PhoneAccountHandle;
    .locals 3

    .line 499
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telecom/TelecomManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    const-string v1, "tel"

    .line 500
    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->getDefaultOutgoingPhoneAccount(Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    if-nez v1, :cond_0

    .line 502
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v0

    .line 503
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 504
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    :cond_0
    return-object v1
.end method

.method private getCallToShow(Lcom/android/incallui/call/CallList;)Lcom/android/incallui/call/DialerCall;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 895
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/call/CallList;->getIncomingCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    if-nez v0, :cond_1

    .line 897
    invoke-virtual {p1}, Lcom/android/incallui/call/CallList;->getOutgoingCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    .line 900
    invoke-virtual {p1}, Lcom/android/incallui/call/CallList;->getVideoUpgradeRequestCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    .line 903
    invoke-virtual {p1}, Lcom/android/incallui/call/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method private getContentString(Lcom/android/incallui/call/DialerCall;J)Ljava/lang/String;
    .locals 5

    .line 748
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    .line 749
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    .line 752
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getNumberPresentation()I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 754
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getChildNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 755
    iget-object p2, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const p3, 0x7f110131

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getChildNumber()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p2, p3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 756
    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getCallSubject()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->isCallSubjectSupported()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 757
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getCallSubject()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const v1, 0x7f110375

    const/16 v2, 0x8

    .line 762
    invoke-virtual {p1, v2}, Lcom/android/incallui/call/DialerCall;->hasProperty(I)Z

    move-result v3

    if-eqz v3, :cond_4

    const v1, 0x7f110376

    :cond_4
    if-eqz v0, :cond_c

    .line 767
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/enrichedcall/EnrichedCallComponent;->get(Landroid/content/Context;)Lcom/android/dialer/enrichedcall/EnrichedCallComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/enrichedcall/EnrichedCallComponent;->getEnrichedCallManager()Lcom/android/dialer/enrichedcall/EnrichedCallManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 769
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getNumber()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 772
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getUniqueCallId()Ljava/lang/String;

    move-result-object v1

    .line 773
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getNumber()Ljava/lang/String;

    move-result-object v3

    .line 774
    invoke-interface {v0}, Lcom/android/dialer/enrichedcall/EnrichedCallManager;->createIncomingCallComposerFilter()Lcom/android/dialer/enrichedcall/EnrichedCallManager$Filter;

    move-result-object v4

    .line 771
    invoke-interface {v0, v1, v3, v4}, Lcom/android/dialer/enrichedcall/EnrichedCallManager;->getSession(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/enrichedcall/EnrichedCallManager$Filter;)Lcom/android/dialer/enrichedcall/Session;

    move-result-object v1

    .line 777
    :cond_5
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->isSpam()Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f110367

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_7

    .line 780
    invoke-direct {p0, v1}, Lcom/android/incallui/StatusBarNotifier;->getECIncomingCallText(Lcom/android/dialer/enrichedcall/Session;)I

    move-result v0

    goto :goto_2

    .line 781
    :cond_7
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->isIncomingConfCall()Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0x7f110366

    goto :goto_2

    .line 783
    :cond_8
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getEnrichedCallSession()Lcom/android/dialer/enrichedcall/Session;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/StatusBarNotifier;->shouldShowEnrichedCallNotification(Lcom/android/dialer/enrichedcall/Session;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 784
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getEnrichedCallSession()Lcom/android/dialer/enrichedcall/Session;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/StatusBarNotifier;->getECIncomingCallText(Lcom/android/dialer/enrichedcall/Session;)I

    move-result v0

    goto :goto_2

    .line 785
    :cond_9
    invoke-virtual {p1, v2}, Lcom/android/incallui/call/DialerCall;->hasProperty(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f11035e

    goto :goto_2

    :cond_a
    const v0, 0x7f11035c

    .line 791
    :goto_2
    invoke-static {}, Lcom/android/tct/common/RttManager;->getInstance()Lcom/android/tct/common/RttManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/tct/common/RttManager;->isRttInComingCall(Lcom/android/incallui/call/DialerCall;)Z

    move-result v1

    if-eqz v1, :cond_b

    const v0, 0x7f1102bb

    :cond_b
    move v1, v0

    goto :goto_3

    .line 795
    :cond_c
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v0

    if-ne v0, v2, :cond_d

    const v1, 0x7f110374

    goto :goto_3

    .line 797
    :cond_d
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/call/DialerCall$State;->isDialing(I)Z

    move-result v0

    if-eqz v0, :cond_e

    const v1, 0x7f110359

    goto :goto_3

    .line 799
    :cond_e
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/videotech/VideoTech;->getSessionModificationState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_10

    const v1, 0x7f110379

    .line 802
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/videotech/VideoTech;->getRequestedVideoState()I

    move-result v0

    .line 803
    invoke-static {v0}, Landroid/telecom/VideoProfile;->isBidirectional(I)Z

    move-result v2

    if-nez v2, :cond_10

    .line 804
    invoke-static {v0}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_f

    const v1, 0x7f11037b

    goto :goto_3

    .line 806
    :cond_f
    invoke-static {v0}, Landroid/telecom/VideoProfile;->isReceptionEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_10

    const v1, 0x7f11037a

    :cond_10
    :goto_3
    const/16 v0, 0x20

    .line 813
    invoke-virtual {p1, v0}, Lcom/android/incallui/call/DialerCall;->hasProperty(I)Z

    move-result p1

    const-wide/16 v2, 0x1

    cmp-long p2, p2, v2

    if-eqz p2, :cond_11

    if-eqz p1, :cond_12

    .line 815
    :cond_11
    invoke-static {v1}, Lcom/android/incallui/StatusBarNotifier;->getWorkStringFromPersonalString(I)I

    move-result v1

    .line 818
    :cond_12
    iget-object p1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getECIncomingCallText(Lcom/android/dialer/enrichedcall/Session;)I
    .locals 4

    .line 830
    invoke-interface {p1}, Lcom/android/dialer/enrichedcall/Session;->getMultimediaData()Lcom/android/dialer/multimedia/MultimediaData;

    move-result-object p1

    .line 831
    invoke-virtual {p1}, Lcom/android/dialer/multimedia/MultimediaData;->hasImageData()Z

    move-result v0

    .line 832
    invoke-virtual {p1}, Lcom/android/dialer/multimedia/MultimediaData;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 833
    invoke-virtual {p1}, Lcom/android/dialer/multimedia/MultimediaData;->getLocation()Landroid/location/Location;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 834
    :goto_0
    invoke-virtual {p1}, Lcom/android/dialer/multimedia/MultimediaData;->isImportant()Z

    move-result p1

    const/16 v3, 0x32

    if-eqz p1, :cond_8

    if-eqz v2, :cond_4

    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    const p1, 0x7f110274

    goto :goto_1

    :cond_1
    const p1, 0x7f110272

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    const p1, 0x7f110270

    goto :goto_1

    :cond_3
    const p1, 0x7f11026e

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_6

    if-eqz v1, :cond_5

    const p1, 0x7f110273

    goto :goto_1

    :cond_5
    const p1, 0x7f110271

    goto :goto_1

    :cond_6
    if-eqz v1, :cond_7

    const p1, 0x7f11026f

    goto :goto_1

    :cond_7
    const p1, 0x7f11026c

    .line 858
    :goto_1
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_f

    const p1, 0x7f11026d

    goto :goto_2

    :cond_8
    if-eqz v2, :cond_c

    if-eqz v0, :cond_a

    if-eqz v1, :cond_9

    const p1, 0x7f110365

    goto :goto_2

    :cond_9
    const p1, 0x7f110363

    goto :goto_2

    :cond_a
    if-eqz v1, :cond_b

    const p1, 0x7f110361

    goto :goto_2

    :cond_b
    const p1, 0x7f11035f

    goto :goto_2

    :cond_c
    if-eqz v0, :cond_e

    if-eqz v1, :cond_d

    const p1, 0x7f110364

    goto :goto_2

    :cond_d
    const p1, 0x7f110362

    goto :goto_2

    :cond_e
    const p1, 0x7f110360

    .line 884
    :cond_f
    :goto_2
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_10

    const p1, 0x7f11035d

    :cond_10
    return p1
.end method

.method private getIconToDisplay(Lcom/android/incallui/call/DialerCall;)I
    .locals 6

    const/16 v0, 0x80

    .line 709
    invoke-virtual {p1, v0}, Lcom/android/incallui/call/DialerCall;->hasProperty(I)Z

    move-result v0

    .line 710
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dialer ==== > supportsVoicePrivacy : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TAG"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x8

    .line 712
    invoke-virtual {p1, v1}, Lcom/android/incallui/call/DialerCall;->hasProperty(I)Z

    move-result v3

    .line 713
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dialer ==== > isWifiCall : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_0

    const p1, 0x7f0800e6

    return p1

    .line 718
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v2

    if-ne v2, v1, :cond_2

    if-eqz v0, :cond_1

    const p1, 0x7f080233

    return p1

    :cond_1
    const p1, 0x7f080123

    return p1

    .line 724
    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/videotech/VideoTech;->getSessionModificationState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    const p1, 0x7f0801f7

    return p1

    :cond_3
    const/16 v1, 0x10

    .line 727
    invoke-virtual {p1, v1}, Lcom/android/incallui/call/DialerCall;->hasProperty(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    .line 728
    invoke-static {p1}, Lcom/android/dialer/oem/MotorolaUtils;->shouldShowHdIconInNotification(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    const p1, 0x7f0800fe

    return p1

    :cond_4
    if-eqz v0, :cond_5

    const p1, 0x7f080232

    return p1

    .line 738
    :cond_5
    iget-object p1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/incallui/ReturnToCallController;->isEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    const p1, 0x7f0801b5

    return p1

    :cond_6
    const p1, 0x7f080190

    return p1
.end method

.method private static getLargeIconToDisplay(Landroid/content/Context;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/call/DialerCall;)Landroid/graphics/Bitmap;
    .locals 9

    .line 652
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 654
    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 655
    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 657
    :goto_0
    iget-object v2, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    const v1, 0x1050005

    .line 658
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    const v2, 0x1050006

    .line 659
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 663
    invoke-static {p0, p2}, Lcom/android/incallui/CallerInfoUtils;->isVoiceMailNumber(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;)Z

    move-result v3

    .line 664
    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->isSpam()Z

    move-result v4

    iget-boolean v5, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isBusiness:Z

    .line 666
    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->getNumberPresentation()I

    move-result v6

    .line 667
    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->isConferenceCall()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_1

    const/4 v7, 0x2

    invoke-virtual {p2, v7}, Lcom/android/incallui/call/DialerCall;->hasProperty(I)Z

    move-result v7

    if-nez v7, :cond_1

    move v7, v8

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 662
    :goto_1
    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->getContactTypeFromPrimitives(ZZZIZ)I

    move-result v3

    .line 668
    new-instance v4, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;

    invoke-direct {v4, v0}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;-><init>(Landroid/content/res/Resources;)V

    .line 670
    iget-object v5, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    if-nez v5, :cond_2

    iget-object v5, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    goto :goto_2

    :cond_2
    iget-object v5, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    :goto_2
    iget-object p1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->lookupKey:Ljava/lang/String;

    invoke-virtual {v4, v5, p1, v8, v3}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->setCanonicalDialerLetterTileDetails(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/contacts/common/lettertiles/LetterTileDrawable;

    .line 675
    invoke-virtual {v4, v1, v2}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 678
    :cond_3
    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->isSpam()Z

    move-result p1

    if-eqz p1, :cond_4

    const p1, 0x7f080079

    .line 679
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 680
    invoke-static {p0}, Lcom/android/dialer/util/DrawableConverter;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_4
    return-object v1
.end method

.method private getNotificationBuilder()Landroid/app/Notification$Builder;
    .locals 2

    .line 1022
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 1023
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1024
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 1027
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    return-object v0
.end method

.method private getRoundedIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    .line 690
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 691
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    .line 692
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 693
    invoke-static {p1, v1, v0}, Lcom/android/contacts/common/util/BitmapUtil;->getRoundedBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private static getWorkStringFromPersonalString(I)I
    .locals 1

    const v0, 0x7f110375

    if-ne p0, v0, :cond_0

    const p0, 0x7f110377

    return p0

    :cond_0
    const v0, 0x7f110376

    if-ne p0, v0, :cond_1

    const p0, 0x7f110378

    return p0

    :cond_1
    const v0, 0x7f11035e

    if-ne p0, v0, :cond_2

    const p0, 0x7f110369

    return p0

    :cond_2
    const v0, 0x7f11035c

    if-ne p0, v0, :cond_3

    const p0, 0x7f110368

    :cond_3
    return p0
.end method

.method private setNotificationWhen(Lcom/android/incallui/call/DialerCall;ILandroid/app/Notification$Builder;)V
    .locals 1

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    .line 536
    invoke-virtual {p3, p2}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    .line 537
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getConnectTimeMillis()J

    move-result-wide p1

    invoke-virtual {p3, p1, p2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 539
    invoke-virtual {p3, p1}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    :goto_0
    return-void
.end method

.method private setStatusBarCallListener(Lcom/android/incallui/StatusBarNotifier$StatusBarCallListener;)V
    .locals 1

    .line 1053
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mStatusBarCallListener:Lcom/android/incallui/StatusBarNotifier$StatusBarCallListener;

    if-eqz v0, :cond_0

    .line 1054
    invoke-virtual {v0}, Lcom/android/incallui/StatusBarNotifier$StatusBarCallListener;->cleanup()V

    .line 1056
    :cond_0
    iput-object p1, p0, Lcom/android/incallui/StatusBarNotifier;->mStatusBarCallListener:Lcom/android/incallui/StatusBarNotifier$StatusBarCallListener;

    return-void
.end method

.method private shouldShowEnrichedCallNotification(Lcom/android/dialer/enrichedcall/Session;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 825
    :cond_0
    invoke-interface {p1}, Lcom/android/dialer/enrichedcall/Session;->getMultimediaData()Lcom/android/dialer/multimedia/MultimediaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dialer/multimedia/MultimediaData;->hasData()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Lcom/android/dialer/enrichedcall/Session;->getMultimediaData()Lcom/android/dialer/multimedia/MultimediaData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/dialer/multimedia/MultimediaData;->isImportant()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private showNotification(Lcom/android/incallui/call/CallList;Lcom/android/incallui/call/DialerCall;)V
    .locals 4

    .line 257
    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    .line 258
    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    .line 259
    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    .line 260
    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v0

    const/16 v2, 0xd

    if-eq v0, v2, :cond_1

    .line 261
    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v0

    const/16 v2, 0xc

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 262
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showNotification isGeocoderLocationNeeded = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "StatusBarNotifier.buildAndSendNotification"

    invoke-static {v3, v2, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    new-instance v1, Lcom/android/incallui/StatusBarNotifier$StatusBarCallListener;

    invoke-direct {v1, p0, p2}, Lcom/android/incallui/StatusBarNotifier$StatusBarCallListener;-><init>(Lcom/android/incallui/StatusBarNotifier;Lcom/android/incallui/call/DialerCall;)V

    invoke-direct {p0, v1}, Lcom/android/incallui/StatusBarNotifier;->setStatusBarCallListener(Lcom/android/incallui/StatusBarNotifier$StatusBarCallListener;)V

    .line 267
    invoke-static {}, Lcom/android/tct/common/RttManager;->getInstance()Lcom/android/tct/common/RttManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/tct/common/RttManager;->onPrimaryCallStateChange(Lcom/android/incallui/call/DialerCall;)V

    .line 274
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    new-instance v2, Lcom/android/incallui/StatusBarNotifier$1;

    invoke-direct {v2, p0, p1}, Lcom/android/incallui/StatusBarNotifier$1;-><init>(Lcom/android/incallui/StatusBarNotifier;Lcom/android/incallui/call/CallList;)V

    invoke-virtual {v1, p2, v0, v2}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/incallui/call/DialerCall;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    return-void
.end method

.method private updateInCallNotification(Lcom/android/incallui/call/CallList;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "StatusBarNotifier.updateInCallNotification"

    const-string v2, ""

    .line 243
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    invoke-direct {p0, p1}, Lcom/android/incallui/StatusBarNotifier;->getCallToShow(Lcom/android/incallui/call/CallList;)Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    invoke-direct {p0, p1, v0}, Lcom/android/incallui/StatusBarNotifier;->showNotification(Lcom/android/incallui/call/CallList;Lcom/android/incallui/call/DialerCall;)V

    goto :goto_0

    .line 250
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/StatusBarNotifier;->cancelNotification()V

    :goto_0
    return-void
.end method


# virtual methods
.method getContentTitle(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/call/DialerCall;)Ljava/lang/String;
    .locals 1

    .line 616
    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    iget-object p1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const/4 v0, 0x2

    .line 618
    invoke-virtual {p2, v0}, Lcom/android/incallui/call/DialerCall;->hasProperty(I)Z

    move-result p2

    .line 617
    invoke-static {p1, p2}, Lcom/android/incallui/CallerInfoUtils;->getConferenceString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 621
    :cond_0
    iget-object p2, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 622
    iget-object p2, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p1, ""

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    .line 624
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    .line 625
    :goto_0
    iget-object p2, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/android/dialer/location/GeoUtil;->getGeocodedLocationFor(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 626
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 629
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    .line 631
    :cond_3
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object p2

    sget-object v0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 632
    invoke-virtual {p2, p1, v0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1

    .line 634
    :cond_4
    iget-object p1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    return-object p1
.end method

.method public onEnrichedCallStateChanged()V
    .locals 1

    const-string v0, "StatusBarNotifier.onEnrichedCallStateChanged"

    .line 194
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 195
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/StatusBarNotifier;->updateNotification(Lcom/android/incallui/call/CallList;)V

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/call/CallList;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "StatusBarNotifier.onStateChange"

    const-string p2, "%s->%s"

    .line 188
    invoke-static {p1, p2, v0}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    invoke-virtual {p0, p3}, Lcom/android/incallui/StatusBarNotifier;->updateNotification(Lcom/android/incallui/call/CallList;)V

    return-void
.end method

.method public updateNotification(Lcom/android/incallui/call/CallList;)V
    .locals 0

    .line 217
    invoke-direct {p0, p1}, Lcom/android/incallui/StatusBarNotifier;->updateInCallNotification(Lcom/android/incallui/call/CallList;)V

    return-void
.end method
