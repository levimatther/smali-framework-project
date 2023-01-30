.class final Lcom/google/auto/common/MoreTypes$EqualVisitorParam;
.super Ljava/lang/Object;
.source "MoreTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auto/common/MoreTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EqualVisitorParam"
.end annotation


# instance fields
.field type:Ljavax/lang/model/type/TypeMirror;

.field visiting:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/auto/common/MoreTypes$ComparedElements;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/auto/common/MoreTypes$1;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/google/auto/common/MoreTypes$EqualVisitorParam;-><init>()V

    return-void
.end method
