.class public final synthetic Lcom/google/auto/common/-$$Lambda$SimpleAnnotationMirror$w__eFBjV9m1l-pGPBFxprZMqwJ8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/auto/common/-$$Lambda$SimpleAnnotationMirror$w__eFBjV9m1l-pGPBFxprZMqwJ8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/auto/common/-$$Lambda$SimpleAnnotationMirror$w__eFBjV9m1l-pGPBFxprZMqwJ8;

    invoke-direct {v0}, Lcom/google/auto/common/-$$Lambda$SimpleAnnotationMirror$w__eFBjV9m1l-pGPBFxprZMqwJ8;-><init>()V

    sput-object v0, Lcom/google/auto/common/-$$Lambda$SimpleAnnotationMirror$w__eFBjV9m1l-pGPBFxprZMqwJ8;->INSTANCE:Lcom/google/auto/common/-$$Lambda$SimpleAnnotationMirror$w__eFBjV9m1l-pGPBFxprZMqwJ8;

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

    check-cast p1, Ljavax/lang/model/element/ExecutableElement;

    invoke-static {p1}, Lcom/google/auto/common/SimpleAnnotationMirror;->lambda$new$0(Ljavax/lang/model/element/ExecutableElement;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object p1

    return-object p1
.end method
