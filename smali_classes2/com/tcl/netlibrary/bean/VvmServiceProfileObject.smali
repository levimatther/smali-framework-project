.class public Lcom/tcl/netlibrary/bean/VvmServiceProfileObject;
.super Ljava/lang/Object;
.source "VvmServiceProfileObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;
    }
.end annotation


# static fields
.field public static volatile mInstance:Lcom/tcl/netlibrary/bean/VvmServiceProfileObject;


# instance fields
.field public cosName:Ljava/lang/String;

.field public emailAddress:Ljava/lang/String;

.field public isBlocked:Ljava/lang/String;

.field public language:Ljava/lang/String;

.field public migrationDate:Ljava/lang/String;

.field public migrationStatus:Ljava/lang/String;

.field public nut:Ljava/lang/String;

.field public omtpVvmOn:Ljava/lang/String;

.field public smsDirectLink:Ljava/lang/String;

.field public v2e_on:Ljava/lang/String;

.field public vvmOn:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject;

    invoke-direct {v0}, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject;-><init>()V

    sput-object v0, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject;->mInstance:Lcom/tcl/netlibrary/bean/VvmServiceProfileObject;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/tcl/netlibrary/bean/VvmServiceProfileObject;
    .locals 1

    .line 1
    sget-object v0, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject;->mInstance:Lcom/tcl/netlibrary/bean/VvmServiceProfileObject;

    return-object v0
.end method


# virtual methods
.method public getCosName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject;->cosName:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject;->emailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getIsBlocked()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject;->isBlocked:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getMigrationDate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject;->migrationDate:Ljava/lang/String;

    return-object v0
.end method

.method public getMigrationStatus()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject;->migrationStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getNut()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject;->nut:Ljava/lang/String;

    return-object v0
.end method

.method public getOmtpVvmOn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject;->omtpVvmOn:Ljava/lang/String;

    return-object v0
.end method

.method public getSmsDirectLink()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject;->smsDirectLink:Ljava/lang/String;

    return-object v0
.end method

.method public getV2eOn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject;->v2e_on:Ljava/lang/String;

    return-object v0
.end method

.method public getVvmOn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject;->vvmOn:Ljava/lang/String;

    return-object v0
.end method

.method public parse(Lcom/tcl/netlibrary/entity/VvmserviceProfile;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 1
    iget-object p1, p1, Lcom/tcl/netlibrary/entity/VvmserviceProfile;->attributes:Lcom/tcl/netlibrary/entity/AttributeList;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/tcl/netlibrary/entity/AttributeList;->attribute:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tcl/netlibrary/entity/Attribute;

    .line 4
    iget-object v1, v0, Lcom/tcl/netlibrary/entity/Attribute;->name:Ljava/lang/String;

    const-string v2, "-"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "_"

    .line 6
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8
    :cond_0
    invoke-static {v1}, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;->valueOf(Ljava/lang/String;)Lcom/tcl/netlibrary/bean/VvmServiceProfileObject$VvmServiceProfile;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 37
    :pswitch_0
    iget-object v0, v0, Lcom/tcl/netlibrary/entity/Attribute;->value:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject;->setMigrationDate(Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :pswitch_1
    iget-object v0, v0, Lcom/tcl/netlibrary/entity/Attribute;->value:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject;->setOmtpVvmOn(Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :pswitch_2
    iget-object v0, v0, Lcom/tcl/netlibrary/entity/Attribute;->value:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject;->setVvmOn(Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :pswitch_3
    iget-object v0, v0, Lcom/tcl/netlibrary/entity/Attribute;->value:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject;->setV2eOn(Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :pswitch_4
    iget-object v0, v0, Lcom/tcl/netlibrary/entity/Attribute;->value:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject;->setSmsDirectLink(Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :pswitch_5
    iget-object v0, v0, Lcom/tcl/netlibrary/entity/Attribute;->value:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject;->setNut(Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :pswitch_6
    iget-object v0, v0, Lcom/tcl/netlibrary/entity/Attribute;->value:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject;->setMigrationStatus(Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :pswitch_7
    iget-object v0, v0, Lcom/tcl/netlibrary/entity/Attribute;->value:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject;->setLanguage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 45
    :pswitch_8
    iget-object v0, v0, Lcom/tcl/netlibrary/entity/Attribute;->value:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject;->setIsBlocked(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 46
    :pswitch_9
    iget-object v0, v0, Lcom/tcl/netlibrary/entity/Attribute;->value:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject;->setCosName(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCosName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject;->cosName:Ljava/lang/String;

    return-void
.end method

.method public setEmailAddress(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject;->emailAddress:Ljava/lang/String;

    return-void
.end method

.method public setIsBlocked(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject;->isBlocked:Ljava/lang/String;

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject;->language:Ljava/lang/String;

    return-void
.end method

.method public setMigrationDate(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject;->migrationDate:Ljava/lang/String;

    return-void
.end method

.method public setMigrationStatus(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject;->migrationStatus:Ljava/lang/String;

    return-void
.end method

.method public setNut(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject;->nut:Ljava/lang/String;

    return-void
.end method

.method public setOmtpVvmOn(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject;->omtpVvmOn:Ljava/lang/String;

    return-void
.end method

.method public setSmsDirectLink(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject;->smsDirectLink:Ljava/lang/String;

    return-void
.end method

.method public setV2eOn(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject;->v2e_on:Ljava/lang/String;

    return-void
.end method

.method public setVvmOn(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tcl/netlibrary/bean/VvmServiceProfileObject;->vvmOn:Ljava/lang/String;

    return-void
.end method
