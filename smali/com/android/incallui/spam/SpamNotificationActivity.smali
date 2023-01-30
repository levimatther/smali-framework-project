.class public Lcom/android/incallui/spam/SpamNotificationActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "SpamNotificationActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment;,
        Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment;
    }
.end annotation


# static fields
.field static final ACTION_ADD_TO_CONTACTS:Ljava/lang/String; = "com.android.incallui.spam.ACTION_ADD_TO_CONTACTS"

.field static final ACTION_MARK_NUMBER_AS_NOT_SPAM:Ljava/lang/String; = "com.android.incallui.spam.ACTION_MARK_NUMBER_AS_NOT_SPAM"

.field static final ACTION_MARK_NUMBER_AS_SPAM:Ljava/lang/String; = "com.android.incallui.spam.ACTION_MARK_NUMBER_AS_SPAM"

.field static final ACTION_SHOW_DIALOG:Ljava/lang/String; = "com.android.incallui.spam.ACTION_SHOW_DIALOG"

.field private static final CALL_INFO_CONTACT_LOOKUP_RESULT_TYPE:Ljava/lang/String; = "contact_lookup_result_type"

.field private static final CALL_INFO_KEY_CALL_ID:Ljava/lang/String; = "call_id"

.field private static final CALL_INFO_KEY_IS_SPAM:Ljava/lang/String; = "is_spam"

.field private static final CALL_INFO_KEY_PHONE_NUMBER:Ljava/lang/String; = "phone_number"

.field private static final CALL_INFO_KEY_START_TIME_MILLIS:Ljava/lang/String; = "call_start_time_millis"

.field private static final EXTRA_CALL_INFO:Ljava/lang/String; = "call_info"

.field private static final EXTRA_NOTIFICATION_ID:Ljava/lang/String; = "notification_id"

.field private static final TAG:Ljava/lang/String; = "SpamNotifications"


