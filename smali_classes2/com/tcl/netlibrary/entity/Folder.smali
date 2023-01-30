.class public Lcom/tcl/netlibrary/entity/Folder;
.super Ljava/lang/Object;
.source "Folder.java"


# instance fields
.field public Cursor:Ljava/lang/String;

.field public attributes:Lcom/tcl/netlibrary/entity/AttributeList;

.field public flagList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public objectList:Lcom/tcl/netlibrary/entity/ObjectList;

.field public parentFolder:Ljava/net/URI;

.field public parentFolderPath:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public resourceURL:Ljava/net/URI;

.field public subFolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tcl/netlibrary/entity/Reference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
