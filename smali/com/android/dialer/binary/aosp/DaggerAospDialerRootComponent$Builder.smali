.class public final Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$Builder;
.super Ljava/lang/Object;
.source "DaggerAospDialerRootComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private contextModule:Lcom/android/dialer/inject/ContextModule;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$1;)V
    .locals 0

    .line 174
    invoke-direct {p0}, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/dialer/binary/aosp/AospDialerRootComponent;
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$Builder;->contextModule:Lcom/android/dialer/inject/ContextModule;

    const-class v1, Lcom/android/dialer/inject/ContextModule;

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 205
    new-instance v0, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;

    iget-object v1, p0, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$Builder;->contextModule:Lcom/android/dialer/inject/ContextModule;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;-><init>(Lcom/android/dialer/inject/ContextModule;Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$1;)V

    return-object v0
.end method

.method public contextModule(Lcom/android/dialer/inject/ContextModule;)Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$Builder;
    .locals 0

    .line 181
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/inject/ContextModule;

    iput-object p1, p0, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$Builder;->contextModule:Lcom/android/dialer/inject/ContextModule;

    return-object p0
.end method

.method public stubEnrichedCallModule(Lcom/android/dialer/enrichedcall/stub/StubEnrichedCallModule;)Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 190
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public voicemailModule(Lcom/android/voicemail/impl/VoicemailModule;)Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 199
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
