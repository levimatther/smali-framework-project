.class public final synthetic Lcom/google/common/collect/-$$Lambda$lowwVYyQOaWraSEhFKduT64LPV0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$lowwVYyQOaWraSEhFKduT64LPV0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$lowwVYyQOaWraSEhFKduT64LPV0;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$lowwVYyQOaWraSEhFKduT64LPV0;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$lowwVYyQOaWraSEhFKduT64LPV0;->INSTANCE:Lcom/google/common/collect/-$$Lambda$lowwVYyQOaWraSEhFKduT64LPV0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/common/collect/ImmutableRangeSet$Builder;

    check-cast p2, Lcom/google/common/collect/Range;

    invoke-virtual {p1, p2}, Lcom/google/common/collect/ImmutableRangeSet$Builder;->add(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableRangeSet$Builder;

    return-void
.end method
