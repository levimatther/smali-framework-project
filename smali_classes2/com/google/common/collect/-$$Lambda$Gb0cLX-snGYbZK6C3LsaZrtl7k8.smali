.class public final synthetic Lcom/google/common/collect/-$$Lambda$Gb0cLX-snGYbZK6C3LsaZrtl7k8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$Gb0cLX-snGYbZK6C3LsaZrtl7k8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$Gb0cLX-snGYbZK6C3LsaZrtl7k8;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$Gb0cLX-snGYbZK6C3LsaZrtl7k8;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$Gb0cLX-snGYbZK6C3LsaZrtl7k8;->INSTANCE:Lcom/google/common/collect/-$$Lambda$Gb0cLX-snGYbZK6C3LsaZrtl7k8;

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

    check-cast p1, Lcom/google/common/collect/ImmutableSortedSet$Builder;

    check-cast p2, Lcom/google/common/collect/ImmutableSortedSet$Builder;

    invoke-virtual {p1, p2}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->combine(Lcom/google/common/collect/ImmutableSet$Builder;)Lcom/google/common/collect/ImmutableSortedSet$Builder;

    move-result-object p1

    return-object p1
.end method
