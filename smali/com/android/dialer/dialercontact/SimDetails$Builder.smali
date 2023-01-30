.class public final Lcom/android/dialer/dialercontact/SimDetails$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SimDetails.java"

# interfaces
.implements Lcom/android/dialer/dialercontact/SimDetailsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/dialercontact/SimDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/dialer/dialercontact/SimDetails;",
        "Lcom/android/dialer/dialercontact/SimDetails$Builder;",
        ">;",
        "Lcom/android/dialer/dialercontact/SimDetailsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 265
    invoke-static {}, Lcom/android/dialer/dialercontact/SimDetails;->access$000()Lcom/android/dialer/dialercontact/SimDetails;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/dialercontact/SimDetails$1;)V
    .locals 0

    .line 258
    invoke-direct {p0}, Lcom/android/dialer/dialercontact/SimDetails$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearColor()Lcom/android/dialer/dialercontact/SimDetails$Builder;
    .locals 1

    .line 384
    invoke-virtual {p0}, Lcom/android/dialer/dialercontact/SimDetails$Builder;->copyOnWrite()V

    .line 385
    iget-object v0, p0, Lcom/android/dialer/dialercontact/SimDetails$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/SimDetails;

    invoke-static {v0}, Lcom/android/dialer/dialercontact/SimDetails;->access$500(Lcom/android/dialer/dialercontact/SimDetails;)V

    return-object p0
.end method

.method public clearNetwork()Lcom/android/dialer/dialercontact/SimDetails$Builder;
    .locals 1

    .line 324
    invoke-virtual {p0}, Lcom/android/dialer/dialercontact/SimDetails$Builder;->copyOnWrite()V

    .line 325
    iget-object v0, p0, Lcom/android/dialer/dialercontact/SimDetails$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/SimDetails;

    invoke-static {v0}, Lcom/android/dialer/dialercontact/SimDetails;->access$200(Lcom/android/dialer/dialercontact/SimDetails;)V

    return-object p0
.end method

.method public getColor()I
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/android/dialer/dialercontact/SimDetails$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/SimDetails;

    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/SimDetails;->getColor()I

    move-result v0

    return v0
.end method

.method public getNetwork()Ljava/lang/String;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/android/dialer/dialercontact/SimDetails$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/SimDetails;

    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/SimDetails;->getNetwork()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/android/dialer/dialercontact/SimDetails$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/SimDetails;

    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/SimDetails;->getNetworkBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasColor()Z
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/android/dialer/dialercontact/SimDetails$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/SimDetails;

    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/SimDetails;->hasColor()Z

    move-result v0

    return v0
.end method

.method public hasNetwork()Z
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/android/dialer/dialercontact/SimDetails$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/SimDetails;

    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/SimDetails;->hasNetwork()Z

    move-result v0

    return v0
.end method

.method public setColor(I)Lcom/android/dialer/dialercontact/SimDetails$Builder;
    .locals 1

    .line 372
    invoke-virtual {p0}, Lcom/android/dialer/dialercontact/SimDetails$Builder;->copyOnWrite()V

    .line 373
    iget-object v0, p0, Lcom/android/dialer/dialercontact/SimDetails$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/SimDetails;

    invoke-static {v0, p1}, Lcom/android/dialer/dialercontact/SimDetails;->access$400(Lcom/android/dialer/dialercontact/SimDetails;I)V

    return-object p0
.end method

.method public setNetwork(Ljava/lang/String;)Lcom/android/dialer/dialercontact/SimDetails$Builder;
    .locals 1

    .line 312
    invoke-virtual {p0}, Lcom/android/dialer/dialercontact/SimDetails$Builder;->copyOnWrite()V

    .line 313
    iget-object v0, p0, Lcom/android/dialer/dialercontact/SimDetails$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/SimDetails;

    invoke-static {v0, p1}, Lcom/android/dialer/dialercontact/SimDetails;->access$100(Lcom/android/dialer/dialercontact/SimDetails;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNetworkBytes(Lcom/google/protobuf/ByteString;)Lcom/android/dialer/dialercontact/SimDetails$Builder;
    .locals 1

    .line 337
    invoke-virtual {p0}, Lcom/android/dialer/dialercontact/SimDetails$Builder;->copyOnWrite()V

    .line 338
    iget-object v0, p0, Lcom/android/dialer/dialercontact/SimDetails$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/dialercontact/SimDetails;

    invoke-static {v0, p1}, Lcom/android/dialer/dialercontact/SimDetails;->access$300(Lcom/android/dialer/dialercontact/SimDetails;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