# instance fields
.field private final dismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private filteredNumberAsyncQueryHandler:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 68
    new-instance v0, Lcom/android/incallui/spam/SpamNotificationActivity$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/spam/SpamNotificationActivity$1;-><init>(Lcom/android/incallui/spam/SpamNotificationActivity;)V

    iput-object v0, p0, Lcom/android/incallui/spam/SpamNotificationActivity;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/spam/SpamNotificationActivity;Ljava/lang/String;Lcom/android/dialer/logging/ContactLookupResult$Type;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/spam/SpamNotificationActivity;->reportNotSpamAndFinish(Ljava/lang/String;Lcom/android/dialer/logging/ContactLookupResult$Type;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 46
    invoke-static {p0}, Lcom/android/incallui/spam/SpamNotificationActivity;->getFormattedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 46
    invoke-static {p0}, Lcom/android/incallui/spam/SpamNotificationActivity;->createInsertContactsIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/incallui/spam/SpamNotificationActivity;Ljava/lang/String;ZLcom/android/dialer/logging/ContactLookupResult$Type;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/incallui/spam/SpamNotificationActivity;->blockReportNumberAndFinish(Ljava/lang/String;ZLcom/android/dialer/logging/ContactLookupResult$Type;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/spam/SpamNotificationActivity;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/incallui/spam/SpamNotificationActivity;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method static synthetic access$600(Landroid/content/Context;Landroid/os/Bundle;Lcom/android/dialer/logging/DialerImpression$Type;)V
    .locals 0

    .line 46
    invoke-static {p0, p1, p2}, Lcom/android/incallui/spam/SpamNotificationActivity;->logCallImpression(Landroid/content/Context;Landroid/os/Bundle;Lcom/android/dialer/logging/DialerImpression$Type;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/incallui/spam/SpamNotificationActivity;Ljava/lang/String;Lcom/android/dialer/logging/ContactLookupResult$Type;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/spam/SpamNotificationActivity;->maybeShowBlockReportSpamDialog(Ljava/lang/String;Lcom/android/dialer/logging/ContactLookupResult$Type;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/incallui/spam/SpamNotificationActivity;Ljava/lang/String;Lcom/android/dialer/logging/ContactLookupResult$Type;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/spam/SpamNotificationActivity;->maybeShowNotSpamDialog(Ljava/lang/String;Lcom/android/dialer/logging/ContactLookupResult$Type;)V

    return-void
.end method

.method private assertDialogsEnabled()V
    .locals 2

    .line 308
    invoke-static {p0}, Lcom/android/dialer/spam/Spam;->get(Landroid/content/Context;)Lcom/android/dialer/spam/SpamBindings;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/dialer/spam/SpamBindings;->isDialogEnabledForSpamNotification()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 309
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot start this activity with given action because dialogs are not enabled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blockReportNumberAndFinish(Ljava/lang/String;ZLcom/android/dialer/logging/ContactLookupResult$Type;)V
    .locals 6

    if-eqz p2, :cond_0

    .line 264
    sget-object p2, Lcom/android/dialer/logging/DialerImpression$Type;->SPAM_AFTER_CALL_NOTIFICATION_MARKED_NUMBER_AS_SPAM:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-direct {p0, p2}, Lcom/android/incallui/spam/SpamNotificationActivity;->logCallImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 265
    invoke-static {p0}, Lcom/android/dialer/spam/Spam;->get(Landroid/content/Context;)Lcom/android/dialer/spam/SpamBindings;

    move-result-object v0

    .line 268
    invoke-direct {p0}, Lcom/android/incallui/spam/SpamNotificationActivity;->getCountryIso()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    sget-object v4, Lcom/android/dialer/logging/ReportingLocation$Type;->FEEDBACK_PROMPT:Lcom/android/dialer/logging/ReportingLocation$Type;

    move-object v1, p1

    move-object v5, p3

    .line 266
    invoke-interface/range {v0 .. v5}, Lcom/android/dialer/spam/SpamBindings;->reportSpamFromAfterCallNotification(Ljava/lang/String;Ljava/lang/String;ILcom/android/dialer/logging/ReportingLocation$Type;Lcom/android/dialer/logging/ContactLookupResult$Type;)V

    .line 274
    :cond_0
    sget-object p2, Lcom/android/dialer/logging/DialerImpression$Type;->SPAM_AFTER_CALL_NOTIFICATION_BLOCK_NUMBER:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-direct {p0, p2}, Lcom/android/incallui/spam/SpamNotificationActivity;->logCallImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 275
    iget-object p2, p0, Lcom/android/incallui/spam/SpamNotificationActivity;->filteredNumberAsyncQueryHandler:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

    const/4 p3, 0x0

    invoke-direct {p0}, Lcom/android/incallui/spam/SpamNotificationActivity;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, p1, v0}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->blockNumber(Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0}, Lcom/android/incallui/spam/SpamNotificationActivity;->finish()V

    return-void
.end method

.method private cancelNotification()V
    .locals 3

    .line 297
    invoke-virtual {p0}, Lcom/android/incallui/spam/SpamNotificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "notification_id"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 298
    invoke-direct {p0}, Lcom/android/incallui/spam/SpamNotificationActivity;->getCallInfo()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "phone_number"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "notification"

    .line 299
    invoke-virtual {p0, v2}, Lcom/android/incallui/spam/SpamNotificationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 300
    invoke-virtual {v2, v1, v0}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method public static createActivityIntent(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 2

    .line 86
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/incallui/spam/SpamNotificationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const p0, 0x8000

    .line 89
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 90
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p0, "notification_id"

    .line 91
    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    invoke-static {p1}, Lcom/android/incallui/spam/SpamNotificationActivity;->newCallInfoBundle(Lcom/android/incallui/call/DialerCall;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "call_info"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method

.method private static createInsertContactsIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 98
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 100
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    .line 101
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "vnd.android.cursor.dir/raw_contact"

    .line 102
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "phone"

    .line 103
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private getCallInfo()Landroid/os/Bundle;
    .locals 2

    .line 315
    invoke-virtual {p0}, Lcom/android/incallui/spam/SpamNotificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "call_info"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private getCountryIso()Ljava/lang/String;
    .locals 1

    .line 304
    invoke-static {p0}, Lcom/android/dialer/location/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getFormattedNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 109
    invoke-static {p0}, Lcom/android/contacts/common/compat/PhoneNumberUtilsCompat;->createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static logCallImpression(Landroid/content/Context;Landroid/os/Bundle;Lcom/android/dialer/logging/DialerImpression$Type;)V
    .locals 4

    .line 114
    invoke-static {p0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p0

    const-string v0, "call_id"

    .line 117
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "call_start_time_millis"

    const-wide/16 v2, 0x0

    .line 118
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 115
    invoke-interface {p0, p2, v0, v1, v2}, Lcom/android/dialer/logging/LoggingBindings;->logCallImpression(Lcom/android/dialer/logging/DialerImpression$Type;Ljava/lang/String;J)V

    return-void
.end method

.method private logCallImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V
    .locals 1

    .line 319
    invoke-direct {p0}, Lcom/android/incallui/spam/SpamNotificationActivity;->getCallInfo()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/incallui/spam/SpamNotificationActivity;->logCallImpression(Landroid/content/Context;Landroid/os/Bundle;Lcom/android/dialer/logging/DialerImpression$Type;)V

    return-void
.end method

.method private maybeShowBlockNumberMigrationDialog(Lcom/android/dialer/blocking/BlockedNumbersMigrator$Listener;)V
    .locals 1

    .line 255
    invoke-virtual {p0}, Lcom/android/incallui/spam/SpamNotificationActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 254
    invoke-static {p0, v0, p1}, Lcom/android/dialer/blocking/FilteredNumberCompat;->maybeShowBlockNumberMigrationDialog(Landroid/content/Context;Landroid/app/FragmentManager;Lcom/android/dialer/blocking/BlockedNumbersMigrator$Listener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    invoke-interface {p1}, Lcom/android/dialer/blocking/BlockedNumbersMigrator$Listener;->onComplete()V

    :cond_0
    return-void
.end method

.method private maybeShowBlockReportSpamDialog(Ljava/lang/String;Lcom/android/dialer/logging/ContactLookupResult$Type;)V
    .locals 1

    .line 209
    invoke-static {p0}, Lcom/android/dialer/spam/Spam;->get(Landroid/content/Context;)Lcom/android/dialer/spam/SpamBindings;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/dialer/spam/SpamBindings;->isDialogEnabledForSpamNotification()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    new-instance v0, Lcom/android/incallui/spam/SpamNotificationActivity$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/incallui/spam/SpamNotificationActivity$3;-><init>(Lcom/android/incallui/spam/SpamNotificationActivity;Ljava/lang/String;Lcom/android/dialer/logging/ContactLookupResult$Type;)V

    invoke-direct {p0, v0}, Lcom/android/incallui/spam/SpamNotificationActivity;->maybeShowBlockNumberMigrationDialog(Lcom/android/dialer/blocking/BlockedNumbersMigrator$Listener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 229
    invoke-direct {p0, p1, v0, p2}, Lcom/android/incallui/spam/SpamNotificationActivity;->blockReportNumberAndFinish(Ljava/lang/String;ZLcom/android/dialer/logging/ContactLookupResult$Type;)V

    :goto_0
    return-void
.end method

.method private maybeShowNotSpamDialog(Ljava/lang/String;Lcom/android/dialer/logging/ContactLookupResult$Type;)V
    .locals 2

    .line 190
    invoke-static {p0}, Lcom/android/dialer/spam/Spam;->get(Landroid/content/Context;)Lcom/android/dialer/spam/SpamBindings;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/dialer/spam/SpamBindings;->isDialogEnabledForSpamNotification()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-static {p1}, Lcom/android/incallui/spam/SpamNotificationActivity;->getFormattedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/spam/SpamNotificationActivity$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/incallui/spam/SpamNotificationActivity$2;-><init>(Lcom/android/incallui/spam/SpamNotificationActivity;Ljava/lang/String;Lcom/android/dialer/logging/ContactLookupResult$Type;)V

    iget-object p1, p0, Lcom/android/incallui/spam/SpamNotificationActivity;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 191
    invoke-static {v0, v1, p1}, Lcom/android/dialer/blocking/BlockReportSpamDialogs$ReportNotSpamDialogFragment;->newInstance(Ljava/lang/String;Lcom/android/dialer/blocking/BlockReportSpamDialogs$OnConfirmListener;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/DialogFragment;

    move-result-object p1

    .line 200
    invoke-virtual {p0}, Lcom/android/incallui/spam/SpamNotificationActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    const-string v0, "NotSpamDialog"

    invoke-virtual {p1, p2, v0}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/spam/SpamNotificationActivity;->reportNotSpamAndFinish(Ljava/lang/String;Lcom/android/dialer/logging/ContactLookupResult$Type;)V

    :goto_0
    return-void
.end method

.method private static newCallInfoBundle(Lcom/android/incallui/call/DialerCall;)Landroid/os/Bundle;
    .locals 4

    .line 122
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 123
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getNumber()Ljava/lang/String;

    move-result-object v1

    const-string v2, "phone_number"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->isSpam()Z

    move-result v1

    const-string v2, "is_spam"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 125
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getUniqueCallId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "call_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getTimeAddedMs()J

    move-result-wide v1

    const-string v3, "call_start_time_millis"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 128
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getLogState()Lcom/android/incallui/call/DialerCall$LogState;

    move-result-object p0

    iget-object p0, p0, Lcom/android/incallui/call/DialerCall$LogState;->contactLookupResult:Lcom/android/dialer/logging/ContactLookupResult$Type;

    invoke-virtual {p0}, Lcom/android/dialer/logging/ContactLookupResult$Type;->getNumber()I

    move-result p0

    const-string v1, "contact_lookup_result_type"

    .line 127
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method private reportNotSpamAndFinish(Ljava/lang/String;Lcom/android/dialer/logging/ContactLookupResult$Type;)V
    .locals 7

    .line 283
    sget-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->SPAM_AFTER_CALL_NOTIFICATION_REPORT_NUMBER_AS_NOT_SPAM:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-direct {p0, v0}, Lcom/android/incallui/spam/SpamNotificationActivity;->logCallImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 284
    invoke-static {p0}, Lcom/android/dialer/spam/Spam;->get(Landroid/content/Context;)Lcom/android/dialer/spam/SpamBindings;

    move-result-object v1

    .line 287
    invoke-direct {p0}, Lcom/android/incallui/spam/SpamNotificationActivity;->getCountryIso()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/android/dialer/logging/ReportingLocation$Type;->FEEDBACK_PROMPT:Lcom/android/dialer/logging/ReportingLocation$Type;

    const/4 v4, 0x1

    move-object v2, p1

    move-object v6, p2

    .line 285
    invoke-interface/range {v1 .. v6}, Lcom/android/dialer/spam/SpamBindings;->reportNotSpamFromAfterCallNotification(Ljava/lang/String;Ljava/lang/String;ILcom/android/dialer/logging/ReportingLocation$Type;Lcom/android/dialer/logging/ContactLookupResult$Type;)V

    .line 292
    invoke-virtual {p0}, Lcom/android/incallui/spam/SpamNotificationActivity;->finish()V

    return-void
.end method

.method private showNonSpamDialog()V
    .locals 3

    .line 238
    sget-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->SPAM_AFTER_CALL_NOTIFICATION_SHOW_NON_SPAM_DIALOG:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-direct {p0, v0}, Lcom/android/incallui/spam/SpamNotificationActivity;->logCallImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 239
    invoke-direct {p0}, Lcom/android/incallui/spam/SpamNotificationActivity;->getCallInfo()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment;->access$400(Landroid/os/Bundle;)Landroidx/fragment/app/DialogFragment;

    move-result-object v0

    .line 240
    invoke-virtual {p0}, Lcom/android/incallui/spam/SpamNotificationActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "FirstTimeNonSpamDialog"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showSpamFullDialog()V
    .locals 3

    .line 247
    sget-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->SPAM_AFTER_CALL_NOTIFICATION_SHOW_SPAM_DIALOG:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-direct {p0, v0}, Lcom/android/incallui/spam/SpamNotificationActivity;->logCallImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 248
    invoke-direct {p0}, Lcom/android/incallui/spam/SpamNotificationActivity;->getCallInfo()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment;->access$500(Landroid/os/Bundle;)Landroidx/fragment/app/DialogFragment;

    move-result-object v0

    .line 249
    invoke-virtual {p0}, Lcom/android/incallui/spam/SpamNotificationActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "FirstTimeSpamDialog"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SpamNotifications"

    const-string v2, "onCreate"

    .line 134
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 136
    invoke-virtual {p0, p1}, Lcom/android/incallui/spam/SpamNotificationActivity;->setFinishOnTouchOutside(Z)V

    .line 137
    new-instance p1, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

    invoke-direct {p1, p0}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/incallui/spam/SpamNotificationActivity;->filteredNumberAsyncQueryHandler:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

    .line 138
    invoke-direct {p0}, Lcom/android/incallui/spam/SpamNotificationActivity;->cancelNotification()V

    return-void
.end method

.method protected onPause()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SpamNotifications"

    const-string v2, "onPause"

    .line 178
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 180
    iput-object v0, p0, Lcom/android/incallui/spam/SpamNotificationActivity;->filteredNumberAsyncQueryHandler:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

    .line 181
    invoke-virtual {p0}, Lcom/android/incallui/spam/SpamNotificationActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/android/incallui/spam/SpamNotificationActivity;->finish()V

    .line 184
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 9

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "SpamNotifications"

    const-string v3, "onResume"

    .line 143
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 145
    invoke-virtual {p0}, Lcom/android/incallui/spam/SpamNotificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 146
    invoke-direct {p0}, Lcom/android/incallui/spam/SpamNotificationActivity;->getCallInfo()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "phone_number"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 147
    invoke-direct {p0}, Lcom/android/incallui/spam/SpamNotificationActivity;->getCallInfo()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "is_spam"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 150
    invoke-direct {p0}, Lcom/android/incallui/spam/SpamNotificationActivity;->getCallInfo()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "contact_lookup_result_type"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 149
    invoke-static {v4}, Lcom/android/dialer/logging/ContactLookupResult$Type;->forNumber(I)Lcom/android/dialer/logging/ContactLookupResult$Type;

    move-result-object v4

    .line 151
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v5, "com.android.incallui.spam.ACTION_ADD_TO_CONTACTS"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :sswitch_1
    const-string v0, "com.android.incallui.spam.ACTION_MARK_NUMBER_AS_SPAM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v8

    goto :goto_1

    :sswitch_2
    const-string v0, "com.android.incallui.spam.ACTION_SHOW_DIALOG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    goto :goto_1

    :sswitch_3
    const-string v0, "com.android.incallui.spam.ACTION_MARK_NUMBER_AS_NOT_SPAM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v7

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_5

    if-eq v0, v8, :cond_4

    if-eq v0, v7, :cond_3

    if-eq v0, v6, :cond_1

    goto :goto_2

    :cond_1
    if-eqz v3, :cond_2

    .line 167
    invoke-direct {p0}, Lcom/android/incallui/spam/SpamNotificationActivity;->showSpamFullDialog()V

    goto :goto_2

    .line 169
    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/spam/SpamNotificationActivity;->showNonSpamDialog()V

    goto :goto_2

    .line 162
    :cond_3
    invoke-direct {p0}, Lcom/android/incallui/spam/SpamNotificationActivity;->assertDialogsEnabled()V

    .line 163
    invoke-direct {p0, v2, v4}, Lcom/android/incallui/spam/SpamNotificationActivity;->maybeShowNotSpamDialog(Ljava/lang/String;Lcom/android/dialer/logging/ContactLookupResult$Type;)V

    goto :goto_2

    .line 158
    :cond_4
    invoke-direct {p0}, Lcom/android/incallui/spam/SpamNotificationActivity;->assertDialogsEnabled()V

    .line 159
    invoke-direct {p0, v2, v4}, Lcom/android/incallui/spam/SpamNotificationActivity;->maybeShowBlockReportSpamDialog(Ljava/lang/String;Lcom/android/dialer/logging/ContactLookupResult$Type;)V

    goto :goto_2

    .line 153
    :cond_5
    sget-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->SPAM_AFTER_CALL_NOTIFICATION_ADD_TO_CONTACTS:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-direct {p0, v0}, Lcom/android/incallui/spam/SpamNotificationActivity;->logCallImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 154
    invoke-static {v2}, Lcom/android/incallui/spam/SpamNotificationActivity;->createInsertContactsIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/spam/SpamNotificationActivity;->startActivity(Landroid/content/Intent;)V

    .line 155
    invoke-virtual {p0}, Lcom/android/incallui/spam/SpamNotificationActivity;->finish()V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4d038271 -> :sswitch_3
        -0x22e129a5 -> :sswitch_2
        -0x1c4a177d -> :sswitch_1
        0x549923ea -> :sswitch_0
    .end sparse-switch
.end method
