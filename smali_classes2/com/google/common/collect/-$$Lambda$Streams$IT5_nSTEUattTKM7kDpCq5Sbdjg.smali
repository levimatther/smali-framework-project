.class public final synthetic Lcom/google/common/collect/-$$Lambda$Streams$IT5_nSTEUattTKM7kDpCq5Sbdjg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:[Ljava/util/stream/IntStream;


# direct methods
.method public synthetic constructor <init>([Ljava/util/stream/IntStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/-$$Lambda$Streams$IT5_nSTEUattTKM7kDpCq5Sbdjg;->f$0:[Ljava/util/stream/IntStream;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/-$$Lambda$Streams$IT5_nSTEUattTKM7kDpCq5Sbdjg;->f$0:[Ljava/util/stream/IntStream;

    invoke-static {v0}, Lcom/google/common/collect/Streams;->lambda$concat$3([Ljava/util/stream/IntStream;)V

    return-void
.end method
