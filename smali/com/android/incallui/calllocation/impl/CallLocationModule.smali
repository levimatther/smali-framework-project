.class public abstract Lcom/android/incallui/calllocation/impl/CallLocationModule;
.super Ljava/lang/Object;
.source "CallLocationModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract bindCallLocation(Lcom/android/incallui/calllocation/impl/CallLocationImpl;)Lcom/android/incallui/calllocation/CallLocation;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method
