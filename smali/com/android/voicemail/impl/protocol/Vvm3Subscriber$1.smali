.class Lcom/android/voicemail/impl/protocol/Vvm3Subscriber$1;
.super Lcom/android/volley/toolbox/StringRequest;
.source "Vvm3Subscriber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/voicemail/impl/protocol/Vvm3Subscriber;->getSelfProvisionResponse(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/voicemail/impl/protocol/Vvm3Subscriber;


# direct methods
.method constructor <init>(Lcom/android/voicemail/impl/protocol/Vvm3Subscriber;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber$1;->this$0:Lcom/android/voicemail/impl/protocol/Vvm3Subscriber;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method protected getParams()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 238
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 239
    iget-object v1, p0, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber$1;->this$0:Lcom/android/voicemail/impl/protocol/Vvm3Subscriber;

    invoke-static {v1}, Lcom/android/voicemail/impl/protocol/Vvm3Subscriber;->access$000(Lcom/android/voicemail/impl/protocol/Vvm3Subscriber;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "VZW_MDN"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "VZW_SERVICE"

    const-string v2, "BVVM"

    .line 240
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "DEVICE_MODEL"

    const-string v2, "DROID_4G"

    .line 241
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "APP_TOKEN"

    const-string v2, "q8e3t5u2o1"

    .line 242
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SPG_LANGUAGE_PARAM"

    const-string v2, "ENGLISH"

    .line 245
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
