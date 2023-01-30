.class public abstract Lcom/gsma/rcs/service/ipcalldraft/IPCallListener;
.super Ljava/lang/Object;
.source "IPCallListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onIPCallStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/rcs/service/ipcalldraft/IPCall$State;Lcom/gsma/rcs/service/ipcalldraft/IPCall$ReasonCode;)V
.end method
