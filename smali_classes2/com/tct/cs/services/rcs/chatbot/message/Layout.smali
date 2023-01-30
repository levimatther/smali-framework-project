.class public Lcom/tct/cs/services/rcs/chatbot/message/Layout;
.super Ljava/lang/Object;
.source "Layout.java"


# static fields
.field public static final IMAGE_ALIGNMENT_LEFT:Ljava/lang/String; = "LEFT"

.field public static final IMAGE_ALIGNMENT_RIGHT:Ljava/lang/String; = "RIGHT"

.field public static final MAX_CARD_HEIGHT:I = 0x158

.field public static final MIN_CARD_HEIGHT:I = 0x70

.field public static final ORIENTATION_HORIZONTAL:Ljava/lang/String; = "HORIZONTAL"

.field public static final ORIENTATION_VERTICAL:Ljava/lang/String; = "VERTICAL"

.field public static final WIDTH_MEDIUM:Ljava/lang/String; = "MEDIUM_WIDTH"

.field public static final WIDTH_SMALL:Ljava/lang/String; = "SMALL_WIDTH"


# instance fields
.field private cardOrientation:Ljava/lang/String;

.field private cardWidth:Ljava/lang/String;

.field private imageAlignment:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCardOrientation()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/Layout;->cardOrientation:Ljava/lang/String;

    return-object v0
.end method

.method public getCardWidth()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/Layout;->cardWidth:Ljava/lang/String;

    return-object v0
.end method

.method public getImageAlignment()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/Layout;->imageAlignment:Ljava/lang/String;

    return-object v0
.end method

.method public getXmlContent()Lorg/w3c/dom/Element;
    .locals 3

    .line 129
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->generateElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/message/Layout;->cardOrientation:Ljava/lang/String;

    const-string v2, "cardOrientation"

    invoke-static {v0, v2, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->setElementAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/message/Layout;->imageAlignment:Ljava/lang/String;

    const-string v2, "imageAlignment"

    invoke-static {v0, v2, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->setElementAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/message/Layout;->cardWidth:Ljava/lang/String;

    const-string v2, "cardWidth"

    invoke-static {v0, v2, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->setElementAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public setCardOrientation(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/message/Layout;->cardOrientation:Ljava/lang/String;

    return-void
.end method

.method public setCardWidth(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/message/Layout;->cardWidth:Ljava/lang/String;

    return-void
.end method

.method public setImageAlignment(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/message/Layout;->imageAlignment:Ljava/lang/String;

    return-void
.end method
