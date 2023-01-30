.class Lcom/google/auto/common/AnnotationValues$1$1$1;
.super Ljavax/lang/model/util/SimpleAnnotationValueVisitor6;
.source "AnnotationValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/auto/common/AnnotationValues$1$1;->defaultAction(Ljava/lang/Object;Ljavax/lang/model/element/AnnotationValue;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavax/lang/model/util/SimpleAnnotationValueVisitor6<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/auto/common/AnnotationValues$1$1;


# direct methods
.method constructor <init>(Lcom/google/auto/common/AnnotationValues$1$1;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/google/auto/common/AnnotationValues$1$1$1;->this$1:Lcom/google/auto/common/AnnotationValues$1$1;

    invoke-direct {p0}, Ljavax/lang/model/util/SimpleAnnotationValueVisitor6;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic defaultAction(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 38
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/common/AnnotationValues$1$1$1;->defaultAction(Ljava/lang/Object;Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected defaultAction(Ljava/lang/Object;Ljava/lang/Void;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method
