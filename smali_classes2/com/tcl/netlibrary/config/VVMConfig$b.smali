.class public Lcom/tcl/netlibrary/config/VVMConfig$b;
.super Landroid/content/BroadcastReceiver;
.source "VVMConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tcl/netlibrary/config/VVMConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tcl/netlibrary/config/VVMConfig;


# direct methods
.method public constructor <init>(Lcom/tcl/netlibrary/config/VVMConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tcl/netlibrary/config/VVMConfig$b;->a:Lcom/tcl/netlibrary/config/VVMConfig;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "ss"

    .line 3
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "LOADED"

    .line 4
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    iget-object p2, p0, Lcom/tcl/netlibrary/config/VVMConfig$b;->a:Lcom/tcl/netlibrary/config/VVMConfig;

    invoke-static {p2}, Lcom/tcl/netlibrary/config/VVMConfig;->access$000(Lcom/tcl/netlibrary/config/VVMConfig;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sim status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p1, p0, Lcom/tcl/netlibrary/config/VVMConfig$b;->a:Lcom/tcl/netlibrary/config/VVMConfig;

    invoke-virtual {p1}, Lcom/tcl/netlibrary/config/VVMConfig;->fetchVvmConfig()V

    :cond_0
    return-void
.end method
