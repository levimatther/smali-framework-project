.class Lcom/android/voicemail/impl/protocol/Vvm3Subscriber$2;
.super Lcom/android/volley/toolbox/StringRequest;
.source "Vvm3Subscriber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/voicemail/impl/protocol/Vvm3Subscriber;->vvm3XmlRequest(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/voicemail/impl/protocol/Vvm3Subscriber;

.field final synthetic val$body:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/voicemail/impl/protocol/Vvm3Subscriber;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber$2;->this$0:Lcom/android/voicemail/impl/protocol/Vvm3Subscriber;

    iput-object p6, p0, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber$2;->val$body:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method public getBody()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber$2;->val$body:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method
