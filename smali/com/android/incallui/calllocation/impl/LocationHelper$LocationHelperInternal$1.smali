.class Lcom/android/incallui/calllocation/impl/LocationHelper$LocationHelperInternal$1;
.super Ljava/lang/Object;
.source "LocationHelper.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/calllocation/impl/LocationHelper$LocationHelperInternal;->onConnected(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/incallui/calllocation/impl/LocationHelper$LocationHelperInternal;


# direct methods
.method constructor <init>(Lcom/android/incallui/calllocation/impl/LocationHelper$LocationHelperInternal;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/android/incallui/calllocation/impl/LocationHelper$LocationHelperInternal$1;->this$1:Lcom/android/incallui/calllocation/impl/LocationHelper$LocationHelperInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .line 209
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/android/incallui/calllocation/impl/LocationHelper$LocationHelperInternal$1;->onResult(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .line 212
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 213
    iget-object p1, p0, Lcom/android/incallui/calllocation/impl/LocationHelper$LocationHelperInternal$1;->this$1:Lcom/android/incallui/calllocation/impl/LocationHelper$LocationHelperInternal;

    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v1, p0, Lcom/android/incallui/calllocation/impl/LocationHelper$LocationHelperInternal$1;->this$1:Lcom/android/incallui/calllocation/impl/LocationHelper$LocationHelperInternal;

    invoke-static {v1}, Lcom/android/incallui/calllocation/impl/LocationHelper$LocationHelperInternal;->access$000(Lcom/android/incallui/calllocation/impl/LocationHelper$LocationHelperInternal;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/location/FusedLocationProviderApi;->getLastLocation(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/incallui/calllocation/impl/LocationHelper$LocationHelperInternal;->onLocationChanged(Landroid/location/Location;)V

    :cond_0
    return-void
.end method
