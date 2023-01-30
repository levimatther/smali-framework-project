.class public final enum Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;
.super Ljava/lang/Enum;
.source "VoicemailMessageObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tcl/netlibrary/bean/VoicemailMessageObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageObject"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

.field public static final enum Content_Transfer_Encoding:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

.field public static final enum Message_Id:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

.field public static final enum content_duration:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

.field public static final enum content_type:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

.field public static final enum date:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

.field public static final enum direction:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

.field public static final enum expires:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

.field public static final enum from:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

.field public static final enum importance:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

.field public static final enum message_context:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

.field public static final enum mime_version:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

.field public static final enum return_number:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

.field public static final enum sensitivity:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

.field public static final enum sourcenode:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

.field public static final enum subject:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

.field public static final enum to:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

.field public static final enum x_cns_greeting_type:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

.field public static final enum x_cns_sms_link_callback_number:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

.field public static final enum x_transcription_result:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

.field public static final enum x_transcription_state:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    const-string v1, "date"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->date:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    new-instance v0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    const-string v1, "message_context"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->message_context:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    new-instance v0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    const-string v1, "from"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->from:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    new-instance v0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    const-string v1, "to"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->to:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    new-instance v0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    const-string v1, "Message_Id"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->Message_Id:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    new-instance v0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    const-string v1, "mime_version"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->mime_version:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    new-instance v0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    const-string v1, "importance"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->importance:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    new-instance v0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    const-string v1, "sensitivity"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->sensitivity:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    .line 2
    new-instance v0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    const-string v1, "direction"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->direction:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    new-instance v0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    const-string v1, "content_type"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->content_type:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    new-instance v0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    const-string v1, "subject"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->subject:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    new-instance v0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    const-string v1, "content_duration"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->content_duration:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    new-instance v0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    const-string v1, "expires"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->expires:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    new-instance v0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    const-string v1, "return_number"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->return_number:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    .line 3
    new-instance v0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    const-string v1, "x_transcription_result"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->x_transcription_result:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    new-instance v0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    const-string v1, "x_transcription_state"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->x_transcription_state:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    new-instance v0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    const-string v1, "x_cns_sms_link_callback_number"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->x_cns_sms_link_callback_number:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    .line 4
    new-instance v0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    const-string v1, "Content_Transfer_Encoding"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15}, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->Content_Transfer_Encoding:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    new-instance v0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    const-string v1, "sourcenode"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15}, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->sourcenode:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    new-instance v0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    const-string v1, "x_cns_greeting_type"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15}, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->x_cns_greeting_type:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    const/16 v1, 0x14

    new-array v1, v1, [Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    .line 5
    sget-object v16, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->date:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    aput-object v16, v1, v2

    sget-object v2, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->message_context:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    aput-object v2, v1, v3

    sget-object v2, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->from:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    aput-object v2, v1, v4

    sget-object v2, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->to:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    aput-object v2, v1, v5

    sget-object v2, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->Message_Id:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    aput-object v2, v1, v6

    sget-object v2, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->mime_version:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    aput-object v2, v1, v7

    sget-object v2, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->importance:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    aput-object v2, v1, v8

    sget-object v2, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->sensitivity:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    aput-object v2, v1, v9

    sget-object v2, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->direction:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    aput-object v2, v1, v10

    sget-object v2, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->content_type:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    aput-object v2, v1, v11

    sget-object v2, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->subject:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    aput-object v2, v1, v12

    sget-object v2, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->content_duration:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    aput-object v2, v1, v13

    sget-object v2, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->expires:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    aput-object v2, v1, v14

    sget-object v2, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->return_number:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->x_transcription_result:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->x_transcription_state:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->x_cns_sms_link_callback_number:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->Content_Transfer_Encoding:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->sourcenode:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    aput-object v0, v1, v15

    sput-object v1, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->$VALUES:[Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;
    .locals 1

    .line 1
    const-class v0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    return-object p0
.end method

.method public static values()[Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;
    .locals 1

    .line 1
    sget-object v0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->$VALUES:[Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    invoke-virtual {v0}, [Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    return-object v0
.end method
