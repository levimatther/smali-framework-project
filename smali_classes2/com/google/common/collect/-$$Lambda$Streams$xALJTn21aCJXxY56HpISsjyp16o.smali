.class public final synthetic Lcom/google/common/collect/-$$Lambda$Streams$xALJTn21aCJXxY56HpISsjyp16o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:[Ljava/util/stream/DoubleStream;


# direct methods
.method public synthetic constructor <init>([Ljava/util/stream/DoubleStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/-$$Lambda$Streams$xALJTn21aCJXxY56HpISsjyp16o;->f$0:[Ljava/util/stream/DoubleStream;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/-$$Lambda$Streams$xALJTn21aCJXxY56HpISsjyp16o;->f$0:[Ljava/util/stream/DoubleStream;

    invoke-static {v0}, Lcom/google/common/collect/Streams;->lambda$concat$7([Ljava/util/stream/DoubleStream;)V

    return-void
.end method
