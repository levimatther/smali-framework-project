.class public Lcom/android/dialer/location/CountryDetector;
.super Ljava/lang/Object;
.source "CountryDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/location/CountryDetector$GeocodeCountryWorker;,
        Lcom/android/dialer/location/CountryDetector$LocationChangedReceiver;,
        Lcom/android/dialer/location/CountryDetector$LocaleProvider;
    }
.end annotation


# static fields
.field private static final DEFAULT_COUNTRY_ISO:Ljava/lang/String; = "US"

.field private static final DISTANCE_BETWEEN_UPDATES_METERS:J = 0x1388L

.field static final KEY_PREFERENCE_CURRENT_COUNTRY:Ljava/lang/String; = "preference_current_country"

.field private static final KEY_PREFERENCE_TIME_UPDATED:Ljava/lang/String; = "preference_time_updated"

.field private static final TIME_BETWEEN_UPDATES_MS:J = 0x2932e00L

.field static sInstance:Lcom/android/dialer/location/CountryDetector;


# instance fields
.field private final appContext:Landroid/content/Context;

.field private final geocoder:Landroid/location/Geocoder;

.field private final localeProvider:Lcom/android/dialer/location/CountryDetector$LocaleProvider;

.field private final telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/telephony/TelephonyManager;Landroid/location/LocationManager;Lcom/android/dialer/location/CountryDetector$LocaleProvider;Landroid/location/Geocoder;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p2, p0, Lcom/android/dialer/location/CountryDetector;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 90
    iput-object p4, p0, Lcom/android/dialer/location/CountryDetector;->localeProvider:Lcom/android/dialer/location/CountryDetector$LocaleProvider;

    .line 91
    iput-object p1, p0, Lcom/android/dialer/location/CountryDetector;->appContext:Landroid/content/Context;

    .line 92
    iput-object p5, p0, Lcom/android/dialer/location/CountryDetector;->geocoder:Landroid/location/Geocoder;

    .line 96
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 97
    invoke-static {p1, p3}, Lcom/android/dialer/location/CountryDetector;->registerForLocationUpdates(Landroid/content/Context;Landroid/location/LocationManager;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/location/CountryDetector;)Landroid/location/Geocoder;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/dialer/location/CountryDetector;->geocoder:Landroid/location/Geocoder;

    return-object p0
.end method

