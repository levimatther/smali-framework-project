.class public final synthetic Lcom/google/common/primitives/-$$Lambda$54TIlpnh0zD74vLfBD-jk02xN2w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/DoubleConsumer;


# instance fields
.field public final synthetic f$0:Lcom/google/common/primitives/ImmutableDoubleArray$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/primitives/ImmutableDoubleArray$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/primitives/-$$Lambda$54TIlpnh0zD74vLfBD-jk02xN2w;->f$0:Lcom/google/common/primitives/ImmutableDoubleArray$Builder;

    return-void
.end method


# virtual methods
.method public final accept(D)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/primitives/-$$Lambda$54TIlpnh0zD74vLfBD-jk02xN2w;->f$0:Lcom/google/common/primitives/ImmutableDoubleArray$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->add(D)Lcom/google/common/primitives/ImmutableDoubleArray$Builder;

    return-void
.end method
