.class public final synthetic Lcom/google/common/collect/-$$Lambda$Streams$Tt7Rd6Knfk-QWfNlQ7Qzdvc9Was;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:[Ljava/util/stream/LongStream;


# direct methods
.method public synthetic constructor <init>([Ljava/util/stream/LongStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/-$$Lambda$Streams$Tt7Rd6Knfk-QWfNlQ7Qzdvc9Was;->f$0:[Ljava/util/stream/LongStream;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/-$$Lambda$Streams$Tt7Rd6Knfk-QWfNlQ7Qzdvc9Was;->f$0:[Ljava/util/stream/LongStream;

    invoke-static {v0}, Lcom/google/common/collect/Streams;->lambda$concat$5([Ljava/util/stream/LongStream;)V

    return-void
.end method
