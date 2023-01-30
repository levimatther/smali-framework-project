.class public Lcom/android/voicemail/impl/sync/VvmAccountManager;
.super Ljava/lang/Object;
.source "VvmAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/voicemail/impl/sync/VvmAccountManager$Listener;
    }
.end annotation


# static fields
.field static final IS_ACCOUNT_ACTIVATED:Ljava/lang/String; = "is_account_activated"

.field public static final TAG:Ljava/lang/String; = "VvmAccountManager"

.field private static listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/voicemail/VoicemailClient$ActivationStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/voicemail/impl/sync/VvmAccountManager;->listeners:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAccount(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Lcom/android/voicemail/impl/sms/StatusMessage;)V
    .locals 1

    .line 68
    new-instance v0, Lcom/android/voicemail/impl/VisualVoicemailPreferences;

    invoke-direct {v0, p0, p1}, Lcom/android/voicemail/impl/VisualVoicemailPreferences;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    .line 70
    invoke-virtual {v0}, Lcom/android/voicemail/impl/VisualVoicemailPreferences;->edit()Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/voicemail/impl/sms/StatusMessage;->putStatus(Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;)Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;->apply()V

    const/4 p2, 0x1

    .line 71
    invoke-static {p0, p1, p2}, Lcom/android/voicemail/impl/sync/VvmAccountManager;->setAccountActivated(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Z)V

    .line 73
    new-instance p0, Lcom/android/voicemail/impl/sync/-$$Lambda$VvmAccountManager$0kSYYkL8RF974o9GXjiTDmDAXnA;

    invoke-direct {p0, p1}, Lcom/android/voicemail/impl/sync/-$$Lambda$VvmAccountManager$0kSYYkL8RF974o9GXjiTDmDAXnA;-><init>(Landroid/telecom/PhoneAccountHandle;)V

    invoke-static {p0}, Lcom/android/dialer/common/concurrent/ThreadUtil;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static addListener(Lcom/android/voicemail/VoicemailClient$ActivationStateListener;)V
    .locals 1

    .line 121
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    .line 122
    sget-object v0, Lcom/android/voicemail/impl/sync/VvmAccountManager;->listeners:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static getActiveAccounts(Landroid/content/Context;)Ljava/util/List;
    .locals 4
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

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    const-class v1, Landroid/telecom/TelecomManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 112
    invoke-static {p0, v2}, Lcom/android/voicemail/impl/sync/VvmAccountManager;->isAccountActivated(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 113
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static getPreferenceForActivationState(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Lcom/android/dialer/common/PerAccountSharedPreferences;
    .locals 2

    .line 168
    new-instance v0, Lcom/android/dialer/common/PerAccountSharedPreferences;

    .line 171
    invoke-static {p0}, Lcom/android/dialer/util/DialerUtils;->getDefaultSharedPreferenceForDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/dialer/common/PerAccountSharedPreferences;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Landroid/content/SharedPreferences;)V

    return-object v0
.end method

.method public static isAccountActivated(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z
    .locals 3

    .line 99
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-static {p0, p1}, Lcom/android/voicemail/impl/sync/VvmAccountManager;->getPreferenceForActivationState(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Lcom/android/dialer/common/PerAccountSharedPreferences;

    move-result-object v0

    .line 102
    invoke-static {p0, v0, p1}, Lcom/android/voicemail/impl/sync/VvmAccountManager;->migrateActivationState(Landroid/content/Context;Lcom/android/dialer/common/PerAccountSharedPreferences;Landroid/telecom/PhoneAccountHandle;)V

    .line 103
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isAccountActivated:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "is_account_activated"

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/dialer/common/PerAccountSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "VvmAccountManager"

    invoke-static {v2, p0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0, p1, v1}, Lcom/android/dialer/common/PerAccountSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$addAccount$0(Landroid/telecom/PhoneAccountHandle;)V
    .locals 3

    .line 75
    sget-object v0, Lcom/android/voicemail/impl/sync/VvmAccountManager;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/voicemail/VoicemailClient$ActivationStateListener;

    const/4 v2, 0x1

    .line 76
    invoke-interface {v1, p0, v2}, Lcom/android/voicemail/VoicemailClient$ActivationStateListener;->onActivationStateChanged(Landroid/telecom/PhoneAccountHandle;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic lambda$removeAccount$1(Landroid/telecom/PhoneAccountHandle;)V
    .locals 3

    .line 92
    sget-object v0, Lcom/android/voicemail/impl/sync/VvmAccountManager;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/voicemail/VoicemailClient$ActivationStateListener;

    const/4 v2, 0x0

    .line 93
    invoke-interface {v1, p0, v2}, Lcom/android/voicemail/VoicemailClient$ActivationStateListener;->onActivationStateChanged(Landroid/telecom/PhoneAccountHandle;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static migrateActivationState(Landroid/content/Context;Lcom/android/dialer/common/PerAccountSharedPreferences;Landroid/telecom/PhoneAccountHandle;)V
    .locals 2

    .line 139
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "is_account_activated"

    .line 142
    invoke-virtual {p1, v0}, Lcom/android/dialer/common/PerAccountSharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 146
    :cond_1
    new-instance v1, Lcom/android/voicemail/impl/VisualVoicemailPreferences;

    invoke-direct {v1, p0, p2}, Lcom/android/voicemail/impl/VisualVoicemailPreferences;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    .line 150
    invoke-virtual {p1}, Lcom/android/dialer/common/PerAccountSharedPreferences;->edit()Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;

    move-result-object p0

    const/4 p1, 0x0

    .line 153
    invoke-virtual {v1, v0, p1}, Lcom/android/dialer/common/PerAccountSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 151
    invoke-virtual {p0, v0, p1}, Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;

    move-result-object p0

    .line 154
    invoke-virtual {p0}, Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static removeAccount(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V
    .locals 2

    .line 82
    invoke-static {p0, p1}, Lcom/android/voicemail/impl/VoicemailStatus;->disable(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    const/4 v0, 0x0

    .line 83
    invoke-static {p0, p1, v0}, Lcom/android/voicemail/impl/sync/VvmAccountManager;->setAccountActivated(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Z)V

    .line 84
    new-instance v0, Lcom/android/voicemail/impl/VisualVoicemailPreferences;

    invoke-direct {v0, p0, p1}, Lcom/android/voicemail/impl/VisualVoicemailPreferences;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    .line 86
    invoke-virtual {v0}, Lcom/android/voicemail/impl/VisualVoicemailPreferences;->edit()Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo v0, "u"

    const/4 v1, 0x0

    .line 87
    invoke-virtual {p0, v0, v1}, Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pw"

    .line 88
    invoke-virtual {p0, v0, v1}, Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;

    move-result-object p0

    .line 89
    invoke-virtual {p0}, Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;->apply()V

    .line 90
    new-instance p0, Lcom/android/voicemail/impl/sync/-$$Lambda$VvmAccountManager$cpAIVXOWBP0IHSPEbRwP3gSxcdE;

    invoke-direct {p0, p1}, Lcom/android/voicemail/impl/sync/-$$Lambda$VvmAccountManager$cpAIVXOWBP0IHSPEbRwP3gSxcdE;-><init>(Landroid/telecom/PhoneAccountHandle;)V

    invoke-static {p0}, Lcom/android/dialer/common/concurrent/ThreadUtil;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static removeListener(Lcom/android/voicemail/VoicemailClient$ActivationStateListener;)V
    .locals 1

    .line 127
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    .line 128
    sget-object v0, Lcom/android/voicemail/impl/sync/VvmAccountManager;->listeners:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private static setAccountActivated(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Z)V
    .locals 0

    .line 159
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-static {p0, p1}, Lcom/android/voicemail/impl/sync/VvmAccountManager;->getPreferenceForActivationState(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Lcom/android/dialer/common/PerAccountSharedPreferences;

    move-result-object p0

    .line 161
    invoke-virtual {p0}, Lcom/android/dialer/common/PerAccountSharedPreferences;->edit()Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;

    move-result-object p0

    const-string p1, "is_account_activated"

    .line 162
    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;

    move-result-object p0

    .line 163
    invoke-virtual {p0}, Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;->apply()V

    return-void
.end method
