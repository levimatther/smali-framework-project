.class Lcom/android/dialer/configprovider/SharedPrefConfigProvider;
.super Ljava/lang/Object;
.source "SharedPrefConfigProvider.java"

# interfaces
.implements Lcom/android/dialer/configprovider/ConfigProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/configprovider/SharedPrefConfigProvider$Provider;,
        Lcom/android/dialer/configprovider/SharedPrefConfigProvider$Service;
    }
.end annotation


# static fields
.field private static final PREF_PREFIX:Ljava/lang/String; = "config_provider_prefs_"


# instance fields
.field private final appContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/dialer/configprovider/SharedPrefConfigProvider;->appContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 0

    .line 52
    invoke-static {p0}, Lcom/android/dialer/configprovider/SharedPrefConfigProvider;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private static bypassStrictMode(Lcom/android/dialer/configprovider/SharedPrefConfigProvider$Provider;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/dialer/configprovider/SharedPrefConfigProvider$Provider<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 124
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 126
    :try_start_0
    invoke-interface {p0}, Lcom/android/dialer/configprovider/SharedPrefConfigProvider$Provider;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 129
    throw p0
.end method

.method private static getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 0

    .line 115
    invoke-static {p0}, Lcom/android/dialer/util/DialerUtils;->getDefaultSharedPreferenceForDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .line 110
    new-instance v0, Lcom/android/dialer/configprovider/-$$Lambda$SharedPrefConfigProvider$O1r88lOv8JHiJ14Rti2oSlvr_8Q;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/dialer/configprovider/-$$Lambda$SharedPrefConfigProvider$O1r88lOv8JHiJ14Rti2oSlvr_8Q;-><init>(Lcom/android/dialer/configprovider/SharedPrefConfigProvider;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/android/dialer/configprovider/SharedPrefConfigProvider;->bypassStrictMode(Lcom/android/dialer/configprovider/SharedPrefConfigProvider$Provider;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 1

    .line 104
    new-instance v0, Lcom/android/dialer/configprovider/-$$Lambda$SharedPrefConfigProvider$sKEe311CvgnOrCBObVJ6wOq3IbU;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/dialer/configprovider/-$$Lambda$SharedPrefConfigProvider$sKEe311CvgnOrCBObVJ6wOq3IbU;-><init>(Lcom/android/dialer/configprovider/SharedPrefConfigProvider;Ljava/lang/String;J)V

    invoke-static {v0}, Lcom/android/dialer/configprovider/SharedPrefConfigProvider;->bypassStrictMode(Lcom/android/dialer/configprovider/SharedPrefConfigProvider$Provider;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 98
    new-instance v0, Lcom/android/dialer/configprovider/-$$Lambda$SharedPrefConfigProvider$H24xbxYN8YzE9G59pObwaYGFMzU;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/dialer/configprovider/-$$Lambda$SharedPrefConfigProvider$H24xbxYN8YzE9G59pObwaYGFMzU;-><init>(Lcom/android/dialer/configprovider/SharedPrefConfigProvider;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/dialer/configprovider/SharedPrefConfigProvider;->bypassStrictMode(Lcom/android/dialer/configprovider/SharedPrefConfigProvider$Provider;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public synthetic lambda$getBoolean$2$SharedPrefConfigProvider(Ljava/lang/String;Z)Ljava/lang/Boolean;
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/android/dialer/configprovider/SharedPrefConfigProvider;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/configprovider/SharedPrefConfigProvider;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "config_provider_prefs_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getLong$1$SharedPrefConfigProvider(Ljava/lang/String;J)Ljava/lang/Long;
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/android/dialer/configprovider/SharedPrefConfigProvider;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/configprovider/SharedPrefConfigProvider;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "config_provider_prefs_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getString$0$SharedPrefConfigProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/android/dialer/configprovider/SharedPrefConfigProvider;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/configprovider/SharedPrefConfigProvider;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "config_provider_prefs_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
