.class public final synthetic Lcom/google/common/collect/-$$Lambda$Streams$-jlVyzka-mQsb6si2gGn3xPLMFM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$Streams$-jlVyzka-mQsb6si2gGn3xPLMFM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$Streams$-jlVyzka-mQsb6si2gGn3xPLMFM;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$Streams$-jlVyzka-mQsb6si2gGn3xPLMFM;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$Streams$-jlVyzka-mQsb6si2gGn3xPLMFM;->INSTANCE:Lcom/google/common/collect/-$$Lambda$Streams$-jlVyzka-mQsb6si2gGn3xPLMFM;

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

    check-cast p1, Ljava/util/Spliterator$OfInt;

    invoke-static {p1}, Lcom/google/common/collect/Streams;->lambda$concat$2(Ljava/util/Spliterator$OfInt;)Ljava/util/Spliterator$OfInt;

    move-result-object p1

    return-object p1
.end method
