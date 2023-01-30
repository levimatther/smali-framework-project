.class public interface abstract Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet;
.super Ljava/lang/Object;
.source "IChatbotResultSet.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet$Stub;,
        Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet$Default;
    }
.end annotation


# virtual methods
.method public abstract getBots()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tct/cs/services/rcs/chatbot/Bot;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getMore()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tct/cs/services/rcs/chatbot/Bot;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isMore()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
