.class public Lcom/android/voicemail/impl/sync/VoicemailStatusQueryHelper;
.super Ljava/lang/Object;
.source "VoicemailStatusQueryHelper.java"


# static fields
.field public static final CONFIGURATION_STATE:I = 0x1

.field public static final NOTIFICATION_CHANNEL_STATE:I = 0x2

.field static final PROJECTION:[Ljava/lang/String;

.field public static final SOURCE_PACKAGE:I = 0x3

.field public static final _ID:I


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mSourceUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "_id"

    const-string v1, "configuration_state"

    const-string v2, "notification_channel_state"

    const-string v3, "source_package"

    .line 29
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/voicemail/impl/sync/VoicemailStatusQueryHelper;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/voicemail/impl/sync/VoicemailStatusQueryHelper;->mContext:Landroid/content/Context;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/voicemail/impl/sync/VoicemailStatusQueryHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 49
    iget-object p1, p0, Lcom/android/voicemail/impl/sync/VoicemailStatusQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/provider/VoicemailContract$Status;->buildSourceUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/voicemail/impl/sync/VoicemailStatusQueryHelper;->mSourceUri:Landroid/net/Uri;

    return-void
.end method

.method private isFieldEqualTo(Landroid/telecom/PhoneAccountHandle;II)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 87
    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object p1

    if-eqz v1, :cond_5

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    const-string v6, "phone_account_component_name=? AND phone_account_id=? AND source_package=?"

    const/4 v3, 0x3

    new-array v7, v3, [Ljava/lang/String;

    aput-object v1, v7, v0

    const/4 v1, 0x1

    aput-object p1, v7, v1

    const/4 p1, 0x2

    .line 100
    iget-object v3, p0, Lcom/android/voicemail/impl/sync/VoicemailStatusQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, p1

    .line 101
    iget-object v3, p0, Lcom/android/voicemail/impl/sync/VoicemailStatusQueryHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/android/voicemail/impl/sync/VoicemailStatusQueryHelper;->mSourceUri:Landroid/net/Uri;

    sget-object v5, Lcom/android/voicemail/impl/sync/VoicemailStatusQueryHelper;->PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 102
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 103
    invoke-interface {v2, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p3, :cond_1

    move v0, v1

    :cond_1
    if-eqz v2, :cond_2

    .line 107
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    return v0

    :cond_3
    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 109
    :cond_4
    throw p1

    :cond_5
    :goto_0
    return v0
.end method


# virtual methods
.method public isNotificationsChannelActive(Landroid/telecom/PhoneAccountHandle;)Z
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, p1, v0, v1}, Lcom/android/voicemail/impl/sync/VoicemailStatusQueryHelper;->isFieldEqualTo(Landroid/telecom/PhoneAccountHandle;II)Z

    move-result p1

    return p1
.end method

.method public isVoicemailSourceConfigured(Landroid/telecom/PhoneAccountHandle;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p1, v0, v1}, Lcom/android/voicemail/impl/sync/VoicemailStatusQueryHelper;->isFieldEqualTo(Landroid/telecom/PhoneAccountHandle;II)Z

    move-result p1

    return p1
.end method
