.class public final synthetic Lcom/google/common/collect/-$$Lambda$7Mxhy81NAiwcDk9tE05wrS15B5g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$7Mxhy81NAiwcDk9tE05wrS15B5g;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$7Mxhy81NAiwcDk9tE05wrS15B5g;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$7Mxhy81NAiwcDk9tE05wrS15B5g;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$7Mxhy81NAiwcDk9tE05wrS15B5g;->INSTANCE:Lcom/google/common/collect/-$$Lambda$7Mxhy81NAiwcDk9tE05wrS15B5g;

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

    check-cast p1, Lcom/google/common/collect/ImmutableRangeSet$Builder;

    check-cast p2, Lcom/google/common/collect/ImmutableRangeSet$Builder;

    invoke-virtual {p1, p2}, Lcom/google/common/collect/ImmutableRangeSet$Builder;->combine(Lcom/google/common/collect/ImmutableRangeSet$Builder;)Lcom/google/common/collect/ImmutableRangeSet$Builder;

    move-result-object p1

    return-object p1
.end method
