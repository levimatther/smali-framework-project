.class public Lcom/tcl/netlibrary/entity/XmlElement;
.super Ljava/lang/Object;
.source "XmlElement.java"


# instance fields
.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public tag_name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tag-name"
    .end annotation
.end field

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
