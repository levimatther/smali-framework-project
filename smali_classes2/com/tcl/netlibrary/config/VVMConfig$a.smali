.class public Lcom/tcl/netlibrary/config/VVMConfig$a;
.super Landroid/database/ContentObserver;
.source "VVMConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tcl/netlibrary/config/VVMConfig;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tcl/netlibrary/config/VVMConfig;


# direct methods
.method public constructor <init>(Lcom/tcl/netlibrary/config/VVMConfig;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tcl/netlibrary/config/VVMConfig$a;->a:Lcom/tcl/netlibrary/config/VVMConfig;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2
    iget-object v0, p0, Lcom/tcl/netlibrary/config/VVMConfig$a;->a:Lcom/tcl/netlibrary/config/VVMConfig;

    invoke-static {v0}, Lcom/tcl/netlibrary/config/VVMConfig;->access$000(Lcom/tcl/netlibrary/config/VVMConfig;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange selfChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/tcl/netlibrary/config/VVMConfig$a;->a:Lcom/tcl/netlibrary/config/VVMConfig;

    invoke-virtual {p1}, Lcom/tcl/netlibrary/config/VVMConfig;->fetchVvmConfig()V

    return-void
.end method
