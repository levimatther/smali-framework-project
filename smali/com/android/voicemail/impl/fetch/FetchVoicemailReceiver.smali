.class public Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FetchVoicemailReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver$fetchVoicemailNetworkRequestCallback;
    }
.end annotation


# static fields
.field private static final NETWORK_RETRY_COUNT:I = 0x3

.field public static final PHONE_ACCOUNT_COMPONENT_NAME:I = 0x2

.field public static final PHONE_ACCOUNT_ID:I = 0x1

.field static final PROJECTION:[Ljava/lang/String;

.field public static final SOURCE_DATA:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FetchVoicemailReceiver"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mNetworkCallback:Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;

.field private mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

.field private mRetryCount:I

.field private mUid:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "source_data"

    const-string v1, "subscription_id"

    const-string v2, "subscription_component_name"

    .line 56
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x3

    .line 76
    iput v0, p0, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;->mRetryCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;Landroid/net/Network;Lcom/android/voicemail/impl/VoicemailStatus$Editor;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;->fetchVoicemail(Landroid/net/Network;Lcom/android/voicemail/impl/VoicemailStatus$Editor;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;->mRetryCount:I

    return p0
.end method

.method static synthetic access$110(Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;)I
    .locals 2

    .line 52
    iget v0, p0, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;->mRetryCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;->mRetryCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;)Landroid/content/Context;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;)Landroid/telecom/PhoneAccountHandle;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;)Landroid/net/Uri;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;)Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;->mUid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;)Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;->mNetworkCallback:Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;

    return-object p0
.end method

.method private fetchVoicemail(Landroid/net/Network;Lcom/android/voicemail/impl/VoicemailStatus$Editor;)V
    .locals 2

    .line 203
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 204
    new-instance v1, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver$1;-><init>(Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;Landroid/net/Network;Lcom/android/voicemail/impl/VoicemailStatus$Editor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static getAccountFromMarshmallowAccount(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccountHandle;
    .locals 4

    .line 163
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastN()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 167
    :cond_0
    const-class v0, Landroid/telecom/TelecomManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/TelecomManager;

    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 168
    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;->getIccSerialNumberFromFullIccSerialNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_2
    return-object v1
.end method

.method private static getIccSerialNumberFromFullIccSerialNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 181
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 182
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 183
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 80
    invoke-static {p1}, Lcom/android/voicemail/VoicemailComponent;->get(Landroid/content/Context;)Lcom/android/voicemail/VoicemailComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/voicemail/VoicemailComponent;->getVoicemailClient()Lcom/android/voicemail/VoicemailClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/voicemail/VoicemailClient;->isVoicemailModuleEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 83
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.FETCH_VOICEMAIL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "FetchVoicemailReceiver"

    const-string v1, "ACTION_FETCH_VOICEMAIL received"

    .line 84
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iput-object p1, p0, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;->mContext:Landroid/content/Context;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;->mContentResolver:Landroid/content/ContentResolver;

    .line 87
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;->mUri:Landroid/net/Uri;

    if-nez p2, :cond_1

    const-string p1, "android.intent.action.FETCH_VOICEMAIL intent sent with no data"

    .line 90
    invoke-static {v0, p1}, Lcom/android/voicemail/impl/VvmLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 95
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;->mUri:Landroid/net/Uri;

    const-string v2, "source_package"

    .line 96
    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 98
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTION_FETCH_VOICEMAIL from foreign pacakge "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/voicemail/impl/VvmLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 102
    :cond_2
    iget-object v1, p0, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;->mUri:Landroid/net/Uri;

    sget-object v3, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-nez p2, :cond_3

    const-string p1, "ACTION_FETCH_VOICEMAIL query returned null"

    .line 104
    invoke-static {v0, p1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 108
    :cond_3
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    .line 109
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;->mUid:Ljava/lang/String;

    const/4 v1, 0x1

    .line 110
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 111
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "phone"

    .line 113
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 114
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string p1, "Account null and no default sim found."

    .line 117
    invoke-static {v0, p1}, Lcom/android/voicemail/impl/VvmLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    return-void

    .line 122
    :cond_4
    :try_start_1
    new-instance v2, Landroid/telecom/PhoneAccountHandle;

    const/4 v3, 0x2

    .line 124
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 125
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    .line 126
    const-class v1, Landroid/telephony/TelephonyManager;

    .line 128
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    .line 129
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->createForPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    if-nez v1, :cond_5

    const-string p1, "account no longer valid, cannot retrieve message"

    .line 133
    invoke-static {v0, p1}, Lcom/android/voicemail/impl/VvmLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    return-void

    .line 136
    :cond_5
    :try_start_2
    iget-object v1, p0, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-static {p1, v1}, Lcom/android/voicemail/impl/sync/VvmAccountManager;->isAccountActivated(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 137
    iget-object v1, p0, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-static {p1, v1}, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;->getAccountFromMarshmallowAccount(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    if-nez v1, :cond_6

    const-string p1, "Account not registered - cannot retrieve message."

    .line 139
    invoke-static {v0, p1}, Lcom/android/voicemail/impl/VvmLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 149
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    return-void

    :cond_6
    :try_start_3
    const-string v1, "Fetching voicemail with Marshmallow PhoneAccountHandle"

    .line 142
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string v1, "Requesting network to fetch voicemail"

    .line 144
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    new-instance v0, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver$fetchVoicemailNetworkRequestCallback;

    iget-object v1, p0, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver$fetchVoicemailNetworkRequestCallback;-><init>(Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    iput-object v0, p0, Lcom/android/voicemail/impl/fetch/FetchVoicemailReceiver;->mNetworkCallback:Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;

    .line 146
    invoke-virtual {v0}, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;->requestNetwork()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 149
    :cond_8
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 150
    throw p1

    :cond_9
    :goto_0
    return-void
.end method
