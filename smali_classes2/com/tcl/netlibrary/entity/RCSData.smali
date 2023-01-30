.class public Lcom/tcl/netlibrary/entity/RCSData;
.super Ljava/lang/Object;
.source "RCSData.java"


# instance fields
.field public contribution_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "contribution-id"
    .end annotation
.end field

.field public conversation_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "conversation-id"
    .end annotation
.end field

.field public feature_tag:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "feature-tag"
    .end annotation
.end field

.field public p_asserted_service:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "p-asserted-service"
    .end annotation
.end field

.field public sip_call_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sip-call-id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
