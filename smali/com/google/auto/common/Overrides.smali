.class abstract Lcom/google/auto/common/Overrides;
.super Ljava/lang/Object;
.source "Overrides.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auto/common/Overrides$ExplicitOverrides;,
        Lcom/google/auto/common/Overrides$NativeOverrides;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract overrides(Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/TypeElement;)Z
.end method
