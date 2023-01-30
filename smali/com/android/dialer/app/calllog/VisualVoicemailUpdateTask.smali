.class Lcom/android/dialer/app/calllog/VisualVoicemailUpdateTask;
.super Ljava/lang/Object;
.source "VisualVoicemailUpdateTask.java"

# interfaces
.implements Lcom/android/dialer/common/concurrent/DialerExecutor$Worker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/app/calllog/VisualVoicemailUpdateTask$Input;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/dialer/common/concurrent/DialerExecutor$Worker<",
        "Lcom/android/dialer/app/calllog/VisualVoicemailUpdateTask$Input;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static filterBlockedNumbers(Landroid/content/Context;Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;",
            "Ljava/util/List<",
            "Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;",
            ">;"
        }
    .end annotation

    .line 99
    invoke-static {}, Lcom/android/dialer/common/Assert;->isWorkerThread()V

    .line 100
    invoke-static {p0}, Lcom/android/dialer/blocking/FilteredNumbersUtil;->hasRecentEmergencyCall(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "VisualVoicemailUpdateTask.filterBlockedNumbers"

    if-eqz v0, :cond_0

    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "not filtering due to recent emergency call"

    .line 101
    invoke-static {v2, p1, p0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    .line 107
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;

    .line 109
    iget-object v4, v3, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;->number:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;->countryIso:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->getBlockedIdSynchronous(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_2

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "found voicemail from blocked number, deleting"

    .line 110
    invoke-static {v2, v5, v4}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    iget-object v4, v3, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;->voicemailUri:Landroid/net/Uri;

    if-eqz v4, :cond_1

    .line 115
    iget-object v3, v3, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;->voicemailUri:Landroid/net/Uri;

    invoke-static {p0, v3}, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil;->deleteVoicemailSynchronous(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 118
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method static synthetic lambda$scheduleTask$0(Ljava/lang/Runnable;Ljava/lang/Void;)V
    .locals 2

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "VisualVoicemailUpdateTask.scheduleTask"

    const-string/jumbo v1, "update successful"

    .line 142
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$scheduleTask$1(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 2

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "update failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VisualVoicemailUpdateTask.scheduleTask"

    invoke-static {v1, p1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static scheduleTask(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 3

    .line 126
    invoke-static {p0}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-static {p0}, Lcom/android/dialer/telecom/TelecomUtil;->isDefaultDialer(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "VisualVoicemailUpdateTask.scheduleTask"

    const-string v1, "not default dialer, not running"

    .line 129
    invoke-static {v0, v1, p0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 134
    :cond_0
    new-instance v0, Lcom/android/dialer/app/calllog/VisualVoicemailUpdateTask$Input;

    .line 137
    invoke-static {p0}, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper;->getInstance(Landroid/content/Context;)Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper;

    move-result-object v1

    new-instance v2, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

    invoke-direct {v2, p0}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/android/dialer/app/calllog/VisualVoicemailUpdateTask$Input;-><init>(Landroid/content/Context;Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper;Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;)V

    .line 139
    new-instance p0, Lcom/android/dialer/app/calllog/VisualVoicemailUpdateTask;

    invoke-direct {p0}, Lcom/android/dialer/app/calllog/VisualVoicemailUpdateTask;-><init>()V

    invoke-static {p0}, Lcom/android/dialer/common/concurrent/DialerExecutors;->createNonUiTaskBuilder(Lcom/android/dialer/common/concurrent/DialerExecutor$Worker;)Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;

    move-result-object p0

    new-instance v1, Lcom/android/dialer/app/calllog/-$$Lambda$VisualVoicemailUpdateTask$WtaG_OJTv3KWQaIucChlbYaw8ic;

    invoke-direct {v1, p1}, Lcom/android/dialer/app/calllog/-$$Lambda$VisualVoicemailUpdateTask$WtaG_OJTv3KWQaIucChlbYaw8ic;-><init>(Ljava/lang/Runnable;)V

    .line 140
    invoke-interface {p0, v1}, Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;->onSuccess(Lcom/android/dialer/common/concurrent/DialerExecutor$SuccessListener;)Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;

    move-result-object p0

    new-instance v1, Lcom/android/dialer/app/calllog/-$$Lambda$VisualVoicemailUpdateTask$5nrnMJSIX9-Ax8pdrYURlsUsDXs;

    invoke-direct {v1, p1}, Lcom/android/dialer/app/calllog/-$$Lambda$VisualVoicemailUpdateTask$5nrnMJSIX9-Ax8pdrYURlsUsDXs;-><init>(Ljava/lang/Runnable;)V

    .line 145
    invoke-interface {p0, v1}, Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;->onFailure(Lcom/android/dialer/common/concurrent/DialerExecutor$FailureListener;)Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;

    move-result-object p0

    .line 150
    invoke-interface {p0}, Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;->build()Lcom/android/dialer/common/concurrent/DialerExecutor;

    move-result-object p0

    .line 151
    invoke-interface {p0, v0}, Lcom/android/dialer/common/concurrent/DialerExecutor;->executeParallel(Ljava/lang/Object;)V

    return-void
.end method

.method private static updateNotification(Landroid/content/Context;Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper;Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;)V
    .locals 7

    .line 59
    invoke-static {}, Lcom/android/dialer/common/Assert;->isWorkerThread()V

    .line 61
    invoke-virtual {p1}, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper;->getNewVoicemails()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 65
    :cond_0
    invoke-static {p0, p2, v0}, Lcom/android/dialer/app/calllog/VisualVoicemailUpdateTask;->filterBlockedNumbers(Landroid/content/Context;Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 66
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 75
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 76
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;

    .line 77
    iget-object v4, v3, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;->number:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 78
    iget-object v4, v3, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;->number:Ljava/lang/String;

    iget v5, v3, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;->numberPresentation:I

    iget-object v6, v3, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;->countryIso:Ljava/lang/String;

    .line 79
    invoke-virtual {p1, v4, v5, v6}, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper;->getContactInfo(Ljava/lang/String;ILjava/lang/String;)Lcom/android/dialer/phonenumbercache/ContactInfo;

    move-result-object v4

    .line 81
    iget-object v3, v3, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;->number:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 85
    iget-object v0, v4, Lcom/android/dialer/phonenumbercache/ContactInfo;->name:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const v3, 0x7f11037e

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    .line 87
    iget-object v4, v4, Lcom/android/dialer/phonenumbercache/ContactInfo;->name:Ljava/lang/String;

    aput-object v4, v5, v0

    .line 88
    invoke-virtual {p0, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 93
    :cond_4
    invoke-static {p0, p2, v1, v0}, Lcom/android/dialer/app/calllog/VisualVoicemailNotifier;->showNotifications(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 40
    check-cast p1, Lcom/android/dialer/app/calllog/VisualVoicemailUpdateTask$Input;

    invoke-virtual {p0, p1}, Lcom/android/dialer/app/calllog/VisualVoicemailUpdateTask;->doInBackground(Lcom/android/dialer/app/calllog/VisualVoicemailUpdateTask$Input;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public doInBackground(Lcom/android/dialer/app/calllog/VisualVoicemailUpdateTask$Input;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 44
    iget-object v0, p1, Lcom/android/dialer/app/calllog/VisualVoicemailUpdateTask$Input;->context:Landroid/content/Context;

    iget-object v1, p1, Lcom/android/dialer/app/calllog/VisualVoicemailUpdateTask$Input;->queryHelper:Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper;

    iget-object p1, p1, Lcom/android/dialer/app/calllog/VisualVoicemailUpdateTask$Input;->queryHandler:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

    invoke-static {v0, v1, p1}, Lcom/android/dialer/app/calllog/VisualVoicemailUpdateTask;->updateNotification(Landroid/content/Context;Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper;Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;)V

    const/4 p1, 0x0

    return-object p1
.end method
