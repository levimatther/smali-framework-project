.class final Lcom/android/incallui/maps/stub/StubMapsModule$StubMaps;
.super Ljava/lang/Object;
.source "StubMapsModule.java"

# interfaces
.implements Lcom/android/incallui/maps/Maps;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/maps/stub/StubMapsModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StubMaps"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createStaticMapFragment(Landroid/location/Location;)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 49
    invoke-static {}, Lcom/android/dialer/common/Assert;->createUnsupportedOperationFailException()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
