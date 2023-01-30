.class public final Lcom/android/incallui/maps/stub/StubMapsModule_StubMaps_Factory;
.super Ljava/lang/Object;
.source "StubMapsModule_StubMaps_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/maps/stub/StubMapsModule_StubMaps_Factory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/incallui/maps/stub/StubMapsModule$StubMaps;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/android/incallui/maps/stub/StubMapsModule_StubMaps_Factory;
    .locals 1

    .line 21
    invoke-static {}, Lcom/android/incallui/maps/stub/StubMapsModule_StubMaps_Factory$InstanceHolder;->access$000()Lcom/android/incallui/maps/stub/StubMapsModule_StubMaps_Factory;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance()Lcom/android/incallui/maps/stub/StubMapsModule$StubMaps;
    .locals 1

    .line 25
    new-instance v0, Lcom/android/incallui/maps/stub/StubMapsModule$StubMaps;

    invoke-direct {v0}, Lcom/android/incallui/maps/stub/StubMapsModule$StubMaps;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/incallui/maps/stub/StubMapsModule$StubMaps;
    .locals 1

    .line 17
    invoke-static {}, Lcom/android/incallui/maps/stub/StubMapsModule_StubMaps_Factory;->newInstance()Lcom/android/incallui/maps/stub/StubMapsModule$StubMaps;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/android/incallui/maps/stub/StubMapsModule_StubMaps_Factory;->get()Lcom/android/incallui/maps/stub/StubMapsModule$StubMaps;

    move-result-object v0

    return-object v0
.end method
