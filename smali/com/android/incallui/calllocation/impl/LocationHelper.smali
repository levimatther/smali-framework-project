.class public Lcom/android/incallui/calllocation/impl/LocationHelper;
.super Ljava/lang/Object;
.source "LocationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/calllocation/impl/LocationHelper$LocationHelperInternal;,
        Lcom/android/incallui/calllocation/impl/LocationHelper$LocationStatus;
    }
.end annotation


# static fields
.field private static final LAST_UPDATE_THRESHOLD_MS:I = 0xea60

.field private static final LOCATION_ACCURACY_THRESHOLD_METERS:I = 0x64

.field public static final LOCATION_STATUS_INACCURATE:I = 0x3

.field public static final LOCATION_STATUS_NO_LOCATION:I = 0x4

.field public static final LOCATION_STATUS_OK:I = 0x1

.field public static final LOCATION_STATUS_STALE:I = 0x2

.field public static final LOCATION_STATUS_UNKNOWN:I = 0x0

.field private static final MIN_UPDATE_INTERVAL_MS:I = 0x7530


# instance fields
.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/location/LocationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final locationHelperInternal:Lcom/android/incallui/calllocation/impl/LocationHelper$LocationHelperInternal;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/calllocation/impl/LocationHelper;->listeners:Ljava/util/List;

    .line 74
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    .line 75
    invoke-static {p1}, Lcom/android/incallui/calllocation/impl/LocationHelper;->canGetLocation(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/dialer/common/Assert;->checkArgument(Z)V

    .line 76
    new-instance v0, Lcom/android/incallui/calllocation/impl/LocationHelper$LocationHelperInternal;

    invoke-direct {v0, p0, p1}, Lcom/android/incallui/calllocation/impl/LocationHelper$LocationHelperInternal;-><init>(Lcom/android/incallui/calllocation/impl/LocationHelper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/calllocation/impl/LocationHelper;->locationHelperInternal:Lcom/android/incallui/calllocation/impl/LocationHelper$LocationHelperInternal;

    return-void
.end method

.method static canGetLocation(Landroid/content/Context;)Z
    .locals 3

    .line 80
    invoke-static {p0}, Lcom/android/dialer/util/PermissionsUtil;->hasLocationPermissions(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "LocationHelper.canGetLocation"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array p0, v2, [Ljava/lang/Object;

    const-string v0, "no location permissions."

    .line 81
    invoke-static {v1, v0, p0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 86
    :cond_0
    invoke-static {p0}, Lcom/android/incallui/calllocation/impl/GoogleLocationSettingHelper;->isGoogleLocationServicesEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 87
    invoke-static {p0}, Lcom/android/incallui/calllocation/impl/GoogleLocationSettingHelper;->isSystemLocationSettingEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 92
    :cond_1
    invoke-static {p0}, Landroidx/core/os/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_2

    new-array p0, v2, [Ljava/lang/Object;

    const-string v0, "location unavailable in FBE mode."

    .line 93
    invoke-static {v1, v0, p0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    new-array p0, v2, [Ljava/lang/Object;

    const-string v0, "location service is disabled."

    .line 88
    invoke-static {v1, v0, p0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method static checkLocation(Landroid/location/Location;)I
    .locals 6

    const/4 v0, 0x0

    const-string v1, "LocationHelper.checkLocation"

    if-nez p0, :cond_0

    new-array p0, v0, [Ljava/lang/Object;

    const-string v0, "no location"

    .line 110
    invoke-static {v1, v0, p0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x4

    return p0

    .line 114
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/32 v2, 0xea60

    cmp-long v2, v4, v2

    if-lez v2, :cond_1

    .line 117
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stale location, age: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p0, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x2

    return p0

    .line 121
    :cond_1
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "poor accuracy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p0, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x3

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method addLocationListener(Lcom/google/android/gms/location/LocationListener;)V
    .locals 1

    .line 131
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    .line 132
    iget-object v0, p0, Lcom/android/incallui/calllocation/impl/LocationHelper;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method close()V
    .locals 1

    .line 143
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    const-string v0, "LocationHelper.close"

    .line 144
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/android/incallui/calllocation/impl/LocationHelper;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 147
    iget-object v0, p0, Lcom/android/incallui/calllocation/impl/LocationHelper;->locationHelperInternal:Lcom/android/incallui/calllocation/impl/LocationHelper$LocationHelperInternal;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0}, Lcom/android/incallui/calllocation/impl/LocationHelper$LocationHelperInternal;->close()V

    :cond_0
    return-void
.end method

.method onLocationChanged(Landroid/location/Location;Z)V
    .locals 2

    .line 154
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    .line 155
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "location: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "LocationHelper.onLocationChanged"

    invoke-static {v1, p2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    iget-object p2, p0, Lcom/android/incallui/calllocation/impl/LocationHelper;->listeners:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/LocationListener;

    .line 158
    invoke-interface {v0, p1}, Lcom/google/android/gms/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method removeLocationListener(Lcom/google/android/gms/location/LocationListener;)V
    .locals 1

    .line 137
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    .line 138
    iget-object v0, p0, Lcom/android/incallui/calllocation/impl/LocationHelper;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
