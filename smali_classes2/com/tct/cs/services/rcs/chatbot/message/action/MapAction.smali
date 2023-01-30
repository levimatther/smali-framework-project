.class public Lcom/tct/cs/services/rcs/chatbot/message/action/MapAction;
.super Lcom/tct/cs/services/rcs/chatbot/message/action/Action;
.source "MapAction.java"


# static fields
.field public static final ACTION_requestLocationPush:Ljava/lang/String; = "requestLocationPush"

.field public static final ACTION_showLocation:Ljava/lang/String; = "showLocation"


# instance fields
.field private fallbackUrl:Ljava/lang/String;

.field private label:Ljava/lang/String;

.field private latitude:Ljava/lang/String;

.field private longitude:Ljava/lang/String;

.field private query:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 133
    invoke-direct {p0, p1}, Lcom/tct/cs/services/rcs/chatbot/message/action/Action;-><init>(Landroid/os/Parcel;)V

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "showLocation"

    .line 135
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/MapAction;->latitude:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/MapAction;->longitude:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/MapAction;->label:Ljava/lang/String;

    .line 140
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/MapAction;->fallbackUrl:Ljava/lang/String;

    .line 142
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/MapAction;->query:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "requestLocationPush"

    .line 152
    invoke-direct {p0, v0, p1, p2}, Lcom/tct/cs/services/rcs/chatbot/message/action/Action;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "showLocation"

    .line 127
    invoke-direct {p0, v0, p3, p4}, Lcom/tct/cs/services/rcs/chatbot/message/action/Action;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/MapAction;->query:Ljava/lang/String;

    .line 129
    iput-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/MapAction;->fallbackUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "showLocation"

    .line 112
    invoke-direct {p0, v0, p5, p6}, Lcom/tct/cs/services/rcs/chatbot/message/action/Action;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/MapAction;->latitude:Ljava/lang/String;

    .line 114
    iput-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/MapAction;->longitude:Ljava/lang/String;

    .line 115
    iput-object p3, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/MapAction;->label:Ljava/lang/String;

    .line 116
    iput-object p4, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/MapAction;->fallbackUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFallbackUrl()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/MapAction;->fallbackUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/MapAction;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/MapAction;->latitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/MapAction;->longitude:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchQuery()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/MapAction;->query:Ljava/lang/String;

    return-object v0
.end method

.method public getXmlContent()Lorg/w3c/dom/Element;
    .locals 3

    .line 203
    invoke-super {p0}, Lcom/tct/cs/services/rcs/chatbot/message/action/Action;->getXmlContent()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 204
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/chatbot/message/action/MapAction;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "showLocation"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/MapAction;->latitude:Ljava/lang/String;

    const-string v2, "latitude"

    invoke-static {v0, v2, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->setElementAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/MapAction;->longitude:Ljava/lang/String;

    const-string v2, "longitude"

    invoke-static {v0, v2, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->setElementAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/MapAction;->label:Ljava/lang/String;

    const-string v2, "label"

    invoke-static {v0, v2, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->setElementAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/MapAction;->fallbackUrl:Ljava/lang/String;

    const-string v2, "fallbackUrl"

    invoke-static {v0, v2, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->setElementAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/MapAction;->query:Ljava/lang/String;

    const-string v2, "query"

    invoke-static {v0, v2, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessageWrapper;->setElementAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 216
    invoke-super {p0, p1, p2}, Lcom/tct/cs/services/rcs/chatbot/message/action/Action;->writeToParcel(Landroid/os/Parcel;I)V

    .line 217
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/chatbot/message/action/MapAction;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/chatbot/message/action/MapAction;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "showLocation"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 219
    iget-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/MapAction;->latitude:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/MapAction;->longitude:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    iget-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/MapAction;->label:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 222
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    iget-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/MapAction;->label:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    :goto_0
    iget-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/MapAction;->fallbackUrl:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 228
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    iget-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/MapAction;->fallbackUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 231
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    :goto_1
    iget-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/message/action/MapAction;->query:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
