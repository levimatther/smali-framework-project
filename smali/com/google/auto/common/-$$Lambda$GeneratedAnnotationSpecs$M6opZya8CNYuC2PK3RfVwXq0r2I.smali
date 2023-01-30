.class public final synthetic Lcom/google/auto/common/-$$Lambda$GeneratedAnnotationSpecs$M6opZya8CNYuC2PK3RfVwXq0r2I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/auto/common/-$$Lambda$GeneratedAnnotationSpecs$M6opZya8CNYuC2PK3RfVwXq0r2I;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/auto/common/-$$Lambda$GeneratedAnnotationSpecs$M6opZya8CNYuC2PK3RfVwXq0r2I;

    invoke-direct {v0}, Lcom/google/auto/common/-$$Lambda$GeneratedAnnotationSpecs$M6opZya8CNYuC2PK3RfVwXq0r2I;-><init>()V

    sput-object v0, Lcom/google/auto/common/-$$Lambda$GeneratedAnnotationSpecs$M6opZya8CNYuC2PK3RfVwXq0r2I;->INSTANCE:Lcom/google/auto/common/-$$Lambda$GeneratedAnnotationSpecs$M6opZya8CNYuC2PK3RfVwXq0r2I;

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

    check-cast p1, Lcom/squareup/javapoet/AnnotationSpec$Builder;

    invoke-static {p1}, Lcom/google/auto/common/GeneratedAnnotationSpecs;->lambda$M6opZya8CNYuC2PK3RfVwXq0r2I(Lcom/squareup/javapoet/AnnotationSpec$Builder;)Lcom/squareup/javapoet/AnnotationSpec;

    move-result-object p1

    return-object p1
.end method
