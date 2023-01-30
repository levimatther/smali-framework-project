.class public final Lcom/google/auto/common/AnnotationValues;
.super Ljava/lang/Object;
.source "AnnotationValues.java"


# static fields
.field private static final ANNOTATION_VALUE_EQUIVALENCE:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence<",
            "Ljavax/lang/model/element/AnnotationValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/google/auto/common/AnnotationValues$1;

    invoke-direct {v0}, Lcom/google/auto/common/AnnotationValues$1;-><init>()V

    sput-object v0, Lcom/google/auto/common/AnnotationValues;->ANNOTATION_VALUE_EQUIVALENCE:Lcom/google/common/base/Equivalence;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equivalence()Lcom/google/common/base/Equivalence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Equivalence<",
            "Ljavax/lang/model/element/AnnotationValue;",
            ">;"
        }
    .end annotation

    .line 130
    sget-object v0, Lcom/google/auto/common/AnnotationValues;->ANNOTATION_VALUE_EQUIVALENCE:Lcom/google/common/base/Equivalence;

    return-object v0
.end method
