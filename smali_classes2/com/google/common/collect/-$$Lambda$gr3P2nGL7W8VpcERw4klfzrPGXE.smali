.class public final synthetic Lcom/google/common/collect/-$$Lambda$gr3P2nGL7W8VpcERw4klfzrPGXE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$gr3P2nGL7W8VpcERw4klfzrPGXE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$gr3P2nGL7W8VpcERw4klfzrPGXE;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$gr3P2nGL7W8VpcERw4klfzrPGXE;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$gr3P2nGL7W8VpcERw4klfzrPGXE;->INSTANCE:Lcom/google/common/collect/-$$Lambda$gr3P2nGL7W8VpcERw4klfzrPGXE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/common/collect/Maps$Accumulator;

    check-cast p2, Lcom/google/common/collect/Maps$Accumulator;

    invoke-virtual {p1, p2}, Lcom/google/common/collect/Maps$Accumulator;->combine(Lcom/google/common/collect/Maps$Accumulator;)Lcom/google/common/collect/Maps$Accumulator;

    move-result-object p1

    return-object p1
.end method
