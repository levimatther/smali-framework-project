.class Lcom/gsma/services/rcs/capability/CapabilityService$2;
.super Lcom/gsma/services/rcs/capability/ICapabilitiesListener$Stub;
.source "CapabilityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/capability/CapabilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsma/services/rcs/capability/CapabilityService;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/capability/CapabilityService;)V
    .locals 0

    .line 716
    iput-object p1, p0, Lcom/gsma/services/rcs/capability/CapabilityService$2;->this$0:Lcom/gsma/services/rcs/capability/CapabilityService;

    invoke-direct {p0}, Lcom/gsma/services/rcs/capability/ICapabilitiesListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapabilitiesReceived(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/capability/Capabilities;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 719
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService$2;->this$0:Lcom/gsma/services/rcs/capability/CapabilityService;

    invoke-static {v0, p1, p2}, Lcom/gsma/services/rcs/capability/CapabilityService;->access$600(Lcom/gsma/services/rcs/capability/CapabilityService;Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/capability/Capabilities;)V

    return-void
.end method
