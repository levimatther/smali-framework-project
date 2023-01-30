.class public Lcom/android/dialer/blocking/FilteredNumberCompat;
.super Ljava/lang/Object;
.source "FilteredNumberCompat.java"


# static fields
.field public static final HAS_MIGRATED_TO_NEW_BLOCKING_KEY:Ljava/lang/String; = "migratedToNewBlocking"

.field private static canAttemptBlockOperationsForTest:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canAttemptBlockOperations(Landroid/content/Context;)Z
    .locals 2

    .line 263
    sget-object v0, Lcom/android/dialer/blocking/FilteredNumberCompat;->canAttemptBlockOperationsForTest:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 267
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    .line 269
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isSystemUser()Z

    move-result p0

    return p0

    .line 274
    :cond_1
    invoke-static {p0}, Lcom/android/dialer/telecom/TelecomUtil;->isDefaultDialer(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 275
    invoke-static {p0}, Lcom/android/dialer/blocking/FilteredNumberCompat;->safeBlockedNumbersContractCanCurrentUserBlockNumbers(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static canCurrentUserOpenBlockSettings(Landroid/content/Context;)Z
    .locals 2

    .line 291
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    .line 293
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isSystemUser()Z

    move-result p0

    return p0

    .line 296
    :cond_0
    invoke-static {p0}, Lcom/android/dialer/telecom/TelecomUtil;->isDefaultDialer(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    invoke-static {p0}, Lcom/android/dialer/blocking/FilteredNumberCompat;->safeBlockedNumbersContractCanCurrentUserBlockNumbers(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static canUseNewFiltering()Z
    .locals 2

    .line 111
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static createManageBlockedNumbersIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 246
    invoke-static {}, Lcom/android/dialer/blocking/FilteredNumberCompat;->canUseNewFiltering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-static {p0}, Lcom/android/dialer/blocking/FilteredNumberCompat;->hasMigratedToNewBlocking(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 249
    const-class v0, Landroid/telecom/TelecomManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/TelecomManager;

    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->createManageBlockedNumbersIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0

    .line 251
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.dialer.action.BLOCKED_NUMBERS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static filter([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 180
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 181
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    if-eqz v3, :cond_1

    .line 183
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 186
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private static getBaseUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 1

    .line 159
    invoke-static {p0}, Lcom/android/dialer/blocking/FilteredNumberCompat;->useNewFiltering(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p0, v0, :cond_0

    sget-object p0, Landroid/provider/BlockedNumberContract$BlockedNumbers;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/dialer/database/FilteredNumberContract$FilteredNumber;->CONTENT_URI:Landroid/net/Uri;

    :goto_0
    return-object p0
.end method

.method public static getContentUri(Landroid/content/Context;Ljava/lang/Integer;)Landroid/net/Uri;
    .locals 2

    if-nez p1, :cond_0

    .line 152
    invoke-static {p0}, Lcom/android/dialer/blocking/FilteredNumberCompat;->getBaseUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 154
    :cond_0
    invoke-static {p0}, Lcom/android/dialer/blocking/FilteredNumberCompat;->getBaseUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    invoke-static {p0, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getCountryIsoColumnName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 96
    invoke-static {p0}, Lcom/android/dialer/blocking/FilteredNumberCompat;->useNewFiltering(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string p0, "country_iso"

    :goto_0
    return-object p0
.end method

.method public static getE164NumberColumnName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 101
    invoke-static {p0}, Lcom/android/dialer/blocking/FilteredNumberCompat;->useNewFiltering(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "e164_number"

    goto :goto_0

    :cond_0
    const-string p0, "normalized_number"

    :goto_0
    return-object p0
.end method

.method public static getIdColumnName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-static {p0}, Lcom/android/dialer/blocking/FilteredNumberCompat;->useNewFiltering(Landroid/content/Context;)Z

    move-result p0

    const-string p0, "_id"

    return-object p0
.end method

.method public static getOriginalNumberColumnName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 85
    invoke-static {p0}, Lcom/android/dialer/blocking/FilteredNumberCompat;->useNewFiltering(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "original_number"

    goto :goto_0

    :cond_0
    const-string p0, "number"

    :goto_0
    return-object p0
.end method

.method public static getSourceColumnName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 80
    invoke-static {p0}, Lcom/android/dialer/blocking/FilteredNumberCompat;->useNewFiltering(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string p0, "source"

    :goto_0
    return-object p0
.end method

.method public static getTypeColumnName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 71
    invoke-static {p0}, Lcom/android/dialer/blocking/FilteredNumberCompat;->useNewFiltering(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "type"

    :goto_0
    return-object p0
.end method

.method public static hasMigratedToNewBlocking(Landroid/content/Context;)Z
    .locals 2

    .line 127
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "migratedToNewBlocking"

    const/4 v1, 0x0

    .line 128
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static maybeShowBlockNumberMigrationDialog(Landroid/content/Context;Landroid/app/FragmentManager;Lcom/android/dialer/blocking/BlockedNumbersMigrator$Listener;)Z
    .locals 3

    .line 223
    invoke-static {p0}, Lcom/android/dialer/blocking/FilteredNumberCompat;->shouldShowMigrationDialog(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "FilteredNumberCompat.maybeShowBlockNumberMigrationDialog"

    const-string v2, "maybeShowBlockNumberMigrationDialog - showing migration dialog"

    .line 224
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    new-instance v0, Lcom/android/dialer/blocking/BlockedNumbersMigrator;

    invoke-direct {v0, p0}, Lcom/android/dialer/blocking/BlockedNumbersMigrator;-><init>(Landroid/content/Context;)V

    invoke-static {v0, p2}, Lcom/android/dialer/blocking/MigrateBlockedNumbersDialogFragment;->newInstance(Lcom/android/dialer/blocking/BlockedNumbersMigrator;Lcom/android/dialer/blocking/BlockedNumbersMigrator$Listener;)Landroid/app/DialogFragment;

    move-result-object p0

    const-string p2, "MigrateBlockedNumbers"

    .line 228
    invoke-virtual {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public static newBlockNumberContentValues(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 3

    .line 200
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 201
    invoke-static {p0}, Lcom/android/dialer/blocking/FilteredNumberCompat;->getOriginalNumberColumnName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-static {p0}, Lcom/android/dialer/blocking/FilteredNumberCompat;->useNewFiltering(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p2, :cond_0

    .line 204
    invoke-static {p1, p3}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 206
    :cond_0
    invoke-static {p0}, Lcom/android/dialer/blocking/FilteredNumberCompat;->getE164NumberColumnName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-static {p0}, Lcom/android/dialer/blocking/FilteredNumberCompat;->getCountryIsoColumnName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-static {p0}, Lcom/android/dialer/blocking/FilteredNumberCompat;->getTypeColumnName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 209
    invoke-static {p0}, Lcom/android/dialer/blocking/FilteredNumberCompat;->getSourceColumnName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    return-object v0
.end method

.method private static safeBlockedNumbersContractCanCurrentUserBlockNumbers(Landroid/content/Context;)Z
    .locals 2

    .line 312
    :try_start_0
    invoke-static {p0}, Landroid/provider/BlockedNumberContract;->canCurrentUserBlockNumbers(Landroid/content/Context;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "FilteredNumberCompat.safeBlockedNumbersContractCanCurrentUserBlockNumbers"

    const-string v1, "Exception while querying BlockedNumberContract"

    .line 314
    invoke-static {v0, v1, p0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static setCanAttemptBlockOperationsForTest(Z)V
    .locals 0

    .line 280
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/android/dialer/blocking/FilteredNumberCompat;->canAttemptBlockOperationsForTest:Ljava/lang/Boolean;

    return-void
.end method

.method public static setHasMigratedToNewBlocking(Landroid/content/Context;Z)V
    .locals 1

    .line 138
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 139
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "migratedToNewBlocking"

    .line 140
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 141
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static shouldShowMigrationDialog(Landroid/content/Context;)Z
    .locals 1

    .line 235
    invoke-static {}, Lcom/android/dialer/blocking/FilteredNumberCompat;->canUseNewFiltering()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/dialer/blocking/FilteredNumberCompat;->hasMigratedToNewBlocking(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static useNewFiltering(Landroid/content/Context;)Z
    .locals 1

    .line 119
    invoke-static {}, Lcom/android/dialer/blocking/FilteredNumberCompat;->canUseNewFiltering()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/dialer/blocking/FilteredNumberCompat;->hasMigratedToNewBlocking(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
