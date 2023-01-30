.class public Lcom/tcl/netlibrary/config/VVMConfig$c;
.super Lcom/google/gson/reflect/TypeToken;
.source "VVMConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tcl/netlibrary/config/VVMConfig;->setVvmValue(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Ljava/util/List<",
        "Lcom/tcl/netlibrary/entity/XmlElement;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/tcl/netlibrary/config/VVMConfig;


# direct methods
.method public constructor <init>(Lcom/tcl/netlibrary/config/VVMConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tcl/netlibrary/config/VVMConfig$c;->a:Lcom/tcl/netlibrary/config/VVMConfig;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
