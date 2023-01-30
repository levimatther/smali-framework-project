.class Lcom/gsma/services/rcs/contact/ContactService$1;
.super Ljava/lang/Object;
.source "ContactService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/contact/ContactService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsma/services/rcs/contact/ContactService;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/contact/ContactService;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/gsma/services/rcs/contact/ContactService$1;->this$0:Lcom/gsma/services/rcs/contact/ContactService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 122
    iget-object p1, p0, Lcom/gsma/services/rcs/contact/ContactService$1;->this$0:Lcom/gsma/services/rcs/contact/ContactService;

    invoke-static {p2}, Lcom/gsma/services/rcs/contact/IContactService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/contact/IContactService;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gsma/services/rcs/contact/ContactService;->setApi(Landroid/os/IInterface;)V

    .line 123
    iget-object p1, p0, Lcom/gsma/services/rcs/contact/ContactService$1;->this$0:Lcom/gsma/services/rcs/contact/ContactService;

    invoke-static {p1}, Lcom/gsma/services/rcs/contact/ContactService;->access$000(Lcom/gsma/services/rcs/contact/ContactService;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 124
    iget-object p1, p0, Lcom/gsma/services/rcs/contact/ContactService$1;->this$0:Lcom/gsma/services/rcs/contact/ContactService;

    invoke-static {p1}, Lcom/gsma/services/rcs/contact/ContactService;->access$100(Lcom/gsma/services/rcs/contact/ContactService;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/gsma/services/rcs/RcsServiceListener;->onServiceConnected()V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 129
    iget-object p1, p0, Lcom/gsma/services/rcs/contact/ContactService$1;->this$0:Lcom/gsma/services/rcs/contact/ContactService;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/gsma/services/rcs/contact/ContactService;->setApi(Landroid/os/IInterface;)V

    .line 130
    iget-object p1, p0, Lcom/gsma/services/rcs/contact/ContactService$1;->this$0:Lcom/gsma/services/rcs/contact/ContactService;

    invoke-static {p1}, Lcom/gsma/services/rcs/contact/ContactService;->access$200(Lcom/gsma/services/rcs/contact/ContactService;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 133
    :cond_0
    iget-object p1, p0, Lcom/gsma/services/rcs/contact/ContactService$1;->this$0:Lcom/gsma/services/rcs/contact/ContactService;

    invoke-static {p1}, Lcom/gsma/services/rcs/contact/ContactService;->access$300(Lcom/gsma/services/rcs/contact/ContactService;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object p1

    sget-object v0, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;->CONNECTION_LOST:Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

    invoke-interface {p1, v0}, Lcom/gsma/services/rcs/RcsServiceListener;->onServiceDisconnected(Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;)V

    return-void
.end method
