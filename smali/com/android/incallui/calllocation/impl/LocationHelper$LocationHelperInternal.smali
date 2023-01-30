.class Lcom/android/incallui/calllocation/impl/LocationHelper$LocationHelperInternal;
.super Ljava/lang/Object;
.source "LocationHelper.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
.implements Lcom/google/android/gms/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/calllocation/impl/LocationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationHelperInternal"
.end annotation


# instance fields
.field private final apiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private final connectivityManager:Landroid/net/ConnectivityManager;

.field private final mainThreadHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/incallui/calllocation/impl/LocationHelper;


# direct methods
.method constructor <init>(Lcom/android/incallui/calllocation/impl/LocationHelper;Landroid/content/Context;)V
    .locals 2

    .line 174
    iput-object p1, p0, Lcom/android/incallui/calllocation/impl/LocationHelper$LocationHelperInternal;->this$0:Lcom/android/incallui/calllocation/impl/LocationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/incallui/calllocation/impl/LocationHelper$LocationHelperInternal;->mainThreadHandler:Landroid/os/Handler;

    .line 175
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    .line 176
    new-instance p1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    .line 178
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p1

    .line 179
    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p1

    .line 180
    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p1

    .line 181
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/calllocation/impl/LocationHelper$LocationHelperInternal;->apiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "LocationHelperInternal"

    const-string v1, "Connecting to location service..."

    .line 183
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    iget-object p1, p0, Lcom/android/incallui/calllocation/impl/LocationHelper$LocationHelperInternal;->apiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    const-string p1, "connectivity"

    .line 187
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/incallui/calllocation/impl/LocationHelper$LocationHelperInternal;->connectivityManager:Landroid/net/ConnectivityManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/calllocation/impl/LocationHelper$LocationHelperInternal;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/android/incallui/calllocation/impl/LocationHelper$LocationHelperInternal;->apiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/incallui/calllocation/impl/LocationHelper$LocationHelperInternal;)Z
    .locals 0

    .line 166
    invoke-direct {p0}, Lcom/android/incallui/calllocation/impl/LocationHelper$LocationHelperInternal;->isConnected()Z

    move-result p0

    return p0
.end method

.method private isConnected()Z
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/android/incallui/calllocation/impl/LocationHelper$LocationHelperInternal;->connectivityManager:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 246
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 247
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method close()V
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/android/incallui/calllocation/impl/LocationHelper$LocationHelperInternal;->apiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "LocationHelperInternal"

    const-string v2, "disconnecting"

    .line 192
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v1, p0, Lcom/android/incallui/calllocation/impl/LocationHelper$LocationHelperInternal;->apiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/location/FusedLocationProviderApi;->removeLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    .line 194
    iget-object v0, p0, Lcom/android/incallui/calllocation/impl/LocationHelper$LocationHelperInternal;->apiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    :cond_0
    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 2

    const-string p1, "LocationHelperInternal.onConnected"

    .line 200
    invoke-static {p1}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 202
    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->create()Lcom/google/android/gms/location/LocationRequest;

    move-result-object p1

    const/16 v0, 0x66

    .line 203
    invoke-virtual {p1, v0}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    move-result-object p1

    const-wide/16 v0, 0x7530

    .line 204
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object p1

    .line 205
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object p1

    .line 207
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v1, p0, Lcom/android/incallui/calllocation/impl/LocationHelper$LocationHelperInternal;->apiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1, p1, p0}, Lcom/google/android/gms/location/FusedLocationProviderApi;->requestLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    new-instance v0, Lcom/android/incallui/calllocation/impl/LocationHelper$LocationHelperInternal$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/calllocation/impl/LocationHelper$LocationHelperInternal$1;-><init>(Lcom/android/incallui/calllocation/impl/LocationHelper$LocationHelperInternal;)V

    .line 208
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/android/incallui/calllocation/impl/LocationHelper$LocationHelperInternal;->mainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/incallui/calllocation/impl/LocationHelper$LocationHelperInternal$2;

    invoke-direct {v1, p0, p1}, Lcom/android/incallui/calllocation/impl/LocationHelper$LocationHelperInternal$2;-><init>(Lcom/android/incallui/calllocation/impl/LocationHelper$LocationHelperInternal;Landroid/location/Location;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
