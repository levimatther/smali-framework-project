.class public Lcom/android/dialer/app/voicemail/VoicemailErrorManager;
.super Ljava/lang/Object;
.source "VoicemailErrorManager.java"

# interfaces
.implements Lcom/android/dialer/database/CallLogQueryHandler$Listener;
.implements Lcom/android/dialer/app/voicemail/error/VoicemailStatusReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/app/voicemail/VoicemailErrorManager$ServiceStateListener;
    }
.end annotation


# instance fields
.field private final alertItem:Lcom/android/dialer/app/voicemail/error/VoicemailErrorAlert;

.field private final callLogQueryHandler:Lcom/android/dialer/database/CallLogQueryHandler;

.field private final context:Landroid/content/Context;

.field private isForeground:Z

.field private final listeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/telecom/PhoneAccountHandle;",
            "Lcom/android/dialer/app/voicemail/VoicemailErrorManager$ServiceStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private statusInvalidated:Z

.field private final statusObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/dialer/app/calllog/CallLogAlertManager;Lcom/android/dialer/app/calllog/CallLogModalAlertManager;)V
    .locals 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailErrorManager;->listeners:Ljava/util/Map;

    .line 55
    new-instance v0, Lcom/android/dialer/app/voicemail/VoicemailErrorManager$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/app/voicemail/VoicemailErrorManager$1;-><init>(Lcom/android/dialer/app/voicemail/VoicemailErrorManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailErrorManager;->statusObserver:Landroid/database/ContentObserver;

    .line 71
    iput-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailErrorManager;->context:Landroid/content/Context;

    .line 72
    new-instance v0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorAlert;

    new-instance v1, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessageCreator;

    invoke-direct {v1}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessageCreator;-><init>()V

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorAlert;-><init>(Landroid/content/Context;Lcom/android/dialer/app/alert/AlertManager;Lcom/android/dialer/app/alert/AlertManager;Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessageCreator;)V

    iput-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailErrorManager;->alertItem:Lcom/android/dialer/app/voicemail/error/VoicemailErrorAlert;

    .line 75
    new-instance p2, Lcom/android/dialer/database/CallLogQueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-direct {p2, p1, p3, p0}, Lcom/android/dialer/database/CallLogQueryHandler;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/dialer/database/CallLogQueryHandler$Listener;)V

    iput-object p2, p0, Lcom/android/dialer/app/voicemail/VoicemailErrorManager;->callLogQueryHandler:Lcom/android/dialer/database/CallLogQueryHandler;

    .line 76
    invoke-direct {p0}, Lcom/android/dialer/app/voicemail/VoicemailErrorManager;->fetchStatus()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/app/voicemail/VoicemailErrorManager;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/dialer/app/voicemail/VoicemailErrorManager;->fetchStatus()V

    return-void
.end method

