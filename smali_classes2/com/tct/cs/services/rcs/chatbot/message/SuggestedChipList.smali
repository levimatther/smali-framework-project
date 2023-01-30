.class public Lcom/tct/cs/services/rcs/chatbot/message/SuggestedChipList;
.super Ljava/lang/Object;
.source "SuggestedChipList.java"


# static fields
.field public static final MIME_TYPE:Ljava/lang/String; = "application/vnd.gsma.botsuggestion.v1.0+json"


# instance fields
.field private mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tct/cs/services/rcs/chatbot/message/action/Action;",
            ">;"
        }
    .end annotation
.end field

.field private mReplies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tct/cs/services/rcs/chatbot/message/action/Action;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tct/cs/services/rcs/chatbot/message/action/Action;",
            ">;)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/SuggestedChipList;->mActions:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/SuggestedChipList;->mReplies:Ljava/util/List;

    .line 53
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tct/cs/services/rcs/chatbot/message/action/Action;

    .line 54
    invoke-virtual {v0}, Lcom/tct/cs/services/rcs/chatbot/message/action/Action;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "reply"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/message/SuggestedChipList;->mReplies:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/message/SuggestedChipList;->mActions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getActionSize()I
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/SuggestedChipList;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tct/cs/services/rcs/chatbot/message/action/Action;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/SuggestedChipList;->mActions:Ljava/util/List;

    return-object v0
.end method

.method public getReplies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tct/cs/services/rcs/chatbot/message/action/Action;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/SuggestedChipList;->mReplies:Ljava/util/List;

    return-object v0
.end method

.method public getReplySize()I
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/SuggestedChipList;->mReplies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getXmlContent()Lorg/w3c/dom/Element;
    .locals 3

    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->generateElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/message/SuggestedChipList;->mActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tct/cs/services/rcs/chatbot/message/action/Action;

    .line 102
    invoke-virtual {v2}, Lcom/tct/cs/services/rcs/chatbot/message/action/Action;->getXmlContent()Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/message/SuggestedChipList;->mReplies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tct/cs/services/rcs/chatbot/message/action/Action;

    .line 105
    invoke-virtual {v2}, Lcom/tct/cs/services/rcs/chatbot/message/action/Action;->getXmlContent()Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_1

    :cond_1
    return-object v0
.end method
