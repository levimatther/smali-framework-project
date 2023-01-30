.class public abstract Lcom/android/dialer/calllog/CallLogComponent;
.super Ljava/lang/Object;
.source "CallLogComponent.java"


# annotations
.annotation runtime Ldagger/Subcomponent;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/calllog/CallLogComponent$HasComponent;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/android/dialer/calllog/CallLogComponent;
    .locals 0

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/inject/HasRootComponent;

    invoke-interface {p0}, Lcom/android/dialer/inject/HasRootComponent;->component()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/calllog/CallLogComponent$HasComponent;

    .line 32
    invoke-interface {p0}, Lcom/android/dialer/calllog/CallLogComponent$HasComponent;->callLogComponent()Lcom/android/dialer/calllog/CallLogComponent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract callLogFramework()Lcom/android/dialer/calllog/CallLogFramework;
.end method

.method public abstract getRefreshAnnotatedCallLogWorker()Lcom/android/dialer/calllog/RefreshAnnotatedCallLogWorker;
.end method
