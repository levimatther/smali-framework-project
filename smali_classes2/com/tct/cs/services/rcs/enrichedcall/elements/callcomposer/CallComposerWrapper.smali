.class public Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerWrapper;
.super Lcom/tct/cs/services/rcs/enrichedcall/elements/ElementWrapper;
.source "CallComposerWrapper.java"


# static fields
.field private static final COMPOSERID_ELEMENT:Ljava/lang/String; = "composerid"

.field private static final IMPORTANCE_ELEMENT:Ljava/lang/String; = "importance"

.field private static final LOCATION_ELEMENT:Ljava/lang/String; = "location"

.field private static final PICTURE_ELEMENT:Ljava/lang/String; = "picture"

.field private static final PICTURE_URL_ATTRIBUTE:Ljava/lang/String; = "url"

.field private static final SUBJECT_ELEMENT:Ljava/lang/String; = "subject"

.field private static sLogger:Lcom/gsma/rcs/utils/logger/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "CallComposerWrapper"

    .line 67
    invoke-static {v0}, Lcom/gsma/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/gsma/rcs/utils/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerWrapper;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/ElementWrapper;-><init>()V

    return-void
.end method

.method public static getDefault()Lcom/tct/cs/services/rcs/enrichedcall/elements/ElementWrapper;
    .locals 2

    .line 84
    sget-object v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerWrapper;->mDefault:Lcom/tct/cs/services/rcs/enrichedcall/elements/ElementWrapper;

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerWrapper;->mDefault:Lcom/tct/cs/services/rcs/enrichedcall/elements/ElementWrapper;

    return-object v0

    .line 87
    :cond_0
    sget-object v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerWrapper;->mDefault:Lcom/tct/cs/services/rcs/enrichedcall/elements/ElementWrapper;

    if-nez v0, :cond_2

    .line 88
    const-class v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerWrapper;

    monitor-enter v0

    .line 89
    :try_start_0
    sget-object v1, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerWrapper;->mDefault:Lcom/tct/cs/services/rcs/enrichedcall/elements/ElementWrapper;

    if-nez v1, :cond_1

    .line 90
    new-instance v1, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerWrapper;

    invoke-direct {v1}, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerWrapper;-><init>()V

    sput-object v1, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerWrapper;->mDefault:Lcom/tct/cs/services/rcs/enrichedcall/elements/ElementWrapper;

    .line 92
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 94
    :cond_2
    :goto_0
    sget-object v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerWrapper;->mDefault:Lcom/tct/cs/services/rcs/enrichedcall/elements/ElementWrapper;

    return-object v0
.end method


# virtual methods
.method protected parseElement(Lorg/w3c/dom/Document;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/w3c/dom/Document;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 186
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p1

    const-string v0, "rcsenvelope"

    .line 188
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_b

    .line 189
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-gtz v2, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    .line 194
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 195
    invoke-interface {p1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 196
    instance-of v5, v4, Lorg/w3c/dom/Element;

    if-eqz v5, :cond_1

    check-cast v4, Lorg/w3c/dom/Element;

    invoke-interface {v4}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 197
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_b

    .line 202
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-gtz v0, :cond_3

    goto/16 :goto_4

    .line 208
    :cond_3
    new-instance v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;

    invoke-direct {v0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;-><init>()V

    .line 209
    :goto_2
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 210
    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    if-nez v3, :cond_4

    return-object v1

    .line 214
    :cond_4
    instance-of v4, v3, Lorg/w3c/dom/Element;

    if-eqz v4, :cond_9

    .line 215
    check-cast v3, Lorg/w3c/dom/Element;

    .line 216
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "subject"

    .line 217
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 218
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;->setSubject(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string v5, "importance"

    .line 219
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 220
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;->setImportance(Z)V

    goto :goto_3

    :cond_6
    const-string v5, "composerid"

    .line 221
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 222
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;->setComposerid(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    const-string v5, "location"

    .line 223
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 224
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;->setLocation(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    const-string v5, "picture"

    .line 225
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "url"

    .line 226
    invoke-interface {v3, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;->setUrl(Ljava/lang/String;)V

    :cond_9
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_a
    return-object v0

    :cond_b
    :goto_4
    return-object v1
.end method

.method public wrapXmlContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 3

    .line 141
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "rcsenvelope"

    .line 146
    invoke-virtual {p0, v0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerWrapper;->generateElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "xmlns"

    const-string v2, "urn:gsma:params:xml:ns:rcs:rcs:calldata"

    .line 147
    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "rcscalldata"

    .line 149
    invoke-virtual {p0, v1}, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerWrapper;->generateElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 151
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "subject"

    .line 152
    invoke-virtual {p0, v2}, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerWrapper;->generateElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 153
    invoke-interface {v2, p2}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 154
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_1
    if-eqz p3, :cond_3

    const-string p2, "importance"

    .line 158
    invoke-virtual {p0, p2}, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerWrapper;->generateElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 159
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p3, "1"

    goto :goto_0

    :cond_2
    const-string p3, "0"

    :goto_0
    invoke-interface {p2, p3}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 160
    invoke-interface {v1, p2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 163
    :cond_3
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "location"

    .line 164
    invoke-virtual {p0, p2}, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerWrapper;->generateElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 165
    invoke-interface {p2, p4}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 166
    invoke-interface {v1, p2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 169
    :cond_4
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "picture"

    .line 170
    invoke-virtual {p0, p2}, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerWrapper;->generateElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    const-string p3, "url"

    .line 171
    invoke-interface {p2, p3, p5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-interface {v1, p2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_5
    const-string p2, "composerid"

    .line 175
    invoke-virtual {p0, p2}, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerWrapper;->generateElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 176
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 177
    invoke-interface {v1, p2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 179
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 181
    invoke-virtual {p0, v0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerWrapper;->getXmlContent(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    return-object p1
.end method

.method public wrapXmlContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 6

    .line 115
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 119
    invoke-virtual/range {v0 .. v5}, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerWrapper;->wrapXmlContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method
