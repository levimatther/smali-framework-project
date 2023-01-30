.class public abstract Lcom/android/incallui/maps/stub/StubMapsModule;
.super Ljava/lang/Object;
.source "StubMapsModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/maps/stub/StubMapsModule$StubMaps;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract bindMaps(Lcom/android/incallui/maps/stub/StubMapsModule$StubMaps;)Lcom/android/incallui/maps/Maps;
    .annotation runtime Ldagger/Binds;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation
.end method
