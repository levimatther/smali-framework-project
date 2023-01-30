.class public Lcom/android/dialer/oem/CequintCallerIdManager;
.super Ljava/lang/Object;
.source "CequintCallerIdManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/oem/CequintCallerIdManager$CequintCallerIdContact;
    }
.end annotation


# static fields
.field private static final CALLER_ID_LOOKUP_INCOMING_CALL:I = 0x20

.field private static final CALLER_ID_LOOKUP_SYSTEM_PROVIDED_CID:I = 0x2

.field private static final CALLER_ID_LOOKUP_USER_PROVIDED_CID:I = 0x1

.field private static final CITY_NAME:Ljava/lang/String; = "cid_pCityName"

.field private static final COMPANY:Ljava/lang/String; = "cid_pCompany"

.field private static final CONFIG_CALLER_ID_ENABLED:Ljava/lang/String; = "config_caller_id_enabled"

.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final CONTENT_URI_FOR_INCALL:Landroid/net/Uri;

.field private static final COUNTRY_NAME:Ljava/lang/String; = "cid_pCountryName"

.field private static final DISPLAY_NAME:Ljava/lang/String; = "cid_pDisplayName"

.field private static final EMPTY_PROJECTION:[Ljava/lang/String;

.field private static final FIRST_NAME:Ljava/lang/String; = "cid_pFirstName"

.field private static final IMAGE:Ljava/lang/String; = "cid_pLogo"

.field private static final LAST_NAME:Ljava/lang/String; = "cid_pLastName"

.field private static final NAME:Ljava/lang/String; = "cid_pName"

.field private static final PROVIDER_NAME:Ljava/lang/String; = "com.cequint.ecid"

.field private static final STATE_ABBR:Ljava/lang/String; = "cid_pStateAbbr"

.field private static final STATE_NAME:Ljava/lang/String; = "cid_pStateName"

.field private static hasAlreadyCheckedCequintCallerIdPackage:Z

.field private static isCequintCallerIdEnabled:Z


# instance fields
.field private final callLogCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/dialer/oem/CequintCallerIdManager$CequintCallerIdContact;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.cequint.ecid/lookup"

    .line 51
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/oem/CequintCallerIdManager;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.cequint.ecid/incalllookup"

    .line 58
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/oem/CequintCallerIdManager;->CONTENT_URI_FOR_INCALL:Landroid/net/Uri;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 60
    sput-object v0, Lcom/android/dialer/oem/CequintCallerIdManager;->EMPTY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/oem/CequintCallerIdManager;->callLogCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static createInstanceForCallLog()Lcom/android/dialer/oem/CequintCallerIdManager;
    .locals 1

    .line 114
    new-instance v0, Lcom/android/dialer/oem/CequintCallerIdManager;

    invoke-direct {v0}, Lcom/android/dialer/oem/CequintCallerIdManager;-><init>()V

    return-object v0
.end method

.method private static generateDisplayName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 224
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 225
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 226
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 227
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 229
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    if-nez v0, :cond_3

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 242
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_2

    .line 244
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    return-object v5

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 233
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_4

    const-string p0, " "

    .line 235
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    if-eqz v1, :cond_5

    .line 239
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    :cond_5
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_6

    .line 250
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    return-object v5
.end method

.method public static getCequintCallerIdContactForInCall(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/dialer/oem/CequintCallerIdManager$CequintCallerIdContact;
    .locals 6

    .line 121
    invoke-static {}, Lcom/android/dialer/common/Assert;->isWorkerThread()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 125
    invoke-static {p1}, Lcom/android/dialer/common/LogUtil;->sanitizePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 126
    invoke-static {p2}, Lcom/android/dialer/common/LogUtil;->sanitizePii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 127
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "CequintCallerIdManager.getCequintCallerIdContactForInCall"

    const-string v5, "number: %s, cnapName: %s, isIncoming: %b"

    .line 122
    invoke-static {v1, v5, v0}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_0

    const/16 p3, 0x22

    goto :goto_0

    :cond_0
    move p3, v3

    :goto_0
    new-array v0, v4, [Ljava/lang/String;

    aput-object p2, v0, v2

    .line 135
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v3

    .line 136
    sget-object p2, Lcom/android/dialer/oem/CequintCallerIdManager;->CONTENT_URI_FOR_INCALL:Landroid/net/Uri;

    invoke-static {p0, p2, p1, v0}, Lcom/android/dialer/oem/CequintCallerIdManager;->lookup(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Lcom/android/dialer/oem/CequintCallerIdManager$CequintCallerIdContact;

    move-result-object p0

    return-object p0
.end method

.method private static getGeoDescription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 260
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 262
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 263
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 264
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    move-object p1, p3

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private static getString(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 1

    .line 208
    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 210
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static declared-synchronized isCequintCallerIdEnabled(Landroid/content/Context;)Z
    .locals 4

    const-class v0, Lcom/android/dialer/oem/CequintCallerIdManager;

    monitor-enter v0

    .line 96
    :try_start_0
    invoke-static {p0}, Lcom/android/dialer/configprovider/ConfigProviderBindings;->get(Landroid/content/Context;)Lcom/android/dialer/configprovider/ConfigProvider;

    move-result-object v1

    const-string v2, "config_caller_id_enabled"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/android/dialer/configprovider/ConfigProvider;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 97
    monitor-exit v0

    return v2

    .line 99
    :cond_0
    :try_start_1
    sget-boolean v1, Lcom/android/dialer/oem/CequintCallerIdManager;->hasAlreadyCheckedCequintCallerIdPackage:Z

    if-nez v1, :cond_1

    .line 100
    sput-boolean v3, Lcom/android/dialer/oem/CequintCallerIdManager;->hasAlreadyCheckedCequintCallerIdPackage:Z

    .line 101
    sput-boolean v2, Lcom/android/dialer/oem/CequintCallerIdManager;->isCequintCallerIdEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.cequint.ecid"

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 105
    sput-boolean v3, Lcom/android/dialer/oem/CequintCallerIdManager;->isCequintCallerIdEnabled:Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 107
    :catch_0
    :try_start_3
    sput-boolean v2, Lcom/android/dialer/oem/CequintCallerIdManager;->isCequintCallerIdEnabled:Z

    .line 110
    :cond_1
    :goto_0
    sget-boolean p0, Lcom/android/dialer/oem/CequintCallerIdManager;->isCequintCallerIdEnabled:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static lookup(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Lcom/android/dialer/oem/CequintCallerIdManager$CequintCallerIdContact;
    .locals 12

    const-string v0, "CequintCallerIdManager.lookup"

    .line 166
    invoke-static {}, Lcom/android/dialer/common/Assert;->isWorkerThread()V

    .line 167
    invoke-static {p2}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 171
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/dialer/oem/CequintCallerIdManager;->EMPTY_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    if-eqz p0, :cond_2

    .line 172
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p3, "cid_pCityName"

    .line 173
    invoke-interface {p0, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-static {p0, p3}, Lcom/android/dialer/oem/CequintCallerIdManager;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object p3

    const-string v2, "cid_pStateName"

    .line 174
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {p0, v2}, Lcom/android/dialer/oem/CequintCallerIdManager;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cid_pStateAbbr"

    .line 175
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-static {p0, v3}, Lcom/android/dialer/oem/CequintCallerIdManager;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cid_pCountryName"

    .line 176
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-static {p0, v4}, Lcom/android/dialer/oem/CequintCallerIdManager;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "cid_pCompany"

    .line 177
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-static {p0, v5}, Lcom/android/dialer/oem/CequintCallerIdManager;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "cid_pName"

    .line 178
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-static {p0, v6}, Lcom/android/dialer/oem/CequintCallerIdManager;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "cid_pFirstName"

    .line 179
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-static {p0, v7}, Lcom/android/dialer/oem/CequintCallerIdManager;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "cid_pLastName"

    .line 180
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-static {p0, v8}, Lcom/android/dialer/oem/CequintCallerIdManager;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "cid_pLogo"

    .line 181
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-static {p0, v9}, Lcom/android/dialer/oem/CequintCallerIdManager;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "cid_pDisplayName"

    .line 182
    invoke-interface {p0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-static {p0, v10}, Lcom/android/dialer/oem/CequintCallerIdManager;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v10

    .line 185
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 186
    invoke-static {v7, v8, v5, v6}, Lcom/android/dialer/oem/CequintCallerIdManager;->generateDisplayName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 188
    :cond_0
    invoke-static {p3, v2, v3, v4}, Lcom/android/dialer/oem/CequintCallerIdManager;->getGeoDescription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v2, "number: %s, contact name: %s, geo: %s, photo url: %s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    .line 192
    invoke-static {p2}, Lcom/android/dialer/common/LogUtil;->sanitizePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, p1

    const/4 p1, 0x1

    .line 193
    invoke-static {v10}, Lcom/android/dialer/common/LogUtil;->sanitizePii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, p1

    const/4 p1, 0x2

    .line 194
    invoke-static {p3}, Lcom/android/dialer/common/LogUtil;->sanitizePii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, p1

    const/4 p1, 0x3

    aput-object v9, v3, p1

    .line 189
    invoke-static {v0, v2, v3}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    new-instance p1, Lcom/android/dialer/oem/CequintCallerIdManager$CequintCallerIdContact;

    invoke-direct {p1, v10, p3, v9, v1}, Lcom/android/dialer/oem/CequintCallerIdManager$CequintCallerIdContact;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/oem/CequintCallerIdManager$1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    .line 201
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_2
    :try_start_3
    const-string p2, "No CequintCallerIdContact found"

    new-array p1, p1, [Ljava/lang/Object;

    .line 198
    invoke-static {v0, p2, p1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p0, :cond_3

    .line 201
    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    return-object v1

    .line 170
    :goto_0
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p0, :cond_4

    .line 201
    :try_start_6
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p0

    :try_start_7
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw p2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "exception on query"

    .line 202
    invoke-static {v0, p1, p0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method


# virtual methods
.method public getCequintCallerIdContact(Landroid/content/Context;Ljava/lang/String;)Lcom/android/dialer/oem/CequintCallerIdManager$CequintCallerIdContact;
    .locals 3

    .line 142
    invoke-static {}, Lcom/android/dialer/common/Assert;->isWorkerThread()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 146
    invoke-static {p2}, Lcom/android/dialer/common/LogUtil;->sanitizePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "CequintCallerIdManager.getCequintCallerIdContact"

    const-string v2, "number: %s"

    .line 143
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lcom/android/dialer/oem/CequintCallerIdManager;->callLogCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object p1, p0, Lcom/android/dialer/oem/CequintCallerIdManager;->callLogCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/oem/CequintCallerIdManager$CequintCallerIdContact;

    return-object p1

    .line 150
    :cond_0
    sget-object v0, Lcom/android/dialer/oem/CequintCallerIdManager;->CONTENT_URI:Landroid/net/Uri;

    .line 154
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "system"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-static {p1, v0, v1, v2}, Lcom/android/dialer/oem/CequintCallerIdManager;->lookup(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Lcom/android/dialer/oem/CequintCallerIdManager$CequintCallerIdContact;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 157
    iget-object v0, p0, Lcom/android/dialer/oem/CequintCallerIdManager;->callLogCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p1
.end method
