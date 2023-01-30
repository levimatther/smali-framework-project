.class public Lcom/gsma/rcs/service/ipcalldraft/IPCallListenerImpl;
.super Lcom/gsma/rcs/service/ipcalldraft/IIPCallListener$Stub;
.source "IPCallListenerImpl.java"


# static fields
.field private static final sLogger:Lcom/gsma/rcs/utils/logger/Logger;


# instance fields
.field private final mListener:Lcom/gsma/rcs/service/ipcalldraft/IPCallListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "IPCallListenerImpl"

    .line 30
    invoke-static {v0}, Lcom/gsma/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/gsma/rcs/utils/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/gsma/rcs/service/ipcalldraft/IPCallListenerImpl;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    return-void
.end method

.method constructor <init>(Lcom/gsma/rcs/service/ipcalldraft/IPCallListener;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallListener$Stub;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCallListenerImpl;->mListener:Lcom/gsma/rcs/service/ipcalldraft/IPCallListener;

    return-void
.end method


# virtual methods
.method public onIPCallStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;II)V
    .locals 1

    .line 43
    :try_start_0
    invoke-static {p3}, Lcom/gsma/rcs/service/ipcalldraft/IPCall$State;->valueOf(I)Lcom/gsma/rcs/service/ipcalldraft/IPCall$State;

    move-result-object p3

    .line 44
    invoke-static {p4}, Lcom/gsma/rcs/service/ipcalldraft/IPCall$ReasonCode;->valueOf(I)Lcom/gsma/rcs/service/ipcalldraft/IPCall$ReasonCode;

    move-result-object p4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    iget-object v0, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCallListenerImpl;->mListener:Lcom/gsma/rcs/service/ipcalldraft/IPCallListener;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/gsma/rcs/service/ipcalldraft/IPCallListener;->onIPCallStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/rcs/service/ipcalldraft/IPCall$State;Lcom/gsma/rcs/service/ipcalldraft/IPCall$ReasonCode;)V

    return-void

    :catch_0
    move-exception p1

    .line 51
    sget-object p2, Lcom/gsma/rcs/service/ipcalldraft/IPCallListenerImpl;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/gsma/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    return-void
.end method
