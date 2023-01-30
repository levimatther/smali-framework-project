.class public Lcom/tct/cs/services/rcs/chatbot/message/action/ReplyAction;
.super Lcom/tct/cs/services/rcs/chatbot/message/action/Action;
.source "ReplyAction.java"


# static fields
.field public static final ACTION_REPLY:Ljava/lang/String; = "reply"


# direct methods
.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/tct/cs/services/rcs/chatbot/message/action/Action;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "reply"

    .line 26
    invoke-direct {p0, v0, p1, p2}, Lcom/tct/cs/services/rcs/chatbot/message/action/Action;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
