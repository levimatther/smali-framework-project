.class public Lcom/gsma/services/rcs/contact/LineAndContact;
.super Ljava/lang/Object;
.source "LineAndContact.java"


# instance fields
.field private mContactId:Lcom/gsma/services/rcs/contact/ContactId;

.field private mLine:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/gsma/services/rcs/contact/LineAndContact;->mLine:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/gsma/services/rcs/contact/LineAndContact;->mContactId:Lcom/gsma/services/rcs/contact/ContactId;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 79
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 82
    :cond_2
    check-cast p1, Lcom/gsma/services/rcs/contact/LineAndContact;

    .line 83
    iget-object v2, p0, Lcom/gsma/services/rcs/contact/LineAndContact;->mContactId:Lcom/gsma/services/rcs/contact/ContactId;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/gsma/services/rcs/contact/LineAndContact;->mLine:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 86
    :cond_3
    iget-object v1, p0, Lcom/gsma/services/rcs/contact/LineAndContact;->mContactId:Lcom/gsma/services/rcs/contact/ContactId;

    iget-object v2, p1, Lcom/gsma/services/rcs/contact/LineAndContact;->mContactId:Lcom/gsma/services/rcs/contact/ContactId;

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/gsma/services/rcs/contact/LineAndContact;->mLine:Ljava/lang/String;

    iget-object p1, p1, Lcom/gsma/services/rcs/contact/LineAndContact;->mLine:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public getContactId()Lcom/gsma/services/rcs/contact/ContactId;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/LineAndContact;->mContactId:Lcom/gsma/services/rcs/contact/ContactId;

    return-object v0
.end method

.method public getLine()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/LineAndContact;->mLine:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/LineAndContact;->mLine:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/LineAndContact;->mLine:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v2, p0, Lcom/gsma/services/rcs/contact/LineAndContact;->mContactId:Lcom/gsma/services/rcs/contact/ContactId;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/gsma/services/rcs/contact/ContactId;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v1, v0

    :goto_1
    return v1
.end method

.method public toSafeString()Ljava/lang/String;
    .locals 4

    .line 48
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/LineAndContact;->mLine:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ", Contact:"

    const-string v2, "Line:"

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gsma/services/rcs/contact/LineAndContact;->mLine:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gsma/services/rcs/contact/LineAndContact;->mContactId:Lcom/gsma/services/rcs/contact/ContactId;

    invoke-static {v1}, Lcom/gsma/services/rcs/contact/ContactId;->getSafeString(Lcom/gsma/services/rcs/contact/ContactId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/gsma/services/rcs/contact/ContactId;

    iget-object v3, p0, Lcom/gsma/services/rcs/contact/LineAndContact;->mLine:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/gsma/services/rcs/contact/ContactId;->getSafeString(Lcom/gsma/services/rcs/contact/ContactId;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gsma/services/rcs/contact/LineAndContact;->mContactId:Lcom/gsma/services/rcs/contact/ContactId;

    invoke-static {v1}, Lcom/gsma/services/rcs/contact/ContactId;->getSafeString(Lcom/gsma/services/rcs/contact/ContactId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Line:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gsma/services/rcs/contact/LineAndContact;->mLine:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Contact:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gsma/services/rcs/contact/LineAndContact;->mContactId:Lcom/gsma/services/rcs/contact/ContactId;

    invoke-virtual {v1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
