.class Lcom/gsma/services/rcs/filetransfer/FileTransferService$1;
.super Ljava/lang/Object;
.source "FileTransferService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/filetransfer/FileTransferService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsma/services/rcs/filetransfer/FileTransferService;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/filetransfer/FileTransferService;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService$1;->this$0:Lcom/gsma/services/rcs/filetransfer/FileTransferService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 142
    iget-object p1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService$1;->this$0:Lcom/gsma/services/rcs/filetransfer/FileTransferService;

    invoke-static {p2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->setApi(Landroid/os/IInterface;)V

    .line 144
    :try_start_0
    iget-object p1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService$1;->this$0:Lcom/gsma/services/rcs/filetransfer/FileTransferService;

    invoke-static {p1}, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->access$000(Lcom/gsma/services/rcs/filetransfer/FileTransferService;)V
    :try_end_0
    .catch Lcom/gsma/services/rcs/RcsServiceNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 146
    invoke-virtual {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;->printStackTrace()V

    .line 148
    :goto_0
    iget-object p1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService$1;->this$0:Lcom/gsma/services/rcs/filetransfer/FileTransferService;

    invoke-static {p1}, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->access$100(Lcom/gsma/services/rcs/filetransfer/FileTransferService;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 149
    iget-object p1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService$1;->this$0:Lcom/gsma/services/rcs/filetransfer/FileTransferService;

    invoke-static {p1}, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->access$200(Lcom/gsma/services/rcs/filetransfer/FileTransferService;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/gsma/services/rcs/RcsServiceListener;->onServiceConnected()V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 155
    :try_start_0
    iget-object p1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService$1;->this$0:Lcom/gsma/services/rcs/filetransfer/FileTransferService;

    invoke-static {p1}, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->access$300(Lcom/gsma/services/rcs/filetransfer/FileTransferService;)V
    :try_end_0
    .catch Lcom/gsma/services/rcs/RcsServiceNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 157
    invoke-virtual {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;->printStackTrace()V

    .line 159
    :goto_0
    iget-object p1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService$1;->this$0:Lcom/gsma/services/rcs/filetransfer/FileTransferService;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->setApi(Landroid/os/IInterface;)V

    .line 160
    iget-object p1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService$1;->this$0:Lcom/gsma/services/rcs/filetransfer/FileTransferService;

    invoke-static {p1}, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->access$400(Lcom/gsma/services/rcs/filetransfer/FileTransferService;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 163
    :cond_0
    iget-object p1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService$1;->this$0:Lcom/gsma/services/rcs/filetransfer/FileTransferService;

    invoke-static {p1}, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->access$500(Lcom/gsma/services/rcs/filetransfer/FileTransferService;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object p1

    sget-object v0, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;->CONNECTION_LOST:Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

    invoke-interface {p1, v0}, Lcom/gsma/services/rcs/RcsServiceListener;->onServiceDisconnected(Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;)V

    return-void
.end method
