.class Lcom/android/dialer/location/CountryDetector$GeocodeCountryWorker;
.super Ljava/lang/Object;
.source "CountryDetector.java"

# interfaces
.implements Lcom/android/dialer/common/concurrent/DialerExecutor$Worker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/location/CountryDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GeocodeCountryWorker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/dialer/common/concurrent/DialerExecutor$Worker<",
        "Landroid/location/Location;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final geocoder:Landroid/location/Geocoder;


# direct methods
.method constructor <init>(Landroid/location/Geocoder;)V
    .locals 0

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Geocoder;

    iput-object p1, p0, Lcom/android/dialer/location/CountryDetector$GeocodeCountryWorker;->geocoder:Landroid/location/Geocoder;

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 245
    check-cast p1, Landroid/location/Location;

    invoke-virtual {p0, p1}, Lcom/android/dialer/location/CountryDetector$GeocodeCountryWorker;->doInBackground(Landroid/location/Location;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public doInBackground(Landroid/location/Location;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 260
    :cond_0
    iget-object v1, p0, Lcom/android/dialer/location/CountryDetector$GeocodeCountryWorker;->geocoder:Landroid/location/Geocoder;

    .line 261
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 262
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 263
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Address;

    invoke-virtual {p1}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method
