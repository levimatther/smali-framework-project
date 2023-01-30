.class public abstract Lcom/android/incallui/maps/impl/MapsModule;
.super Ljava/lang/Object;
.source "MapsModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract bindMaps(Lcom/android/incallui/maps/impl/MapsImpl;)Lcom/android/incallui/maps/Maps;
    .annotation runtime Ldagger/Binds;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation
.end method
