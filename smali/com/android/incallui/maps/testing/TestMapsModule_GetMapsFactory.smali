.class public final Lcom/android/incallui/maps/testing/TestMapsModule_GetMapsFactory;
.super Ljava/lang/Object;
.source "TestMapsModule_GetMapsFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/maps/testing/TestMapsModule_GetMapsFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/incallui/maps/Maps;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/android/incallui/maps/testing/TestMapsModule_GetMapsFactory;
    .locals 1

    .line 23
    invoke-static {}, Lcom/android/incallui/maps/testing/TestMapsModule_GetMapsFactory$InstanceHolder;->access$000()Lcom/android/incallui/maps/testing/TestMapsModule_GetMapsFactory;

    move-result-object v0

    return-object v0
.end method

.method public static getMaps()Lcom/android/incallui/maps/Maps;
    .locals 2

    .line 27
    invoke-static {}, Lcom/android/incallui/maps/testing/TestMapsModule;->getMaps()Lcom/android/incallui/maps/Maps;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/maps/Maps;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/incallui/maps/Maps;
    .locals 1

    .line 19
    invoke-static {}, Lcom/android/incallui/maps/testing/TestMapsModule_GetMapsFactory;->getMaps()Lcom/android/incallui/maps/Maps;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/android/incallui/maps/testing/TestMapsModule_GetMapsFactory;->get()Lcom/android/incallui/maps/Maps;

    move-result-object v0

    return-object v0
.end method
