.class public final synthetic Lcom/google/common/collect/-$$Lambda$zSHdU_CyjfI1-rocqBvafH4ppd0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$zSHdU_CyjfI1-rocqBvafH4ppd0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$zSHdU_CyjfI1-rocqBvafH4ppd0;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$zSHdU_CyjfI1-rocqBvafH4ppd0;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$zSHdU_CyjfI1-rocqBvafH4ppd0;->INSTANCE:Lcom/google/common/collect/-$$Lambda$zSHdU_CyjfI1-rocqBvafH4ppd0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/common/collect/SetMultimap;

    invoke-static {p1}, Lcom/google/common/collect/ImmutableSetMultimap;->copyOf(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/ImmutableSetMultimap;

    move-result-object p1

    return-object p1
.end method
