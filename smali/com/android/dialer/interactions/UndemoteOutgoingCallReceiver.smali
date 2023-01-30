.class public Lcom/android/dialer/interactions/UndemoteOutgoingCallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UndemoteOutgoingCallReceiver.java"


# static fields
.field private static final NO_CONTACT_FOUND:J = -0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/interactions/UndemoteOutgoingCallReceiver;Landroid/content/Context;Ljava/lang/String;)J
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/interactions/UndemoteOutgoingCallReceiver;->getContactIdFromPhoneNumber(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$100(Lcom/android/dialer/interactions/UndemoteOutgoingCallReceiver;Landroid/content/Context;J)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/android/dialer/interactions/UndemoteOutgoingCallReceiver;->undemoteContactWithId(Landroid/content/Context;J)V

    return-void
.end method

.method private getContactIdFromPhoneNumber(Landroid/content/Context;Ljava/lang/String;)J
    .locals 9

    const-string v0, "android.permission.READ_CONTACTS"

    .line 79
    invoke-static {p1, v0}, Lcom/android/dialer/util/PermissionsUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    return-wide v1

    .line 82
    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 87
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string p1, "_id"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 88
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    return-wide v1

    .line 97
    :cond_1
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    .line 98
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-wide v0

    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-wide v1

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 105
    throw p2

    :catch_0
    return-wide v1
.end method

.method private undemoteContactWithId(Landroid/content/Context;J)V
    .locals 1

    const-string v0, "android.permission.WRITE_CONTACTS"

    .line 69
    invoke-static {p1, v0}, Lcom/android/dialer/util/PermissionsUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, p2, p3}, Landroid/provider/ContactsContract$PinnedPositions;->undemote(Landroid/content/ContentResolver;J)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "android.permission.READ_CONTACTS"

    .line 44
    invoke-static {p1, v0}, Lcom/android/dialer/util/PermissionsUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "android.permission.WRITE_CONTACTS"

    .line 45
    invoke-static {p1, v0}, Lcom/android/dialer/util/PermissionsUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    .line 48
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "android.intent.extra.PHONE_NUMBER"

    .line 49
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 50
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 53
    :cond_1
    new-instance v0, Lcom/android/dialer/interactions/UndemoteOutgoingCallReceiver$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/dialer/interactions/UndemoteOutgoingCallReceiver$1;-><init>(Lcom/android/dialer/interactions/UndemoteOutgoingCallReceiver;Landroid/content/Context;Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Lcom/android/dialer/interactions/UndemoteOutgoingCallReceiver$1;->start()V

    :cond_2
    :goto_0
    return-void
.end method