.method static synthetic access$100(Landroid/content/Context;Landroid/location/Geocoder;Landroid/location/Location;)V
    .locals 0

    .line 63
    invoke-static {p0, p1, p2}, Lcom/android/dialer/location/CountryDetector;->processLocationUpdate(Landroid/content/Context;Landroid/location/Geocoder;Landroid/location/Location;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/dialer/location/CountryDetector;
    .locals 8

    const-class v0, Lcom/android/dialer/location/CountryDetector;

    monitor-enter v0

    .line 124
    :try_start_0
    sget-object v1, Lcom/android/dialer/location/CountryDetector;->sInstance:Lcom/android/dialer/location/CountryDetector;

    if-nez v1, :cond_0

    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 126
    new-instance v1, Lcom/android/dialer/location/CountryDetector;

    const-string v2, "phone"

    .line 129
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/telephony/TelephonyManager;

    const-string v2, "location"

    .line 130
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Landroid/location/LocationManager;

    sget-object v6, Lcom/android/dialer/location/-$$Lambda$CountryDetector$CX4jMmtHqSh4o-z0xWLz6XC1x04;->INSTANCE:Lcom/android/dialer/location/-$$Lambda$CountryDetector$CX4jMmtHqSh4o-z0xWLz6XC1x04;

    new-instance v7, Landroid/location/Geocoder;

    invoke-direct {v7, v3}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/dialer/location/CountryDetector;-><init>(Landroid/content/Context;Landroid/telephony/TelephonyManager;Landroid/location/LocationManager;Lcom/android/dialer/location/CountryDetector$LocaleProvider;Landroid/location/Geocoder;)V

    sput-object v1, Lcom/android/dialer/location/CountryDetector;->sInstance:Lcom/android/dialer/location/CountryDetector;

    .line 134
    :cond_0
    sget-object p0, Lcom/android/dialer/location/CountryDetector;->sInstance:Lcom/android/dialer/location/CountryDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getLocaleBasedCountryIso()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/android/dialer/location/CountryDetector;->localeProvider:Lcom/android/dialer/location/CountryDetector$LocaleProvider;

    invoke-interface {v0}, Lcom/android/dialer/location/CountryDetector$LocaleProvider;->getLocale()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getLocationBasedCountryIso()Ljava/lang/String;
    .locals 3

    .line 165
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/location/CountryDetector;->appContext:Landroid/content/Context;

    .line 166
    invoke-static {v0}, Lcom/android/dialer/util/PermissionsUtil;->hasLocationPermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/location/CountryDetector;->appContext:Landroid/content/Context;

    .line 167
    invoke-static {v0}, Landroidx/core/os/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/location/CountryDetector;->appContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "preference_current_country"

    .line 171
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method private getNetworkBasedCountryIso()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/android/dialer/location/CountryDetector;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSimBasedCountryIso()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/android/dialer/location/CountryDetector;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isNetworkCountryCodeAvailable()Z
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/android/dialer/location/CountryDetector;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static synthetic lambda$CX4jMmtHqSh4o-z0xWLz6XC1x04()Ljava/util/Locale;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$processLocationUpdate$0(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 228
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 229
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "preference_time_updated"

    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "preference_current_country"

    .line 231
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 232
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static synthetic lambda$processLocationUpdate$1(Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "CountryDetector.processLocationUpdate"

    const-string v1, "exception occurred when getting geocoded country from location"

    .line 236
    invoke-static {p0, v1, v0}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static processLocationUpdate(Landroid/content/Context;Landroid/location/Geocoder;Landroid/location/Location;)V
    .locals 2

    .line 219
    invoke-static {p0}, Lcom/android/dialer/common/concurrent/DialerExecutorComponent;->get(Landroid/content/Context;)Lcom/android/dialer/common/concurrent/DialerExecutorComponent;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Lcom/android/dialer/common/concurrent/DialerExecutorComponent;->dialerExecutorFactory()Lcom/android/dialer/common/concurrent/DialerExecutorFactory;

    move-result-object v0

    new-instance v1, Lcom/android/dialer/location/CountryDetector$GeocodeCountryWorker;

    invoke-direct {v1, p1}, Lcom/android/dialer/location/CountryDetector$GeocodeCountryWorker;-><init>(Landroid/location/Geocoder;)V

    .line 221
    invoke-interface {v0, v1}, Lcom/android/dialer/common/concurrent/DialerExecutorFactory;->createNonUiTaskBuilder(Lcom/android/dialer/common/concurrent/DialerExecutor$Worker;)Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/dialer/location/-$$Lambda$CountryDetector$bFTB8jfrYM1qWWT5g9vLbU_u8-A;

    invoke-direct {v0, p0}, Lcom/android/dialer/location/-$$Lambda$CountryDetector$bFTB8jfrYM1qWWT5g9vLbU_u8-A;-><init>(Landroid/content/Context;)V

    .line 222
    invoke-interface {p1, v0}, Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;->onSuccess(Lcom/android/dialer/common/concurrent/DialerExecutor$SuccessListener;)Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;

    move-result-object p0

    sget-object p1, Lcom/android/dialer/location/-$$Lambda$CountryDetector$RPP7Wp_CSmYDKmSIMSLXmEqMTJo;->INSTANCE:Lcom/android/dialer/location/-$$Lambda$CountryDetector$RPP7Wp_CSmYDKmSIMSLXmEqMTJo;

    .line 234
    invoke-interface {p0, p1}, Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;->onFailure(Lcom/android/dialer/common/concurrent/DialerExecutor$FailureListener;)Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;

    move-result-object p0

    .line 240
    invoke-interface {p0}, Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;->build()Lcom/android/dialer/common/concurrent/DialerExecutor;

    move-result-object p0

    .line 241
    invoke-interface {p0, p2}, Lcom/android/dialer/common/concurrent/DialerExecutor;->executeParallel(Ljava/lang/Object;)V

    return-void
.end method

.method private static registerForLocationUpdates(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 9

    .line 102
    invoke-static {p0}, Lcom/android/dialer/util/PermissionsUtil;->hasLocationPermissions(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "CountryDetector.registerForLocationUpdates"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array p0, v2, [Ljava/lang/Object;

    const-string p1, "no location permissions, not registering for location updates"

    .line 103
    invoke-static {v1, p1, p0}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "registering for location updates"

    .line 109
    invoke-static {v1, v3, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/dialer/location/CountryDetector$LocationChangedReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x8000000

    .line 113
    invoke-static {p0, v2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    const-wide/32 v5, 0x2932e00

    const v7, 0x459c4000    # 5000.0f

    const-string v4, "passive"

    move-object v3, p1

    .line 115
    invoke-virtual/range {v3 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public getCurrentCountryIso()Ljava/lang/String;
    .locals 2

    .line 139
    invoke-direct {p0}, Lcom/android/dialer/location/CountryDetector;->isNetworkCountryCodeAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-direct {p0}, Lcom/android/dialer/location/CountryDetector;->getNetworkBasedCountryIso()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 142
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    invoke-direct {p0}, Lcom/android/dialer/location/CountryDetector;->getLocationBasedCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 145
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 146
    invoke-direct {p0}, Lcom/android/dialer/location/CountryDetector;->getSimBasedCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 148
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 149
    invoke-direct {p0}, Lcom/android/dialer/location/CountryDetector;->getLocaleBasedCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 151
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "US"

    .line 154
    :cond_4
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
