.class public abstract Lcom/android/incallui/calllocation/CallLocationComponent;
.super Ljava/lang/Object;
.source "CallLocationComponent.java"


# annotations
.annotation runtime Ldagger/Subcomponent;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/calllocation/CallLocationComponent$HasComponent;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/android/incallui/calllocation/CallLocationComponent;
    .locals 0

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/inject/HasRootComponent;

    invoke-interface {p0}, Lcom/android/dialer/inject/HasRootComponent;->component()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/incallui/calllocation/CallLocationComponent$HasComponent;

    .line 31
    invoke-interface {p0}, Lcom/android/incallui/calllocation/CallLocationComponent$HasComponent;->callLocationComponent()Lcom/android/incallui/calllocation/CallLocationComponent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract getCallLocation()Lcom/android/incallui/calllocation/CallLocation;
.end method
