.class public Lcom/android/dialer/enrichedcall/stub/StubEnrichedCallModule;
.super Ljava/lang/Object;
.source "StubEnrichedCallModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$providesRcsVideoShareFactory$0(Lcom/android/dialer/enrichedcall/EnrichedCallManager;Lcom/android/incallui/videotech/VideoTech$VideoTechListener;Ljava/lang/String;)Lcom/android/incallui/videotech/VideoTech;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method static provideEnrichedCallManager()Lcom/android/dialer/enrichedcall/EnrichedCallManager;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 32
    new-instance v0, Lcom/android/dialer/enrichedcall/stub/EnrichedCallManagerStub;

    invoke-direct {v0}, Lcom/android/dialer/enrichedcall/stub/EnrichedCallManagerStub;-><init>()V

    return-object v0
.end method

.method static providesRcsVideoShareFactory()Lcom/android/dialer/enrichedcall/RcsVideoShareFactory;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 38
    sget-object v0, Lcom/android/dialer/enrichedcall/stub/-$$Lambda$StubEnrichedCallModule$wrr8NfG-RhVMWOxc7hQlZBxKXT8;->INSTANCE:Lcom/android/dialer/enrichedcall/stub/-$$Lambda$StubEnrichedCallModule$wrr8NfG-RhVMWOxc7hQlZBxKXT8;

    return-object v0
.end method
