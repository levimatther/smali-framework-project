.class public Lcom/android/incallui/calllocation/impl/LocationPresenter;
.super Lcom/android/incallui/baseui/Presenter;
.source "LocationPresenter.java"

# interfaces
.implements Lcom/google/android/gms/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/calllocation/impl/LocationPresenter$LocationUi;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/baseui/Presenter<",
        "Lcom/android/incallui/calllocation/impl/LocationPresenter$LocationUi;",
        ">;",
        "Lcom/google/android/gms/location/LocationListener;"
    }
.end annotation


# instance fields
.field private mDownloadMapTask:Landroid/os/AsyncTask;

.field private mLastLocation:Landroid/location/Location;

.field private mReverseGeocodeTask:Landroid/os/AsyncTask;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/incallui/baseui/Presenter;-><init>()V

    return-void
.end method

.method private updateLocation(Landroid/location/Location;Z)V
    .locals 5

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "location: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "LocationPresenter.updateLocation"

    invoke-static {v3, v0, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p2, :cond_0

    .line 74
    iget-object p2, p0, Lcom/android/incallui/calllocation/impl/LocationPresenter;->mLastLocation:Landroid/location/Location;

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 75
    :cond_0
    iput-object p1, p0, Lcom/android/incallui/calllocation/impl/LocationPresenter;->mLastLocation:Landroid/location/Location;

    .line 76
    invoke-static {p1}, Lcom/android/incallui/calllocation/impl/LocationHelper;->checkLocation(Landroid/location/Location;)I

    move-result p2

    .line 77
    invoke-virtual {p0}, Lcom/android/incallui/calllocation/impl/LocationPresenter;->getUi()Lcom/android/incallui/baseui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/calllocation/impl/LocationPresenter$LocationUi;

    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    .line 79
    new-instance p2, Lcom/android/incallui/calllocation/impl/DownloadMapImageTask;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p2, v4}, Lcom/android/incallui/calllocation/impl/DownloadMapImageTask;-><init>(Ljava/lang/ref/WeakReference;)V

    new-array v4, v2, [Landroid/location/Location;

    aput-object p1, v4, v1

    invoke-virtual {p2, v4}, Lcom/android/incallui/calllocation/impl/DownloadMapImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p2

    iput-object p2, p0, Lcom/android/incallui/calllocation/impl/LocationPresenter;->mDownloadMapTask:Landroid/os/AsyncTask;

    .line 80
    new-instance p2, Lcom/android/incallui/calllocation/impl/ReverseGeocodeTask;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p2, v4}, Lcom/android/incallui/calllocation/impl/ReverseGeocodeTask;-><init>(Ljava/lang/ref/WeakReference;)V

    new-array v2, v2, [Landroid/location/Location;

    aput-object p1, v2, v1

    invoke-virtual {p2, v2}, Lcom/android/incallui/calllocation/impl/ReverseGeocodeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p2

    iput-object p2, p0, Lcom/android/incallui/calllocation/impl/LocationPresenter;->mReverseGeocodeTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    .line 82
    invoke-interface {v0, p1}, Lcom/android/incallui/calllocation/impl/LocationPresenter$LocationUi;->setLocation(Landroid/location/Location;)V

    goto :goto_1

    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "no Ui"

    .line 84
    invoke-static {v3, p2, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x4

    if-eq p2, p1, :cond_5

    if-eqz v0, :cond_3

    .line 89
    invoke-interface {v0}, Lcom/android/incallui/calllocation/impl/LocationPresenter$LocationUi;->getContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_5

    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    .line 92
    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object p2, Lcom/android/dialer/logging/DialerImpression$Type;->EMERGENCY_STALE_LOCATION:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {p1, p2}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x3

    if-ne p2, v0, :cond_5

    .line 94
    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object p2, Lcom/android/dialer/logging/DialerImpression$Type;->EMERGENCY_INACCURATE_LOCATION:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {p1, p2}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "LocationPresenter.onLocationChanged"

    const-string v3, ""

    .line 68
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    invoke-direct {p0, p1, v0}, Lcom/android/incallui/calllocation/impl/LocationPresenter;->updateLocation(Landroid/location/Location;Z)V

    return-void
.end method

.method public bridge synthetic onUiReady(Lcom/android/incallui/baseui/Ui;)V
    .locals 0

    .line 37
    check-cast p1, Lcom/android/incallui/calllocation/impl/LocationPresenter$LocationUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/calllocation/impl/LocationPresenter;->onUiReady(Lcom/android/incallui/calllocation/impl/LocationPresenter$LocationUi;)V

    return-void
.end method

.method public onUiReady(Lcom/android/incallui/calllocation/impl/LocationPresenter$LocationUi;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "LocationPresenter.onUiReady"

    const-string v2, ""

    .line 48
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    invoke-super {p0, p1}, Lcom/android/incallui/baseui/Presenter;->onUiReady(Lcom/android/incallui/baseui/Ui;)V

    .line 50
    iget-object p1, p0, Lcom/android/incallui/calllocation/impl/LocationPresenter;->mLastLocation:Landroid/location/Location;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/calllocation/impl/LocationPresenter;->updateLocation(Landroid/location/Location;Z)V

    return-void
.end method

.method public bridge synthetic onUiUnready(Lcom/android/incallui/baseui/Ui;)V
    .locals 0

    .line 37
    check-cast p1, Lcom/android/incallui/calllocation/impl/LocationPresenter$LocationUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/calllocation/impl/LocationPresenter;->onUiUnready(Lcom/android/incallui/calllocation/impl/LocationPresenter$LocationUi;)V

    return-void
.end method

.method public onUiUnready(Lcom/android/incallui/calllocation/impl/LocationPresenter$LocationUi;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "LocationPresenter.onUiUnready"

    const-string v2, ""

    .line 55
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    invoke-super {p0, p1}, Lcom/android/incallui/baseui/Presenter;->onUiUnready(Lcom/android/incallui/baseui/Ui;)V

    .line 58
    iget-object p1, p0, Lcom/android/incallui/calllocation/impl/LocationPresenter;->mDownloadMapTask:Landroid/os/AsyncTask;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 59
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 61
    :cond_0
    iget-object p1, p0, Lcom/android/incallui/calllocation/impl/LocationPresenter;->mReverseGeocodeTask:Landroid/os/AsyncTask;

    if-eqz p1, :cond_1

    .line 62
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_1
    return-void
.end method
