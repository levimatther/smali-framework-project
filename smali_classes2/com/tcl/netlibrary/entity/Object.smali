.class public Lcom/tcl/netlibrary/entity/Object;
.super Ljava/lang/Object;
.source "Object.java"


# instance fields
.field public attributes:Lcom/tcl/netlibrary/entity/AttributeList;

.field public correlationId:Ljava/lang/String;

.field public correlationTag:Ljava/lang/String;

.field public flags:Lcom/tcl/netlibrary/entity/FlagList;

.field public imdn:Lcom/tcl/netlibrary/entity/Imdn;

.field public parentFolder:Ljava/net/URI;

.field public parentFolderPath:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public payloadPart:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tcl/netlibrary/entity/PayloadPartInfo;",
            ">;"
        }
    .end annotation
.end field

.field public payloadURL:Ljava/net/URI;

.field public resourceURL:Ljava/net/URI;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
