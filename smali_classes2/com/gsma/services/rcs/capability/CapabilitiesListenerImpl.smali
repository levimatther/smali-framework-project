.class public Lcom/gsma/services/rcs/capability/CapabilitiesListenerImpl;
.super Lcom/gsma/services/rcs/capability/ICapabilitiesListener$Stub;
.source "CapabilitiesListenerImpl.java"


# instance fields
.field private final mListener:Lcom/gsma/services/rcs/capability/CapabilitiesListener;


# direct methods
.method public constructor <init>(Lcom/gsma/services/rcs/capability/CapabilitiesListener;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/gsma/services/rcs/capability/ICapabilitiesListener$Stub;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/gsma/services/rcs/capability/CapabilitiesListenerImpl;->mListener:Lcom/gsma/services/rcs/capability/CapabilitiesListener;

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

    .line 47
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilitiesListenerImpl;->mListener:Lcom/gsma/services/rcs/capability/CapabilitiesListener;

    invoke-virtual {v0, p1, p2}, Lcom/gsma/services/rcs/capability/CapabilitiesListener;->onCapabilitiesReceived(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/capability/Capabilities;)V

    return-void
.end method
