.class public abstract Lcom/android/dialer/enrichedcall/EnrichedCallComponent;
.super Ljava/lang/Object;
.source "EnrichedCallComponent.java"


# annotations
.annotation runtime Ldagger/Subcomponent;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/enrichedcall/EnrichedCallComponent$HasComponent;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/android/dialer/enrichedcall/EnrichedCallComponent;
    .locals 0

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/inject/HasRootComponent;

    invoke-interface {p0}, Lcom/android/dialer/inject/HasRootComponent;->component()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/enrichedcall/EnrichedCallComponent$HasComponent;

    .line 36
    invoke-interface {p0}, Lcom/android/dialer/enrichedcall/EnrichedCallComponent$HasComponent;->enrichedCallComponent()Lcom/android/dialer/enrichedcall/EnrichedCallComponent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract getEnrichedCallManager()Lcom/android/dialer/enrichedcall/EnrichedCallManager;
.end method

.method public abstract getRcsVideoShareFactory()Lcom/android/dialer/enrichedcall/RcsVideoShareFactory;
.end method
