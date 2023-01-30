.class public abstract Lcom/android/dialer/calllog/database/CallLogDatabaseComponent;
.super Ljava/lang/Object;
.source "CallLogDatabaseComponent.java"


# annotations
.annotation runtime Ldagger/Subcomponent;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/calllog/database/CallLogDatabaseComponent$HasComponent;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/android/dialer/calllog/database/CallLogDatabaseComponent;
    .locals 0

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/inject/HasRootComponent;

    invoke-interface {p0}, Lcom/android/dialer/inject/HasRootComponent;->component()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/calllog/database/CallLogDatabaseComponent$HasComponent;

    .line 33
    invoke-interface {p0}, Lcom/android/dialer/calllog/database/CallLogDatabaseComponent$HasComponent;->callLogDatabaseComponent()Lcom/android/dialer/calllog/database/CallLogDatabaseComponent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract coalescer()Lcom/android/dialer/calllog/database/Coalescer;
.end method

.method public abstract mutationApplier()Lcom/android/dialer/calllog/database/MutationApplier;
.end method
