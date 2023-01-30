.class public final Lcom/android/dialer/inject/ContextModule;
.super Ljava/lang/Object;
.source "ContextModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/dialer/inject/ContextModule;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method provideContext()Landroid/content/Context;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/android/dialer/inject/ContextModule;->context:Landroid/content/Context;

    return-object v0
.end method
