.class public synthetic Lcom/tcl/netlibrary/bean/VoicemailMessageObject$1;
.super Ljava/lang/Object;
.source "VoicemailMessageObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tcl/netlibrary/bean/VoicemailMessageObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$tcl$netlibrary$bean$VoicemailMessageObject$MessageObject:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->values()[Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$1;->$SwitchMap$com$tcl$netlibrary$bean$VoicemailMessageObject$MessageObject:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->date:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    const/4 v2, 0x0

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$1;->$SwitchMap$com$tcl$netlibrary$bean$VoicemailMessageObject$MessageObject:[I

    sget-object v3, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->message_context:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    aput v0, v2, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v1, 0x3

    :try_start_2
    sget-object v2, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$1;->$SwitchMap$com$tcl$netlibrary$bean$VoicemailMessageObject$MessageObject:[I

    sget-object v3, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->from:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    aput v1, v2, v0
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v0, 0x4

    :try_start_3
    sget-object v2, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$1;->$SwitchMap$com$tcl$netlibrary$bean$VoicemailMessageObject$MessageObject:[I

    sget-object v3, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->to:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    aput v0, v2, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v1, 0x5

    :try_start_4
    sget-object v2, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$1;->$SwitchMap$com$tcl$netlibrary$bean$VoicemailMessageObject$MessageObject:[I

    sget-object v3, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->Message_Id:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    aput v1, v2, v0
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v0, 0x6

    :try_start_5
    sget-object v2, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$1;->$SwitchMap$com$tcl$netlibrary$bean$VoicemailMessageObject$MessageObject:[I

    sget-object v3, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->mime_version:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    aput v0, v2, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v1, 0x7

    const/16 v2, 0xd

    :try_start_6
    sget-object v3, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$1;->$SwitchMap$com$tcl$netlibrary$bean$VoicemailMessageObject$MessageObject:[I

    sget-object v4, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->return_number:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    aput v1, v3, v2
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v3, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$1;->$SwitchMap$com$tcl$netlibrary$bean$VoicemailMessageObject$MessageObject:[I

    sget-object v4, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->direction:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    const/16 v4, 0x8

    aput v4, v3, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v3, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$1;->$SwitchMap$com$tcl$netlibrary$bean$VoicemailMessageObject$MessageObject:[I

    sget-object v4, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->content_type:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    const/16 v4, 0x9

    aput v4, v3, v4
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v3, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$1;->$SwitchMap$com$tcl$netlibrary$bean$VoicemailMessageObject$MessageObject:[I

    sget-object v4, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->subject:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    const/16 v4, 0xa

    aput v4, v3, v4
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v3, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$1;->$SwitchMap$com$tcl$netlibrary$bean$VoicemailMessageObject$MessageObject:[I

    sget-object v4, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->content_duration:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    const/16 v4, 0xb

    aput v4, v3, v4
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v3, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$1;->$SwitchMap$com$tcl$netlibrary$bean$VoicemailMessageObject$MessageObject:[I

    sget-object v4, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->importance:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    const/16 v4, 0xc

    aput v4, v3, v0
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$1;->$SwitchMap$com$tcl$netlibrary$bean$VoicemailMessageObject$MessageObject:[I

    sget-object v3, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->sensitivity:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$1;->$SwitchMap$com$tcl$netlibrary$bean$VoicemailMessageObject$MessageObject:[I

    sget-object v1, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->x_transcription_result:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    const/16 v1, 0xe

    aput v1, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$1;->$SwitchMap$com$tcl$netlibrary$bean$VoicemailMessageObject$MessageObject:[I

    sget-object v1, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->x_transcription_state:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    const/16 v1, 0xf

    aput v1, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$1;->$SwitchMap$com$tcl$netlibrary$bean$VoicemailMessageObject$MessageObject:[I

    sget-object v1, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->x_cns_sms_link_callback_number:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    const/16 v1, 0x10

    aput v1, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$1;->$SwitchMap$com$tcl$netlibrary$bean$VoicemailMessageObject$MessageObject:[I

    sget-object v1, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->Content_Transfer_Encoding:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    const/16 v1, 0x11

    aput v1, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$1;->$SwitchMap$com$tcl$netlibrary$bean$VoicemailMessageObject$MessageObject:[I

    sget-object v1, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->sourcenode:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    const/16 v1, 0x12

    aput v1, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v0, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$1;->$SwitchMap$com$tcl$netlibrary$bean$VoicemailMessageObject$MessageObject:[I

    sget-object v1, Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;->x_cns_greeting_type:Lcom/tcl/netlibrary/bean/VoicemailMessageObject$MessageObject;

    const/16 v1, 0x13

    aput v1, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    return-void
.end method
