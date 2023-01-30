.class public final Lcom/android/incallui/maps/testing/TestMapsModule;
.super Ljava/lang/Object;
.source "TestMapsModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# static fields
.field private static maps:Lcom/android/incallui/maps/Maps;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getMaps()Lcom/android/incallui/maps/Maps;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 36
    sget-object v0, Lcom/android/incallui/maps/testing/TestMapsModule;->maps:Lcom/android/incallui/maps/Maps;

    return-object v0
.end method

.method public static setMaps(Lcom/android/incallui/maps/Maps;)V
    .locals 0

    .line 31
    sput-object p0, Lcom/android/incallui/maps/testing/TestMapsModule;->maps:Lcom/android/incallui/maps/Maps;

    return-void
.end method
