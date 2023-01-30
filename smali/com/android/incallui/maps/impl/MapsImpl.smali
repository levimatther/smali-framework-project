.class final Lcom/android/incallui/maps/impl/MapsImpl;
.super Ljava/lang/Object;
.source "MapsImpl.java"

# interfaces
.implements Lcom/android/incallui/maps/Maps;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createStaticMapFragment(Landroid/location/Location;)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 38
    invoke-static {p1}, Lcom/android/incallui/maps/impl/StaticMapFragment;->newInstance(Landroid/location/Location;)Lcom/android/incallui/maps/impl/StaticMapFragment;

    move-result-object p1

    return-object p1
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
