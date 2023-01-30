.class final Lcom/android/incallui/maps/testing/TestMapsModule_GetMapsFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "TestMapsModule_GetMapsFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/maps/testing/TestMapsModule_GetMapsFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/incallui/maps/testing/TestMapsModule_GetMapsFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/android/incallui/maps/testing/TestMapsModule_GetMapsFactory;

    invoke-direct {v0}, Lcom/android/incallui/maps/testing/TestMapsModule_GetMapsFactory;-><init>()V

    sput-object v0, Lcom/android/incallui/maps/testing/TestMapsModule_GetMapsFactory$InstanceHolder;->INSTANCE:Lcom/android/incallui/maps/testing/TestMapsModule_GetMapsFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/incallui/maps/testing/TestMapsModule_GetMapsFactory;
    .locals 1

    .line 30
    sget-object v0, Lcom/android/incallui/maps/testing/TestMapsModule_GetMapsFactory$InstanceHolder;->INSTANCE:Lcom/android/incallui/maps/testing/TestMapsModule_GetMapsFactory;

    return-object v0
.end method
