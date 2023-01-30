.class public Lcom/android/dialer/location/CountryDetector$LocationChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CountryDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/location/CountryDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocationChangedReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 199
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "location"

    .line 203
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 208
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/location/Location;

    .line 213
    invoke-static {p1}, Lcom/android/dialer/location/CountryDetector;->getInstance(Landroid/content/Context;)Lcom/android/dialer/location/CountryDetector;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/location/CountryDetector;->access$000(Lcom/android/dialer/location/CountryDetector;)Landroid/location/Geocoder;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/android/dialer/location/CountryDetector;->access$100(Landroid/content/Context;Landroid/location/Geocoder;Landroid/location/Location;)V

    return-void
.end method
