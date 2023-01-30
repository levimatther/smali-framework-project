.class final Lcom/android/dialer/enrichedcall/stub/StubEnrichedCallModule_ProvidesRcsVideoShareFactoryFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "StubEnrichedCallModule_ProvidesRcsVideoShareFactoryFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/enrichedcall/stub/StubEnrichedCallModule_ProvidesRcsVideoShareFactoryFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/dialer/enrichedcall/stub/StubEnrichedCallModule_ProvidesRcsVideoShareFactoryFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/android/dialer/enrichedcall/stub/StubEnrichedCallModule_ProvidesRcsVideoShareFactoryFactory;

    invoke-direct {v0}, Lcom/android/dialer/enrichedcall/stub/StubEnrichedCallModule_ProvidesRcsVideoShareFactoryFactory;-><init>()V

    sput-object v0, Lcom/android/dialer/enrichedcall/stub/StubEnrichedCallModule_ProvidesRcsVideoShareFactoryFactory$InstanceHolder;->INSTANCE:Lcom/android/dialer/enrichedcall/stub/StubEnrichedCallModule_ProvidesRcsVideoShareFactoryFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/dialer/enrichedcall/stub/StubEnrichedCallModule_ProvidesRcsVideoShareFactoryFactory;
    .locals 1

    .line 30
    sget-object v0, Lcom/android/dialer/enrichedcall/stub/StubEnrichedCallModule_ProvidesRcsVideoShareFactoryFactory$InstanceHolder;->INSTANCE:Lcom/android/dialer/enrichedcall/stub/StubEnrichedCallModule_ProvidesRcsVideoShareFactoryFactory;

    return-object v0
.end method
