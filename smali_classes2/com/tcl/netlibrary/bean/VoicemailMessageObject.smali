.class public Lcom/tcl/netlibrary/bean/VoicemailMessageObject;
.super Ljava/lang/Object;
.source "VoicemailMessageObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;
    }
.end annotation


# instance fields
.field public content_duration:Ljava/lang/String;

.field public content_transfer_encoding:Ljava/lang/String;

.field public content_type:Ljava/lang/String;

.field public date:Ljava/lang/String;

.field public direction:Ljava/lang/String;

.field public expires:Ljava/lang/String;

.field public from:Ljava/lang/String;

.field public importance:Ljava/lang/String;

.field public message_context:Ljava/lang/String;

.field public message_id:Ljava/lang/String;

.field public mime_version:Ljava/lang/String;

.field public return_number:Ljava/lang/String;

.field public sensitivity:Ljava/lang/String;

.field public sourceNode:Ljava/lang/String;

.field public subject:Ljava/lang/String;

.field public to:Ljava/lang/String;

.field public x_cns_greeting_type:Ljava/lang/String;

.field public x_cns_sms_link_callback_number:Ljava/lang/String;

.field public x_transcription_result:Ljava/lang/String;

.field public x_transcription_state:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tcl/netlibrary/entity/Object;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p1, Lcom/tcl/netlibrary/entity/Object;->attributes:Lcom/tcl/netlibrary/entity/AttributeList;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/tcl/netlibrary/entity/AttributeList;->attribute:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tcl/netlibrary/entity/Attribute;

    .line 5
    iget-object v1, v0, Lcom/tcl/netlibrary/entity/Attribute;->name:Ljava/lang/String;

    const-string v2, "-"

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "_"

    .line 7
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9
    :cond_0
    invoke-static {v1}, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->valueOf(Ljava/lang/String;)Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 65
    :pswitch_1
    iget-object v0, v0, Lcom/tcl/netlibrary/entity/Attribute;->value:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->setXCnsGreetingType(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :pswitch_2
    iget-object v0, v0, Lcom/tcl/netlibrary/entity/Attribute;->value:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->setSourceNode(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :pswitch_3
    iget-object v0, v0, Lcom/tcl/netlibrary/entity/Attribute;->value:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->setContentTransferEncoding(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :pswitch_4
    iget-object v0, v0, Lcom/tcl/netlibrary/entity/Attribute;->value:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->setXCnsSmsLinkCallbackNumber(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :pswitch_5
    iget-object v0, v0, Lcom/tcl/netlibrary/entity/Attribute;->value:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->setXTranscriptionState(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :pswitch_6
    iget-object v0, v0, Lcom/tcl/netlibrary/entity/Attribute;->value:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->setXTranscriptionResult(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :pswitch_7
    iget-object v0, v0, Lcom/tcl/netlibrary/entity/Attribute;->value:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->setReturnNumber(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :pswitch_8
    iget-object v0, v0, Lcom/tcl/netlibrary/entity/Attribute;->value:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->setContentDuration(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 74
    :pswitch_9
    iget-object v0, v0, Lcom/tcl/netlibrary/entity/Attribute;->value:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->setSubject(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 75
    :pswitch_a
    iget-object v0, v0, Lcom/tcl/netlibrary/entity/Attribute;->value:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->setContentType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 76
    :pswitch_b
    iget-object v0, v0, Lcom/tcl/netlibrary/entity/Attribute;->value:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->setDirection(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 71
    :pswitch_c
    iget-object v0, v0, Lcom/tcl/netlibrary/entity/Attribute;->value:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->setSensitivity(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 72
    :pswitch_d
    iget-object v0, v0, Lcom/tcl/netlibrary/entity/Attribute;->value:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->setImportance(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 78
    :pswitch_e
    iget-object v0, v0, Lcom/tcl/netlibrary/entity/Attribute;->value:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->setMimeVersion(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 79
    :pswitch_f
    iget-object v0, v0, Lcom/tcl/netlibrary/entity/Attribute;->value:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->setMessageId(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 80
    :pswitch_10
    iget-object v0, v0, Lcom/tcl/netlibrary/entity/Attribute;->value:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->setTo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 81
    :pswitch_11
    iget-object v0, v0, Lcom/tcl/netlibrary/entity/Attribute;->value:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->setFrom(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 82
    :pswitch_12
    iget-object v0, v0, Lcom/tcl/netlibrary/entity/Attribute;->value:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->setMessageContext(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 83
    :pswitch_13
    iget-object v0, v0, Lcom/tcl/netlibrary/entity/Attribute;->value:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->setDate(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getContentDuration()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->content_duration:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTransferEncoding()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->content_transfer_encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->content_type:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getDirection()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->direction:Ljava/lang/String;

    return-object v0
.end method

.method public getExpires()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->expires:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getImportance()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->importance:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageContext()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->message_context:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->message_id:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->mime_version:Ljava/lang/String;

    return-object v0
.end method

.method public getReturnNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->return_number:Ljava/lang/String;

    return-object v0
.end method

.method public getSensitivity()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->sensitivity:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceNode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->sourceNode:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->to:Ljava/lang/String;

    return-object v0
.end method

.method public getXCnsGreetingType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->x_cns_greeting_type:Ljava/lang/String;

    return-object v0
.end method

.method public getXCnsSmsLinkCallbackNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->x_cns_sms_link_callback_number:Ljava/lang/String;

    return-object v0
.end method

.method public getXTranscriptionResult()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->x_transcription_result:Ljava/lang/String;

    return-object v0
.end method

.method public getXTranscriptionState()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->x_transcription_state:Ljava/lang/String;

    return-object v0
.end method

.method public setContentDuration(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->content_duration:Ljava/lang/String;

    return-void
.end method

.method public setContentTransferEncoding(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->content_transfer_encoding:Ljava/lang/String;

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->content_type:Ljava/lang/String;

    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->date:Ljava/lang/String;

    return-void
.end method

.method public setDirection(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->direction:Ljava/lang/String;

    return-void
.end method

.method public setExpires(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->expires:Ljava/lang/String;

    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->from:Ljava/lang/String;

    return-void
.end method

.method public setImportance(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->importance:Ljava/lang/String;

    return-void
.end method

.method public setMessageContext(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->message_context:Ljava/lang/String;

    return-void
.end method

.method public setMessageId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->message_id:Ljava/lang/String;

    return-void
.end method

.method public setMimeVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->mime_version:Ljava/lang/String;

    return-void
.end method

.method public setReturnNumber(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->return_number:Ljava/lang/String;

    return-void
.end method

.method public setSensitivity(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->sensitivity:Ljava/lang/String;

    return-void
.end method

.method public setSourceNode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->sourceNode:Ljava/lang/String;

    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->subject:Ljava/lang/String;

    return-void
.end method

.method public setTo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->to:Ljava/lang/String;

    return-void
.end method

.method public setXCnsGreetingType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->x_cns_greeting_type:Ljava/lang/String;

    return-void
.end method

.method public setXCnsSmsLinkCallbackNumber(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->x_cns_sms_link_callback_number:Ljava/lang/String;

    return-void
.end method

.method public setXTranscriptionResult(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->x_transcription_result:Ljava/lang/String;

    return-void
.end method

.method public setXTranscriptionState(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject;->x_transcription_state:Ljava/lang/String;

    return-void
.end method
