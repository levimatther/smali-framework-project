.class public Lcom/tcl/netlibrary/entity/Message;
.super Ljava/lang/Object;
.source "Message.java"


# instance fields
.field public blocked_reason_code:Ljava/lang/String;

.field public call_duration:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "call-duration"
    .end annotation
.end field

.field public call_timestamp:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "call-timestamp"
    .end annotation
.end field

.field public client_correlator:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "client-correlator"
    .end annotation
.end field

.field public content:Lcom/tcl/netlibrary/entity/Content;

.field public direction:Ljava/lang/String;

.field public docResourceURL:Ljava/net/URI;

.field public emailAddress:Ljava/lang/String;

.field public failed_rcpt_list:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "failed-rcpt-list"
    .end annotation
.end field

.field public groupTextContent:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public imdn_message_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imdn-message-id"
    .end annotation
.end field

.field public message_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message-id"
    .end annotation
.end field

.field public message_time:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message-time"
    .end annotation
.end field

.field public objectIconURL:Ljava/lang/String;

.field public objectURL:Ljava/lang/String;

.field public participating_device:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "participating-device"
    .end annotation
.end field

.field public pin:Ljava/lang/String;

.field public reassembled:Z

.field public recipients:Lcom/google/gson/JsonArray;

.field public sender:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public store:Ljava/lang/String;

.field public subject:Ljava/lang/String;

.field public thread_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "thread-id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
