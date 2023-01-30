.class final Lcom/android/dialer/main/impl/MainModule_ProvideMainFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "MainModule_ProvideMainFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/main/impl/MainModule_ProvideMainFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/dialer/main/impl/MainModule_ProvideMainFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/android/dialer/main/impl/MainModule_ProvideMainFactory;

    invoke-direct {v0}, Lcom/android/dialer/main/impl/MainModule_ProvideMainFactory;-><init>()V

    sput-object v0, Lcom/android/dialer/main/impl/MainModule_ProvideMainFactory$InstanceHolder;->INSTANCE:Lcom/android/dialer/main/impl/MainModule_ProvideMainFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/dialer/main/impl/MainModule_ProvideMainFactory;
    .locals 1

    .line 30
    sget-object v0, Lcom/android/dialer/main/impl/MainModule_ProvideMainFactory$InstanceHolder;->INSTANCE:Lcom/android/dialer/main/impl/MainModule_ProvideMainFactory;

    return-object v0
.end method
