.class public final synthetic Lcom/google/common/collect/-$$Lambda$VPCwCVNyDcTS8_-paG2FrPedynw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$VPCwCVNyDcTS8_-paG2FrPedynw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$VPCwCVNyDcTS8_-paG2FrPedynw;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$VPCwCVNyDcTS8_-paG2FrPedynw;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$VPCwCVNyDcTS8_-paG2FrPedynw;->INSTANCE:Lcom/google/common/collect/-$$Lambda$VPCwCVNyDcTS8_-paG2FrPedynw;

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

    check-cast p1, Lcom/google/common/collect/TopKSelector;

    invoke-virtual {p1}, Lcom/google/common/collect/TopKSelector;->topK()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
