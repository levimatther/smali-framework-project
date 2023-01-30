.class public Lcom/google/protobuf/TextFormat$Parser$Builder;
.super Ljava/lang/Object;
.source "TextFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/TextFormat$Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private allowUnknownEnumValues:Z

.field private allowUnknownFields:Z

.field private parseInfoTreeBuilder:Lcom/google/protobuf/TextFormatParseInfoTree$Builder;

.field private singularOverwritePolicy:Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1340
    iput-boolean v0, p0, Lcom/google/protobuf/TextFormat$Parser$Builder;->allowUnknownFields:Z

    .line 1341
    iput-boolean v0, p0, Lcom/google/protobuf/TextFormat$Parser$Builder;->allowUnknownEnumValues:Z

    .line 1342
    sget-object v0, Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;->ALLOW_SINGULAR_OVERWRITES:Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    iput-object v0, p0, Lcom/google/protobuf/TextFormat$Parser$Builder;->singularOverwritePolicy:Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    const/4 v0, 0x0

    .line 1344
    iput-object v0, p0, Lcom/google/protobuf/TextFormat$Parser$Builder;->parseInfoTreeBuilder:Lcom/google/protobuf/TextFormatParseInfoTree$Builder;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/protobuf/TextFormat$Parser;
    .locals 7

    .line 1362
    new-instance v6, Lcom/google/protobuf/TextFormat$Parser;

    iget-boolean v1, p0, Lcom/google/protobuf/TextFormat$Parser$Builder;->allowUnknownFields:Z

    iget-boolean v2, p0, Lcom/google/protobuf/TextFormat$Parser$Builder;->allowUnknownEnumValues:Z

    iget-object v3, p0, Lcom/google/protobuf/TextFormat$Parser$Builder;->singularOverwritePolicy:Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    iget-object v4, p0, Lcom/google/protobuf/TextFormat$Parser$Builder;->parseInfoTreeBuilder:Lcom/google/protobuf/TextFormatParseInfoTree$Builder;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/TextFormat$Parser;-><init>(ZZLcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;Lcom/google/protobuf/TextFormatParseInfoTree$Builder;Lcom/google/protobuf/TextFormat$1;)V

    return-object v6
.end method

.method public setParseInfoTreeBuilder(Lcom/google/protobuf/TextFormatParseInfoTree$Builder;)Lcom/google/protobuf/TextFormat$Parser$Builder;
    .locals 0

    .line 1357
    iput-object p1, p0, Lcom/google/protobuf/TextFormat$Parser$Builder;->parseInfoTreeBuilder:Lcom/google/protobuf/TextFormatParseInfoTree$Builder;

    return-object p0
.end method

.method public setSingularOverwritePolicy(Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;)Lcom/google/protobuf/TextFormat$Parser$Builder;
    .locals 0

    .line 1351
    iput-object p1, p0, Lcom/google/protobuf/TextFormat$Parser$Builder;->singularOverwritePolicy:Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    return-object p0
.end method
