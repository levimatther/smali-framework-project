.class public abstract Lcom/android/incallui/calllocation/stub/StubCallLocationModule;
.super Ljava/lang/Object;
.source "StubCallLocationModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/calllocation/stub/StubCallLocationModule$StubCallLocation;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract bindCallLocation(Lcom/android/incallui/calllocation/stub/StubCallLocationModule$StubCallLocation;)Lcom/android/incallui/calllocation/CallLocation;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method
