.class public final synthetic Lcom/google/common/collect/-$$Lambda$StandardTable$PASDwpaSzKLmtoUqymC_thb-Yuk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$StandardTable$PASDwpaSzKLmtoUqymC_thb-Yuk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$StandardTable$PASDwpaSzKLmtoUqymC_thb-Yuk;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$StandardTable$PASDwpaSzKLmtoUqymC_thb-Yuk;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$StandardTable$PASDwpaSzKLmtoUqymC_thb-Yuk;->INSTANCE:Lcom/google/common/collect/-$$Lambda$StandardTable$PASDwpaSzKLmtoUqymC_thb-Yuk;

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

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/google/common/collect/StandardTable;->lambda$cellSpliterator$1(Ljava/util/Map$Entry;)Ljava/util/Spliterator;

    move-result-object p1

    return-object p1
.end method
