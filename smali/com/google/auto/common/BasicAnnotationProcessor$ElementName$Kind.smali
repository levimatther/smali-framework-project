.class final enum Lcom/google/auto/common/BasicAnnotationProcessor$ElementName$Kind;
.super Ljava/lang/Enum;
.source "BasicAnnotationProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auto/common/BasicAnnotationProcessor$ElementName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/auto/common/BasicAnnotationProcessor$ElementName$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/auto/common/BasicAnnotationProcessor$ElementName$Kind;

.field public static final enum PACKAGE_NAME:Lcom/google/auto/common/BasicAnnotationProcessor$ElementName$Kind;

.field public static final enum TYPE_NAME:Lcom/google/auto/common/BasicAnnotationProcessor$ElementName$Kind;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 457
    new-instance v0, Lcom/google/auto/common/BasicAnnotationProcessor$ElementName$Kind;

    const-string v1, "PACKAGE_NAME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/auto/common/BasicAnnotationProcessor$ElementName$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/auto/common/BasicAnnotationProcessor$ElementName$Kind;->PACKAGE_NAME:Lcom/google/auto/common/BasicAnnotationProcessor$ElementName$Kind;

    .line 458
    new-instance v0, Lcom/google/auto/common/BasicAnnotationProcessor$ElementName$Kind;

    const-string v1, "TYPE_NAME"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/auto/common/BasicAnnotationProcessor$ElementName$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/auto/common/BasicAnnotationProcessor$ElementName$Kind;->TYPE_NAME:Lcom/google/auto/common/BasicAnnotationProcessor$ElementName$Kind;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/auto/common/BasicAnnotationProcessor$ElementName$Kind;

    .line 456
    sget-object v4, Lcom/google/auto/common/BasicAnnotationProcessor$ElementName$Kind;->PACKAGE_NAME:Lcom/google/auto/common/BasicAnnotationProcessor$ElementName$Kind;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/google/auto/common/BasicAnnotationProcessor$ElementName$Kind;->$VALUES:[Lcom/google/auto/common/BasicAnnotationProcessor$ElementName$Kind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 456
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/auto/common/BasicAnnotationProcessor$ElementName$Kind;
    .locals 1

    .line 456
    const-class v0, Lcom/google/auto/common/BasicAnnotationProcessor$ElementName$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/auto/common/BasicAnnotationProcessor$ElementName$Kind;

    return-object p0
.end method

.method public static values()[Lcom/google/auto/common/BasicAnnotationProcessor$ElementName$Kind;
    .locals 1

    .line 456
    sget-object v0, Lcom/google/auto/common/BasicAnnotationProcessor$ElementName$Kind;->$VALUES:[Lcom/google/auto/common/BasicAnnotationProcessor$ElementName$Kind;

    invoke-virtual {v0}, [Lcom/google/auto/common/BasicAnnotationProcessor$ElementName$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/auto/common/BasicAnnotationProcessor$ElementName$Kind;

    return-object v0
.end method
