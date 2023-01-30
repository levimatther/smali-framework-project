.class Lcom/android/dialer/blocking/BlockedNumbersAutoMigrator$ShouldAttemptAutoMigrate;
.super Ljava/lang/Object;
.source "BlockedNumbersAutoMigrator.java"

# interfaces
.implements Lcom/android/dialer/common/concurrent/DialerExecutor$Worker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/blocking/BlockedNumbersAutoMigrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShouldAttemptAutoMigrate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/dialer/common/concurrent/DialerExecutor$Worker<",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final appContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/android/dialer/blocking/BlockedNumbersAutoMigrator$ShouldAttemptAutoMigrate;->appContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public doInBackground(Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6

    .line 104
    iget-object p1, p0, Lcom/android/dialer/blocking/BlockedNumbersAutoMigrator$ShouldAttemptAutoMigrate;->appContext:Landroid/content/Context;

    invoke-static {p1}, Landroidx/core/os/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result p1

    const-string v0, "BlockedNumbersAutoMigrator"

    const/4 v1, 0x0

    .line 106
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-nez p1, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "not attempting auto-migrate: device is locked"

    .line 105
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    .line 108
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/blocking/BlockedNumbersAutoMigrator$ShouldAttemptAutoMigrate;->appContext:Landroid/content/Context;

    .line 109
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v3, "checkedAutoMigrate"

    .line 111
    invoke-interface {p1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "not attempting auto-migrate: already checked once."

    .line 112
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    .line 117
    :cond_1
    iget-object v4, p0, Lcom/android/dialer/blocking/BlockedNumbersAutoMigrator$ShouldAttemptAutoMigrate;->appContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/dialer/blocking/FilteredNumberCompat;->canAttemptBlockOperations(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "not attempting auto-migrate: current user can\'t block"

    .line 120
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :cond_2
    new-array v4, v1, [Ljava/lang/Object;

    const-string/jumbo v5, "updating state as already checked for auto-migrate."

    .line 124
    invoke-static {v0, v5, v4}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 v4, 0x1

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 128
    invoke-static {}, Lcom/android/dialer/blocking/FilteredNumberCompat;->canUseNewFiltering()Z

    move-result p1

    if-nez p1, :cond_3

    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "not attempting auto-migrate: not available."

    .line 129
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    .line 133
    :cond_3
    iget-object p1, p0, Lcom/android/dialer/blocking/BlockedNumbersAutoMigrator$ShouldAttemptAutoMigrate;->appContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/dialer/blocking/FilteredNumberCompat;->hasMigratedToNewBlocking(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "not attempting auto-migrate: already migrated."

    .line 134
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    .line 137
    :cond_4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic doInBackground(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 94
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/dialer/blocking/BlockedNumbersAutoMigrator$ShouldAttemptAutoMigrate;->doInBackground(Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