.method private addServiceStateListener(Lcom/android/dialer/app/voicemail/error/VoicemailStatus;)V
    .locals 5

    .line 101
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    .line 102
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailErrorManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/voicemail/VoicemailComponent;->get(Landroid/content/Context;)Lcom/android/voicemail/VoicemailComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/voicemail/VoicemailComponent;->getVoicemailClient()Lcom/android/voicemail/VoicemailClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/voicemail/VoicemailClient;->isVoicemailModuleEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "VoicemailErrorManager.addServiceStateListener"

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "VVM module not enabled"

    .line 103
    invoke-static {v2, v0, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 106
    :cond_0
    iget-object v0, p1, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->sourcePackage:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/dialer/app/voicemail/VoicemailErrorManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "non-dialer source"

    .line 107
    invoke-static {v2, v0, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailErrorManager;->context:Landroid/content/Context;

    const-class v3, Landroid/telephony/TelephonyManager;

    .line 112
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 113
    invoke-virtual {p1}, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->createForPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-nez v0, :cond_2

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "invalid PhoneAccountHandle"

    .line 115
    invoke-static {v2, v0, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 118
    :cond_2
    invoke-virtual {p1}, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object p1

    .line 119
    iget-object v3, p0, Lcom/android/dialer/app/voicemail/VoicemailErrorManager;->listeners:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-void

    .line 122
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adding listener for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    new-instance v1, Lcom/android/dialer/app/voicemail/VoicemailErrorManager$ServiceStateListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/dialer/app/voicemail/VoicemailErrorManager$ServiceStateListener;-><init>(Lcom/android/dialer/app/voicemail/VoicemailErrorManager;Lcom/android/dialer/app/voicemail/VoicemailErrorManager$1;)V

    const/4 v2, 0x1

    .line 126
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 127
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailErrorManager;->listeners:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private fetchStatus()V
    .locals 1

    .line 174
    iget-boolean v0, p0, Lcom/android/dialer/app/voicemail/VoicemailErrorManager;->isForeground:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 176
    iput-boolean v0, p0, Lcom/android/dialer/app/voicemail/VoicemailErrorManager;->statusInvalidated:Z

    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailErrorManager;->callLogQueryHandler:Lcom/android/dialer/database/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/android/dialer/database/CallLogQueryHandler;->fetchVoicemailStatus()V

    return-void
.end method


# virtual methods
.method public getContentObserver()Landroid/database/ContentObserver;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailErrorManager;->statusObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method public onCallsFetched(Landroid/database/Cursor;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDestroy()V
    .locals 4

    .line 159
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailErrorManager;->context:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 160
    iget-object v1, p0, Lcom/android/dialer/app/voicemail/VoicemailErrorManager;->listeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dialer/app/voicemail/VoicemailErrorManager$ServiceStateListener;

    const/4 v3, 0x0

    .line 161
    invoke-virtual {v0, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMissedCallsUnreadCountFetched(Landroid/database/Cursor;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    .line 154
    iput-boolean v0, p0, Lcom/android/dialer/app/voicemail/VoicemailErrorManager;->isForeground:Z

    .line 155
    iput-boolean v0, p0, Lcom/android/dialer/app/voicemail/VoicemailErrorManager;->statusInvalidated:Z

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x1

    .line 147
    iput-boolean v0, p0, Lcom/android/dialer/app/voicemail/VoicemailErrorManager;->isForeground:Z

    .line 148
    iget-boolean v0, p0, Lcom/android/dialer/app/voicemail/VoicemailErrorManager;->statusInvalidated:Z

    if-eqz v0, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/android/dialer/app/voicemail/VoicemailErrorManager;->fetchStatus()V

    :cond_0
    return-void
.end method

.method public onVoicemailStatusFetched(Landroid/database/Cursor;)V
    .locals 3

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    new-instance v1, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;

    iget-object v2, p0, Lcom/android/dialer/app/voicemail/VoicemailErrorManager;->context:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 89
    iget-object v2, p0, Lcom/android/dialer/app/voicemail/VoicemailErrorManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->isActive(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-direct {p0, v1}, Lcom/android/dialer/app/voicemail/VoicemailErrorManager;->addServiceStateListener(Lcom/android/dialer/app/voicemail/error/VoicemailStatus;)V

    goto :goto_0

    .line 94
    :cond_1
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailErrorManager;->alertItem:Lcom/android/dialer/app/voicemail/error/VoicemailErrorAlert;

    invoke-virtual {p1, v0, p0}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorAlert;->updateStatus(Ljava/util/List;Lcom/android/dialer/app/voicemail/error/VoicemailStatusReader;)V

    return-void
.end method

.method public onVoicemailUnreadCountFetched(Landroid/database/Cursor;)V
    .locals 0

    return-void
.end method

.method public refresh()V
    .locals 0

    .line 167
    invoke-direct {p0}, Lcom/android/dialer/app/voicemail/VoicemailErrorManager;->fetchStatus()V

    return-void
.end method
