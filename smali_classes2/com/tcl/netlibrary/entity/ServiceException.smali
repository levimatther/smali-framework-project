.class public Lcom/tcl/netlibrary/entity/ServiceException;
.super Ljava/lang/Object;
.source "ServiceException.java"


# instance fields
.field public messageId:Ljava/lang/String;

.field public text:Ljava/lang/String;

.field public variables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
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
