.class public Lcom/android/incallui/calllocation/impl/CallLocationImpl;
.super Ljava/lang/Object;
.source "CallLocationImpl.java"

# interfaces
.implements Lcom/android/incallui/calllocation/CallLocation;


# instance fields
.field private locationFragment:Lcom/android/incallui/calllocation/impl/LocationFragment;

.field private locationHelper:Lcom/android/incallui/calllocation/impl/LocationHelper;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canGetLocation(Landroid/content/Context;)Z
    .locals 0

    .line 39
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    .line 40
    invoke-static {p1}, Lcom/android/incallui/calllocation/impl/LocationHelper;->canGetLocation(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public close()V
    .locals 2

    .line 59
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    .line 60
    iget-object v0, p0, Lcom/android/incallui/calllocation/impl/CallLocationImpl;->locationFragment:Lcom/android/incallui/calllocation/impl/LocationFragment;

    if-eqz v0, :cond_0

    .line 61
    iget-object v1, p0, Lcom/android/incallui/calllocation/impl/CallLocationImpl;->locationHelper:Lcom/android/incallui/calllocation/impl/LocationHelper;

    invoke-virtual {v0}, Lcom/android/incallui/calllocation/impl/LocationFragment;->getPresenter()Lcom/android/incallui/baseui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/LocationListener;

    invoke-virtual {v1, v0}, Lcom/android/incallui/calllocation/impl/LocationHelper;->removeLocationListener(Lcom/google/android/gms/location/LocationListener;)V

    .line 62
    iget-object v0, p0, Lcom/android/incallui/calllocation/impl/CallLocationImpl;->locationHelper:Lcom/android/incallui/calllocation/impl/LocationHelper;

    invoke-virtual {v0}, Lcom/android/incallui/calllocation/impl/LocationHelper;->close()V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/android/incallui/calllocation/impl/CallLocationImpl;->locationFragment:Lcom/android/incallui/calllocation/impl/LocationFragment;

    .line 64
    iput-object v0, p0, Lcom/android/incallui/calllocation/impl/CallLocationImpl;->locationHelper:Lcom/android/incallui/calllocation/impl/LocationHelper;

    :cond_0
    return-void
.end method

.method public getLocationFragment(Landroid/content/Context;)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 47
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    .line 48
    iget-object v0, p0, Lcom/android/incallui/calllocation/impl/CallLocationImpl;->locationFragment:Lcom/android/incallui/calllocation/impl/LocationFragment;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/android/incallui/calllocation/impl/LocationFragment;

    invoke-direct {v0}, Lcom/android/incallui/calllocation/impl/LocationFragment;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/calllocation/impl/CallLocationImpl;->locationFragment:Lcom/android/incallui/calllocation/impl/LocationFragment;

    .line 50
    new-instance v0, Lcom/android/incallui/calllocation/impl/LocationHelper;

    invoke-direct {v0, p1}, Lcom/android/incallui/calllocation/impl/LocationHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/calllocation/impl/CallLocationImpl;->locationHelper:Lcom/android/incallui/calllocation/impl/LocationHelper;

    .line 51
    iget-object p1, p0, Lcom/android/incallui/calllocation/impl/CallLocationImpl;->locationFragment:Lcom/android/incallui/calllocation/impl/LocationFragment;

    invoke-virtual {p1}, Lcom/android/incallui/calllocation/impl/LocationFragment;->getPresenter()Lcom/android/incallui/baseui/Presenter;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/location/LocationListener;

    invoke-virtual {v0, p1}, Lcom/android/incallui/calllocation/impl/LocationHelper;->addLocationListener(Lcom/google/android/gms/location/LocationListener;)V

    .line 53
    :cond_0
    iget-object p1, p0, Lcom/android/incallui/calllocation/impl/CallLocationImpl;->locationFragment:Lcom/android/incallui/calllocation/impl/LocationFragment;

    return-object p1
.end method
